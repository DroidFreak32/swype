.class public interface abstract Lcom/nuance/connect/service/comm/Transaction;
.super Ljava/lang/Object;


# virtual methods
.method public abstract allowDuplicates()Z
.end method

.method public abstract cancel()V
.end method

.method public abstract createDownloadFile(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getDownloadFile()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNextCommand()Lcom/nuance/connect/service/comm/Command;
.end method

.method public abstract getPriority()I
.end method

.method public abstract getRequestType()Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;
.end method

.method public abstract isSame(Lcom/nuance/connect/service/comm/Transaction;)Z
.end method

.method public abstract onEndProcessing()V
.end method

.method public abstract requiresDeviceId()Z
.end method

.method public abstract requiresSessionId()Z
.end method

.method public abstract wifiOnly()Z
.end method
