.class Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;
.super Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
.source "SDKDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/SDKDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalDownloadableLanguage"
.end annotation


# instance fields
.field private final filePathList:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;[Ljava/lang/String;Lcom/nuance/swype/connect/SDKDownloadManager;)V
    .locals 0
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "status"    # Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;
    .param p3, "type"    # Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;
    .param p4, "filePathList"    # [Ljava/lang/String;
    .param p5, "mgr"    # Lcom/nuance/swype/connect/SDKDownloadManager;

    .prologue
    .line 1251
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;-><init>(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;Lcom/nuance/swype/connect/SDKDownloadManager;)V

    .line 1253
    iput-object p4, p0, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;->filePathList:[Ljava/lang/String;

    .line 1254
    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;[Ljava/lang/String;Lcom/nuance/swype/connect/SDKDownloadManager;Lcom/nuance/swype/connect/SDKDownloadManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "x1"    # Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;
    .param p3, "x2"    # Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;
    .param p4, "x3"    # [Ljava/lang/String;
    .param p5, "x4"    # Lcom/nuance/swype/connect/SDKDownloadManager;
    .param p6, "x5"    # Lcom/nuance/swype/connect/SDKDownloadManager$1;

    .prologue
    .line 1247
    invoke-direct/range {p0 .. p5}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;-><init>(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;[Ljava/lang/String;Lcom/nuance/swype/connect/SDKDownloadManager;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;
    .param p1, "x1"    # Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    .prologue
    .line 1247
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;->addToSupportedOrExistingLanguageServiceList(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;)V

    return-void
.end method

.method private addToSupportedOrExistingLanguageServiceList(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;)V
    .locals 2
    .param p1, "languageDownloadService"    # Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    .prologue
    .line 1257
    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;->getType()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->UPDATABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->UPDATED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-ne v0, v1, :cond_2

    .line 1258
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;->getCoreLanguageId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;->filePathList:[Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->addExistingLanguage(Ljava/lang/Integer;[Ljava/lang/String;)V

    .line 1259
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->setupLanguages()V

    .line 1264
    :cond_1
    :goto_0
    return-void

    .line 1260
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;->getType()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->INSTALLED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-ne v0, v1, :cond_1

    .line 1261
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;->getLanguageId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->addSupportedLanguage(Ljava/lang/Integer;)V

    .line 1262
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$LocalDownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->setupLanguages()V

    goto :goto_0
.end method
