.class public Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;
.super Lcom/nuance/nmsp/client/sdk/common/util/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputDevice"
.end annotation


# static fields
.field public static BLUETOOTH_HEADSET:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

.field public static MICROPHONE:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

.field public static NETWORK:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

.field public static WIRED_HEADSET:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;->MICROPHONE:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;->NETWORK:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;->BLUETOOTH_HEADSET:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;->WIRED_HEADSET:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/sdk/common/util/Enum;-><init>(I)V

    return-void
.end method
