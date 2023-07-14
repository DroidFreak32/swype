.class public abstract Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/comm/ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/comm/AbstractTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "AbstractResponseCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/comm/AbstractTransaction;


# direct methods
.method public constructor <init>(Lcom/nuance/connect/comm/AbstractTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/nuance/connect/comm/Command;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    invoke-static {v0}, Lcom/nuance/connect/comm/AbstractTransaction;->access$000(Lcom/nuance/connect/comm/AbstractTransaction;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onCancel transaction:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    invoke-virtual {v2}, Lcom/nuance/connect/comm/AbstractTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    iget-object v0, v0, Lcom/nuance/connect/comm/AbstractTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    iget-object v0, v0, Lcom/nuance/connect/comm/AbstractTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/connect/comm/Command;->canceled:Z

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->rollback()V

    iget-object v0, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nuance/connect/comm/AbstractTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    return-void
.end method

.method public onDownloadStatusResponse(Lcom/nuance/connect/comm/Command;II)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    invoke-static {v0}, Lcom/nuance/connect/comm/AbstractTransaction;->access$000(Lcom/nuance/connect/comm/AbstractTransaction;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "onDownloadStatusResponse "

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public onFailure(Lcom/nuance/connect/comm/Command;)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    invoke-static {v0}, Lcom/nuance/connect/comm/AbstractTransaction;->access$000(Lcom/nuance/connect/comm/AbstractTransaction;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onFailure transaction: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    invoke-virtual {v2}, Lcom/nuance/connect/comm/AbstractTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nuance/connect/comm/AbstractTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    invoke-virtual {p0}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->rollback()V

    return-void
.end method

.method public onFileResponse(Lcom/nuance/connect/comm/Response;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    invoke-static {v0}, Lcom/nuance/connect/comm/AbstractTransaction;->access$000(Lcom/nuance/connect/comm/AbstractTransaction;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "onFileResponse"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "onFileResponse not overloaded (If called, this needs to be overridden)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onIOExceptionResponse(Lcom/nuance/connect/comm/Command;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nuance/connect/comm/AbstractTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    invoke-virtual {p0}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->rollback()V

    return-void
.end method

.method public onRetry(Lcom/nuance/connect/comm/Command;IILjava/lang/String;)Z
    .locals 11

    iget-object v0, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    invoke-static {v0}, Lcom/nuance/connect/comm/AbstractTransaction;->access$000(Lcom/nuance/connect/comm/AbstractTransaction;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "onRetry transaction:"

    iget-object v2, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    invoke-virtual {v2}, Lcom/nuance/connect/comm/AbstractTransaction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " delay: "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, " statusCode: "

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, " statusMessage: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, " retryCount: "

    iget-object v10, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    iget-object v10, v10, Lcom/nuance/connect/comm/AbstractTransaction;->retryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface/range {v0 .. v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    iget-object v0, v0, Lcom/nuance/connect/comm/AbstractTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    iget-object v0, v0, Lcom/nuance/connect/comm/AbstractTransaction;->processingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    invoke-virtual {v0}, Lcom/nuance/connect/comm/AbstractTransaction;->getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    invoke-static {v0}, Lcom/nuance/connect/comm/AbstractTransaction;->access$000(Lcom/nuance/connect/comm/AbstractTransaction;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v1

    const-string/jumbo v2, "retry: "

    iget-object v0, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    iget-object v0, v0, Lcom/nuance/connect/comm/AbstractTransaction;->retryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v3, 0x3

    if-gt v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    iget-object v0, v0, Lcom/nuance/connect/comm/AbstractTransaction;->retryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    invoke-static {v0}, Lcom/nuance/connect/comm/AbstractTransaction;->access$000(Lcom/nuance/connect/comm/AbstractTransaction;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "retry: "

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public rollback()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;->this$0:Lcom/nuance/connect/comm/AbstractTransaction;

    invoke-virtual {v0}, Lcom/nuance/connect/comm/AbstractTransaction;->rollback()V

    return-void
.end method
