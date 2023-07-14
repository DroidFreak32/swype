.class public interface abstract Lcom/nuance/connect/comm/ResponseCallback;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onCancel(Lcom/nuance/connect/comm/Command;)V
.end method

.method public abstract onDownloadStatusResponse(Lcom/nuance/connect/comm/Command;II)V
.end method

.method public abstract onFailure(Lcom/nuance/connect/comm/Command;)V
.end method

.method public abstract onFileResponse(Lcom/nuance/connect/comm/Response;)V
.end method

.method public abstract onIOExceptionResponse(Lcom/nuance/connect/comm/Command;)V
.end method

.method public abstract onResponse(Lcom/nuance/connect/comm/Response;)V
.end method

.method public abstract onRetry(Lcom/nuance/connect/comm/Command;IILjava/lang/String;)Z
.end method
