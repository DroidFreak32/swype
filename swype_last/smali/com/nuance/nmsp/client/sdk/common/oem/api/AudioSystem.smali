.class public interface abstract Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStoppedCallback;,
        Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStartedCallback;,
        Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndOfSpeechCallback;,
        Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$NoSpeechCallback;,
        Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StartOfSpeechCallback;,
        Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$ErrorCallback;,
        Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;,
        Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$DoneCallback;,
        Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioCallback;,
        Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$IntegerMutable;,
        Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioStatus;,
        Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;,
        Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;
    }
.end annotation


# virtual methods
.method public abstract getInputDevice()Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;
.end method

.method public abstract getOutputDevice()Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;
.end method

.method public abstract getParams(Ljava/util/Vector;)Ljava/util/Vector;
.end method

.method public abstract nextPlayback()Z
.end method

.method public abstract pausePlayback(I)Z
.end method

.method public abstract pauseRecording(I)V
.end method

.method public abstract previousPlayback()Z
.end method

.method public abstract startPlayback(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$OutputDevice;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$DoneCallback;Ljava/lang/Object;)Z
.end method

.method public abstract startRecording(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$InputDevice;ZLcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$AudioCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$ErrorCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StartOfSpeechCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$NoSpeechCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndOfSpeechCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStartedCallback;Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStoppedCallback;Ljava/lang/Object;)Z
.end method

.method public abstract stopPlayback(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;Ljava/lang/Object;)V
.end method

.method public abstract stopRecording(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$StopCallback;Ljava/lang/Object;)V
.end method

.method public abstract turnOffEndPointer(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStoppedCallback;Ljava/lang/Object;)V
.end method

.method public abstract turnOnEndPointer(Lcom/nuance/nmsp/client/sdk/common/oem/api/AudioSystem$EndPointerStartedCallback;Ljava/lang/Object;)V
.end method
