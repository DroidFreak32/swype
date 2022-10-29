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
    .registers 2

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
    .registers 6

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
    .registers 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerService;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method


# virtual methods
.method final getBucket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZIZ)Lcom/nuance/connect/api/DLMConnector$ScannerBucket;
    .registers 22

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
    .registers 22

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
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->context:Landroid/content/Context;

    return-object v0
.end method

.method final getManager()Lcom/nuance/swypeconnect/ac/ACManager;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    return-object v0
.end method

.method final getName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "SCANNER_SERVICE"

    return-object v0
.end method

.method public final getScanner(Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;)Lcom/nuance/swypeconnect/ac/ACScanner;
    .registers 6
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

    packed-switch v0, :pswitch_data_fe

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const/16 v1, 0x69

    invoke-direct {v0, v1}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(I)V

    throw v0

    :pswitch_2a
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->smsScanner:Lcom/nuance/swypeconnect/ac/ACScannerSms;

    if-nez v0, :cond_41

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerSms;->checkDependencies()Z

    move-result v0

    if-nez v0, :cond_3a

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    invoke-direct {v0, v3}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(I)V

    throw v0

    :cond_3a
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerSms;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACScannerSms;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerService;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->smsScanner:Lcom/nuance/swypeconnect/ac/ACScannerSms;

    :cond_41
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->smsScanner:Lcom/nuance/swypeconnect/ac/ACScannerSms;

    :goto_43
    return-object v0

    :pswitch_44
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->appScanner:Lcom/nuance/swypeconnect/ac/ACScannerApplications;

    if-nez v0, :cond_5b

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->checkDependencies()Z

    move-result v0

    if-nez v0, :cond_54

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    invoke-direct {v0, v3}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(I)V

    throw v0

    :cond_54
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerApplications;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACScannerApplications;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerService;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->appScanner:Lcom/nuance/swypeconnect/ac/ACScannerApplications;

    :cond_5b
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->appScanner:Lcom/nuance/swypeconnect/ac/ACScannerApplications;

    goto :goto_43

    :pswitch_5e
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->twitterScanner:Lcom/nuance/swypeconnect/ac/ACScannerTwitter;

    if-nez v0, :cond_75

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->checkDependencies()Z

    move-result v0

    if-nez v0, :cond_6e

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    invoke-direct {v0, v3}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(I)V

    throw v0

    :cond_6e
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerService;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->twitterScanner:Lcom/nuance/swypeconnect/ac/ACScannerTwitter;

    :cond_75
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->twitterScanner:Lcom/nuance/swypeconnect/ac/ACScannerTwitter;

    goto :goto_43

    :pswitch_78
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->callScanner:Lcom/nuance/swypeconnect/ac/ACScannerCalllog;

    if-nez v0, :cond_8f

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;->checkDependencies()Z

    move-result v0

    if-nez v0, :cond_88

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    invoke-direct {v0, v3}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(I)V

    throw v0

    :cond_88
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerService;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->callScanner:Lcom/nuance/swypeconnect/ac/ACScannerCalllog;

    :cond_8f
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->callScanner:Lcom/nuance/swypeconnect/ac/ACScannerCalllog;

    goto :goto_43

    :pswitch_92
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->contactScanner:Lcom/nuance/swypeconnect/ac/ACScannerContacts;

    if-nez v0, :cond_a9

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->checkDependencies()Z

    move-result v0

    if-nez v0, :cond_a2

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    invoke-direct {v0, v3}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(I)V

    throw v0

    :cond_a2
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerContacts;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACScannerContacts;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerService;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->contactScanner:Lcom/nuance/swypeconnect/ac/ACScannerContacts;

    :cond_a9
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->contactScanner:Lcom/nuance/swypeconnect/ac/ACScannerContacts;

    goto :goto_43

    :pswitch_ac
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->facebookScanner:Lcom/nuance/swypeconnect/ac/ACScannerFacebook;

    if-nez v0, :cond_c3

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->checkDependencies()Z

    move-result v0

    if-nez v0, :cond_bc

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    invoke-direct {v0, v3}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(I)V

    throw v0

    :cond_bc
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerService;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->facebookScanner:Lcom/nuance/swypeconnect/ac/ACScannerFacebook;

    :cond_c3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->facebookScanner:Lcom/nuance/swypeconnect/ac/ACScannerFacebook;

    goto/16 :goto_43

    :pswitch_c7
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->gmailScanner2:Lcom/nuance/swypeconnect/ac/ACScannerGmail2;

    if-nez v0, :cond_de

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->checkDependencies()Z

    move-result v0

    if-nez v0, :cond_d7

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    invoke-direct {v0, v3}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(I)V

    throw v0

    :cond_d7
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerService;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->gmailScanner2:Lcom/nuance/swypeconnect/ac/ACScannerGmail2;

    :cond_de
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->gmailScanner2:Lcom/nuance/swypeconnect/ac/ACScannerGmail2;

    goto/16 :goto_43

    :pswitch_e2
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->listScanner:Lcom/nuance/swypeconnect/ac/ACScannerList;

    if-nez v0, :cond_f9

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerList;->checkDependencies()Z

    move-result v0

    if-nez v0, :cond_f2

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    invoke-direct {v0, v3}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(I)V

    throw v0

    :cond_f2
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerList;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACScannerList;-><init>(Lcom/nuance/swypeconnect/ac/ACScannerService;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->listScanner:Lcom/nuance/swypeconnect/ac/ACScannerList;

    :cond_f9
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->listScanner:Lcom/nuance/swypeconnect/ac/ACScannerList;

    goto/16 :goto_43

    nop

    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_44
        :pswitch_5e
        :pswitch_78
        :pswitch_92
        :pswitch_ac
        :pswitch_c7
        :pswitch_e2
    .end packed-switch
.end method

.method public final getScannerList()Ljava/util/List;
    .registers 3
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

    if-eqz v1, :cond_10

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerSms;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->checkDependencies()Z

    move-result v1

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerApplications;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->checkDependencies()Z

    move-result v1

    if-eqz v1, :cond_26

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerTwitter;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;->checkDependencies()Z

    move-result v1

    if-eqz v1, :cond_31

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerCalllog;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_31
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->checkDependencies()Z

    move-result v1

    if-eqz v1, :cond_3c

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerContacts;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3c
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->checkDependencies()Z

    move-result v1

    if-eqz v1, :cond_47

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerFacebook;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_47
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->checkDependencies()Z

    move-result v1

    if-eqz v1, :cond_52

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerGmail2;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_52
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACScannerList;->checkDependencies()Z

    move-result v1

    if-eqz v1, :cond_5d

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerList;->TYPE:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5d
    return-object v0
.end method

.method final getStore()Lcom/nuance/connect/store/PersistentDataStore;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->store:Lcom/nuance/connect/store/PersistentDataStore;

    return-object v0
.end method

.method final requiresDocument(I)Z
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method final scheduleScan(Lcom/nuance/swypeconnect/ac/ACScanner;)V
    .registers 5

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->isShutdown:Z

    if-eqz v0, :cond_1e

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

    :goto_1d
    return-void

    :cond_1e
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

    goto :goto_1d
.end method

.method final shutdown()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->isShutdown:Z

    return-void
.end method

.method final start()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACScannerService;->isShutdown:Z

    return-void
.end method
