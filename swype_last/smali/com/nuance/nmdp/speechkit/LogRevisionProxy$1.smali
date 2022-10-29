.class Lcom/nuance/nmdp/speechkit/LogRevisionProxy$1;
.super Lcom/nuance/nmdp/speechkit/LogRevisionCmdImpl;
.source "LogRevisionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/LogRevisionProxy;->createCommand(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;Ljava/util/List;)Lcom/nuance/nmdp/speechkit/CommandBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/LogRevisionProxy;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/LogRevisionProxy;Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p2, "x0"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 44
    .local p5, "x3":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;>;"
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/LogRevisionProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/LogRevisionProxy;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/nuance/nmdp/speechkit/LogRevisionCmdImpl;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected onError(Lcom/nuance/nmdp/speechkit/SpeechError;)V
    .registers 3
    .param p1, "error"    # Lcom/nuance/nmdp/speechkit/SpeechError;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LogRevisionProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/LogRevisionProxy;

    # setter for: Lcom/nuance/nmdp/speechkit/LogRevisionProxy;->_error:Lcom/nuance/nmdp/speechkit/SpeechError;
    invoke-static {v0, p1}, Lcom/nuance/nmdp/speechkit/LogRevisionProxy;->access$002(Lcom/nuance/nmdp/speechkit/LogRevisionProxy;Lcom/nuance/nmdp/speechkit/SpeechError;)Lcom/nuance/nmdp/speechkit/SpeechError;

    .line 49
    return-void
.end method

.method protected onResults(Lcom/nuance/nmdp/speechkit/GenericResult;)V
    .registers 4
    .param p1, "result"    # Lcom/nuance/nmdp/speechkit/GenericResult;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LogRevisionProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/LogRevisionProxy;

    new-instance v1, Lcom/nuance/nmdp/speechkit/LogRevisionProxy$1$1;

    invoke-direct {v1, p0, p1}, Lcom/nuance/nmdp/speechkit/LogRevisionProxy$1$1;-><init>(Lcom/nuance/nmdp/speechkit/LogRevisionProxy$1;Lcom/nuance/nmdp/speechkit/GenericResult;)V

    # invokes: Lcom/nuance/nmdp/speechkit/LogRevisionProxy;->callback(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/LogRevisionProxy;->access$200(Lcom/nuance/nmdp/speechkit/LogRevisionProxy;Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method

.method protected bridge synthetic onResults(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p1, Lcom/nuance/nmdp/speechkit/GenericResult;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/LogRevisionProxy$1;->onResults(Lcom/nuance/nmdp/speechkit/GenericResult;)V

    return-void
.end method
