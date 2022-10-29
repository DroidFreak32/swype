.class Lcom/nuance/nmdp/speechkit/DataUploadProxy$1$2;
.super Ljava/lang/Object;
.source "DataUploadProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/DataUploadProxy$1;->onResults(Lcom/nuance/nmdp/speechkit/DataUploadResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/nmdp/speechkit/DataUploadProxy$1;

.field final synthetic val$result:Lcom/nuance/nmdp/speechkit/DataUploadResult;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/DataUploadProxy$1;Lcom/nuance/nmdp/speechkit/DataUploadResult;)V
    .registers 3

    .prologue
    .line 59
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/DataUploadProxy$1$2;->this$1:Lcom/nuance/nmdp/speechkit/DataUploadProxy$1;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/DataUploadProxy$1$2;->val$result:Lcom/nuance/nmdp/speechkit/DataUploadResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadProxy$1$2;->this$1:Lcom/nuance/nmdp/speechkit/DataUploadProxy$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/DataUploadProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/DataUploadProxy;

    # getter for: Lcom/nuance/nmdp/speechkit/DataUploadProxy;->_listener:Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/DataUploadProxy;->access$000(Lcom/nuance/nmdp/speechkit/DataUploadProxy;)Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 64
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadProxy$1$2;->this$1:Lcom/nuance/nmdp/speechkit/DataUploadProxy$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/DataUploadProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/DataUploadProxy;

    # getter for: Lcom/nuance/nmdp/speechkit/DataUploadProxy;->_listener:Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/DataUploadProxy;->access$000(Lcom/nuance/nmdp/speechkit/DataUploadProxy;)Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/DataUploadProxy$1$2;->this$1:Lcom/nuance/nmdp/speechkit/DataUploadProxy$1;

    iget-object v1, v1, Lcom/nuance/nmdp/speechkit/DataUploadProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/DataUploadProxy;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/DataUploadProxy$1$2;->val$result:Lcom/nuance/nmdp/speechkit/DataUploadResult;

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;->onResults(Lcom/nuance/nmdp/speechkit/DataUploadCommand;Lcom/nuance/nmdp/speechkit/DataUploadResult;)V

    .line 65
    :cond_1b
    return-void
.end method
