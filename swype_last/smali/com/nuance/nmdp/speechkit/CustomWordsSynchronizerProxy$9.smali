.class Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9;
.super Ljava/lang/Object;
.source "CustomWordsSynchronizerProxy.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->createCustomWordsSynchronizerListener()Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;)V
    .registers 2

    .prologue
    .line 140
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;ILcom/nuance/nmdp/speechkit/SpeechError;)V
    .registers 6
    .param p1, "synchronizer"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;
    .param p2, "actionType"    # I
    .param p3, "error"    # Lcom/nuance/nmdp/speechkit/SpeechError;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;

    new-instance v1, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9$2;-><init>(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9;ILcom/nuance/nmdp/speechkit/SpeechError;)V

    # invokes: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->callback(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->access$500(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;Ljava/lang/Runnable;)V

    .line 162
    return-void
.end method

.method public onResults(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;ILcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;)V
    .registers 6
    .param p1, "synchronizer"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;
    .param p2, "actionType"    # I
    .param p3, "result"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;

    new-instance v1, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9$1;-><init>(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9;ILcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;)V

    # invokes: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->callback(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->access$400(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method
