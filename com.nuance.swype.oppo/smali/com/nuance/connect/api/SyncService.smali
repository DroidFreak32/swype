.class public interface abstract Lcom/nuance/connect/api/SyncService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/api/SyncService$DLMSyncCallback;
    }
.end annotation


# static fields
.field public static final ERROR_SYNC_IGNORED:I = 0x12d


# virtual methods
.method public abstract backupRequest(I)V
.end method

.method public abstract cleanRestore(I)V
.end method

.method public abstract dlmSyncEnabled()Z
.end method

.method public abstract registerCallback(Lcom/nuance/connect/api/SyncService$DLMSyncCallback;)V
.end method

.method public abstract restoreRequest(I)V
.end method

.method public abstract setDLMSyncStatus(Z)V
.end method

.method public abstract setSyncInterval(I)V
.end method

.method public abstract syncNow()V
.end method

.method public abstract unregisterCallback(Lcom/nuance/connect/api/SyncService$DLMSyncCallback;)V
.end method

.method public abstract unregisterCallbacks()V
.end method
