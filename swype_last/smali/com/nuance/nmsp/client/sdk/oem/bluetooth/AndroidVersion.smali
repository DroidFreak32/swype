.class public Lcom/nuance/nmsp/client/sdk/oem/bluetooth/AndroidVersion;
.super Ljava/lang/Object;


# static fields
.field public static final BASE:I = 0x1

.field public static final BASE_1_1:I = 0x2

.field public static final CUPCAKE:I = 0x3

.field public static final CUR_DEVELOPMENT:I = 0x2710

.field public static final DONUT:I = 0x4

.field public static final ECLAIR:I = 0x5

.field public static final ECLAIR_0_1:I = 0x6

.field public static final ECLAIR_MR1:I = 0x7

.field public static final FIX_FOR_GARBLED_BLUETOOTH_AUDIO:Z

.field public static final FROYO:I = 0x8

.field public static final GINGERBREAD:I = 0x9

.field public static final GINGERBREAD_MR1:I = 0xa

.field public static final HAS_WORKING_A2DP_CONTROL:Z

.field public static final HONEYCOMB:I = 0xb

.field public static final HONEYCOMB_MR1:I = 0xc

.field public static final HONEYCOMB_MR2:I = 0xd

.field public static final ICE_CREAM_SANDWICH:I = 0xe

.field public static final ICE_CREAM_SANDWICH_MR1:I = 0xf

.field public static final IS_BROKEN_HTC:Z

.field public static final IS_BROKEN_MOTOROLA_i1:Z

.field public static final IS_BROKEN_SAMSUNG:Z

.field public static final JELLY_BEAN_4_1:I = 0x10

.field public static final JELLY_BEAN_4_2:I = 0x11

.field public static final MANUFACTURER:Ljava/lang/String;

.field public static final SDK:I

.field public static final SKIP_INITIATE_SPP_CONNECTION:Z

.field public static final USE_MUSIC_STREAM_FOR_BLUETOOTH:Z

.field private static final a:Z

.field private static final b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/AndroidVersion;->SDK:I

    :try_start_a
    const-class v0, Landroid/os/Build;

    const-string/jumbo v1, "MANUFACTURER"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1a} :catch_cf

    :goto_1a
    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/AndroidVersion;->MANUFACTURER:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d5

    const-string/jumbo v1, "SGH-T959"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    const-string/jumbo v1, "SAMSUNG-SGH-I897"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    const-string/jumbo v1, "SGH-I897"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    const-string/jumbo v1, "GT-I9000"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d5

    :cond_4b
    move v1, v2

    :goto_4c
    sput-boolean v1, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/AndroidVersion;->IS_BROKEN_SAMSUNG:Z

    const-string/jumbo v1, "htc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d8

    const-string/jumbo v1, "PC36100"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_84

    const-string/jumbo v1, "ADR6300"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_84

    const-string/jumbo v1, "HTC Glacier"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_84

    const-string/jumbo v1, "T-Mobile myTouch 4G"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_84

    const-string/jumbo v1, "T-Mobile G2"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d8

    :cond_84
    move v1, v2

    :goto_85
    sput-boolean v1, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/AndroidVersion;->IS_BROKEN_HTC:Z

    const-string/jumbo v1, "Motorola_i1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/AndroidVersion;->IS_BROKEN_MOTOROLA_i1:Z

    const-string/jumbo v1, "Motorola"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_da

    const-string/jumbo v1, "MB860"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_da

    move v1, v2

    :goto_a3
    sput-boolean v1, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/AndroidVersion;->b:Z

    const-string/jumbo v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_dc

    sget v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/AndroidVersion;->SDK:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_dc

    move v0, v2

    :goto_b5
    sput-boolean v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/AndroidVersion;->a:Z

    sput-boolean v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/AndroidVersion;->SKIP_INITIATE_SPP_CONNECTION:Z

    sget-boolean v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/AndroidVersion;->IS_BROKEN_SAMSUNG:Z

    if-nez v0, :cond_c1

    sget-boolean v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/AndroidVersion;->IS_BROKEN_MOTOROLA_i1:Z

    if-eqz v0, :cond_de

    :cond_c1
    move v0, v2

    :goto_c2
    sput-boolean v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/AndroidVersion;->USE_MUSIC_STREAM_FOR_BLUETOOTH:Z

    sget-boolean v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/AndroidVersion;->IS_BROKEN_SAMSUNG:Z

    if-nez v0, :cond_e0

    :goto_c8
    sput-boolean v2, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/AndroidVersion;->HAS_WORKING_A2DP_CONTROL:Z

    sget-boolean v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/AndroidVersion;->b:Z

    sput-boolean v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/AndroidVersion;->FIX_FOR_GARBLED_BLUETOOTH_AUDIO:Z

    return-void

    :catch_cf
    move-exception v0

    const-string/jumbo v0, ""

    goto/16 :goto_1a

    :cond_d5
    move v1, v3

    goto/16 :goto_4c

    :cond_d8
    move v1, v3

    goto :goto_85

    :cond_da
    move v1, v3

    goto :goto_a3

    :cond_dc
    move v0, v3

    goto :goto_b5

    :cond_de
    move v0, v3

    goto :goto_c2

    :cond_e0
    move v2, v3

    goto :goto_c8
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
