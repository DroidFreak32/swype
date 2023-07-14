.class public Lcom/nuance/nmsp/client/sdk/components/audiorecord/NMSPAudioManager;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRecorder(Lcom/nuance/nmsp/client/sdk/components/audiorecord/NMSPAudioRecordListener;Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Ljava/util/Vector;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$InputDevice;)Lcom/nuance/nmsp/client/sdk/components/audiorecord/Recorder;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "NMSPAudioRecordListener can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Manager can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;-><init>(Lcom/nuance/nmsp/client/sdk/components/audiorecord/NMSPAudioRecordListener;Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Ljava/util/Vector;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$InputDevice;)V

    return-object v0
.end method
