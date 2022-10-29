.class public Lcom/nuance/nmsp/client/sdk/components/audioplayback/NMSPAudioManager;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPlayer(Lcom/nuance/nmsp/client/sdk/components/audioplayback/NMSPAudioPlaybackListener;Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Ljava/util/Vector;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;)Lcom/nuance/nmsp/client/sdk/components/audioplayback/Player;
    .registers 6

    if-nez p0, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "NMSPAudioPlaybackListener can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    if-nez p1, :cond_16

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Manager can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/nuance/nmsp/client/sdk/components/internal/audioplayback/PlayerImpl;-><init>(Lcom/nuance/nmsp/client/sdk/components/audioplayback/NMSPAudioPlaybackListener;Lcom/nuance/nmsp/client/sdk/components/resource/common/Manager;Ljava/util/Vector;Lcom/nuance/nmsp/client/sdk/common/defines/NMSPDefines$AudioSystem$OutputDevice;)V

    return-object v0
.end method
