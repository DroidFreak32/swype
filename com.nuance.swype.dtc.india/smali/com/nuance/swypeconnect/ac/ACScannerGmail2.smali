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
    .locals 2

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
    .locals 4

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
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "com.google.api.client.json.jackson2.JacksonFactory"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "com.google.api.client.http.HttpTransport"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    const-string/jumbo v2, "com.google.api.client.json.JsonFactory"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    const-string/jumbo v2, "com.google.api.client.extensions.android.http.AndroidHttp"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    :goto_2
    if-eqz v2, :cond_3

    const-string/jumbo v2, "com.google.api.services.gmail.Gmail$Builder"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    :goto_3
    if-eqz v2, :cond_4

    const-string/jumbo v2, "com.google.api.services.gmail.Gmail"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    :goto_4
    if-eqz v2, :cond_5

    const-string/jumbo v2, "com.google.api.client.googleapis.auth.oauth2.GoogleCredential"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    :goto_5
    if-eqz v2, :cond_6

    const-string/jumbo v2, "com.google.api.client.http.HttpRequestInitializer"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v0

    :goto_6
    if-eqz v2, :cond_7

    const-string/jumbo v2, "com.google.api.services.gmail.Gmail$Users"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v0

    :goto_7
    if-eqz v2, :cond_8

    const-string/jumbo v2, "com.google.api.services.gmail.Gmail$Users$Messages"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v0

    :goto_8
    if-eqz v2, :cond_9

    const-string/jumbo v2, "com.google.api.services.gmail.Gmail$Users$Messages$Get"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v0

    :goto_9
    if-eqz v2, :cond_a

    const-string/jumbo v2, "com.google.api.services.gmail.Gmail$Users$Messages$List"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v0

    :goto_a
    if-eqz v2, :cond_b

    const-string/jumbo v2, "com.google.api.services.gmail.model.ListMessagesResponse"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v0

    :goto_b
    if-eqz v2, :cond_c

    const-string/jumbo v2, "com.google.api.services.gmail.model.Message"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v0

    :goto_c
    if-eqz v2, :cond_d

    const-string/jumbo v2, "com.google.api.services.gmail.model.MessagePart"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_d

    move v2, v0

    :goto_d
    if-eqz v2, :cond_e

    const-string/jumbo v2, "com.google.api.services.gmail.model.MessagePartHeader"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_e

    move v2, v0

    :goto_e
    if-eqz v2, :cond_f

    const-string/jumbo v2, "com.google.api.services.gmail.model.MessagePartBody"

    invoke-static {v2}, Lcom/nuance/connect/compat/CompatUtil;->doesClassExist(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f

    :goto_f
    return v0

    :cond_0
    move v2, v1

    goto/16 :goto_0

    :cond_1
    move v2, v1

    goto/16 :goto_1

    :cond_2
    move v2, v1

    goto/16 :goto_2

    :cond_3
    move v2, v1

    goto/16 :goto_3

    :cond_4
    move v2, v1

    goto/16 :goto_4

    :cond_5
    move v2, v1

    goto/16 :goto_5

    :cond_6
    move v2, v1

    goto/16 :goto_6

    :cond_7
    move v2, v1

    goto/16 :goto_7

    :cond_8
    move v2, v1

    goto/16 :goto_8

    :cond_9
    move v2, v1

    goto :goto_9

    :cond_a
    move v2, v1

    goto :goto_a

    :cond_b
    move v2, v1

    goto :goto_b

    :cond_c
    move v2, v1

    goto :goto_c

    :cond_d
    move v2, v1

    goto :goto_d

    :cond_e
    move v2, v1

    goto :goto_e

    :cond_f
    move v0, v1

    goto :goto_f
.end method

.method private clearCache()V
    .locals 7

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
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

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

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

    if-nez v4, :cond_2

    sget-object v4, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "error deleting "

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
.method fail(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method getType()Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    return-object v0
.end method

.method scan()V
    .locals 9

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

    if-nez v0, :cond_1

    const-string/jumbo v0, "Scan of Gmail failed, no access token."

    invoke-virtual {p0, v2, v0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->fail(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->startScan()V

    const-string/jumbo v1, "Scan of Gmail failed, likely due to invalid consumer or access tokens."

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "start gmail scanning"

    invoke-interface {v0, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanCoreList:[I

    invoke-virtual {p0, v0, v2, v4}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->getBucket([IIZ)Lcom/nuance/connect/api/DLMConnector$ScannerBucket;

    move-result-object v5

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->gmailCompat:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;

    invoke-static {v0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->access$000(Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;

    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanContentTypes:Ljava/util/ArrayList;

    sget-object v8, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->SUBJECT:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->subject:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->subject:Ljava/lang/String;

    invoke-interface {v5, v7}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->scan(Ljava/lang/String;)V

    :cond_3
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanContentTypes:Ljava/util/ArrayList;

    sget-object v8, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->BODY:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->body:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->body:Ljava/lang/String;

    invoke-interface {v5, v7}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->scan(Ljava/lang/String;)V

    :cond_4
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanContentTypes:Ljava/util/ArrayList;

    sget-object v8, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->FROM:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->from:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->from:Ljava/lang/String;

    invoke-interface {v5, v7}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->scan(Ljava/lang/String;)V

    :cond_5
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanContentTypes:Ljava/util/ArrayList;

    sget-object v8, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->TO:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->to:Ljava/lang/String;

    if-eqz v7, :cond_6

    iget-object v7, v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->to:Ljava/lang/String;

    invoke-interface {v5, v7}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->scan(Ljava/lang/String;)V

    :cond_6
    iget-object v7, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanContentTypes:Ljava/util/ArrayList;

    sget-object v8, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;->CC:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->cc:Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->cc:Ljava/lang/String;

    invoke-interface {v5, v7}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->scan(Ljava/lang/String;)V

    :cond_7
    iget-object v7, v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->subject:Ljava/lang/String;

    if-nez v7, :cond_8

    iget-object v0, v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$SimpleMessage;->body:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_8
    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->currentProcess:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->currentProcess:I

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->currentProcess:I

    iget v7, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->maxToProcess:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v7, :cond_2

    :cond_9
    move-object v0, v1

    move v1, v2

    :goto_1
    :try_start_1
    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->clearCache()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v5}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    sget-object v3, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "end Gmail scanning. success: "

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->endScan(Z)V

    if-nez v2, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->fail(ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
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

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Exception accessing GMail messages. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    move v1, v3

    move v2, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v5}, Lcom/nuance/connect/api/DLMConnector$ScannerBucket;->close()V

    throw v0
.end method

.method public setAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACScannerException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const/16 v1, 0x7a

    const-string/jumbo v2, "A GMail email address and OAuth token must be provided before continuing."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->gmailAccount:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->accountToken:Ljava/lang/String;

    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->applicationName:Ljava/lang/String;

    return-void
.end method

.method public setMaxToProcess(I)V
    .locals 4
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

    if-le p1, v0, :cond_0

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->CUSTOMER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Gmail scanner max records exceeds the recommended number of records.  This may cause performance problems."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/swypeconnect/ac/ACScanner;->setMaxToProcess(I)V

    return-void
.end method

.method public setScanContentType([Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailContentType;)V
    .locals 3

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanContentTypes:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanContentTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanContentTypes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setScanType([Lcom/nuance/swypeconnect/ac/ACScannerGmail2$ACScannerGmailType;)V
    .locals 3

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanTypes:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanTypes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start(Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACScannerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const/16 v1, 0x65

    invoke-direct {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(I)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->gmailAccount:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->accountToken:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const/16 v1, 0x7a

    const-string/jumbo v2, "A GMail email address and OAuth token must be provided before continuing."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->accountToken:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->gmailCompat:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->gmailCompat:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->gmailAccount:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->access$100(Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->gmailCompat:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->getLastRun()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->access$200(Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;Ljava/util/Calendar;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->gmailCompat:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanTypes:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->access$300(Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;Ljava/util/List;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->gmailCompat:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->scanContentTypes:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->access$400(Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;Ljava/util/List;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->gmailCompat:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->applicationName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->access$500(Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->gmailCompat:Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->getMaxToProcess()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;->access$600(Lcom/nuance/swypeconnect/ac/ACScannerGmail2$GmailCompat;I)V

    invoke-super {p0, p1}, Lcom/nuance/swypeconnect/ac/ACScanner;->start(Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;)V

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v0, p0}, Lcom/nuance/swypeconnect/ac/ACScannerService;->scheduleScan(Lcom/nuance/swypeconnect/ac/ACScanner;)V

    return-void
.end method
