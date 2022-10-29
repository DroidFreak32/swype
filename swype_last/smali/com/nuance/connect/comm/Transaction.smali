.class public interface abstract Lcom/nuance/connect/comm/Transaction;
.super Ljava/lang/Object;


# static fields
.field public static final REJECTED_INVALID_DEVICE:I = 0x3

.field public static final REJECTED_OFFLINE:I = 0x2

.field public static final REJECTED_SHUTDOWN:I = 0x1


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

.method public abstract getNextCommand()Lcom/nuance/connect/comm/Command;
.end method

.method public abstract getPersistantConfig()Lcom/nuance/connect/comm/PersistantConnectionConfig;
.end method

.method public abstract getPriority()I
.end method

.method public abstract getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;
.end method

.method public abstract isSame(Lcom/nuance/connect/comm/Transaction;)Z
.end method

.method public abstract onEndProcessing()V
.end method

.method public abstract onTransactionOfflineQueued()Z
.end method

.method public abstract onTransactionRejected(I)V
.end method

.method public abstract requiresDeviceId()Z
.end method

.method public abstract requiresPersistantConnection()Z
.end method

.method public abstract requiresSessionId()Z
.end method

.method public abstract wifiOnly()Z
.end method
