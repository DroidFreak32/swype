.class public final Lcom/nuance/swypeconnect/ac/ACScannerService;
.super Lcom/nuance/swypeconnect/ac/ACService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACScannerService$2;,
        Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;,
        Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;
    }
.end annotation


# static fields
.field static final HIGH_QUALITY_WORDS:I = 0x1

.field static final LOW_QUALITY_WORDS:I = 0x0

.field static final MAXWORDLEN:I = 0x40

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private appScanner:Lcom/nuance/swypeconnect/ac/ACScannerApplications;

.field private callScanner:Lcom/nuance/swypeconnect/ac/ACScannerCalllog;

.field private contactScanner:Lcom/nuance/swypeconnect/ac/ACScannerContacts;

.field private final context:Landroid/content/Context;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private facebookScanner:Lcom/nuance/swypeconnect/ac/ACScannerFacebook;

.field private gmailScanner2:Lcom/nuance/swypeconnect/ac/ACScannerGmail2;

.field private listScanner:Lcom/nuance/swypeconnect/ac/ACScannerList;

.field private manager:Lcom/nuance/swypeconnect/ac/ACManager;

.field private final service:Lcom/nuance/connect/api/DLMConnector;

.field private smsScanner:Lcom/nuance/swypeconnect/ac/ACScannerSms;

.field private final store:Lcom/nuance/connect/store/PersistentDataStore;

.field private twitterScanner:Lcom/nuance/swypeconnect/ac/ACScannerTwitter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerService;->log:Lcom/nuance/connect/util/Logger$Log;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/nuance/connect/api/DLMConnector;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACManager;)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACService;-><init>()V

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->service:Lcom/nuance/connect/api/DLMConnector;

    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->store:Lcom/nuance/connect/store/PersistentDataStore;

    iput-object p4, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000()Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerService;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method


# virtual methods
.method final getBucket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZIZ)Lcom/nuance/connect/api/DLMConnector$ScannerBucket;
    .locals 11

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->service:Lcom/nuance/connect/api/DLMConnector;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-interface/range {v0 .. v10}, Lcom/nuance/connect/api/DLMConnector;->getScannerBucket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZIZ)Lcom/nuance/connect/api/DLMConnector$ScannerBucket;

    move-result-object v0

    return-object v0
.end method

.method final getBucket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[IIZIZ)Lcom/nuance/connect/api/DLMConnector$ScannerBucket;
    .locals 11

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->service:Lcom/nuance/connect/api/DLMConnector;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-interface/range {v0 .. v10}, Lcom/nuance/connect/api/DLMConnector;->getScannerBucket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[IIZIZ)Lcom/nuance/connect/api/DLMConnector$ScannerBucket;

    move-result-object v0

    return-object v0
.end method

.method final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->context:Landroid/content/Context;

    return-object v0
.end method

.method final getManager()Lcom/nuance/swypeconnect/ac/ACManager;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    return-object v0
.end method

.method final getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "SCANNER_SERVICE"

    return-object v0
.end method

