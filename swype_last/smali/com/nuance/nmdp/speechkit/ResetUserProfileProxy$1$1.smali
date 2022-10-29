.class Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy$1$1;
.super Ljava/lang/Object;
.source "ResetUserProfileProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy$1;->onResults(Lcom/nuance/nmdp/speechkit/GenericResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy$1;

.field final synthetic val$result:Lcom/nuance/nmdp/speechkit/GenericResult;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy$1;Lcom/nuance/nmdp/speechkit/GenericResult;)V
    .registers 3

    .prologue
    .line 51
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy$1$1;->this$1:Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy$1;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy$1$1;->val$result:Lcom/nuance/nmdp/speechkit/GenericResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy$1$1;->this$1:Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;

    # getter for: Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;->_listener:Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;->access$100(Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;)Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 56
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy$1$1;->this$1:Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;

    # getter for: Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;->_listener:Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;->access$100(Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;)Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy$1$1;->this$1:Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy$1;

    iget-object v1, v1, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy$1$1;->val$result:Lcom/nuance/nmdp/speechkit/GenericResult;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy$1$1;->this$1:Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy$1;

    iget-object v3, v3, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;

    # getter for: Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;->_error:Lcom/nuance/nmdp/speechkit/SpeechError;
    invoke-static {v3}, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;->access$000(Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;)Lcom/nuance/nmdp/speechkit/SpeechError;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;->onComplete(Lcom/nuance/nmdp/speechkit/GenericCommand;Lcom/nuance/nmdp/speechkit/GenericResult;Lcom/nuance/nmdp/speechkit/SpeechError;)V

    .line 57
    :cond_23
    return-void
.end method
