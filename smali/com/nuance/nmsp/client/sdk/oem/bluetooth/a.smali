.class final Lcom/nuance/nmsp/client/sdk/oem/bluetooth/a;
.super Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;


# instance fields
.field private a:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/a;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/a;->a:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public final getPlaybackStream()I
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/a;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Audio;->AUDIO_TRACK_VOICE_CALL_STREAM:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public final getRecordingSource()I
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/a;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Audio;->AUDIO_RECORD_AUDIO_SOURCE:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public final startBluetoothScoInternal()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/a;->a:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    return-void
.end method

.method public final stopBluetoothSco()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/a;->a:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    return-void
.end method
