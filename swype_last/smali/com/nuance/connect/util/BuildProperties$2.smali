.class synthetic Lcom/nuance/connect/util/BuildProperties$2;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/util/BuildProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->values()[Lcom/nuance/connect/util/BuildProps$BuildProperty;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    :try_start_9
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ID:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_410

    :goto_14
    :try_start_14
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->PRODUCT:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_40d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->DEVICE:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_40a

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->BOARD:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_407

    :goto_35
    :try_start_35
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->MANUFACTURER:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_404

    :goto_40
    :try_start_40
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->BRAND:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_401

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->MODEL:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_3fe

    :goto_56
    :try_start_56
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->BOOTLOADER:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_3fb

    :goto_62
    :try_start_62
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->CPU_ABI:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_3f8

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->CPU_ABI2:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_3f5

    :goto_7a
    :try_start_7a
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->DISPLAY:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_3f2

    :goto_86
    :try_start_86
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->HARDWARE:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_3ef

    :goto_92
    :try_start_92
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->RADIO:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_3ec

    :goto_9e
    :try_start_9e
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->TAGS:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_3e9

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->TYPE:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_3e6

    :goto_b6
    :try_start_b6
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->SWYPE_VERSION:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_3e3

    :goto_c2
    :try_start_c2
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->OS_VERSION:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_ce} :catch_3e0

    :goto_ce
    :try_start_ce
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->SCREENRESOLUTION:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ce .. :try_end_da} :catch_3dd

    :goto_da
    :try_start_da
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->LANGUAGES:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_da .. :try_end_e6} :catch_3da

    :goto_e6
    :try_start_e6
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->SUPPORTED_LANGUAGES:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e6 .. :try_end_f2} :catch_3d7

    :goto_f2
    :try_start_f2
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->SWIB:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_fe
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f2 .. :try_end_fe} :catch_3d4

    :goto_fe
    :try_start_fe
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->OEM_ID:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_10a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fe .. :try_end_10a} :catch_3d1

    :goto_10a
    :try_start_10a
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->SDK_VERSION:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_116
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10a .. :try_end_116} :catch_3ce

    :goto_116
    :try_start_116
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->APPLICATION_ID:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_122
    .catch Ljava/lang/NoSuchFieldError; {:try_start_116 .. :try_end_122} :catch_3cb

    :goto_122
    :try_start_122
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->CUSTOMER_STRING:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_12e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_122 .. :try_end_12e} :catch_3c8

    :goto_12e
    :try_start_12e
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->DEVICE_ID:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_13a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12e .. :try_end_13a} :catch_3c5

    :goto_13a
    :try_start_13a
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->TIMEZONE:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_146
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13a .. :try_end_146} :catch_3c2

    :goto_146
    :try_start_146
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->SWYPER_ID:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_152
    .catch Ljava/lang/NoSuchFieldError; {:try_start_146 .. :try_end_152} :catch_3bf

    :goto_152
    :try_start_152
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->LANGUAGES_DL:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_15e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_152 .. :try_end_15e} :catch_3bc

    :goto_15e
    :try_start_15e
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ALM_DL:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_16a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15e .. :try_end_16a} :catch_3b9

    :goto_16a
    :try_start_16a
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->SWYPE_PRIVACY_ENABLED:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_176
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16a .. :try_end_176} :catch_3b6

    :goto_176
    :try_start_176
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->SWYPE_BUILD_TYPE:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_182
    .catch Ljava/lang/NoSuchFieldError; {:try_start_176 .. :try_end_182} :catch_3b3

    :goto_182
    :try_start_182
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->SCREENLAYOUT_SIZE:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_18e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_182 .. :try_end_18e} :catch_3b0

    :goto_18e
    :try_start_18e
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->SCREEN_DENSITY:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_19a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18e .. :try_end_19a} :catch_3ad

    :goto_19a
    :try_start_19a
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->IMEI_HASH:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_1a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19a .. :try_end_1a6} :catch_3aa

    :goto_1a6
    :try_start_1a6
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->SERIAL_HASH:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_1b2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a6 .. :try_end_1b2} :catch_3a7

    :goto_1b2
    :try_start_1b2
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ANDROIDID_HASH:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_1be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b2 .. :try_end_1be} :catch_3a4

    :goto_1be
    :try_start_1be
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->MAC_HASH:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_1ca
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1be .. :try_end_1ca} :catch_3a1

    :goto_1ca
    :try_start_1ca
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->NAD_ID:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_1d6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ca .. :try_end_1d6} :catch_39e

    :goto_1d6
    :try_start_1d6
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->LOCALE:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_1e2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d6 .. :try_end_1e2} :catch_39b

    :goto_1e2
    :try_start_1e2
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->CORE_VERSION_ALPHA:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_1ee
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e2 .. :try_end_1ee} :catch_398

    :goto_1ee
    :try_start_1ee
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->CORE_VERSION_CHINESE:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_1fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ee .. :try_end_1fa} :catch_395

    :goto_1fa
    :try_start_1fa
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->CORE_VERSION_JAPANESE:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_206
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1fa .. :try_end_206} :catch_392

    :goto_206
    :try_start_206
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->CORE_VERSION_KOREAN:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_212
    .catch Ljava/lang/NoSuchFieldError; {:try_start_206 .. :try_end_212} :catch_38f

    :goto_212
    :try_start_212
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->DOCUMENT_REVISIONS:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_21e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_212 .. :try_end_21e} :catch_38c

    :goto_21e
    :try_start_21e
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->CARRIER_NAME:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_22a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21e .. :try_end_22a} :catch_389

    :goto_22a
    :try_start_22a
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->SIM_OPERATOR_NAME:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_236
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22a .. :try_end_236} :catch_386

    :goto_236
    :try_start_236
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->PHONE_SIM_TYPE:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_242
    .catch Ljava/lang/NoSuchFieldError; {:try_start_236 .. :try_end_242} :catch_383

    :goto_242
    :try_start_242
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->NETWORK_ISO:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_24e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_242 .. :try_end_24e} :catch_380

    :goto_24e
    :try_start_24e
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->SIM_ISO:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_25a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24e .. :try_end_25a} :catch_37d

    :goto_25a
    :try_start_25a
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->NETWORK_OP:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_266
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25a .. :try_end_266} :catch_37a

    :goto_266
    :try_start_266
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->SIM_OP:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_272
    .catch Ljava/lang/NoSuchFieldError; {:try_start_266 .. :try_end_272} :catch_377

    :goto_272
    :try_start_272
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->PACKAGE_NAME:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_27e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_272 .. :try_end_27e} :catch_374

    :goto_27e
    :try_start_27e
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->GIP_COUNTRY:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_28a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27e .. :try_end_28a} :catch_371

    :goto_28a
    :try_start_28a
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->SKUS_PURCHASED:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_296
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28a .. :try_end_296} :catch_36e

    :goto_296
    :try_start_296
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->POLL_FREQUENCY:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_2a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_296 .. :try_end_2a2} :catch_36b

    :goto_2a2
    :try_start_2a2
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->FEATURE_USED_LANGUAGE:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_2ae
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a2 .. :try_end_2ae} :catch_368

    :goto_2ae
    :try_start_2ae
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->FEATURE_USED_UDA:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_2ba
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2ae .. :try_end_2ba} :catch_365

    :goto_2ba
    :try_start_2ba
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->FEATURE_USED_HOTWORDS:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_2c6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2ba .. :try_end_2c6} :catch_362

    :goto_2c6
    :try_start_2c6
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->FEATURE_USED_REPORTING:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x3c

    aput v2, v0, v1
    :try_end_2d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c6 .. :try_end_2d2} :catch_35f

    :goto_2d2
    :try_start_2d2
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->FEATURE_USED_CHINESEDICT:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x3d

    aput v2, v0, v1
    :try_end_2de
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d2 .. :try_end_2de} :catch_35d

    :goto_2de
    :try_start_2de
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->FEATURE_USED_CCPS:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x3e

    aput v2, v0, v1
    :try_end_2ea
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2de .. :try_end_2ea} :catch_35b

    :goto_2ea
    :try_start_2ea
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->FEATURE_USED_DLT:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x3f

    aput v2, v0, v1
    :try_end_2f6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2ea .. :try_end_2f6} :catch_359

    :goto_2f6
    :try_start_2f6
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->FEATURE_USED_BACKUP_SYNC:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x40

    aput v2, v0, v1
    :try_end_302
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f6 .. :try_end_302} :catch_357

    :goto_302
    :try_start_302
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->FEATURE_USED_SCANNER_CALLLOG:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x41

    aput v2, v0, v1
    :try_end_30e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_302 .. :try_end_30e} :catch_355

    :goto_30e
    :try_start_30e
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->FEATURE_USED_SCANNER_CONTACTS:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x42

    aput v2, v0, v1
    :try_end_31a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30e .. :try_end_31a} :catch_353

    :goto_31a
    :try_start_31a
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->FEATURE_USED_SCANNER_FACEBOOK:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x43

    aput v2, v0, v1
    :try_end_326
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31a .. :try_end_326} :catch_351

    :goto_326
    :try_start_326
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->FEATURE_USED_SCANNER_GMAIL:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x44

    aput v2, v0, v1
    :try_end_332
    .catch Ljava/lang/NoSuchFieldError; {:try_start_326 .. :try_end_332} :catch_34f

    :goto_332
    :try_start_332
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->FEATURE_USED_SCANNER_SMS:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x45

    aput v2, v0, v1
    :try_end_33e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_332 .. :try_end_33e} :catch_34d

    :goto_33e
    :try_start_33e
    sget-object v0, Lcom/nuance/connect/util/BuildProperties$2;->$SwitchMap$com$nuance$connect$util$BuildProps$BuildProperty:[I

    sget-object v1, Lcom/nuance/connect/util/BuildProps$BuildProperty;->FEATURE_USED_SCANNER_TWITTER:Lcom/nuance/connect/util/BuildProps$BuildProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/util/BuildProps$BuildProperty;->ordinal()I

    move-result v1

    const/16 v2, 0x46

    aput v2, v0, v1
    :try_end_34a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33e .. :try_end_34a} :catch_34b

    :goto_34a
    return-void

    :catch_34b
    move-exception v0

    goto :goto_34a

    :catch_34d
    move-exception v0

    goto :goto_33e

    :catch_34f
    move-exception v0

    goto :goto_332

    :catch_351
    move-exception v0

    goto :goto_326

    :catch_353
    move-exception v0

    goto :goto_31a

    :catch_355
    move-exception v0

    goto :goto_30e

    :catch_357
    move-exception v0

    goto :goto_302

    :catch_359
    move-exception v0

    goto :goto_2f6

    :catch_35b
    move-exception v0

    goto :goto_2ea

    :catch_35d
    move-exception v0

    goto :goto_2de

    :catch_35f
    move-exception v0

    goto/16 :goto_2d2

    :catch_362
    move-exception v0

    goto/16 :goto_2c6

    :catch_365
    move-exception v0

    goto/16 :goto_2ba

    :catch_368
    move-exception v0

    goto/16 :goto_2ae

    :catch_36b
    move-exception v0

    goto/16 :goto_2a2

    :catch_36e
    move-exception v0

    goto/16 :goto_296

    :catch_371
    move-exception v0

    goto/16 :goto_28a

    :catch_374
    move-exception v0

    goto/16 :goto_27e

    :catch_377
    move-exception v0

    goto/16 :goto_272

    :catch_37a
    move-exception v0

    goto/16 :goto_266

    :catch_37d
    move-exception v0

    goto/16 :goto_25a

    :catch_380
    move-exception v0

    goto/16 :goto_24e

    :catch_383
    move-exception v0

    goto/16 :goto_242

    :catch_386
    move-exception v0

    goto/16 :goto_236

    :catch_389
    move-exception v0

    goto/16 :goto_22a

    :catch_38c
    move-exception v0

    goto/16 :goto_21e

    :catch_38f
    move-exception v0

    goto/16 :goto_212

    :catch_392
    move-exception v0

    goto/16 :goto_206

    :catch_395
    move-exception v0

    goto/16 :goto_1fa

    :catch_398
    move-exception v0

    goto/16 :goto_1ee

    :catch_39b
    move-exception v0

    goto/16 :goto_1e2

    :catch_39e
    move-exception v0

    goto/16 :goto_1d6

    :catch_3a1
    move-exception v0

    goto/16 :goto_1ca

    :catch_3a4
    move-exception v0

    goto/16 :goto_1be

    :catch_3a7
    move-exception v0

    goto/16 :goto_1b2

    :catch_3aa
    move-exception v0

    goto/16 :goto_1a6

    :catch_3ad
    move-exception v0

    goto/16 :goto_19a

    :catch_3b0
    move-exception v0

    goto/16 :goto_18e

    :catch_3b3
    move-exception v0

    goto/16 :goto_182

    :catch_3b6
    move-exception v0

    goto/16 :goto_176

    :catch_3b9
    move-exception v0

    goto/16 :goto_16a

    :catch_3bc
    move-exception v0

    goto/16 :goto_15e

    :catch_3bf
    move-exception v0

    goto/16 :goto_152

    :catch_3c2
    move-exception v0

    goto/16 :goto_146

    :catch_3c5
    move-exception v0

    goto/16 :goto_13a

    :catch_3c8
    move-exception v0

    goto/16 :goto_12e

    :catch_3cb
    move-exception v0

    goto/16 :goto_122

    :catch_3ce
    move-exception v0

    goto/16 :goto_116

    :catch_3d1
    move-exception v0

    goto/16 :goto_10a

    :catch_3d4
    move-exception v0

    goto/16 :goto_fe

    :catch_3d7
    move-exception v0

    goto/16 :goto_f2

    :catch_3da
    move-exception v0

    goto/16 :goto_e6

    :catch_3dd
    move-exception v0

    goto/16 :goto_da

    :catch_3e0
    move-exception v0

    goto/16 :goto_ce

    :catch_3e3
    move-exception v0

    goto/16 :goto_c2

    :catch_3e6
    move-exception v0

    goto/16 :goto_b6

    :catch_3e9
    move-exception v0

    goto/16 :goto_aa

    :catch_3ec
    move-exception v0

    goto/16 :goto_9e

    :catch_3ef
    move-exception v0

    goto/16 :goto_92

    :catch_3f2
    move-exception v0

    goto/16 :goto_86

    :catch_3f5
    move-exception v0

    goto/16 :goto_7a

    :catch_3f8
    move-exception v0

    goto/16 :goto_6e

    :catch_3fb
    move-exception v0

    goto/16 :goto_62

    :catch_3fe
    move-exception v0

    goto/16 :goto_56

    :catch_401
    move-exception v0

    goto/16 :goto_4b

    :catch_404
    move-exception v0

    goto/16 :goto_40

    :catch_407
    move-exception v0

    goto/16 :goto_35

    :catch_40a
    move-exception v0

    goto/16 :goto_2a

    :catch_40d
    move-exception v0

    goto/16 :goto_1f

    :catch_410
    move-exception v0

    goto/16 :goto_14
.end method
