.class public interface abstract Lcom/nuance/connect/api/LanguageService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/api/LanguageService$DownloadCallback;,
        Lcom/nuance/connect/api/LanguageService$ListCallback;,
        Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;,
        Lcom/nuance/connect/api/LanguageService$LdbInfo;
    }
.end annotation


# virtual methods
.method public abstract cancelDownload(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation
.end method

.method public abstract cancelDownload(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation
.end method

.method public abstract downloadLanguage(ILcom/nuance/connect/api/LanguageService$DownloadCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation
.end method

.method public abstract downloadLanguage(ILjava/lang/String;Lcom/nuance/connect/api/LanguageService$DownloadCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation
.end method

.method public abstract getDownloadLdbFlavorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/LanguageService$LdbFlavorInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDownloadLdbList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/LanguageService$LdbInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isLanguageListAvailable()Z
.end method

.method public abstract languageUninstalled(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation
.end method

.method public abstract languageUninstalled(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/api/ConnectException;
        }
    .end annotation
.end method

.method public abstract notifyCallbacksOfStatus()V
.end method

.method public abstract registerCallback(Lcom/nuance/connect/api/LanguageService$ListCallback;)V
.end method

.method public abstract setUsingBaseline()V
.end method

.method public abstract unregisterCallback(Lcom/nuance/connect/api/LanguageService$ListCallback;)V
.end method

.method public abstract unregisterCallbacks()V
.end method
