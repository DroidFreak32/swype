.class Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy$1;
.super Lcom/nuance/nmdp/speechkit/ResetUserProfileCmdImpl;
.source "ResetUserProfileProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;->createCommand(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;Ljava/util/List;)Lcom/nuance/nmdp/speechkit/CommandBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;
    .param p3, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;

    invoke-direct {p0, p2, p3}, Lcom/nuance/nmdp/speechkit/ResetUserProfileCmdImpl;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onError(Lcom/nuance/nmdp/speechkit/SpeechError;)V
    .locals 1
    .param p1, "error"    # Lcom/nuance/nmdp/speechkit/SpeechError;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;

    invoke-static {v0, p1}, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;->access$002(Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;Lcom/nuance/nmdp/speechkit/SpeechError;)Lcom/nuance/nmdp/speechkit/SpeechError;

    .line 46
    return-void
.end method

.method protected onResults(Lcom/nuance/nmdp/speechkit/GenericResult;)V
    .locals 2
    .param p1, "result"    # Lcom/nuance/nmdp/speechkit/GenericResult;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;

    new-instance v1, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy$1$1;

    invoke-direct {v1, p0, p1}, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy$1$1;-><init>(Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy$1;Lcom/nuance/nmdp/speechkit/GenericResult;)V

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;->access$200(Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy;Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method

.method protected bridge synthetic onResults(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 41
    check-cast p1, Lcom/nuance/nmdp/speechkit/GenericResult;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/ResetUserProfileProxy$1;->onResults(Lcom/nuance/nmdp/speechkit/GenericResult;)V

    return-void
.end method
