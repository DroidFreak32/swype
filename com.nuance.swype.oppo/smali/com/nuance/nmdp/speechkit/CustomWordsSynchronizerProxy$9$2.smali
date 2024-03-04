.class Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9$2;
.super Ljava/lang/Object;
.source "CustomWordsSynchronizerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9;->onError(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;ILcom/nuance/nmdp/speechkit/SpeechError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9;

.field final synthetic val$actionType:I

.field final synthetic val$error:Lcom/nuance/nmdp/speechkit/SpeechError;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9;ILcom/nuance/nmdp/speechkit/SpeechError;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9$2;->this$1:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9;

    iput p2, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9$2;->val$actionType:I

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9$2;->val$error:Lcom/nuance/nmdp/speechkit/SpeechError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 159
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9$2;->this$1:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->access$300(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9$2;->this$1:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9;

    iget-object v1, v1, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;

    iget v2, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9$2;->val$actionType:I

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$9$2;->val$error:Lcom/nuance/nmdp/speechkit/SpeechError;

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;->onError(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;ILcom/nuance/nmdp/speechkit/SpeechError;)V

    .line 160
    return-void
.end method
