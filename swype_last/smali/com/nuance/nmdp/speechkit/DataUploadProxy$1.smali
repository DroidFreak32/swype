.class Lcom/nuance/nmdp/speechkit/DataUploadProxy$1;
.super Lcom/nuance/nmdp/speechkit/DataUploadCmdImpl;
.source "DataUploadProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/DataUploadProxy;->createCommand(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;Ljava/util/List;)Lcom/nuance/nmdp/speechkit/CommandBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/DataUploadProxy;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/DataUploadProxy;Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .param p2, "x0"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;
    .param p3, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    .local p4, "x2":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/nmdp/speechkit/transaction/generic/IGenericParam;>;"
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/DataUploadProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/DataUploadProxy;

    invoke-direct {p0, p2, p3, p4}, Lcom/nuance/nmdp/speechkit/DataUploadCmdImpl;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected onError(Lcom/nuance/nmdp/speechkit/SpeechError;)V
    .registers 4
    .param p1, "error"    # Lcom/nuance/nmdp/speechkit/SpeechError;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/DataUploadProxy;

    new-instance v1, Lcom/nuance/nmdp/speechkit/DataUploadProxy$1$1;

    invoke-direct {v1, p0, p1}, Lcom/nuance/nmdp/speechkit/DataUploadProxy$1$1;-><init>(Lcom/nuance/nmdp/speechkit/DataUploadProxy$1;Lcom/nuance/nmdp/speechkit/SpeechError;)V

    # invokes: Lcom/nuance/nmdp/speechkit/DataUploadProxy;->callback(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/DataUploadProxy;->access$100(Lcom/nuance/nmdp/speechkit/DataUploadProxy;Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method

.method protected onResults(Lcom/nuance/nmdp/speechkit/DataUploadResult;)V
    .registers 4
    .param p1, "result"    # Lcom/nuance/nmdp/speechkit/DataUploadResult;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadProxy$1;->this$0:Lcom/nuance/nmdp/speechkit/DataUploadProxy;

    new-instance v1, Lcom/nuance/nmdp/speechkit/DataUploadProxy$1$2;

    invoke-direct {v1, p0, p1}, Lcom/nuance/nmdp/speechkit/DataUploadProxy$1$2;-><init>(Lcom/nuance/nmdp/speechkit/DataUploadProxy$1;Lcom/nuance/nmdp/speechkit/DataUploadResult;)V

    # invokes: Lcom/nuance/nmdp/speechkit/DataUploadProxy;->callback(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/DataUploadProxy;->access$200(Lcom/nuance/nmdp/speechkit/DataUploadProxy;Ljava/lang/Runnable;)V

    .line 67
    return-void
.end method

.method protected bridge synthetic onResults(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 41
    check-cast p1, Lcom/nuance/nmdp/speechkit/DataUploadResult;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/DataUploadProxy$1;->onResults(Lcom/nuance/nmdp/speechkit/DataUploadResult;)V

    return-void
.end method
