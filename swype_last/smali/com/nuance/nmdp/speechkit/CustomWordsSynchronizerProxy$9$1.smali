.class Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9$1;
.super Ljava/lang/Object;
.source "CustomWordsSynchronizerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9;->onResults(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;ILcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9;

.field final synthetic val$actionType:I

.field final synthetic val$result:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9;ILcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;)V
    .registers 4

    .prologue
    .line 144
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9$1;->this$1:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9;

    iput p2, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9$1;->val$actionType:I

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9$1;->val$result:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 148
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9$1;->this$1:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;

    # invokes: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->listener()Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->access$300(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9$1;->this$1:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9;

    iget-object v1, v1, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;

    iget v2, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9$1;->val$actionType:I

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9$1;->val$result:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;->onResults(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;ILcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;)V

    .line 149
    return-void
.end method
