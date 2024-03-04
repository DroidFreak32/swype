.class public final Lcom/nuance/swypeconnect/ac/ACScannerGmail;
.super Lcom/nuance/swypeconnect/ac/ACScanner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACScannerGmail$AsyncEmailTask;,
        Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;,
        Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACAccountTokenCallback;,
        Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACScannerGmailType;
    }
.end annotation


# static fields
.field private static final GMAIL_MAX_DEFAULT:I = 0x64

.field public static final REASON_EMAIL_NOT_AVAILABLE:I = 0x2

.field public static final REASON_INVALID_URL:I = 0x1

.field private static final SCANNER_GMAIL_LAST_RUN_CALENDAR:Ljava/lang/String; = "SCANNER_GMAIL_LAST_RUN_CALENDAR"

.field static final TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private accountToken:Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;

.field private api:Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;

.field private consumerKey:Ljava/lang/String;

.field private consumerSecret:Ljava/lang/String;

.field private scanTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACScannerGmailType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/swypeconnect/ac/ACScannerGmail;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->log:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->GMAIL:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    return-void
.end method

.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACScannerService;)V
    .locals 3

    const-string v0, "SCANNER_GMAIL_LAST_RUN_CALENDAR"

    invoke-direct {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACScanner;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerService;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->api:Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;

    const/16 v0, 0x64

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->maxToProcess:I

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACScannerGmailType;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACScannerGmailType;->SENT:Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACScannerGmailType;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->setScanType([Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACScannerGmailType;)V

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nuance/swypeconnect/ac/ImapUtils;->initialize(Lcom/nuance/swypeconnect/ac/ACScannerService;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$000()Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static checkDependencies()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "oauth.signpost.commonshttp.CommonsHttpOAuthConsumer"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v1, "org.apache.commons.codec.Encoder"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v1, "oauth.signpost.OAuth"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v1, "com.fsck.k9.Account"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ClassNotFoundException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VerifyError: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/VerifyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private clearCache()V
    .locals 7

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clearing cache in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACScannerGmail$1;

    invoke-direct {v1, p0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail$1;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerGmail;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "deleting "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "error deleting "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method final fail(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final getAuthorizationUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACScannerException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->consumerKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->consumerSecret:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const/16 v1, 0x67

    const-string v2, "consumer key or secret not set"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->consumerKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->consumerSecret:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->api:Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->api:Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;

    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;->getAuthorizationUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getType()Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    return-object v0
.end method

.method public final retrieveAccessToken(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACAccountTokenCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACScannerException;
        }
    .end annotation

    const/4 v3, 0x0

    const/16 v2, 0x67

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->consumerKey:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const-string v1, "consumer key is not set"

    invoke-direct {v0, v2, v1}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->consumerSecret:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const-string v1, "consumer secret is not set"

    invoke-direct {v0, v2, v1}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const-string v1, "ACAccountTokenCallback must be provided is not set"

    invoke-direct {v0, v2, v1}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->api:Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;

    if-nez v0, :cond_3

    new-instance v0, Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->consumerKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->consumerSecret:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->api:Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;

    :cond_3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->api:Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;

    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;->retrieveAccessToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->api:Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;->getToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->api:Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;->getTokenSecret()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail$AsyncEmailTask;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->api:Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;

    invoke-direct {v0, v1, p2}, Lcom/nuance/swypeconnect/ac/ACScannerGmail$AsyncEmailTask;-><init>(Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACAccountTokenCallback;)V

    invoke-virtual {v0, v3}, Lcom/nuance/swypeconnect/ac/ACScannerGmail$AsyncEmailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_4
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACAccountTokenCallback;->onFailure(I)V

    goto :goto_0
.end method

.method final scan()V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->accountToken:Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;

    if-nez v0, :cond_1

    const-string v0, "Scan of Gmail failed, due to no access token."

    invoke-virtual {p0, v7, v0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->fail(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->startScan()V

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "start gmail scanning"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->scanCoreList:[I

    invoke-virtual {p0, v0, v7, v6}, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->getBucket([IIZ)Lcom/nuance/connect/api/DLMConnector$ScannerBucket;

    move-result-object v3

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->api:Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;

    if-nez v0, :cond_2

    new-instance v0, Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->consumerKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->consumerSecret:Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->accountToken:Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->accountToken:Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;

    invoke-virtual {v5}, Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;->getAccessTokenSecret()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->api:Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;

    :cond_2
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "email="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->accountToken:Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->api:Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; secret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->api:Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;->getTokenSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->api:Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->accountToken:Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;->getEmail()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->currentProcess:I

    iget v5, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->maxToProcess:I

    invoke-static/range {v0 .. v5}, Lcom/nuance/swypeconnect/ac/ImapUtils;->scanGMail(Landroid/content/Context;Lcom/nuance/swypeconnect/ac/ImapUtils$GMailOAuthApi;Ljava/lang/String;Lcom/nuance/connect/api/DLMConnector$ScannerBucket;II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    move v0, v6

    :goto_1
    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->clearCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v3}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "end gmail scanning"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->endScan(Z)V

    if-nez v0, :cond_0

    const-string v0, "Scan of Gmail failed, likely due to invalid consumer or access tokens."

    invoke-virtual {p0, v7, v0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->fail(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->currentProcess:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    throw v0
.end method

.method public final setAccessToken(Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->accountToken:Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;

    return-void
.end method

.method public final setConsumerKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->consumerKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->consumerSecret:Ljava/lang/String;

    return-void
.end method

.method public final setScanType([Lcom/nuance/swypeconnect/ac/ACScannerGmail$ACScannerGmailType;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->scanTypes:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->scanTypes:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public final start(Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACScannerException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/nuance/swypeconnect/ac/ACScanner;->start(Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->scanTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->scanTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const/16 v1, 0x65

    invoke-direct {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(I)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->consumerKey:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->consumerSecret:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->accountToken:Lcom/nuance/swypeconnect/ac/ACScannerGmail$GmailAccountCredentials;

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const/16 v1, 0x7a

    const-string v2, "You must pass all the required data"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v0, p0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->scheduleScan(Lcom/nuance/swypeconnect/ac/ACScanner;)V

    return-void
.end method
