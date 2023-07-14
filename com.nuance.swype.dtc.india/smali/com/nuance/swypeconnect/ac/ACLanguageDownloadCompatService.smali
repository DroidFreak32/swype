.class public Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;
.super Lcom/nuance/swypeconnect/ac/ACService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$ACLanguageDownloadListCallback;,
        Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$ACLanguageDownloadFileCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final REASON_FAILED_DISK_FULL:I = 0x6

.field public static final REASON_FAILED_HTTP:I = 0x0

.field public static final REASON_FAILED_MAX_RETRY:I = 0x1

.field public static final REASON_NETWORK_TIMEOUT:I = 0x4

.field public static final REASON_USER_CANCELED:I = 0x3


# instance fields
.field private almsAreUpgrades:Z

.field private final languageListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/util/ConcurrentCallbackSet",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$ACLanguageDownloadListCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final languageService:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

.field private final listCallback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;

.field private final manager:Lcom/nuance/swypeconnect/ac/ACManager;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACManager;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACService;-><init>()V

    new-instance v0, Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-direct {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->languageListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->almsAreUpgrades:Z

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$1;-><init>(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->listCallback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->languageService:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->listCallback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;

    invoke-virtual {p2, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->registerCallback(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;)Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->languageListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;)Lcom/nuance/swypeconnect/ac/ACManager;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    return-object v0
.end method

.method private isUpdateAvailable(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;)Z
    .locals 1

    invoke-interface {p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;->isPreinstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;->isDownloaded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->almsAreUpgrades:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;->getEnhancedLanguageModels()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;->isNewerVersionAvailable()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;->isNewerVersionAvailable()Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addExistingLanguage(Ljava/lang/Integer;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->languageService:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->addExistingLanguage(Ljava/lang/Integer;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->listCallback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;->onLanguageListUpdate()V

    return-void
.end method

.method public addExistingLanguage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->languageService:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->addExistingLanguage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->listCallback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;->onLanguageListUpdate()V

    return-void
.end method

.method public addSupportedLanguage(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->languageService:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->addSupportedLanguage(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->listCallback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;->onLanguageListUpdate()V

    return-void
.end method

.method public addSupportedLanguages(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->languageService:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->addSupportedLanguages(Ljava/util/List;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->listCallback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;->onLanguageListUpdate()V

    return-void
.end method

.method public cancelDownload(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->languageService:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->cancelDownload(I)V

    return-void
.end method

.method public downloadLanguage(ILcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$ACLanguageDownloadFileCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->languageService:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloadLanguage(ILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V

    return-void
.end method

.method public downloadLanguageFlavor(ILjava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$ACLanguageDownloadFileCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->MLM:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->languageService:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->MLM:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    invoke-virtual {v0, p1, v1, p3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloadLanguage(ILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Baseline:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->languageService:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Baseline:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    invoke-virtual {v0, p1, v1, p3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloadLanguage(ILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->languageService:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->downloadLanguageFlavor(ILjava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V

    goto :goto_0
.end method

.method public getAvailableLanguages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->languageService:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->getDatabaseList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;->isPreinstalled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;->isDownloaded()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;->getXt9LanguageId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getDownloadedLanguages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->languageService:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->getDatabaseList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;->isDownloaded()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->isUpdateAvailable(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;->getXt9LanguageId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getExistingLanguages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->languageService:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->getDatabaseList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;->isPreinstalled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;->getXt9LanguageId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "LANGUAGE_COMPAT"

    return-object v0
.end method

.method public getUpdatableLanguages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->languageService:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->getDatabaseList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;

    invoke-direct {p0, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->isUpdateAvailable(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;->getXt9LanguageId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public isFlavorAvailable(ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->languageService:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-virtual {v2, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->getDatabase(I)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;->getFlavors()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;->getTypes()[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->MLM:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->MLM:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Baseline:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->Baseline:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isLanguageListAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->languageService:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->isLanguageListAvailable()Z

    move-result v0

    return v0
.end method

.method public languageUninstalled(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->languageService:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->languageUninstalled(I)V

    return-void
.end method

.method public registerCallback(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$ACLanguageDownloadListCallback;Z)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->languageListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->getAvailableLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$ACLanguageDownloadListCallback;->availableLanguages(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->getDownloadedLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$ACLanguageDownloadListCallback;->downloadedLanguages(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->getUpdatableLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$ACLanguageDownloadListCallback;->updatableLanguages(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public removeSupportedLanguage(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->languageService:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->removeSupportedLanguage(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->listCallback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;->onLanguageListUpdate()V

    return-void
.end method

.method protected requireInitialization()Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->languageService:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->requireInitialization()Z

    move-result v0

    return v0
.end method

.method protected requiresDocument(I)Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->languageService:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;

    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadServiceBase;->requiresDocument(I)Z

    move-result v0

    return v0
.end method

.method shutdown()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->isShutdown:Z

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->unregisterCallbacks()V

    return-void
.end method

.method start()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->isShutdown:Z

    return-void
.end method

.method public unregisterCallback(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService$ACLanguageDownloadListCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->languageListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterCallbacks()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->languageListCallbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->clear()V

    return-void
.end method

.method public useOnlyVersionForUpdate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->almsAreUpgrades:Z

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadCompatService;->listCallback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;->onLanguageListUpdate()V

    return-void
.end method
