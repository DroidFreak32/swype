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

.field public static final COMMAND_VERSION:I = 0x7

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

.field private log:Lcom/nuance/connect/util/Logger$Log;


# direct methods
.method static constructor <clinit>()V
    .locals 3

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

    const-string v1, "_LAST_UPDATED"

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

    const-string v1, "_METADATA"

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
    .locals 3

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager;-><init>(Lcom/nuance/connect/service/ConnectClient;)V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const/4 v0, 0x7

    iput v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->version:I

    sget-object v0, Lcom/nuance/connect/service/manager/DocumentManager;->COMMAND_FAMILY:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->commandFamily:Ljava/lang/String;

    sget-object v0, Lcom/nuance/connect/service/manager/DocumentManager;->MESSAGES_HANDLED:[Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DocumentManager;->setMessagesHandled([Lcom/nuance/connect/internal/common/InternalMessages;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "list"

    sget-object v2, Lcom/nuance/connect/service/manager/DocumentManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "documentGet"

    sget-object v2, Lcom/nuance/connect/service/manager/DocumentManager;->COMMAND_RESPONSE_SUCCESS:[I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    new-instance v0, Lcom/nuance/connect/util/InstallMetadata;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getDataManager()Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/service/manager/DocumentManager;->METADATA_KEY:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;-><init>(Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->client:Lcom/nuance/connect/service/ConnectClient;

    new-instance v1, Lcom/nuance/connect/service/manager/DocumentManager$1;

    invoke-direct {v1, p0}, Lcom/nuance/connect/service/manager/DocumentManager$1;-><init>(Lcom/nuance/connect/service/manager/DocumentManager;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->addLanguageListener(Lcom/nuance/connect/service/manager/interfaces/LanguageListener;)V

    return-void
.end method

.method private acceptDocumentTerms(III)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/connect/service/manager/DocumentManager;->buildDocId(III)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->beginTransaction()V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/util/InstallMetadata;->addPackage(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "25"

    invoke-virtual {v1, v0, v2, p1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "108"

    invoke-virtual {v1, v0, v2, p3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "111"

    invoke-virtual {v1, v0, v2, p2}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "51"

    const-string v3, ""

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "FILE_LOCATION"

    const-string v3, ""

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "TIME_ACCEPTED"

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

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->TOS_ACCEPTED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->setProperty(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;Ljava/lang/Boolean;)V

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_DEVICE_UPDATE:Lcom/nuance/connect/internal/common/InternalMessages;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    throw v0
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/manager/DocumentManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->reprocessList()V

    return-void
.end method

.method private buildDocId(III)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

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
    .locals 10

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "25"

    invoke-virtual {v1, v0, v4}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v5, "111"

    invoke-virtual {v1, v0, v5}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "108"

    invoke-virtual {v1, v0, v6}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v7, "TIME_ACCEPTED"

    invoke-virtual {v1, v0, v7}, Lcom/nuance/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v0, v0, v8

    if-nez v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    new-instance v7, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v7, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v6, :cond_0

    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v5, "25"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "111"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "108"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDocument(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "documentGet"

    sget-object v1, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/manager/DocumentManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "51"

    invoke-virtual {v1, p1, v2}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->thirdPartyURL:Ljava/lang/String;

    const-string v1, "GET"

    iput-object v1, v0, Lcom/nuance/connect/service/comm/Command;->method:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/nuance/connect/service/comm/Command;->hasBody:Z

    iput-boolean v3, v0, Lcom/nuance/connect/service/comm/Command;->handleIOException:Z

    iput-boolean v3, v0, Lcom/nuance/connect/service/comm/Command;->notifyDownloadStatus:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->allowDuplicateOfCommand:Z

    iget-object v1, v0, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "docId"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DocumentManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    return-void
.end method

.method private getList()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "getList()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const-string v0, "list"

    sget-object v1, Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;->CRITICAL:Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/service/manager/DocumentManager;->createCommand(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command$REQUEST_TYPE;)Lcom/nuance/connect/service/comm/Command;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/connect/service/comm/Command;->requireSession:Z

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, v0, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v3, "11"

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/DocumentManager;->sendCommand(Lcom/nuance/connect/service/comm/Command;)V

    return-void
.end method

.method private moveDoc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/connect/service/ConnectClient;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "docs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".html"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/nuance/connect/util/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "unable to delete temporary document file "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private processGetDocumentResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 4

    const/4 v1, 0x1

    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-ne v1, v0, :cond_1

    :try_start_0
    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v0, v0, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v1, "docId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->beginTransaction()V

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Response;->fileLocation:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/nuance/connect/service/manager/DocumentManager;->moveDoc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "FILE_LOCATION"

    invoke-virtual {v2, v0, v3, v1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {p0, v1}, Lcom/nuance/connect/service/manager/DocumentManager;->sendDocumentToHost([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    throw v0
.end method

.method private processListResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 11

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "processListResponse()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget v0, p1, Lcom/nuance/connect/service/comm/Response;->status:I

    if-ne v2, v0, :cond_5

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "107"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/nuance/connect/service/comm/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "107"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    iget-object v1, p1, Lcom/nuance/connect/service/comm/Response;->initialCommand:Lcom/nuance/connect/service/comm/Command;

    iget-object v1, v1, Lcom/nuance/connect/service/comm/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "11"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v2}, Lcom/nuance/connect/util/InstallMetadata;->beginTransaction()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ge v3, v2, :cond_3

    :try_start_1
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "25"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "111"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "51"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "108"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v4, v5, v2}, Lcom/nuance/connect/service/manager/DocumentManager;->buildDocId(III)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v8, v7}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/nuance/connect/internal/common/Document$DocumentType;->TERMS_OF_SERVICE:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-virtual {v8}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v8

    if-eq v4, v8, :cond_1

    :cond_0
    iget-object v8, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v8, v7}, Lcom/nuance/connect/util/InstallMetadata;->hasPackage(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v8, Lcom/nuance/connect/internal/common/Document$DocumentType;->DATA_OPT_IN:Lcom/nuance/connect/internal/common/Document$DocumentType;

    invoke-virtual {v8}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v8

    if-ne v4, v8, :cond_2

    :cond_1
    iget-object v8, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Server provided new document revision type["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] class["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] revision ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v8, v7}, Lcom/nuance/connect/util/InstallMetadata;->addPackage(Ljava/lang/String;)Z

    iget-object v8, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v9, "25"

    invoke-virtual {v8, v7, v9, v4}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v8, "111"

    invoke-virtual {v4, v7, v8, v5}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v5, "108"

    invoke-virtual {v4, v7, v5, v2}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "51"

    invoke-virtual {v2, v7, v4, v6}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "FILE_LOCATION"

    const-string v5, ""

    invoke-virtual {v2, v7, v4, v5}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "TIME_ACCEPTED"

    const-wide/high16 v8, -0x8000000000000000L

    invoke-virtual {v2, v7, v4, v8, v9}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const/4 v4, 0x1

    invoke-virtual {v2, v7, v4}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "11"

    invoke-virtual {v2, v7, v4, v1}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/nuance/connect/service/manager/DocumentManager;->getDocument(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    iget-object v4, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error processing json object "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->commitTransaction()V

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->lastUpdated:J

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/DocumentManager;->LAST_UPDATED_KEY:Ljava/lang/String;

    iget-wide v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->lastUpdated:J

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    :cond_5
    return-void
.end method

.method private reprocessList()V
    .locals 8

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "reprocessList()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "25"

    invoke-virtual {v3, v0, v4}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v5, "111"

    invoke-virtual {v4, v0, v5}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "108"

    invoke-virtual {v5, v0, v6}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    new-instance v6, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v6, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v5, :cond_0

    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v4, v1, v0}, Lcom/nuance/connect/service/manager/DocumentManager;->buildDocId(III)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/util/InstallMetadata;->isInstalling(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "document found that is installing, get new list"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->getList()V

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "TIME_ACCEPTED"

    invoke-virtual {v1, v0, v4}, Lcom/nuance/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "11"

    invoke-virtual {v1, v0, v4}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "locale different than installed document\'s locale.  get list in new language"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->getList()V

    goto :goto_1
.end method

.method private sendDocumentToHost([Ljava/lang/String;)V
    .locals 11

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    array-length v8, p1

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v9, p1, v6

    new-instance v0, Lcom/nuance/connect/internal/common/Document;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "25"

    invoke-virtual {v1, v9, v2}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "111"

    invoke-virtual {v2, v9, v3}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "108"

    invoke-virtual {v3, v9, v4}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v5, "FILE_LOCATION"

    invoke-virtual {v4, v9, v5}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v10, "11"

    invoke-virtual {v5, v9, v10}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/nuance/connect/internal/common/Document;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1, v9}, Lcom/nuance/connect/util/InstallMetadata;->isInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/DocumentManager;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DOCUMENT_UPDATED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    return-void
.end method

.method private sendListToHost()V
    .locals 12

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "25"

    invoke-virtual {v3, v0, v4}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v5, "111"

    invoke-virtual {v4, v0, v5}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "108"

    invoke-virtual {v5, v0, v6}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/nuance/connect/service/manager/DocumentManager;->docMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v7, "TIME_ACCEPTED"

    invoke-virtual {v6, v0, v7}, Lcom/nuance/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    new-instance v8, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v8, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v3, v6, v10

    if-eqz v3, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v5, :cond_0

    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v5, v1, v0}, Lcom/nuance/connect/service/manager/DocumentManager;->buildDocId(III)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v2, 0x1

    aput-object v1, v3, v2

    move v2, v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, v3}, Lcom/nuance/connect/service/manager/DocumentManager;->sendDocumentToHost([Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/nuance/connect/internal/common/ManagerService;->DOCUMENTS:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ManagerService;->getDependencies()[Lcom/nuance/connect/internal/common/ManagerService;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/DocumentManager;->LAST_UPDATED_KEY:Ljava/lang/String;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->lastUpdated:J

    return-void
.end method

.method public onFileResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "documentGet"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DocumentManager;->processGetDocumentResponse(Lcom/nuance/connect/service/comm/Response;)V

    :cond_0
    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/nuance/connect/service/manager/DocumentManager$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "MESSAGE_CLIENT_DOCUMENT_ACCEPTED"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "DEFAULT_KEY"

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

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "MESSAGE_COMMAND_UPDATE_DOCS"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->getList()V

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->validCommands:Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "list"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/DocumentManager;->processListResponse(Lcom/nuance/connect/service/comm/Response;)V

    :cond_0
    return-void
.end method

.method public rebind()V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->sendListToHost()V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->reprocessList()V

    return-void
.end method

.method public start()V
    .locals 4

    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    iget-wide v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->lastUpdated:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/DocumentManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "lastUpdated not set, need to get list."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->getList()V

    :goto_0
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->managerStartComplete()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->sendListToHost()V

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/DocumentManager;->reprocessList()V

    goto :goto_0
.end method
