.class final Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;


# direct methods
.method constructor <init>(Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl$1;->a:Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl$1;->a:Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;)Lcom/nuance/nmsp/client/sdk/common/oem/api/TimerSystem$TimerSystemTask;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl$1;->a:Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl$1;->a:Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->handleStopCapturing(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl$1;->a:Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;

    invoke-static {v0, v2}, Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;->a(Lcom/nuance/nmsp/client/sdk/components/internal/audiorecord/RecorderImpl;Z)V

    goto :goto_0
.end method
