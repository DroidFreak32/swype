.class public interface abstract Lcom/nuance/connect/api/PlatformUpdateService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/api/PlatformUpdateService$UpdateCallback;,
        Lcom/nuance/connect/api/PlatformUpdateService$DownloadCallback;
    }
.end annotation


# virtual methods
.method public abstract cancelDownload()V
.end method

.method public abstract downloadUpdate(Lcom/nuance/connect/api/PlatformUpdateService$DownloadCallback;)V
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract registerCallback(Lcom/nuance/connect/api/PlatformUpdateService$UpdateCallback;)V
.end method

.method public abstract unregisterCallback(Lcom/nuance/connect/api/PlatformUpdateService$DownloadCallback;)V
.end method

.method public abstract unregisterCallback(Lcom/nuance/connect/api/PlatformUpdateService$UpdateCallback;)V
.end method

.method public abstract unregisterCallbacks()V
.end method
