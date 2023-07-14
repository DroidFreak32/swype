.class public interface abstract Lcom/nuance/connect/api/DLMConnector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/api/DLMConnector$EventNotificationCallback;,
        Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;,
        Lcom/nuance/connect/api/DLMConnector$ScannerBucketSet;,
        Lcom/nuance/connect/api/DLMConnector$DLMInfo;,
        Lcom/nuance/connect/api/DLMConnector$DLMInformation;,
        Lcom/nuance/connect/api/DLMConnector$ScannerBucket;
    }
.end annotation


# virtual methods
.method public abstract getScannerBucket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZIZ)Lcom/nuance/connect/api/DLMConnector$ScannerBucket;
.end method

.method public abstract getScannerBucket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[IIZIZ)Lcom/nuance/connect/api/DLMConnector$ScannerBucket;
.end method

.method public abstract isSupportedCore(I)Z
.end method

.method public abstract onBeginBackup(I)V
.end method

.method public abstract onDlmEvent(ILjava/lang/String;JZ)V
.end method

.method public abstract onEndBackup()V
.end method

.method public abstract onReset(IZ)V
.end method

.method public abstract registerDlmCallback(ILcom/nuance/connect/api/DLMConnector$DlmEventCallback;)V
.end method

.method public abstract resume()V
.end method

.method public abstract resume(I)V
.end method

.method public abstract setDLMInfo(Lcom/nuance/connect/api/DLMConnector$DLMInformation;)V
.end method

.method public abstract unregisterDlmCallback(I)V
.end method

.method public abstract yield()V
.end method

.method public abstract yield(I)V
.end method
