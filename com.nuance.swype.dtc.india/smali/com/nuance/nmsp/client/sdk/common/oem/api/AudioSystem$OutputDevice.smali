.class public Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;
.super Lcom/nuance/nmsp/client/sdk/common/util/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputDevice"
.end annotation


# static fields
.field public static BLUETOOTH_A2DP:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

.field public static BLUETOOTH_HEADSET:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

.field public static NETWORK:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

.field public static SPEAKER:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

.field public static WIRED_HEADSET:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;->SPEAKER:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;->NETWORK:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;->BLUETOOTH_HEADSET:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;->BLUETOOTH_A2DP:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;->WIRED_HEADSET:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/sdk/common/util/Enum;-><init>(I)V

    return-void
.end method
