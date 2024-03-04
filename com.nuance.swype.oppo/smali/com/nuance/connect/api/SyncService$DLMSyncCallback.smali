.class public interface abstract Lcom/nuance/connect/api/SyncService$DLMSyncCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/api/SyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DLMSyncCallback"
.end annotation


# virtual methods
.method public abstract backupOccurred(II)V
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract receivedEvents(II)V
.end method

.method public abstract restoreOccurred(II)V
.end method

.method public abstract sentEvents(II)V
.end method
