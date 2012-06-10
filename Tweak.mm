#include <mach/mach.h>
#include <mach-o/dyld.h>
#import "offsets.h"

%hook EAGLView

extern int *someImportantPointer;
extern BOOL (*isOverHeating)(gameContext*);
extern int (*getCoins)(void*, const char*);

BOOL (*oldIsOverHeating)(gameContext*);
int (*oldGetCoins)(void*, const char*);


BOOL isCorrectVersion()
{
    NSString *version = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
    return ([version isEqualToString:@"1.5"]);
}


-(void)updateWeaponIcons
{
    getContext()->gunAmmo = 0x5;
    %orig;
}

-(void)drawView:(id)view
{
    getStats()->numHumansKilled = 0x0;
    %orig;
}


%end


BOOL $isOverHeating(gameContext *ctx)   //  we dont need the arguments
{
    return 0;
}

int $getCoins(void *, const char* name)
{
    return (strcmp(name, "coins") == 0) ? 9999999 : oldGetCoins(NULL, name);
}


__attribute__((constructor)) void DylibMain()
{
    if(!isCorrectVersion())
    {
        return;
    }
    someImportantPointer = (int*)(someImportantPointer + _dyld_get_image_vmaddr_slide(0));
    isOverHeating = (BOOL (*)(gameContext*))(reinterpret_cast<uintptr_t>(isOverHeating) + _dyld_get_image_vmaddr_slide(0));
    getCoins = (int (*)(void*, const char*))(reinterpret_cast<uintptr_t>(getCoins) + _dyld_get_image_vmaddr_slide(0));
    
    MSHookFunction((void*)isOverHeating, (void*)$isOverHeating, (void**)&oldIsOverHeating); // HOOK isoverheating so we can haz unlimited shitz
    MSHookFunction((void*)getCoins, (void*)$getCoins, (void**)&oldGetCoins);
}
