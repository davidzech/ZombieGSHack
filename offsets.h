

typedef struct {
    int field0; //  0
    int field1; //  4
    int field3; //  8
    int field4; //  C
    int field5; //  0x10
    int gunAmmo; //   0x14
    int field7; //  0x18
    int field8; //  0x1C
    int field9; //  0x20
    int field10; // 0x24
    int field11;    //0x28
    int field12;    //  0x2C
    int field13;    //  0x30
    int field14;    //  0x34
    int field15;    //  0x38
    int field16;    //  0x3C
    int field17;    //  0x40
    int field18;    //  0x44
    BOOL overheating;
} gameContext;

typedef struct {
    int field0; //  0
    int field1; //  4
    int field2; //  8
    int field3; //  0xC
    int numHumansKilled; // 0x10
} statContext;

gameContext* getContext();
statContext * getStats();

