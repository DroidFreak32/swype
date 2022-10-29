.class Lcom/nuance/connect/internal/DocumentServiceInternal;
.super Lcom/nuance/connect/internal/AbstractService;

# interfaces
.implements Lcom/nuance/connect/api/DocumentService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/DocumentServiceInternal$2;
    }
.end annotation


# static fields
.field private static final ACCEPTED_TIMESTAMP:Ljava/lang/String; = "TIME_ACCEPTED"

.field public static final DEFAULT_LOCALE:Ljava/lang/String; = "EN"

.field private static final EULA:Ljava/lang/String; = "EULA_"

.field private static final MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

.field private static final METADATA_KEY:Ljava/lang/String;

.field private static final PRIVACY:Ljava/lang/String; = "PRIVACY_"

.field private static final TOS:Ljava/lang/String; = "TOS_"

.field private static final USAGE:Ljava/lang/String; = "USAGE_"


# instance fields
.field private final assetsLegalDocuments:Lcom/nuance/connect/internal/AssetsLegalDocuments;

.field private connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

.field private final documentRevisionProvided:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final documents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nuance/connect/internal/common/Document;",
            ">;>;"
        }
    .end annotation
.end field

.field private handler:Lcom/nuance/connect/internal/ConnectHandler;

.field private final log:Lcom/nuance/connect/util/Logger$Log;

