.class public Lcom/nuance/swypeconnect/ac/ACScannerGmail2;
.super Lcom/nuance/swypeconnect/ac/ACScanner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;,
        Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;,
        Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;,
        Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;
    }
.end annotation


# static fields
.field private static final GMAIL_MAX_DEFAULT:I = 0x64

.field public static final REASON_EMAIL_NOT_AVAILABLE:I = 0x2

.field private static final SCANNER_GMAIL_LAST_RUN_CALENDAR:Ljava/lang/String; = "SCANNER_GMAIL_LAST_RUN_CALENDAR"

.field static final TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private accountToken:Ljava/lang/String;

.field private applicationName:Ljava/lang/String;

.field private gmailAccount:Ljava/lang/String;

.field private gmailCompat:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;

.field private final scanContentTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;",
            ">;"
        }
    .end annotation
.end field

.field private final scanTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->log:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->GMAIL2:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    return-void
.end method

.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACScannerService;)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "SCANNER_GMAIL_LAST_RUN_CALENDAR"

    invoke-direct {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACScanner;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerService;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanTypes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanContentTypes:Ljava/util/ArrayList;

    const-string/jumbo v0, "SCSDK-GMail-Scanner/2.0"

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->applicationName:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->maxToProcess:I

    new-array v0, v3, [Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;->SENT:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->setScanType([Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;)V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->SUBJECT:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->BODY:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->TO:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->setScanContentType([Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;)V

    return-void
.end method

.method static checkDependencies()Z
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "com.google.api.client.json.jackson2.JacksonFactory"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_10d

    const-string/jumbo v2, "com.google.api.client.http.HttpTransport"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_10d

    move v2, v0

    :goto_1d
    if-eqz v2, :cond_110

    const-string/jumbo v2, "com.google.api.client.json.JsonFactory"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_110

    move v2, v0

    :goto_2d
    if-eqz v2, :cond_113

    const-string/jumbo v2, "com.google.api.client.extensions.android.http.AndroidHttp"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_113

    move v2, v0

    :goto_3d
    if-eqz v2, :cond_116

    const-string/jumbo v2, "com.google.api.services.gmail.Gmail$Builder"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_116

    move v2, v0

    :goto_4d
    if-eqz v2, :cond_119

    const-string/jumbo v2, "com.google.api.services.gmail.Gmail"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_119

    move v2, v0

    :goto_5d
    if-eqz v2, :cond_11c

    const-string/jumbo v2, "com.google.api.client.googleapis.auth.oauth2.GoogleCredential"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_11c

    move v2, v0

    :goto_6d
    if-eqz v2, :cond_11f

    const-string/jumbo v2, "com.google.api.client.http.HttpRequestInitializer"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_11f

    move v2, v0

    :goto_7d
    if-eqz v2, :cond_122

    const-string/jumbo v2, "com.google.api.services.gmail.Gmail$Users"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_122

    move v2, v0

    :goto_8d
    if-eqz v2, :cond_125

    const-string/jumbo v2, "com.google.api.services.gmail.Gmail$Users$Messages"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_125

    move v2, v0

    :goto_9d
    if-eqz v2, :cond_128

    const-string/jumbo v2, "com.google.api.services.gmail.Gmail$Users$Messages$Get"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_128

    move v2, v0

    :goto_ad
    if-eqz v2, :cond_12a

    const-string/jumbo v2, "com.google.api.services.gmail.Gmail$Users$Messages$List"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_12a

    move v2, v0

    :goto_bd
    if-eqz v2, :cond_12c

    const-string/jumbo v2, "com.google.api.services.gmail.model.ListMessagesResponse"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_12c

    move v2, v0

    :goto_cd
    if-eqz v2, :cond_12e

    const-string/jumbo v2, "com.google.api.services.gmail.model.Message"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_12e

    move v2, v0

    :goto_dd
    if-eqz v2, :cond_130

    const-string/jumbo v2, "com.google.api.services.gmail.model.MessagePart"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_130

    move v2, v0

    :goto_ed
    if-eqz v2, :cond_132

    const-string/jumbo v2, "com.google.api.services.gmail.model.MessagePartHeader"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_132

    move v2, v0

    :goto_fd
    if-eqz v2, :cond_134

    const-string/jumbo v2, "com.google.api.services.gmail.model.MessagePartBody"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_134

    :goto_10c
    return v0

    :cond_10d
    move v2, v1

    goto/16 :goto_1d

    :cond_110
    move v2, v1

    goto/16 :goto_2d

    :cond_113
    move v2, v1

    goto/16 :goto_3d

    :cond_116
    move v2, v1

    goto/16 :goto_4d

    :cond_119
    move v2, v1

    goto/16 :goto_5d

    :cond_11c
    move v2, v1

    goto/16 :goto_6d

    :cond_11f
    move v2, v1

    goto/16 :goto_7d

    :cond_122
    move v2, v1

    goto/16 :goto_8d

    :cond_125
    move v2, v1

    goto/16 :goto_9d

    :cond_128
    move v2, v1

    goto :goto_ad

    :cond_12a
    move v2, v1

    goto :goto_bd

    :cond_12c
    move v2, v1

    goto :goto_cd

    :cond_12e
    move v2, v1

    goto :goto_dd

    :cond_130
    move v2, v1

    goto :goto_ed

    :cond_132
    move v2, v1

    goto :goto_fd

    :cond_134
    move v0, v1

    goto :goto_10c
.end method

.method private clearCache()V
    .registers 8

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_d

    :cond_c
    return-void

    :cond_d
    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "clearing cache in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$1;

    invoke-direct {v1, p0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$1;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerGmail2;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_c

    array-length v2, v1

    const/4 v0, 0x0

    :goto_2f
    if-ge v0, v2, :cond_c

    aget-object v3, v1, v0

    sget-object v4, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "deleting "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_63

    sget-object v4, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "error deleting "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f
.end method


# virtual methods
.method fail(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onFailure(ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method getType()Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;
    .registers 2

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    return-object v0
.end method

.method scan()V
    .registers 10

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/common/FeaturesLastUsed$Feature;->SCANNER_GMAIL:Lcom/nuance/connect/common/FeaturesLastUsed$Feature;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v0, v1, v6, v7}, Lcom/nuance/connect/api/ConnectServiceManager;->updateFeatureLastUsed(Lcom/nuance/connect/common/FeaturesLastUsed$Feature;J)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->accountToken:Ljava/lang/String;

    if-nez v0, :cond_21

    const-string/jumbo v0, "Scan of Gmail failed, no access token."

    invoke-virtual {p0, v2, v0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->fail(ILjava/lang/String;)V

    :cond_20
    :goto_20
    return-void

    :cond_21
    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->startScan()V

    const-string/jumbo v1, "Scan of Gmail failed, likely due to invalid consumer or access tokens."

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "start gmail scanning"

    invoke-interface {v0, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanCoreList:[I

    invoke-virtual {p0, v0, v2, v4}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->getBucket([IIZ)Lcom/nuance/connect/api/DLMConnector$ScannerBucket;

    move-result-object v5

    :try_start_35
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->gmailCompat:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;

    # invokes: Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->readMessages()Ljava/util/List;
    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->access$000(Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_be

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;

    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanContentTypes:Ljava/util/ArrayList;

    sget-object v8, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->SUBJECT:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5e

    iget-object v7, v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->subject:Ljava/lang/String;

    if-eqz v7, :cond_5e

    iget-object v7, v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->subject:Ljava/lang/String;

    invoke-interface {v5, v7}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->scan(Ljava/lang/String;)V

    :cond_5e
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanContentTypes:Ljava/util/ArrayList;

    sget-object v8, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->BODY:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_71

    iget-object v7, v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->body:Ljava/lang/String;

    if-eqz v7, :cond_71

    iget-object v7, v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->body:Ljava/lang/String;

    invoke-interface {v5, v7}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->scan(Ljava/lang/String;)V

    :cond_71
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanContentTypes:Ljava/util/ArrayList;

    sget-object v8, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->FROM:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_84

    iget-object v7, v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->from:Ljava/lang/String;

    if-eqz v7, :cond_84

    iget-object v7, v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->from:Ljava/lang/String;

    invoke-interface {v5, v7}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->scan(Ljava/lang/String;)V

    :cond_84
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanContentTypes:Ljava/util/ArrayList;

    sget-object v8, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->TO:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_97

    iget-object v7, v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->to:Ljava/lang/String;

    if-eqz v7, :cond_97

    iget-object v7, v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->to:Ljava/lang/String;

    invoke-interface {v5, v7}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->scan(Ljava/lang/String;)V

    :cond_97
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanContentTypes:Ljava/util/ArrayList;

    sget-object v8, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->CC:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_aa

    iget-object v7, v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->cc:Ljava/lang/String;

    if-eqz v7, :cond_aa

    iget-object v7, v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->cc:Ljava/lang/String;

    invoke-interface {v5, v7}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->scan(Ljava/lang/String;)V

    :cond_aa
    iget-object v7, v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->subject:Ljava/lang/String;

    if-nez v7, :cond_b2

    iget-object v0, v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->body:Ljava/lang/String;

    if-eqz v0, :cond_3f

    :cond_b2
    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->currentProcess:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->currentProcess:I

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->currentProcess:I

    iget v7, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->maxToProcess:I
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_bc} :catch_dc
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_bc} :catch_f4
    .catchall {:try_start_35 .. :try_end_bc} :catchall_10c

    if-lt v0, v7, :cond_3f

    :cond_be
    move-object v0, v1

    move v1, v2

    :goto_c0
    :try_start_c0
    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->clearCache()V
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_10c

    invoke-interface {v5}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    sget-object v3, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "end Gmail scanning. success: "

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->endScan(Z)V

    if-nez v2, :cond_20

    invoke-virtual {p0, v1, v0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->fail(ILjava/lang/String;)V

    goto/16 :goto_20

    :catch_dc
    move-exception v0

    :try_start_dd
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Exception accessing GMail messages. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v3

    move v2, v4

    goto :goto_c0

    :catch_f4
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Exception accessing GMail messages. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_108
    .catchall {:try_start_dd .. :try_end_108} :catchall_10c

    move-result-object v0

    move v1, v3

    move v2, v4

    goto :goto_c0

    :catchall_10c
    move-exception v0

    invoke-interface {v5}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    throw v0
.end method

.method public setAccount(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACScannerException;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-nez p2, :cond_f

    :cond_4
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const/16 v1, 0x7a

    const-string/jumbo v2, "A GMail email address and OAuth token must be provided before continuing."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_f
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->gmailAccount:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->accountToken:Ljava/lang/String;

    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->applicationName:Ljava/lang/String;

    return-void
.end method

.method public setMaxToProcess(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACScannerException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->CUSTOMER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Gmail scanner set to scan at most "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, " records."

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x64

    if-le p1, v0, :cond_23

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->CUSTOMER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Gmail scanner max records exceeds the recommended number of records.  This may cause performance problems."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    :cond_23
    invoke-super {p0, p1}, Lcom/nuance/swypeconnect/ac/ACScanner;->setMaxToProcess(I)V

    return-void
.end method

.method public setScanContentType([Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;)V
    .registers 5

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanContentTypes:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanContentTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanContentTypes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_13
    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public setScanType([Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;)V
    .registers 5

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanTypes:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanTypes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_13
    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public start(Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACScannerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const/16 v1, 0x65

    invoke-direct {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(I)V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->gmailAccount:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->accountToken:Ljava/lang/String;

    if-nez v0, :cond_23

    :cond_18
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const/16 v1, 0x7a

    const-string/jumbo v2, "A GMail email address and OAuth token must be provided before continuing."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_23
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->accountToken:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->gmailCompat:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->gmailCompat:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->gmailAccount:Ljava/lang/String;

    # invokes: Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->setGmailAccount(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->access$100(Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->gmailCompat:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->getLastRun()Ljava/util/Calendar;

    move-result-object v1

    # invokes: Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->setLastScan(Ljava/util/Calendar;)V
    invoke-static {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->access$200(Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;Ljava/util/Calendar;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->gmailCompat:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanTypes:Ljava/util/ArrayList;

    # invokes: Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->setScanTypes(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->access$300(Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;Ljava/util/List;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->gmailCompat:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanContentTypes:Ljava/util/ArrayList;

    # invokes: Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->setScanContentTypes(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->access$400(Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;Ljava/util/List;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->gmailCompat:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->applicationName:Ljava/lang/String;

    # invokes: Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->setApplicationName(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->access$500(Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->gmailCompat:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->getMaxToProcess()I

    move-result v1

    # invokes: Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->setMaxCount(I)V
    invoke-static {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->access$600(Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;I)V

    invoke-super {p0, p1}, Lcom/nuance/swypeconnect/ac/ACScanner;->start(Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;)V

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v0, p0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->scheduleScan(Lcom/nuance/swypeconnect/ac/ACScanner;)V

    return-void
.end method
