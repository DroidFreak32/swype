.class public interface abstract Lcom/nuance/connect/service/comm/ResponseCallback;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onCancel(Lcom/nuance/connect/service/comm/Command;)V
.end method

.method public abstract onDownloadStatusResponse(Lcom/nuance/connect/service/comm/Command;II)V
.end method

.method public abstract onFailure(Lcom/nuance/connect/service/comm/Command;)V
.end method

.method public abstract onFileResponse(Lcom/nuance/connect/service/comm/Response;)V
.end method

.method public abstract onIOExceptionResponse(Lcom/nuance/connect/service/comm/Command;)V
.end method

.method public abstract onResponse(Lcom/nuance/connect/service/comm/Response;)V
.end method

.method public abstract onRetry(Lcom/nuance/connect/service/comm/Command;IILjava/lang/String;)Z
.end method
