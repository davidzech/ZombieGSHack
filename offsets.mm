#import "offsets.h"



gameContext *context = 0;

int *someImportantPointer = (int*)0xDE60C;  // 1.5

BOOL (*isOverHeating)(gameContext*) = (BOOL (*)(gameContext*))(0x1958C + 0x1); // +1 for thumb 1.5

int (*getCoins)(void*, const char*) = (int (*)(void*, const char*))(0x24d40 +0x1); // +1 for thumb 1.5



gameContext* getContext()
{
    int *a1 = (int*)*someImportantPointer;
    int *a2 = (int*)*((int*)a1+0x20);
    int *a3 = (int*)*((int*)a2+1);
    int *a4 = (int*)*((int*)a3+1);
    return (gameContext*)a4;
}

statContext * getStats()
{
    int *a1 = (int*)*someImportantPointer;
    int *a2 = (int*)*((int*)a1+(0x74/4));
    return (statContext*)a2;
}

/* DVAR DUMP

 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_25mm_level
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_25mm_level
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_25mm_level
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_25mm_level
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_25mm_level
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_25mm_level
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING cooldown_25mm_level
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING cooldown_25mm_level
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_40mm_on
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_40mm_on
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_40mm_on
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_40mm_level
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_40mm_level
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_40mm_on
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING clip_reload_time_40mm_level
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING clip_reload_time_40mm_level
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_40mm_on
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_40mm_level
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_40mm_level
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_40mm_on
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_40mm_level
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_40mm_level
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_105mm_on
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_105mm_on
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_105mm_on
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_105mm_level
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_105mm_level
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_105mm_on
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_105mm_level
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_105mm_level
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_105mm_on
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_105mm_level
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_105mm_level
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING zombie_reward_level
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING zombie_reward_level
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING radar_range_level
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING radar_range_level
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING bunker_mines
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING general_pardon
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING zg_bakersfield_on
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING zg_bakersfield_on
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING zg_pleasantacres_on
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: REQUESTING zg_pleasantacres_on
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: authenticateWithCompletionHandler: enter
 Jun 10 02:43:14 unknown Zombie GS[6617] <Warning>: authenticateWithCompletionHandler: exit
 > 
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_40mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_40mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_40mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_40mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_40mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING clip_reload_time_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING clip_reload_time_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_40mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING clip_reload_time_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING clip_reload_time_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_40mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_40mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_105mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_105mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_105mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_105mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_105mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_105mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_105mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING radar_range_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING radar_range_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING radar_range_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING radar_range_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING zombie_reward_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING zombie_reward_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING zombie_reward_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING zombie_reward_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING cooldown_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING clip_reload_time_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING cooldown_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING cooldown_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING cooldown_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING cooldown_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_40mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_40mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_40mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_40mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_40mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING clip_reload_time_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING clip_reload_time_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_40mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING clip_reload_time_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING clip_reload_time_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_40mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_40mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_105mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_105mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_105mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_105mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_105mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_105mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_105mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING radar_range_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING radar_range_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING radar_range_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING radar_range_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING zombie_reward_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING zombie_reward_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING zombie_reward_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING zombie_reward_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING cooldown_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING clip_reload_time_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING cooldown_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING cooldown_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING cooldown_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING cooldown_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_25mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_40mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_40mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_40mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_40mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_40mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING clip_reload_time_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING clip_reload_time_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_40mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING clip_reload_time_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING clip_reload_time_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_40mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_40mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_40mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_105mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_105mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_105mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_105mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_105mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING blast_radius_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_105mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING fire_period_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING weapon_105mm_on
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING projectile_speed_105mm_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING radar_range_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING radar_range_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING radar_range_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING radar_range_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING coins
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING zombie_reward_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING zombie_reward_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING zombie_reward_level
 Jun 10 02:43:16 unknown Zombie GS[6617] <Warning>: REQUESTING zombie_reward_level
*/