.method public final getScanner(Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;)Lcom/nuance/swypeconnect/ac/ACScanner;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACScannerException;
        }
    .end annotation

    const/16 v3, 0x6a

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerService;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getScanner type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerService$2;->$SwitchMap$com$nuance$swypeconnect$ac$ACScannerService$ScannerType:[I

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const/16 v1, 0x69

    invoke-direct {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(I)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->smsScanner:Lcom/nuance/swypeconnect/ac/ACScannerSms;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerSms;->checkDependencies()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    invoke-direct {v0, v3}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(I)V

    throw v0

    :cond_0
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerSms;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACScannerSms;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerService;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->smsScanner:Lcom/nuance/swypeconnect/ac/ACScannerSms;

    :cond_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->smsScanner:Lcom/nuance/swypeconnect/ac/ACScannerSms;

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->appScanner:Lcom/nuance/swypeconnect/ac/ACScannerApplications;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->checkDependencies()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    invoke-direct {v0, v3}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(I)V

    throw v0

    :cond_2
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerApplications;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACScannerApplications;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerService;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->appScanner:Lcom/nuance/swypeconnect/ac/ACScannerApplications;

    :cond_3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->appScanner:Lcom/nuance/swypeconnect/ac/ACScannerApplications;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->twitterScanner:Lcom/nuance/swypeconnect/ac/ACScannerTwitter;

    if-nez v0, :cond_5

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->checkDependencies()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    invoke-direct {v0, v3}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(I)V

    throw v0

    :cond_4
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerService;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->twitterScanner:Lcom/nuance/swypeconnect/ac/ACScannerTwitter;

    :cond_5
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->twitterScanner:Lcom/nuance/swypeconnect/ac/ACScannerTwitter;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->callScanner:Lcom/nuance/swypeconnect/ac/ACScannerCalllog;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;->checkDependencies()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    invoke-direct {v0, v3}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(I)V

    throw v0

    :cond_6
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerService;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->callScanner:Lcom/nuance/swypeconnect/ac/ACScannerCalllog;

    :cond_7
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->callScanner:Lcom/nuance/swypeconnect/ac/ACScannerCalllog;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->contactScanner:Lcom/nuance/swypeconnect/ac/ACScannerContacts;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->checkDependencies()Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    invoke-direct {v0, v3}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(I)V

    throw v0

    :cond_8
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACScannerContacts;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerService;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->contactScanner:Lcom/nuance/swypeconnect/ac/ACScannerContacts;

    :cond_9
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->contactScanner:Lcom/nuance/swypeconnect/ac/ACScannerContacts;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->facebookScanner:Lcom/nuance/swypeconnect/ac/ACScannerFacebook;

    if-nez v0, :cond_b

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->checkDependencies()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    invoke-direct {v0, v3}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(I)V

    throw v0

    :cond_a
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerService;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->facebookScanner:Lcom/nuance/swypeconnect/ac/ACScannerFacebook;

    :cond_b
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->facebookScanner:Lcom/nuance/swypeconnect/ac/ACScannerFacebook;

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->gmailScanner2:Lcom/nuance/swypeconnect/ac/ACScannerGmail2;

    if-nez v0, :cond_d

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->checkDependencies()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    invoke-direct {v0, v3}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(I)V

    throw v0

    :cond_c
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerService;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->gmailScanner2:Lcom/nuance/swypeconnect/ac/ACScannerGmail2;

    :cond_d
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->gmailScanner2:Lcom/nuance/swypeconnect/ac/ACScannerGmail2;

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->listScanner:Lcom/nuance/swypeconnect/ac/ACScannerList;

    if-nez v0, :cond_f

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerList;->checkDependencies()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    invoke-direct {v0, v3}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(I)V

    throw v0

    :cond_e
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerList;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACScannerList;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerService;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->listScanner:Lcom/nuance/swypeconnect/ac/ACScannerList;

    :cond_f
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->listScanner:Lcom/nuance/swypeconnect/ac/ACScannerList;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final getScannerList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerSms;->checkDependencies()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerSms;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->checkDependencies()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->checkDependencies()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;->checkDependencies()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->checkDependencies()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->checkDependencies()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->checkDependencies()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerList;->checkDependencies()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerList;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object v0
.end method

.method final getStore()Lcom/nuance/connect/store/PersistentDataStore;
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->store:Lcom/nuance/connect/store/PersistentDataStore;

    return-object v0
.end method

.method final requiresDocument(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final scheduleScan(Lcom/nuance/swypeconnect/ac/ACScanner;)V
    .locals 3

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->isShutdown:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerService;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Running after shutdown: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACScanner;->getType()Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerService;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "scheduleScan: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACScanner;->getType()Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACScannerService$1;

    invoke-direct {v1, p0, p1}, Lcom/nuance/swypeconnect/ac/ACScannerService$1;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerService;Lcom/nuance/swypeconnect/ac/ACScanner;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method final shutdown()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->isShutdown:Z

    return-void
.end method

.method final start()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->isShutdown:Z

    return-void
.end method
