.class public Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CodecType"
.end annotation


# static fields
.field public static PCM:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

.field public static SPEEX:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    invoke-direct {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;-><init>()V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;->SPEEX:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    invoke-direct {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;-><init>()V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;->PCM:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$CodecType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
