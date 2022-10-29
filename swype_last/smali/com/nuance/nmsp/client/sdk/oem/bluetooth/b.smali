.class final Lcom/nuance/nmsp/client/sdk/oem/bluetooth/b;
.super Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Bluetooth;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final getPlaybackStream()I
    .registers 2

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/b;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Audio;->AUDIO_TRACK_VOICE_CALL_STREAM:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x3

    goto :goto_8
.end method

.method public final getRecordingSource()I
    .registers 2

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/b;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/Audio;->AUDIO_RECORD_AUDIO_SOURCE:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x6

    goto :goto_8
.end method

.method public final startBluetoothScoInternal()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/b;->mHeadset:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->startVoiceRecognition()Z

    return-void
.end method

.method public final stopBluetoothSco()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/b;->mHeadset:Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/oem/bluetooth/BluetoothHeadsetOEM;->stopVoiceRecognition()Z

    return-void
.end method
