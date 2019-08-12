.class public interface abstract Lcom/nuance/nmsp/client/sdk/components/audiorecord/Recorder;
.super Ljava/lang/Object;


# static fields
.field public static final BUFFER_RECORDED:Ljava/lang/String; = "BUFFER_RECORDED"

.field public static final CAPTURE_TIMEOUT:Ljava/lang/String; = "CAPTURE_TIMEOUT"

.field public static final END_OF_SPEECH:Ljava/lang/String; = "END_OF_SPEECH"

.field public static final NO_SPEECH:Ljava/lang/String; = "NO_SPEECH"

.field public static final RECORD_ERROR:Ljava/lang/String; = "RECORD_ERROR"

.field public static final STARTED:Ljava/lang/String; = "STARTED"

.field public static final START_OF_SPEECH:Ljava/lang/String; = "START_OF_SPEECH"

.field public static final STOPPED:Ljava/lang/String; = "STOPPED"


# virtual methods
.method public abstract getParams(Ljava/util/Vector;)Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/resource/common/ResourceException;
        }
    .end annotation
.end method

.method public abstract startCapturing(Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;I)V
.end method

.method public abstract startRecording()V
.end method

.method public abstract startRecording(Lcom/nuance/nmsp/client/sdk/components/general/NMSPAudioSink;I)V
.end method

.method public abstract stopCapturing()V
.end method

.method public abstract stopRecording()V
.end method
