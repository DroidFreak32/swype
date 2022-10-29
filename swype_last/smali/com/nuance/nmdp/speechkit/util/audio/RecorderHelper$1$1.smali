.class Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$1$1;
.super Ljava/lang/Object;
.source "RecorderHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$1;->addAudioBuf([BIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$1;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$1;)V
    .registers 2

    .prologue
    .line 315
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$1$1;->this$1:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$1$1;->this$1:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper$1;->this$0:Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/audio/RecorderHelper;->stopRecorder()V

    .line 319
    return-void
.end method
