.class public Lcom/nuance/connect/service/manager/DocumentManager;
.super Lcom/nuance/connect/service/manager/AbstractCommandManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/DocumentManager$2;
    }
.end annotation


# static fields
.field private static final ACCEPTED_TIMESTAMP:Ljava/lang/String; = "TIME_ACCEPTED"

.field public static final COMMAND_FAMILY:Ljava/lang/String;

.field public static final COMMAND_GET_DOCUMENT:Ljava/lang/String; = "documentGet"

.field public static final COMMAND_VERSION:I = 0x9

.field private static final DOCS_DIR:Ljava/lang/String; = "docs"

.field private static final DOC_ID:Ljava/lang/String; = "docId"

.field private static final EXTENSION:Ljava/lang/String; = ".html"

.field private static final LAST_UPDATED_KEY:Ljava/lang/String;

.field public static final MANAGER_NAME:Ljava/lang/String;

.field private static final MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

.field private static final METADATA_KEY:Ljava/lang/String;


# instance fields
.field private docMetadata:Lcom/nuance/connect/util/InstallMetadata;

.field private lastUpdated:J

.field private final localeUpdateListener:Lcom/nuance/connect/service/manager/interfaces/LanguageListener;

.field private log:Lcom/nuance/connect/util/Logger$Log;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->DOCUMENTS:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/DocumentManager;->COMMAND_FAMILY:Ljava/lang/String;

    sput-object v0, Lcom/nuance/connect/service/manager/DocumentManager;->MANAGER_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/DocumentManager;->COMMAND_FAMILY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_LAST_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/DocumentManager;->LAST_UPDATED_KEY:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/DocumentManager;->COMMAND_FAMILY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_METADATA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/DocumentManager;->METADATA_KEY:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_DOCUMENT_ACCEPTED:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_UPDATE_DOCS:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/service/manager/DocumentManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Lcom/nuance/connect/service/manager/DocumentManager$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/service/manager/DocumentManager$1;-><init>(Lcom/nuance/connect/service/manager/DocumentManager;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->localeUpdateListener:Lcom/nuance/connect/service/manager/interfaces/LanguageListener;

    const/16 v0, 0x9

    iput v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->version:I

    sget-object v0, Lcom/nuance/connect/service/manager/DocumentManager;->COMMAND_FAMILY:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->commandFamily:Ljava/lang/String;

    sget-object v0, Lcom/nuance/connect/service/manager/DocumentManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DocumentManager;->setMessagesHandled([Lcom/nuance/connect/internal/common/InternalMessages;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "list"

    sget-object v2, Lcom/nuance/connect/service/manager/DocumentManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "documentGet"

    sget-object v2, Lcom/nuance/connect/service/manager/DocumentManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    new-instance v0, Lcom/nuance/connect/util/InstallMetadata;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getDataManager()Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/service/manager/DocumentManager;->METADATA_KEY:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;-><init>(Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    return-void
.end method

.method private acceptDocumentTerms(III)V
    .registers 10

    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/connect/service/manager/DocumentManager;->buildDocId(III)Ljava/lang/String;

    move-result-object v0

    :try_start_4
    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->beginTransaction()V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4a

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/util/InstallMetadata;->addPackage(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v2, "25"

    invoke-virtual {v1, v0, v2, p1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v2, "108"

    invoke-virtual {v1, v0, v2, p3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v2, "111"

    invoke-virtual {v1, v0, v2, p2}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v2, "51"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v2, "FILE_LOCATION"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    :cond_4a
    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v2, "TIME_ACCEPTED"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v0, v2, v4, v5}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DOCUMENT_REVISIONS:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->getAcceptedDocumentsJSON()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/String;)V

    sget-object v0, Lcom/nuance/connect/internal/common/Document$DocumentType;->TERMS_OF_SERVICE:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v0

    if-ne p1, v0, :cond_72

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->TOS_ACCEPTED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Boolean;)V

    :cond_72
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_UPDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V
    :try_end_7c
    .catchall {:try_start_4 .. :try_end_7c} :catchall_82

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    return-void

    :catchall_82
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    throw v0
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/manager/DocumentManager;)Lcom/nuance/connect/util/Logger$Log;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/service/manager/DocumentManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->reprocessList()V

    return-void
.end method

.method private buildDocId(III)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAcceptedDocumentsJSON()Ljava/lang/String;
    .registers 11

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v4, "108"

    invoke-virtual {v1, v0, v4}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v5, "TIME_ACCEPTED"

    invoke-virtual {v1, v0, v5}, Lcom/nuance/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v1, v6, v8

    if-eqz v1, :cond_64

    const/4 v1, 0x1

    :goto_34
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v6, "25"

    invoke-virtual {v5, v0, v6}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v7, "111"

    invoke-virtual {v6, v0, v7}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v5, v0}, Lcom/nuance/connect/internal/common/Document$DocumentType;->fromId(II)Lcom/nuance/connect/internal/common/Document$DocumentType;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v1, :cond_f

    if-eqz v5, :cond_f

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v4, :cond_f

    :cond_5c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_64
    const/4 v1, 0x0

    goto :goto_34

    :cond_66
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_ba

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_79
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_8a
    const-string/jumbo v5, "25"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v1

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v5, "111"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocumentClassId()I

    move-result v1

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "108"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_b7
    .catch Lorg/json/JSONException; {:try_start_8a .. :try_end_b7} :catch_b8

    goto :goto_79

    :catch_b8
    move-exception v0

    goto :goto_79

    :cond_ba
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDocument(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v1, "51"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Document URL does not exist.  Ignoring: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_14
    return-void

    :cond_15
    const-string/jumbo v0, "documentGet"

    sget-object v1, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/manager/DocumentManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/comm/Command;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v2, "51"

    invoke-virtual {v1, p1, v2}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/connect/comm/Command;->thirdPartyURL:Ljava/lang/String;

    const-string/jumbo v1, "GET"

    iput-object v1, v0, Lcom/nuance/connect/comm/Command;->method:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/nuance/connect/comm/Command;->hasBody:Z

    iput-boolean v3, v0, Lcom/nuance/connect/comm/Command;->handleIOExceptionInConnector:Z

    iput-boolean v3, v0, Lcom/nuance/connect/comm/Command;->notifyDownloadStatus:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/connect/comm/Command;->allowDuplicateOfCommand:Z

    iget-object v1, v0, Lcom/nuance/connect/comm/Command;->parameters:Ljava/util/HashMap;

    const-string/jumbo v2, "docId"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DocumentManager;->sendCommand(Lcom/nuance/connect/comm/Command;)V

    goto :goto_14
.end method

.method private getList()V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "getList()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const-string/jumbo v0, "list"

    sget-object v1, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/manager/DocumentManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/comm/Command;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/connect/comm/Command;->requireSession:Z

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, v0, Lcom/nuance/connect/comm/Command;->parameters:Ljava/util/HashMap;

    const-string/jumbo v3, "11"

    invoke-direct {p0, v1}, Lcom/nuance/connect/service/manager/DocumentManager;->normalizeLocaleForServerRequest(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DocumentManager;->sendCommand(Lcom/nuance/connect/comm/Command;)V

    return-void
.end method

.method private moveDoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/connect/service/ConnectClient;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "docs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_1b
    :goto_1b
    return-object v0

    :cond_1c
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1b

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/nuance/connect/util/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_64

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unable to delete temporary document file "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_64
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method

.method private normalizeLocaleForServerRequest(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x0

    const-string/jumbo v2, "_#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_19
    return-object v0
.end method

.method private processGetDocumentResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 7

    const/4 v1, 0x1

    iget v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    if-ne v1, v0, :cond_6b

    :try_start_5
    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->initialCommand:Lcom/nuance/connect/comm/Command;

    iget-object v0, v0, Lcom/nuance/connect/comm/Command;->parameters:Ljava/util/HashMap;

    const-string/jumbo v1, "docId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/nuance/connect/comm/Response;->initialCommand:Lcom/nuance/connect/comm/Command;

    iget-object v2, v1, Lcom/nuance/connect/comm/Command;->thirdPartyURL:Ljava/lang/String;

    const-string/jumbo v1, ".html"

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_71

    move-result v3

    if-nez v3, :cond_3d

    :try_start_1f
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3d

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3d

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_3c
    .catch Ljava/net/MalformedURLException; {:try_start_1f .. :try_end_3c} :catch_6c
    .catchall {:try_start_1f .. :try_end_3c} :catchall_71

    move-result-object v1

    :cond_3d
    :goto_3d
    :try_start_3d
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2}, Lcom/nuance/connect/util/InstallMetadata;->beginTransaction()V

    iget-object v2, p1, Lcom/nuance/connect/comm/Response;->fileLocation:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/nuance/connect/service/manager/DocumentManager;->moveDoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_66

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v3, "FILE_LOCATION"

    invoke-virtual {v2, v0, v3, v1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/nuance/connect/service/manager/DocumentManager;->sendDocumentToHost([Ljava/lang/String;Z)V
    :try_end_66
    .catchall {:try_start_3d .. :try_end_66} :catchall_71

    :cond_66
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    :cond_6b
    return-void

    :catch_6c
    move-exception v2

    :try_start_6d
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_71

    goto :goto_3d

    :catchall_71
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    throw v0
.end method

.method private processListResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 15

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "processListResponse()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iget v1, p1, Lcom/nuance/connect/comm/Response;->status:I

    if-ne v0, v1, :cond_24d

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "processListResponse(): parameters: "

    iget-object v2, p1, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    const-string/jumbo v1, "107"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_239

    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    const-string/jumbo v1, "107"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    iget-object v1, p1, Lcom/nuance/connect/comm/Response;->initialCommand:Lcom/nuance/connect/comm/Command;

    iget-object v1, v1, Lcom/nuance/connect/comm/Command;->parameters:Ljava/util/HashMap;

    const-string/jumbo v2, "11"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "required documents: "

    iget-object v4, p0, Lcom/nuance/connect/service/manager/DocumentManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v4}, Lcom/nuance/connect/service/ConnectClient;->getServiceInitializationConfig()Lcom/nuance/connect/common/ServiceInitializationConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/connect/common/ServiceInitializationConfig;->getRequiredLegalDocuments()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/connect/service/ConnectClient;->getServiceInitializationConfig()Lcom/nuance/connect/common/ServiceInitializationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/connect/common/ServiceInitializationConfig;->getRequiredLegalDocuments()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-static {v2, v3}, Lcom/nuance/connect/util/StringUtils;->stringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v0, :cond_239

    :try_start_5f
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2}, Lcom/nuance/connect/util/InstallMetadata;->beginTransaction()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_6b
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_6e
    .catchall {:try_start_5f .. :try_end_6e} :catchall_1b0

    move-result v2

    if-ge v3, v2, :cond_1e2

    :try_start_71
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v6, "25"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "111"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "51"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "108"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v6, v7, v2}, Lcom/nuance/connect/service/manager/DocumentManager;->buildDocId(III)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c4

    iget-object v10, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v10, v9}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_12c

    iget-object v10, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Server provided new document revision type["

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "] class["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "] revision ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v10, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v10, v9}, Lcom/nuance/connect/util/InstallMetadata;->addPackage(Ljava/lang/String;)Z

    iget-object v10, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v11, "25"

    invoke-virtual {v10, v9, v11, v6}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v10, "111"

    invoke-virtual {v6, v9, v10, v7}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v7, "108"

    invoke-virtual {v6, v9, v7, v2}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v6, "51"

    invoke-virtual {v2, v9, v6, v8}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v6, "FILE_LOCATION"

    const-string/jumbo v7, ""

    invoke-virtual {v2, v9, v6, v7}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v6, "TIME_ACCEPTED"

    const-wide/high16 v10, -0x8000000000000000L

    invoke-virtual {v2, v9, v6, v10, v11}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v6, 0x1

    invoke-virtual {v2, v9, v6}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v6, "11"

    invoke-virtual {v2, v9, v6, v1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lcom/nuance/connect/service/manager/DocumentManager;->getDocument(Ljava/lang/String;)V

    :cond_127
    :goto_127
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_6b

    :cond_12c
    if-eqz v1, :cond_1b7

    iget-object v10, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v11, "11"

    invoke-virtual {v10, v9, v11}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1b7

    iget-object v10, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Updating for current language; document revision type["

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v11, "] class["

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] revision ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "]"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v6, "FILE_LOCATION"

    const-string/jumbo v7, ""

    invoke-virtual {v2, v9, v6, v7}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v6, "11"

    invoke-virtual {v2, v9, v6, v1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v6, "51"

    invoke-virtual {v2, v9, v6, v8}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v6, 0x1

    invoke-virtual {v2, v9, v6}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    invoke-direct {p0, v9}, Lcom/nuance/connect/service/manager/DocumentManager;->getDocument(Ljava/lang/String;)V
    :try_end_193
    .catch Lorg/json/JSONException; {:try_start_71 .. :try_end_193} :catch_194
    .catchall {:try_start_71 .. :try_end_193} :catchall_1b0

    goto :goto_127

    :catch_194
    move-exception v2

    :try_start_195
    iget-object v6, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Error processing json object "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_1ae
    .catchall {:try_start_195 .. :try_end_1ae} :catchall_1b0

    goto/16 :goto_127

    :catchall_1b0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    throw v0

    :cond_1b7
    :try_start_1b7
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2, v9}, Lcom/nuance/connect/util/InstallMetadata;->isInstalling(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_127

    invoke-direct {p0, v9}, Lcom/nuance/connect/service/manager/DocumentManager;->getDocument(Ljava/lang/String;)V

    goto/16 :goto_127

    :cond_1c4
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2, v9}, Lcom/nuance/connect/util/InstallMetadata;->isInstalling(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d1

    invoke-direct {p0, v9}, Lcom/nuance/connect/service/manager/DocumentManager;->getDocument(Ljava/lang/String;)V

    goto/16 :goto_127

    :cond_1d1
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v7, "document type "

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v8, " is not required for this build, ignoring download"

    invoke-interface {v2, v7, v6, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1e0
    .catch Lorg/json/JSONException; {:try_start_1b7 .. :try_end_1e0} :catch_194
    .catchall {:try_start_1b7 .. :try_end_1e0} :catchall_1b0

    goto/16 :goto_127

    :cond_1e2
    :try_start_1e2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1ec
    :goto_1ec
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_234

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1ec

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Found stale document id:"

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v3, "TIME_ACCEPTED"

    invoke-virtual {v2, v0, v3}, Lcom/nuance/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v2, v2, v6

    if-nez v2, :cond_21b

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2, v0}, Lcom/nuance/connect/util/InstallMetadata;->deletePackage(Ljava/lang/String;)Z

    goto :goto_1ec

    :cond_21b
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2, v0}, Lcom/nuance/connect/util/InstallMetadata;->isInstalling(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22b

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/16 v3, 0x8

    invoke-virtual {v2, v0, v3}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    goto :goto_1ec

    :cond_22b
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "   Document is accepted.  Keeping the document"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_233
    .catchall {:try_start_1e2 .. :try_end_233} :catchall_1b0

    goto :goto_1ec

    :cond_234
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    :cond_239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->lastUpdated:J

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/DocumentManager;->LAST_UPDATED_KEY:Ljava/lang/String;

    iget-wide v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->lastUpdated:J

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    :goto_24c
    return-void

    :cond_24d
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "processListResponse(): failed with status: "

    iget v2, p1, Lcom/nuance/connect/comm/Response;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_24c
.end method

.method private reprocessList()V
    .registers 11

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "reprocessList()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v4, "108"

    invoke-virtual {v3, v0, v4}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v5, "25"

    invoke-virtual {v4, v0, v5}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v6, "111"

    invoke-virtual {v5, v0, v6}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v4, v0}, Lcom/nuance/connect/internal/common/Document$DocumentType;->fromId(II)Lcom/nuance/connect/internal/common/Document$DocumentType;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v4, :cond_17

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v3, :cond_17

    :cond_52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :cond_5a
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_fa

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/DocumentManager;->normalizeLocaleForServerRequest(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_77
    :goto_77
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocumentClassId()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v5, v1, v0}, Lcom/nuance/connect/service/manager/DocumentManager;->buildDocId(III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v5, "TIME_ACCEPTED"

    invoke-virtual {v1, v0, v5}, Lcom/nuance/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v1, v6, v8

    if-nez v1, :cond_e5

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v5, "11"

    invoke-virtual {v1, v0, v5}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "locale different than installed document\'s locale.  get list in new language"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->getList()V

    :cond_d1
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fa

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/DocumentManager;->getDocument(Ljava/lang/String;)V

    goto :goto_d5

    :cond_e5
    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/util/InstallMetadata;->isInstalling(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "document found that is installing, getting document"

    invoke-interface {v1, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_77

    :cond_fa
    return-void
.end method

.method private sendDocumentToHost([Ljava/lang/String;Z)V
    .registers 14

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    array-length v8, p1

    const/4 v0, 0x0

    move v6, v0

    :goto_8
    if-ge v6, v8, :cond_68

    aget-object v9, p1, v6

    new-instance v0, Lcom/nuance/connect/internal/common/Document;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v2, "25"

    invoke-virtual {v1, v9, v2}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v3, "111"

    invoke-virtual {v2, v9, v3}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v4, "108"

    invoke-virtual {v3, v9, v4}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v5, "FILE_LOCATION"

    invoke-virtual {v4, v9, v5}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v10, "11"

    invoke-virtual {v5, v9, v10}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/nuance/connect/internal/common/Document;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v2, "TIME_ACCEPTED"

    invoke-virtual {v1, v9, v2}, Lcom/nuance/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v2, "TIME_ACCEPTED"

    invoke-virtual {v1, v9, v2}, Lcom/nuance/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nuance/connect/internal/common/Document;->setAcceptedTimestamp(J)V

    :cond_59
    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1, v9}, Lcom/nuance/connect/util/InstallMetadata;->isInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_64
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_8

    :cond_68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v1, "KEY"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DOCUMENT_UPDATED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V

    return-void
.end method

.method private sendListToHost()V
    .registers 9

    const/4 v3, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v5, "108"

    invoke-virtual {v4, v0, v5}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v6, "25"

    invoke-virtual {v5, v0, v6}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string/jumbo v7, "111"

    invoke-virtual {v6, v0, v7}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v5, v0}, Lcom/nuance/connect/internal/common/Document$DocumentType;->fromId(II)Lcom/nuance/connect/internal/common/Document$DocumentType;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_45
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_91

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_5a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocumentClassId()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v6, v1, v0}, Lcom/nuance/connect/service/manager/DocumentManager;->buildDocId(III)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v2, 0x1

    aput-object v1, v4, v2

    move v2, v0

    goto :goto_5a

    :cond_8e
    invoke-direct {p0, v4, v3}, Lcom/nuance/connect/service/manager/DocumentManager;->sendDocumentToHost([Ljava/lang/String;Z)V

    :cond_91
    return-void
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->DOCUMENTS:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ManagerService;->getDependencies()[Lcom/nuance/connect/internal/common/ManagerService;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_e
    if-ge v0, v4, :cond_1c

    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/DocumentManager;->LAST_UPDATED_KEY:Ljava/lang/String;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->lastUpdated:J

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->localeUpdateListener:Lcom/nuance/connect/service/manager/interfaces/LanguageListener;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->addLanguageListener(Lcom/nuance/connect/service/manager/interfaces/LanguageListener;)V

    return-void
.end method

.method public onFileResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "documentGet"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DocumentManager;->processGetDocumentResponse(Lcom/nuance/connect/comm/Response;)V

    :cond_e
    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/nuance/connect/service/manager/DocumentManager$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_48

    :goto_13
    return v0

    :pswitch_14
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "MESSAGE_CLIENT_DOCUMENT_ACCEPTED"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/Document;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/Document;->getType()I

    move-result v2

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/Document;->getDocumentClass()I

    move-result v3

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/Document;->getRevision()I

    move-result v0

    invoke-direct {p0, v2, v3, v0}, Lcom/nuance/connect/service/manager/DocumentManager;->acceptDocumentTerms(III)V

    move v0, v1

    goto :goto_13

    :pswitch_3a
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "MESSAGE_COMMAND_UPDATE_DOCS"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->getList()V

    move v0, v1

    goto :goto_13

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_14
        :pswitch_3a
    .end packed-switch
.end method

.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string/jumbo v1, "list"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DocumentManager;->processListResponse(Lcom/nuance/connect/comm/Response;)V

    :cond_e
    return-void
.end method

.method public onUpgrade(Lcom/nuance/connect/util/VersionUtils$Version;Lcom/nuance/connect/util/VersionUtils$Version;Z)V
    .registers 8

    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {p1, p2}, Lcom/nuance/connect/util/VersionUtils;->isDataCleanupRequiredOnUpgrade(Lcom/nuance/connect/util/VersionUtils$Version;Lcom/nuance/connect/util/VersionUtils$Version;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->hasPackages()Z

    move-result v0

    if-nez v0, :cond_20

    iget-wide v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->lastUpdated:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_20

    iput-wide v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->lastUpdated:J

    sget-object v0, Lcom/nuance/connect/service/manager/DocumentManager;->LAST_UPDATED_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DocumentManager;->removePreference(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->getList()V

    :cond_20
    return-void
.end method

.method public rebind()V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->sendListToHost()V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->reprocessList()V

    return-void
.end method

.method public start()V
    .registers 5

    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iget-wide v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->lastUpdated:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "lastUpdated not set, need to get list."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->getList()V

    :goto_17
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->managerStartComplete()V

    return-void

    :cond_1b
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->sendListToHost()V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->reprocessList()V

    goto :goto_17
.end method
