.class public Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Audio;
.super Ljava/lang/Object;


# static fields
.field public static final AUDIO_RECORD_AUDIO_SOURCE:I

.field public static final AUDIO_TRACK_VOICE_CALL_STREAM:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;

    invoke-direct {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;-><init>()V

    const-class v1, Landroid/media/MediaRecorder$AudioSource;

    const-string/jumbo v2, "VOICE_RECOGNITION"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Reflection;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Audio;->AUDIO_RECORD_AUDIO_SOURCE:I

    sput v3, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Audio;->AUDIO_TRACK_VOICE_CALL_STREAM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