.field private final versionPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/internal/common/ManagerService;->DOCUMENTS:Lcom/nuance/connect/internal/common/ManagerService;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/ManagerService;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_METADATA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/internal/DocumentServiceInternal;->METADATA_KEY:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DOCUMENT_UPDATED:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/internal/DocumentServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .registers 4

    invoke-direct {p0}, Lcom/nuance/connect/internal/AbstractService;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v0, "<body.*data-document-version=\"([0-9]+)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->versionPattern:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documents:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documentRevisionProvided:Ljava/util/HashMap;

    new-instance v0, Lcom/nuance/connect/internal/DocumentServiceInternal$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/DocumentServiceInternal$1;-><init>(Lcom/nuance/connect/internal/DocumentServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    iput-object p1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    new-instance v0, Lcom/nuance/connect/internal/AssetsLegalDocuments;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/connect/internal/AssetsLegalDocuments;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->assetsLegalDocuments:Lcom/nuance/connect/internal/AssetsLegalDocuments;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/DocumentServiceInternal;->setup(Landroid/content/Context;)V

    return-void
.end method

.method private acceptDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;I)V
    .registers 7

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v0

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocumentClassId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/connect/internal/common/Document;->getPrimaryKey(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documents:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    if-eqz v0, :cond_71

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/Document;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nuance/connect/internal/common/Document;->setAcceptedTimestamp(J)V

    sget-object v1, Lcom/nuance/connect/internal/DocumentServiceInternal$2;->$SwitchMap$com$nuance$connect$internal$common$Document$DocumentType:[I

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_96

    :goto_3c
    :pswitch_3c
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "DEFAULT_KEY"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_DOCUMENT_ACCEPTED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v2, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    :goto_52
    return-void

    :pswitch_53
    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/UserSettings;->acceptEula()V

    goto :goto_3c

    :pswitch_5d
    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/UserSettings;->userHasAcceptedTOS()V

    goto :goto_3c

    :pswitch_67
    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/UserSettings;->acceptUsage()V

    goto :goto_3c

    :cond_71
    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Accept document failed. Unknown revision("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") requested for docType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_52

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_53
        :pswitch_5d
        :pswitch_3c
        :pswitch_67
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/DocumentServiceInternal;Landroid/os/Handler;Landroid/os/Message;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/DocumentServiceInternal;->handleMessage(Landroid/os/Handler;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100()[Lcom/nuance/connect/internal/common/InternalMessages;
    .registers 1

    sget-object v0, Lcom/nuance/connect/internal/DocumentServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-object v0
.end method

.method private addDocument(Lcom/nuance/connect/internal/common/Document;Z)V
    .registers 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    const/16 v12, 0x14

    const/16 v11, 0x13

    const/16 v10, 0x12

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "addDocument() type: "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, " revision: "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getRevision()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getType()I

    move-result v0

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getDocumentClass()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/connect/internal/common/Document;->getPrimaryKey(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documents:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "No TreeMap, adding now."

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documents:Ljava/util/HashMap;

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_48
    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documents:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/TreeMap;

    invoke-virtual {v6}, Ljava/util/TreeMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_13e

    invoke-virtual {v6}, Ljava/util/TreeMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/Document;

    move-object v1, v0

    :goto_62
    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getRevision()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/nuance/connect/internal/common/Document;

    if-eqz p2, :cond_142

    if-eqz v1, :cond_142

    invoke-virtual {p1, v1}, Lcom/nuance/connect/internal/common/Document;->compareTo(Lcom/nuance/connect/internal/common/Document;)I

    move-result v0

    if-lez v0, :cond_142

    move v8, v9

    :goto_7c
    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "checking to see if document "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, " revision "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getRevision()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, " is already stored."

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v7, :cond_146

    invoke-virtual {v7}, Lcom/nuance/connect/internal/common/Document;->getAccepted()Z

    move-result v0

    if-eqz v0, :cond_146

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Document "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, " at revision "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getRevision()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, " is already known and accepted, ignoring add."

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getTranslations()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/common/Document;->addTranslation(Ljava/util/HashMap;)V

    :goto_c7
    invoke-virtual {v6}, Ljava/util/TreeMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v7

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "latest entry: "

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/connect/internal/common/Document;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/Document;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, " rev. "

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, " accepted: "

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/connect/internal/common/Document;

    invoke-virtual {v6}, Lcom/nuance/connect/internal/common/Document;->getAccepted()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/Document;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/Document;->getAccepted()Z

    move-result v0

    if-nez v0, :cond_13d

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/Document;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/Document;->getType()I

    move-result v1

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/Document;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/Document;->getDocumentClass()I

    move-result v0

    invoke-static {v1, v0}, Lcom/nuance/connect/internal/common/Document$DocumentType;->fromId(II)Lcom/nuance/connect/internal/common/Document$DocumentType;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "New version of type: "

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/Document$DocumentType;->name()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " has not been accepted.  Checking to see if we need to reset."

    invoke-interface {v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v6

    sget-object v1, Lcom/nuance/connect/internal/DocumentServiceInternal$2;->$SwitchMap$com$nuance$connect$internal$common$Document$DocumentType:[I

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/Document$DocumentType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_2ca

    :cond_13d
    :goto_13d
    :pswitch_13d
    return-void

    :cond_13e
    const/4 v0, 0x0

    move-object v1, v0

    goto/16 :goto_62

    :cond_142
    const/4 v0, 0x0

    move v8, v0

    goto/16 :goto_7c

    :cond_146
    if-eqz v7, :cond_186

    invoke-virtual {v7}, Lcom/nuance/connect/internal/common/Document;->getAccepted()Z

    move-result v0

    if-nez v0, :cond_186

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getAccepted()Z

    move-result v0

    if-eqz v0, :cond_186

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Document "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, " at revision "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getRevision()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, " is accepted, updating."

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getRevision()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/nuance/connect/internal/common/Document;->getTranslations()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nuance/connect/internal/common/Document;->addTranslation(Ljava/util/HashMap;)V

    goto/16 :goto_c7

    :cond_186
    if-eqz v7, :cond_1af

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Document "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, " at revision "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getRevision()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, " updating translation."

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getTranslations()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/nuance/connect/internal/common/Document;->addTranslation(Ljava/util/HashMap;)V

    goto/16 :goto_c7

    :cond_1af
    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Document "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, " at revision "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getRevision()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, " not found, adding now."

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getRevision()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c7

    :pswitch_1da
    invoke-virtual {v6}, Lcom/nuance/connect/internal/UserSettings;->isEulaAccepted()Z

    move-result v0

    if-eqz v0, :cond_1fd

    invoke-virtual {v6}, Lcom/nuance/connect/internal/UserSettings;->isResetEulaOnNextStart()Z

    move-result v0

    if-nez v0, :cond_1fd

    if-eqz v8, :cond_1fd

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Older version of EULA has been accepted, require re-acceptance on restart"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    const-string/jumbo v1, "A new version of the EULA has been made available that must be accepted on the next start."

    invoke-virtual {v0, v12, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->notifyConnectionStatus(ILjava/lang/String;)V

    invoke-virtual {v6, v9}, Lcom/nuance/connect/internal/UserSettings;->setResetEulaOnNextStart(Z)V

    goto/16 :goto_13d

    :cond_1fd
    if-eqz v8, :cond_13d

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "New version of document "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, " at revision "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getRevision()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, " has been received.  Updating changed flag."

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    const-string/jumbo v1, "A new version of the EULA has been made available that must be accepted on the next start."

    invoke-virtual {v0, v12, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->notifyConnectionStatus(ILjava/lang/String;)V

    invoke-virtual {v6, v9}, Lcom/nuance/connect/internal/UserSettings;->setEulaChanged(Z)V

    goto/16 :goto_13d

    :pswitch_22a
    invoke-virtual {v6}, Lcom/nuance/connect/internal/UserSettings;->isTOSAccepted()Z

    move-result v0

    if-eqz v0, :cond_24d

    invoke-virtual {v6}, Lcom/nuance/connect/internal/UserSettings;->isResetTOSAcceptedOnNextStart()Z

    move-result v0

    if-nez v0, :cond_24d

    if-eqz v8, :cond_24d

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Older version of TOS has been accepted, require re-acceptance on restart"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    const-string/jumbo v1, "A new version of the Terms of Service has been made available that must be accepted on the next start."

    invoke-virtual {v0, v10, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->notifyConnectionStatus(ILjava/lang/String;)V

    invoke-virtual {v6, v9}, Lcom/nuance/connect/internal/UserSettings;->setResetTOSAcceptedOnNextStart(Z)V

    goto/16 :goto_13d

    :cond_24d
    if-eqz v8, :cond_13d

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "New version of document "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, " at revision "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getRevision()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, " has been received.  Updating changed flag."

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    const-string/jumbo v1, "A new version of the Terms of Service has been made available that must be accepted on the next start."

    invoke-virtual {v0, v10, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->notifyConnectionStatus(ILjava/lang/String;)V

    invoke-virtual {v6, v9}, Lcom/nuance/connect/internal/UserSettings;->setTosChanged(Z)V

    goto/16 :goto_13d

    :pswitch_27a
    invoke-virtual {v6}, Lcom/nuance/connect/internal/UserSettings;->isDataCollectionAccepted()Z

    move-result v0

    if-eqz v0, :cond_29d

    invoke-virtual {v6}, Lcom/nuance/connect/internal/UserSettings;->isResetUsageAcceptedOnNextStart()Z

    move-result v0

    if-nez v0, :cond_29d

    if-eqz v8, :cond_29d

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Older version of USAGE has been accepted, require re-acceptance on restart"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    const-string/jumbo v1, "A new version of the Data Opt-in agreement has been made available that must be accepted on the next start."

    invoke-virtual {v0, v11, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->notifyConnectionStatus(ILjava/lang/String;)V

    invoke-virtual {v6, v9}, Lcom/nuance/connect/internal/UserSettings;->setResetUsageAcceptedOnNextStart(Z)V

    goto/16 :goto_13d

    :cond_29d
    if-eqz v8, :cond_13d

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "New version of document "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, " at revision "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document;->getRevision()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, " has been received.  Updating changed flag."

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    const-string/jumbo v1, "A new version of the Data Opt-in agreement has been made available that must be accepted on the next start."

    invoke-virtual {v0, v11, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->notifyConnectionStatus(ILjava/lang/String;)V

    invoke-virtual {v6, v9}, Lcom/nuance/connect/internal/UserSettings;->setUsageChanged(Z)V

    goto/16 :goto_13d

    :pswitch_data_2ca
    .packed-switch 0x1
        :pswitch_1da
        :pswitch_22a
        :pswitch_13d
        :pswitch_27a
    .end packed-switch
.end method

.method private getDefaultDocument(ILjava/lang/String;)Landroid/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->assetsLegalDocuments:Lcom/nuance/connect/internal/AssetsLegalDocuments;

    invoke-virtual {v1, p1, p2}, Lcom/nuance/connect/internal/AssetsLegalDocuments;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4e

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->versionPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_45

    const/4 v1, 0x1

    :try_start_21
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_2c} :catch_34

    move-result-object v0

    :goto_2d
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_33
    return-object v0

    :catch_34
    move-exception v1

    iget-object v4, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "number format exception processing "

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2d

    :cond_45
    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "couldn\'t find version number in content."

    invoke-interface {v1, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_2d

    :cond_4e
    const/4 v0, 0x0

    goto :goto_33
.end method

.method private getDownloadedDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/lang/String;)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/common/Document$DocumentType;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v0

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocumentClassId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/connect/internal/common/Document;->getPrimaryKey(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v1

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocumentClassId()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/nuance/connect/internal/DocumentServiceInternal;->getLatestDocumentRevision(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_5b

    iget-object v2, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documents:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    if-eqz v0, :cond_5b

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/Document;

    if-eqz v0, :cond_5b

    invoke-virtual {v0, p2}, Lcom/nuance/connect/internal/common/Document;->getDocumentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5b

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-static {v2}, Lcom/nuance/connect/util/StringUtils;->getFileContents(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5b

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_5a
    return-object v0

    :cond_5b
    const/4 v0, 0x0

    goto :goto_5a
.end method

.method private getLatestDocumentRevision(II)I
    .registers 6

    invoke-static {p1, p2}, Lcom/nuance/connect/internal/common/Document;->getPrimaryKey(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documents:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    if-eqz v0, :cond_31

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-lez v0, :cond_31

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/Document;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/Document;->getRevision()I

    move-result v0

    :goto_30
    return v0

    :cond_31
    const/4 v0, 0x0

    goto :goto_30
.end method

.method private getMatchOrder(Ljava/util/Locale;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "#"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_43
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getNameDocumentName(ILjava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string/jumbo v0, ""

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    packed-switch p1, :pswitch_data_66

    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unknown Document Type:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_21
    return-object v0

    :pswitch_22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "EULA_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :pswitch_33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PRIVACY_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :pswitch_44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "USAGE_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :pswitch_55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "TOS_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_55
        :pswitch_22
        :pswitch_33
        :pswitch_44
    .end packed-switch
.end method

.method private handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .registers 6

    sget-object v0, Lcom/nuance/connect/internal/DocumentServiceInternal$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v1, p2, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3e

    :cond_11
    return-void

    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/Document;

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/internal/DocumentServiceInternal;->addDocument(Lcom/nuance/connect/internal/common/Document;Z)V

    goto :goto_2e

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_12
    .end packed-switch
.end method

.method private setup(Landroid/content/Context;)V
    .registers 12

    const/4 v7, 0x0

    invoke-static {}, Lcom/nuance/connect/internal/common/Document$DocumentType;->values()[Lcom/nuance/connect/internal/common/Document$DocumentType;

    move-result-object v8

    array-length v9, v8

    move v6, v7

    :goto_7
    if-ge v6, v9, :cond_52

    aget-object v2, v8, v6

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v0

    const-string/jumbo v1, "EN"

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/internal/DocumentServiceInternal;->getDefaultDocument(ILjava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_3a

    new-instance v0, Lcom/nuance/connect/internal/common/Document;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v1

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocumentClassId()I

    move-result v2

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v4, ""

    const-string/jumbo v5, "EN"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/connect/internal/common/Document;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v7}, Lcom/nuance/connect/internal/DocumentServiceInternal;->addDocument(Lcom/nuance/connect/internal/common/Document;Z)V

    :goto_36
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_7

    :cond_3a
    new-instance v0, Lcom/nuance/connect/internal/common/Document;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v1

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocumentClassId()I

    move-result v2

    const-string/jumbo v4, ""

    const-string/jumbo v5, "EN"

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/nuance/connect/internal/common/Document;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v7}, Lcom/nuance/connect/internal/DocumentServiceInternal;->addDocument(Lcom/nuance/connect/internal/common/Document;Z)V

    goto :goto_36

    :cond_52
    new-instance v8, Lcom/nuance/connect/util/InstallMetadata;

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getDataManager()Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/DocumentServiceInternal;->METADATA_KEY:Ljava/lang/String;

    invoke-direct {v8, v0, v1}, Lcom/nuance/connect/util/InstallMetadata;-><init>(Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/nuance/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_67
    :goto_67
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v0, "25"

    invoke-virtual {v8, v6, v0}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "111"

    invoke-virtual {v8, v6, v1}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->fromId(II)Lcom/nuance/connect/internal/common/Document$DocumentType;

    move-result-object v0

    if-eqz v0, :cond_67

    new-instance v0, Lcom/nuance/connect/internal/common/Document;

    const-string/jumbo v1, "25"

    invoke-virtual {v8, v6, v1}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "111"

    invoke-virtual {v8, v6, v2}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "108"

    invoke-virtual {v8, v6, v3}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "FILE_LOCATION"

    invoke-virtual {v8, v6, v4}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "11"

    invoke-virtual {v8, v6, v5}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/nuance/connect/internal/common/Document;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "TIME_ACCEPTED"

    invoke-virtual {v8, v6, v1}, Lcom/nuance/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-eqz v1, :cond_c7

    const-string/jumbo v1, "TIME_ACCEPTED"

    invoke-virtual {v8, v6, v1}, Lcom/nuance/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nuance/connect/internal/common/Document;->setAcceptedTimestamp(J)V

    :cond_c7
    invoke-virtual {v8, v6}, Lcom/nuance/connect/util/InstallMetadata;->isInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-direct {p0, v0, v7}, Lcom/nuance/connect/internal/DocumentServiceInternal;->addDocument(Lcom/nuance/connect/internal/common/Document;Z)V

    goto :goto_67

    :cond_d1
    return-void
.end method


# virtual methods
.method public acceptDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;)V
    .registers 4

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v0

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocumentClassId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/connect/internal/common/Document;->getPrimaryKey(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documentRevisionProvided:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/nuance/connect/internal/DocumentServiceInternal;->acceptDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;I)V

    return-void
.end method

.method public acceptDocumentIfCurrent(Lcom/nuance/connect/internal/common/Document$DocumentType;I)V
    .registers 5

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v0

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocumentClassId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/connect/internal/common/Document;->getPrimaryKey(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documents:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p2, :cond_33

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "The document being accepted is out of date.  An updated version of the document must be requested before it can be accepted."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "DOCUMENT_OUT_OF_DATE"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/internal/DocumentServiceInternal;->acceptDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;I)V

    return-void
.end method

.method public getAllRevisions(Lcom/nuance/connect/internal/common/Document$DocumentType;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/common/Document$DocumentType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nuance/connect/internal/common/Document;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v0

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocumentClassId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/connect/internal/common/Document;->getPrimaryKey(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documents:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
    .registers 2

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->DOCUMENTS:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->getDependencies()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v0

    return-object v0
.end method

.method public getDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/util/Locale;)Ljava/lang/String;
    .registers 12

    if-nez p2, :cond_1a

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "locale is null; reverting to default"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    if-nez p2, :cond_1a

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Could not get default locale"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    :cond_1a
    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Document "

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->name()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " requested for locale "

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/nuance/connect/internal/DocumentServiceInternal;->getMatchOrder(Ljava/util/Locale;)Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Match order is: "

    invoke-interface {v0, v2, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v0

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocumentClassId()I

    move-result v2

    invoke-static {v0, v2}, Lcom/nuance/connect/internal/common/Document;->getPrimaryKey(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "Checking for most recent cloud version of document in "

    invoke-interface {v4, v5, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/nuance/connect/internal/DocumentServiceInternal;->getDownloadedDocument(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_49

    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "most recent cloud version ("

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string/jumbo v6, ") of document found for locale "

    invoke-interface {v1, v3, v5, v6, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documentRevisionProvided:Ljava/util/HashMap;

    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :goto_7b
    return-object v0

    :cond_7c
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_91
    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Match order for embedded documents is: "

    invoke-interface {v0, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_113

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Checking for most recent built-in version of document in "

    invoke-interface {v3, v4, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v3

    invoke-direct {p0, v3, v0}, Lcom/nuance/connect/internal/DocumentServiceInternal;->getDefaultDocument(ILjava/lang/String;)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_9d

    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "most recent built-in version ("

    iget-object v4, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string/jumbo v5, ") of document found for locale "

    invoke-interface {v1, v3, v4, v5, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documentRevisionProvided:Ljava/util/HashMap;

    iget-object v1, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documents:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    if-nez v0, :cond_12d

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documents:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v0

    :goto_e4
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v6, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10d

    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    new-instance v0, Lcom/nuance/connect/internal/common/Document;

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v1

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocumentClassId()I

    move-result v2

    iget-object v3, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v4, ""

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/nuance/connect/internal/common/Document;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v8, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10d
    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_7b

    :cond_113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Get document failed no English translation found for requested document "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12d
    move-object v6, v0

    goto :goto_e4
.end method

.method public getDocumentRevisionNumber(Lcom/nuance/connect/internal/common/Document$DocumentType;Ljava/util/Locale;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v0

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocumentClassId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/connect/internal/common/Document;->getPrimaryKey(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documentRevisionProvided:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documentRevisionProvided:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documentRevisionProvided:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_28
    return-object v0

    :cond_29
    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v1

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocumentClassId()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/nuance/connect/internal/DocumentServiceInternal;->getLatestDocumentRevision(II)I

    move-result v1

    if-lez v1, :cond_45

    iget-object v2, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documentRevisionProvided:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    :cond_45
    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/nuance/connect/internal/DocumentServiceInternal;->getDefaultDocument(ILjava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_63

    iget-object v2, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documentRevisionProvided:Ljava/util/HashMap;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    :cond_63
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8f

    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/nuance/connect/internal/DocumentServiceInternal;->getDefaultDocument(ILjava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_8f

    iget-object v2, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documentRevisionProvided:Ljava/util/HashMap;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    :cond_8f
    invoke-virtual {p1}, Lcom/nuance/connect/internal/common/Document$DocumentType;->getDocTypeId()I

    move-result v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/nuance/connect/internal/DocumentServiceInternal;->getDefaultDocument(ILjava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_b0

    iget-object v2, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->documentRevisionProvided:Ljava/util/HashMap;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_28

    :cond_b0
    const-string/jumbo v0, "0"

    goto/16 :goto_28
.end method

.method getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/ConnectHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/DocumentServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method getServiceName()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->DOCUMENTS:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
