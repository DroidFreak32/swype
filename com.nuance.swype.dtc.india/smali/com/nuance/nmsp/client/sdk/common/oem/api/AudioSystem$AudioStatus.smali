.class public Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;
.super Lcom/nuance/nmsp/client/sdk/common/util/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioStatus"
.end annotation


# static fields
.field public static final AUDIO_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;

.field public static final AUDIO_OK:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;->AUDIO_OK:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;-><init>(I)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;->AUDIO_ERROR:Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/sdk/common/util/Enum;-><init>(I)V

    return-void
.end method
