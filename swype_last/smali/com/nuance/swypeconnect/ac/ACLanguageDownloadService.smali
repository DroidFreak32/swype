.class public interface abstract Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;,
        Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;,
        Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;,
        Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;
    }
.end annotation


# static fields
.field public static final REASON_FAILED_DISK_FULL:I = 0x6

.field public static final REASON_FAILED_HTTP:I = 0x0

.field public static final REASON_FAILED_MAX_RETRY:I = 0x1

.field public static final REASON_NETWORK_TIMEOUT:I = 0x4

.field public static final REASON_USER_CANCELED:I = 0x3


# virtual methods
.method public abstract addExistingLanguage(Ljava/lang/Integer;[Ljava/lang/String;)V
.end method

.method public abstract addExistingLanguage(Ljava/lang/String;)V
.end method

.method public abstract addSupportedLanguage(Ljava/lang/Integer;)V
.end method

.method public abstract addSupportedLanguages(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract cancelDownload(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation
.end method

.method public abstract downloadLanguage(ILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation
.end method

.method public abstract downloadLanguage(ILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation
.end method

.method public abstract downloadLanguageFlavor(ILjava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation
.end method

.method public abstract getDatabase(I)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation
.end method

.method public abstract getDatabaseList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isLanguageListAvailable()Z
.end method

.method public abstract languageUninstalled(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation
.end method

.method public abstract registerCallback(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;)V
.end method

.method public abstract removeSupportedLanguage(Ljava/lang/Integer;)V
.end method

.method public abstract unregisterCallback(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;)V
.end method

.method public abstract unregisterCallbacks()V
.end method
