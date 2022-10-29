.class public Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/service/manager/interfaces/MessageProcessor;
.implements Lcom/nuance/connect/service/manager/interfaces/SubManager;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$3;
    }
.end annotation


# static fields
.field private static final LIVINGLANGUAGE_CURRENTCOUNT_PREF:Ljava/lang/String; = "LIVINGLANGUAGE_CURRENTCOUNT_PREF"

.field private static final LIVINGLANGUAGE_LAST_LANGUAGE_LIST:Ljava/lang/String; = "LIVINGLANGUAGE_LAST_LANGUAGE_LIST"

.field private static final LIVINGLANGUAGE_LAST_LOCALE_COUNTRY:Ljava/lang/String; = "LIVINGLANGUAGE_LAST_LOCALE_COUNTRY"

.field private static final LIVINGLANGUAGE_LAST_PROCESSED_PREF:Ljava/lang/String; = "LIVINGLANGUAGE_LAST_PROCESSED_PREF"

.field private static final LIVINGLANGUAGE_LAST_UPDATED_PREF:Ljava/lang/String; = "LIVINGLANGUAGE_LAST_UPDATED_PREF"

.field private static final LIVINGLANGUAGE_MAX_EVENTS_PREF:Ljava/lang/String; = "LIVINGLANGUAGE_MAX_EVENTS_PREF"

.field private static final LIVING_LANGUAGE_ENABLED_PREF:Ljava/lang/String;

.field private static final MESSAGES_HANDLED:[I

.field private static final PROCESS_DELAY:I = 0x2710

.field private static final typesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final categoriesManaged:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

.field private final client:Lcom/nuance/connect/service/ConnectClient;

.field private currentEventCount:I

.field private volatile enabled:Z

.field private lastCountryCode:Ljava/lang/String;

.field private lastLanguageCodes:[I

.field private lastProcessed:J

.field private lastUpdated:J

.field private final log:Lcom/nuance/connect/util/Logger$Log;

.field private maxEvents:I

.field private final oemLog:Lcom/nuance/connect/util/Logger$Log;

.field private final parent:Lcom/nuance/connect/service/manager/CategoryManager;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-array v0, v4, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->typesSupported:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "LivingLanguageEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->LIVING_LANGUAGE_ENABLED_PREF:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [I

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_PROCESS_LIVING_LANGUAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    aput v1, v0, v3

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_LIVING_LANGUAGE_REFRESH:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    aput v1, v0, v2

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_LIVING_LANGUAGE_CANCEL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    aput v1, v0, v4

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_LIVING_LANGUAGE_FOREGROUND:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    aput v1, v0, v5

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_LIVING_LANGUAGE_MAX_EVENTS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_PROCESS_CATEGORY_EVENTS_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_PROCESS_CATEGORY_DELETE_CATEGORY_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_INSTALL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->MESSAGES_HANDLED:[I

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/ConnectClient;Z)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoriesManaged:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->currentEventCount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->maxEvents:I

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iput-object p2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-object v0, p1, Lcom/nuance/connect/service/manager/CategoryManager;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    sget-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->typesSupported:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoriesManaged:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getTableForType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->allCategoryIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_36

    :cond_58
    invoke-virtual {p2}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->LIVING_LANGUAGE_ENABLED_PREF:Ljava/lang/String;

    invoke-interface {v0, v1, p3}, Lcom/nuance/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->enabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;)Lcom/nuance/connect/util/Logger$Log;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->sendDeleteCategoryToHost(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;)Lcom/nuance/connect/service/manager/CategoryManager;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;)Lcom/nuance/connect/sqlite/CategoryDatabase;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->install(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->enabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;)Lcom/nuance/connect/service/ConnectClient;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    return-object v0
.end method

.method private determinePurgeRequired(I)V
    .registers 11

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->enabled:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->currentEventCount:I

    add-int v2, p1, v0

    iget v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->maxEvents:I

    if-le v2, v3, :cond_c6

    const/4 v0, -0x1

    if-eq v3, v0, :cond_c6

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->typesSupported:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getTableForType(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v6, "SUBSCRIBED"

    invoke-virtual {v0, v6, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->allWithProperty(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4a
    :goto_4a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string/jumbo v7, "SUBSCRIBED"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v7, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v8, "CATEGORY_COUNT"

    invoke-virtual {v7, v1, v8}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4a

    iget-object v7, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v8, "LAST_USED_AT"

    invoke-virtual {v7, v1, v8}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    :cond_97
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :cond_a5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v6, "CATEGORY_COUNT"

    invoke-virtual {v2, v0, v6}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->removeLivingLanguage(Ljava/lang/String;)V

    if-gt v1, v3, :cond_a5

    :cond_c6
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->savePreferences()V

    goto/16 :goto_4
.end method

.method private findVariantLanguageCategory(ILjava/lang/String;I)Ljava/lang/String;
    .registers 15

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "findVariantLanguageCategory("

    const-string/jumbo v3, ", "

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, ") for keyboardId 0x"

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    move-object v2, p2

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->getDownloadListState()Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_NONE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    if-eq v0, v1, :cond_2c

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_2c
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "findVariantLanguageCategory() - none exist. done."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    move-object v1, v7

    :goto_35
    return-object v1

    :cond_36
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->enabled:Z

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "findVariantLanguageCategory() - living language not enabled"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    move-object v1, v7

    goto :goto_35

    :cond_44
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "78"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "13"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "100"

    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    new-array v1, v10, [Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getTableForType(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v10}, Lcom/nuance/connect/sqlite/CategoryDatabase;->allWithPropertyMap(Ljava/util/Map;Ljava/util/Collection;Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v7

    :cond_81
    :goto_81
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string/jumbo v3, "100"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_15f

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_ac
    if-eqz v3, :cond_cc

    array-length v6, v3

    move v0, v8

    :goto_b0
    if-ge v0, v6, :cond_81

    aget-object v9, v3, v0

    if-eqz p2, :cond_c9

    invoke-virtual {p2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c9

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Found exact match database for variant: "

    const-string/jumbo v3, " category: "

    invoke-interface {v0, v2, p2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_35

    :cond_c9
    add-int/lit8 v0, v0, 0x1

    goto :goto_b0

    :cond_cc
    if-nez v2, :cond_15c

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Setting default category: "

    invoke-interface {v0, v2, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_d6
    move-object v2, v1

    goto :goto_81

    :cond_d8
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    const-string/jumbo v0, "78"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "13"

    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    new-array v1, v10, [Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v3, v10}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getTableForType(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v8}, Lcom/nuance/connect/sqlite/CategoryDatabase;->allWithPropertyMap(Ljava/util/Map;Ljava/util/Collection;Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_107
    :goto_107
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_159

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_119
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string/jumbo v4, "13"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, p1, :cond_13a

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "Found TYPE_KEYBOARD_LANGUAGE_ONLY category: "

    invoke-interface {v0, v4, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_35

    :catch_138
    move-exception v0

    goto :goto_107

    :cond_13a
    and-int/lit16 v4, v0, 0xff

    const/16 v5, 0x12

    if-ne v4, v5, :cond_107

    and-int/lit16 v4, v0, 0xff

    and-int/lit16 v5, p1, 0xff

    if-ne v4, v5, :cond_107

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v5, "Found Korean database with partial keyboard match 0x"

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, " : "

    invoke-interface {v4, v5, v0, v6, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_157
    .catch Ljava/lang/NumberFormatException; {:try_start_119 .. :try_end_157} :catch_138

    goto/16 :goto_35

    :cond_159
    move-object v1, v2

    goto/16 :goto_35

    :cond_15c
    move-object v1, v2

    goto/16 :goto_d6

    :cond_15f
    move-object v3, v7

    goto/16 :goto_ac
.end method

.method private getUniqueCategoryIds()Landroid/util/SparseIntArray;
    .registers 7

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    sget-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->typesSupported:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getTableForType(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v5, "78"

    invoke-virtual {v4, v5, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->allWithProperty(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3a
    :goto_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :try_start_46
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string/jumbo v5, "78"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_3a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_66
    .catch Ljava/lang/NumberFormatException; {:try_start_46 .. :try_end_66} :catch_67

    goto :goto_3a

    :catch_67
    move-exception v1

    goto :goto_3a

    :cond_69
    return-object v2
.end method

.method private install(Ljava/lang/String;)Z
    .registers 11

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->getTypeForID(Ljava/lang/String;)I

    move-result v6

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v1, "CATEGORY_COUNT"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v1, "CATEGORY_COUNT_OLD"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "CategorySubmanagerLivingLanguage.install("

    const-string/jumbo v3, ") Count: ["

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "]"

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->typesSupported:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    if-lez v8, :cond_50

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "CategorySubmanagerLivingLanguage.install("

    const-string/jumbo v2, ") -- this is an update, removing old count: "

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->currentEventCount:I

    sub-int/2addr v0, v8

    iput v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->currentEventCount:I

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->savePreferences()V

    :cond_50
    invoke-direct {p0, v7}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->determinePurgeRequired(I)V

    iget v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->currentEventCount:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->currentEventCount:I

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->savePreferences()V

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->installCategory(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_5f
    return v0

    :cond_60
    const/4 v0, 0x0

    goto :goto_5f
.end method

.method private installCategory(Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "installCategory("

    const-string/jumbo v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "installCategory() - category list is not available ("

    const-string/jumbo v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->getTypeForID(Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getStep(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_93

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "installCategory() - category list is not ready for install ("

    const-string/jumbo v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v1, "FILE_LOCATION"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v3, "13"

    invoke-virtual {v2, p1, v3}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/connect/service/ConnectClient;->getCoreForLanguage(I)I

    move-result v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const/4 v3, 0x7

    invoke-virtual {v2, p1, v3}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setStep(Ljava/lang/String;I)V

    if-eqz v0, :cond_1e

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "installCategory() - sending dlm events now: "

    const-string/jumbo v4, " core: "

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v3, v0, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "DLM_EVENT_FILE"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "DLM_EVENT_CORE"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "IDENTIFIER"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "DLM_EVENT_ACK"

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_PROCESS_CATEGORY_EVENTS_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_PROCESS_DLM_EVENTS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V

    goto :goto_1e

    :cond_93
    invoke-virtual {p0, v2}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "installCategory() - category type is not installable client-side ("

    const-string/jumbo v3, ") type ("

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, ")"

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1e
.end method

.method private declared-synchronized processNextCategory(I)V
    .registers 21

    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "LL.processNextCategory() - languageId: ["

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-interface {v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->enabled:Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_31

    if-nez v2, :cond_1a

    :cond_18
    :goto_18
    monitor-exit p0

    return-void

    :cond_1a
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Current core not yet set.  Delay processing."

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_31

    goto :goto_18

    :catchall_31
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_34
    :try_start_34
    invoke-direct/range {p0 .. p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->getUniqueCategoryIds()Landroid/util/SparseIntArray;

    move-result-object v16

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v11, v2

    :goto_44
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v11, v2, :cond_18f

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    const/4 v4, 0x0

    sget-object v5, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->typesSupported:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/CategoryManager;->currentLocale:Ljava/util/Locale;

    if-eqz v2, :cond_a4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/CategoryManager;->currentLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    :goto_75
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->findVariantLanguageCategory(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :cond_7d
    if-eqz v4, :cond_a0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v2, v4}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getProps(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_a6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Did not find category: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_a0
    :goto_a0
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_44

    :cond_a4
    const/4 v2, 0x0

    goto :goto_75

    :cond_a6
    const-string/jumbo v2, "SUBSCRIBED"

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_b2
    .catchall {:try_start_34 .. :try_end_b2} :catchall_31

    move-result v6

    const/high16 v3, -0x80000000

    :try_start_b5
    const-string/jumbo v2, "13"

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c1
    .catch Ljava/lang/NumberFormatException; {:try_start_b5 .. :try_end_c1} :catch_1bb
    .catchall {:try_start_b5 .. :try_end_c1} :catchall_31

    move-result v2

    move v3, v2

    :goto_c3
    :try_start_c3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v2, v4}, Lcom/nuance/connect/service/manager/CategoryManager;->getTypeForID(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v2, "DELETE_CATEGORY"

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v8, v8, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v9, v3}, Lcom/nuance/connect/service/ConnectClient;->getCoreForLanguage(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_102

    if-eqz v2, :cond_102

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->sendDeleteCategoryToHost(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v3, "DELETE_CATEGORY"

    invoke-virtual {v2, v4, v3}, Lcom/nuance/connect/sqlite/CategoryDatabase;->removeProp(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_101
    .catchall {:try_start_c3 .. :try_end_101} :catchall_31

    goto :goto_a0

    :cond_102
    if-eqz v6, :cond_16a

    const-wide/high16 v6, -0x8000000000000000L

    const-wide/high16 v8, -0x8000000000000000L

    :try_start_108
    const-string/jumbo v2, "LAST_UPDATE_FETCHED"

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string/jumbo v2, "LAST_UPDATE_AVAILABLE"

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_121
    .catch Ljava/lang/NumberFormatException; {:try_start_108 .. :try_end_121} :catch_15b
    .catchall {:try_start_108 .. :try_end_121} :catchall_31

    move-result-wide v2

    move-wide v12, v2

    move-wide v14, v6

    :goto_124
    :try_start_124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "getNextCategory() -- key: ["

    const-string/jumbo v5, "] lastFetched: ["

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, "] "

    const-string/jumbo v8, "lastAvailable: ["

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-interface/range {v2 .. v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    cmp-long v2, v14, v12

    if-gez v2, :cond_14b

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14b
    :goto_14b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v3, "LAST_USED_AT"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v4, v3, v6, v7}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProp(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_a0

    :catch_15b
    move-exception v2

    move-wide v2, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v6, "format error with fetched times"

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    move-wide v12, v8

    move-wide v14, v2

    goto :goto_124

    :cond_16a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->enabled:Z

    if-eqz v2, :cond_14b

    if-nez v6, :cond_14b

    sget-object v2, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->typesSupported:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v3, "FIRST_TIME_DOWNLOADED"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v3, v5}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14b

    :cond_18f
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_19e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->subscribeList(Ljava/util/ArrayList;)V

    :cond_19e
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1aa

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_18

    :cond_1aa
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/nuance/connect/service/manager/CategoryManager;->subscribeList(Ljava/util/ArrayList;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->sendLivingLanguageUpdateStatus(Z)V
    :try_end_1b9
    .catchall {:try_start_124 .. :try_end_1b9} :catchall_31

    goto/16 :goto_18

    :catch_1bb
    move-exception v2

    goto/16 :goto_c3
.end method

.method private removeLivingLanguage(Ljava/lang/String;)V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "removeLivingLanguage: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v1, "CATEGORY_COUNT"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v1, p1, v2}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setStep(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v2, "LL_DELETE_CLEAR"

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v2, "CATEGORY_COUNT"

    invoke-virtual {v1, p1, v2}, Lcom/nuance/connect/sqlite/CategoryDatabase;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->currentEventCount:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->currentEventCount:I

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->savePreferences()V

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->sendDeleteCategoryToHost(Ljava/lang/String;)V

    return-void
.end method

.method private resetCategoryDownloadState(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "resetCategoryDownloadState("

    const-string/jumbo v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setStep(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v1, "FILE_LOCATION"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "resetCategoryDownloadState("

    const-string/jumbo v3, ") -- "

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, p1, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v1, "FILE_LOCATION"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendDeleteCategoryToHost(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v2, "13"

    invoke-virtual {v1, p1, v2}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v3, "78"

    invoke-virtual {v2, p1, v3}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v3, v1}, Lcom/nuance/connect/service/ConnectClient;->getCoreForLanguage(I)I

    move-result v3

    const-string/jumbo v4, "DLM_EVENT_CORE"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "DLM_DELETE_CAETEGORY"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "DLM_DELETE_LANGUAGE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "IDENTIFIER"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_PROCESS_DLM_DELETE_CATEGORY:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V

    :cond_44
    return-void
.end method

.method private sendLivingLanguageUpdateStatus(Z)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_NOTIFY_LIVING_LANGUAGE_UPDATE_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    return-void
.end method

.method private sendUninstallInfo(Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Lcom/nuance/connect/util/Logger;->getTrace()Lcom/nuance/connect/util/Logger$Trace;

    move-result-object v0

    const-string/jumbo v1, "sendUninstallInfo"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/Logger$Trace;->enterMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getProps(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_30

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not find category: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_2f
    return-void

    :cond_30
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->getTypeForID(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "CATEGORY_TYPE"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "CATEGORY_UUID"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_47
    const-string/jumbo v4, "CATEGORY_ID"

    const-string/jumbo v0, "78"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "CATEGORY_LANGUAGE_ID"

    const-string/jumbo v0, "13"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_47 .. :try_end_6d} :catch_ac

    :goto_6d
    const-string/jumbo v0, "CATEGORY_TYPE"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "CATEGORY_LOCALE"

    const-string/jumbo v0, "98"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "CATEGORY_COUNTRY"

    const-string/jumbo v0, "100"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v1, "FIRST_TIME_DOWNLOADED"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_REMOVE_LIVING_LANGUAGE_INFO:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1, v3}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V

    :cond_a1
    invoke-static {}, Lcom/nuance/connect/util/Logger;->getTrace()Lcom/nuance/connect/util/Logger$Trace;

    move-result-object v0

    const-string/jumbo v1, "sendUninstallInfo"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/Logger$Trace;->enterMethod(Ljava/lang/String;)V

    goto :goto_2f

    :catch_ac
    move-exception v0

    goto :goto_6d
.end method

.method private shouldProcessCategories()Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/CategoryManager;->currentLocale:Ljava/util/Locale;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/CategoryManager;->currentLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    :goto_10
    if-nez v2, :cond_16

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastCountryCode:Ljava/lang/String;

    if-nez v3, :cond_20

    :cond_16
    if-eqz v2, :cond_38

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    :cond_20
    :goto_20
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "LL.shouldProcessCategories() -- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    return v0

    :cond_36
    const/4 v2, 0x0

    goto :goto_10

    :cond_38
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/CategoryManager;->currentLanguageCodes:[I

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastLanguageCodes:[I

    invoke-static {v2, v3}, Lcom/nuance/connect/util/IntegerUtils;->arrayCompare([I[I)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-wide v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastProcessed:J

    iget-wide v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastUpdated:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_20

    move v0, v1

    goto :goto_20
.end method

.method private updateCategoryDeleteAck(ZILjava/lang/String;)V
    .registers 12

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "updateCategoryDeleteAck() - status: ["

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, "] dlmCategory: ["

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "] category: ["

    const-string/jumbo v7, "]"

    move-object v6, p3

    invoke-interface/range {v0 .. v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v0, p3}, Lcom/nuance/connect/sqlite/CategoryDatabase;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "updateCategoryDeleteAck() - category list is not available ("

    const-string/jumbo v2, ")"

    invoke-interface {v0, v1, p3, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v0, p3}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getStep(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v1, "LL_DELETE_CLEAR"

    invoke-virtual {v0, p3, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "updateCategoryDeleteAck() - LL Clear occurring for: "

    invoke-interface {v0, v1, p3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v1, "LL_DELETE_CLEAR"

    invoke-virtual {v0, p3, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->sendUninstallInfo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v1, "FILE_LOCATION"

    invoke-virtual {v0, p3, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setStep(Ljava/lang/String;I)V

    goto :goto_2d
.end method

.method private updateCategoryEventAck(ZILjava/lang/String;I)V
    .registers 13

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "updateCategoryEventAck() - status: ["

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, "] core: ["

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "] category: ["

    const-string/jumbo v7, "]"

    move-object v6, p3

    invoke-interface/range {v0 .. v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v0, p3}, Lcom/nuance/connect/sqlite/CategoryDatabase;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "updateCategoryEventAck() - category list is not available ("

    const-string/jumbo v2, ")"

    invoke-interface {v0, v1, p3, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2d
    return-void

    :cond_2e
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v0, p3}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getStep(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_46

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "updateCategoryEventAck() - category list is not ready for install ("

    const-string/jumbo v2, ")"

    invoke-interface {v0, v1, p3, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p3}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->resetCategoryDownloadState(Ljava/lang/String;)V

    goto :goto_2d

    :cond_46
    if-eqz p1, :cond_66

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v1, "FILE_LOCATION"

    invoke-virtual {v0, p3, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    invoke-virtual {p0, p3, p4}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->sendInstallInfo(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v1, "FILE_LOCATION"

    invoke-virtual {v0, p3, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setStep(Ljava/lang/String;I)V

    goto :goto_2d

    :cond_66
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const/4 v1, 0x5

    invoke-virtual {v0, p3, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setStep(Ljava/lang/String;I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_INSTALL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/CategoryManager;->calcDefaultMilliDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Landroid/os/Message;J)V

    goto :goto_2d
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public categoriesManagedCount()I
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public createSubscribeTransaction(Ljava/lang/String;)Lcom/nuance/connect/comm/Transaction;
    .registers 4

    new-instance v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-direct {v0, p0, p1, v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;-><init>(Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;Ljava/lang/String;Lcom/nuance/connect/service/manager/CategoryManager;)V

    return-object v0
.end method

.method public getManagerPollInterval()I
    .registers 3

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->enabled:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->POLL_INTERVAL_LIVING_LANGUAGE:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getInteger(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Integer;

    move-result-object v0

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_11
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->DEFAULT_POLLING_INTERVAL_NO_FEATURES:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->getInteger(Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c
.end method

.method public getMessageIDs()[I
    .registers 2

    sget-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->MESSAGES_HANDLED:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_LIVING_LANGUAGE:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypesSupported()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->typesSupported:Ljava/util/List;

    return-object v0
.end method

.method public init()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_LIVING_LANGUAGE_MAX_EVENTS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->loadPreferences()V

    return-void
.end method

.method public isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->enabled:Z

    return v0
.end method

.method isSupported(I)Z
    .registers 4

    sget-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->typesSupported:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public languageUpdated([ILjava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->processNextCategory()V

    return-void
.end method

.method loadPreferences()V
    .registers 7

    const-wide/high16 v4, -0x8000000000000000L

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v2

    const-string/jumbo v0, "LIVINGLANGUAGE_CURRENTCOUNT_PREF"

    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Lcom/nuance/connect/store/PersistentDataStore;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->currentEventCount:I

    const-string/jumbo v0, "LIVINGLANGUAGE_MAX_EVENTS_PREF"

    const/4 v1, -0x1

    invoke-interface {v2, v0, v1}, Lcom/nuance/connect/store/PersistentDataStore;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->maxEvents:I

    const-string/jumbo v0, "LIVINGLANGUAGE_LAST_UPDATED_PREF"

    invoke-interface {v2, v0, v4, v5}, Lcom/nuance/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastUpdated:J

    const-string/jumbo v0, "LIVINGLANGUAGE_LAST_PROCESSED_PREF"

    invoke-interface {v2, v0, v4, v5}, Lcom/nuance/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastProcessed:J

    iget-wide v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastUpdated:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gtz v0, :cond_65

    iget-wide v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastUpdated:J

    :goto_3a
    iput-wide v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastUpdated:J

    iget-wide v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastProcessed:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gtz v0, :cond_6a

    iget-wide v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastProcessed:J

    :goto_48
    iput-wide v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastProcessed:J

    const-string/jumbo v0, "LIVINGLANGUAGE_LAST_LOCALE_COUNTRY"

    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastCountryCode:Ljava/lang/String;

    const-string/jumbo v0, "LIVINGLANGUAGE_LAST_LANGUAGE_LIST"

    const-string/jumbo v1, ""

    invoke-interface {v2, v0, v1}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/util/StringUtils;->safeStringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastLanguageCodes:[I

    return-void

    :cond_65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_3a

    :cond_6a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_48
.end method

.method public localeUpdated(Ljava/util/Locale;)V
    .registers 2

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->processNextCategory()V

    return-void
.end method

.method public onDataUpdated()V
    .registers 6

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "onDataUpdated()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->typesSupported:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoriesManaged:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getTableForType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->allCategoryIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_13

    :cond_35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastUpdated:J

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->savePreferences()V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->processNextCategory()V

    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$3;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_146

    :goto_13
    return v0

    :pswitch_14
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "MESSAGE_COMMAND_PROCESS_LIVING_LANGUAGE "

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/CategoryManager;->currentLanguageCodes:[I

    if-eqz v2, :cond_30

    invoke-direct {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->shouldProcessCategories()Z

    move-result v2

    if-nez v2, :cond_32

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "processNextCategory() no changes requiring processing"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_30
    :goto_30
    move v0, v1

    goto :goto_13

    :cond_32
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v3, v2, Lcom/nuance/connect/service/manager/CategoryManager;->currentLanguageCodes:[I

    array-length v4, v3

    move v2, v0

    :goto_38
    if-ge v2, v4, :cond_42

    aget v5, v3, v2

    invoke-direct {p0, v5}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->processNextCategory(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_42
    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->determinePurgeRequired(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastProcessed:J

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->currentLanguageCodes:[I

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastLanguageCodes:[I

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/CategoryManager;->currentCountry:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastCountryCode:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->savePreferences()V

    goto :goto_30

    :pswitch_5b
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "MESSAGE_CLIENT_CATEGORY_LIVING_LANGUAGE_REFRESH"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_74
    :goto_74
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v5, "13"

    invoke-virtual {v4, v0, v5}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v5, v4}, Lcom/nuance/connect/service/ConnectClient;->getCoreForLanguage(I)I

    move-result v4

    if-ne v2, v4, :cond_74

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v5, "LAST_UPDATE_FETCHED"

    invoke-virtual {v4, v0, v5}, Lcom/nuance/connect/sqlite/CategoryDatabase;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_74

    :cond_9a
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastProcessed:J

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->processNextCategory()V

    move v0, v1

    goto/16 :goto_13

    :pswitch_a4
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "MESSAGE_CLIENT_CATEGORY_LIVING_LANGUAGE_CANCEL"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->cancelActiveTransactions(I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/nuance/connect/service/manager/CategoryManager;->cancelActiveTransactions(I)V

    move v0, v1

    goto/16 :goto_13

    :pswitch_ba
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "DEFAULT_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "MASSAGE_CLIENT_SET_LIVING_LANGUAGE_MAX_EVENTS events: "

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iput v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->maxEvents:I

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->savePreferences()V

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->determinePurgeRequired(I)V

    move v0, v1

    goto/16 :goto_13

    :pswitch_dc
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "DLM_EVENT_CORE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "DLM_EVENT_COUNT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "IDENTIFIER"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v2, v4, v3}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->updateCategoryEventAck(ZILjava/lang/String;I)V

    move v0, v1

    goto/16 :goto_13

    :pswitch_10e
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "DLM_DELETE_CAETEGORY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "IDENTIFIER"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->updateCategoryDeleteAck(ZILjava/lang/String;)V

    move v0, v1

    goto/16 :goto_13

    :pswitch_135
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->installCategory(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_13

    :pswitch_data_146
    .packed-switch 0x1
        :pswitch_14
        :pswitch_5b
        :pswitch_a4
        :pswitch_ba
        :pswitch_dc
        :pswitch_10e
        :pswitch_135
    .end packed-switch
.end method

.method public onUpgrade(Lcom/nuance/connect/util/VersionUtils$Version;Lcom/nuance/connect/util/VersionUtils$Version;)V
    .registers 3

    return-void
.end method

.method public parseJsonListResponse(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_5
    const-string/jumbo v1, "25"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_d6

    :pswitch_f
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unsupported type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "25"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_2b
    :goto_2b
    return-object v0

    :pswitch_2c
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "parseJsonListResponse() -- TYPE_KEYBOARD_LANGUAGE_ONLY"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const-string/jumbo v1, "13"

    const-string/jumbo v2, "13"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_41} :catch_42

    goto :goto_2b

    :catch_42
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Failure processing JSON object: "

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_2b

    :pswitch_51
    :try_start_51
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "parseJsonListResponse() -- TYPE_KEYBOARD_PLUS_LANGUAGE_VARIANT"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "-- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const-string/jumbo v1, "13"

    const-string/jumbo v2, "13"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "98"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_95

    const-string/jumbo v1, "98"

    const-string/jumbo v2, "98"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_95
    const-string/jumbo v1, "100"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string/jumbo v1, "100"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2b

    const-string/jumbo v1, "100"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_b4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_ca

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b4

    :cond_ca
    const-string/jumbo v1, "100"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d4
    .catch Lorg/json/JSONException; {:try_start_51 .. :try_end_d4} :catch_42

    goto/16 :goto_2b

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_f
        :pswitch_51
    .end packed-switch
.end method

.method declared-synchronized processNextCategory()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_PROCESS_LIVING_LANGUAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->removeMessages(Lcom/nuance/connect/internal/common/InternalMessages;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_PROCESS_LIVING_LANGUAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method savePreferences()V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "savePreferences() called"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string/jumbo v1, "LIVINGLANGUAGE_CURRENTCOUNT_PREF"

    iget v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->currentEventCount:I

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveInt(Ljava/lang/String;I)Z

    const-string/jumbo v1, "LIVINGLANGUAGE_MAX_EVENTS_PREF"

    iget v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->maxEvents:I

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveInt(Ljava/lang/String;I)Z

    const-string/jumbo v1, "LIVINGLANGUAGE_LAST_UPDATED_PREF"

    iget-wide v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastUpdated:J

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    const-string/jumbo v1, "LIVINGLANGUAGE_LAST_PROCESSED_PREF"

    iget-wide v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastProcessed:J

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    const-string/jumbo v1, "LIVINGLANGUAGE_LAST_LANGUAGE_LIST"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastLanguageCodes:[I

    const-string/jumbo v3, ","

    invoke-static {v2, v3}, Lcom/nuance/connect/util/StringUtils;->implode([ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v1, "LIVINGLANGUAGE_LAST_LOCALE_COUNTRY"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastCountryCode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method sendInstallInfo(Ljava/lang/String;I)V
    .registers 8

    invoke-static {}, Lcom/nuance/connect/util/Logger;->getTrace()Lcom/nuance/connect/util/Logger$Trace;

    move-result-object v0

    const-string/jumbo v1, "sendInstallInfo"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/Logger$Trace;->enterMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getProps(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_30

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not find category: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_2f
    return-void

    :cond_30
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->getTypeForID(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "CATEGORY_TYPE"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "CATEGORY_COUNT"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "CATEGORY_UUID"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_4d
    const-string/jumbo v4, "CATEGORY_ID"

    const-string/jumbo v0, "78"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "CATEGORY_LANGUAGE_ID"

    const-string/jumbo v0, "13"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_73
    .catch Ljava/lang/NumberFormatException; {:try_start_4d .. :try_end_73} :catch_c5

    :goto_73
    const-string/jumbo v0, "CATEGORY_TYPE"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "CATEGORY_LOCALE"

    const-string/jumbo v0, "98"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "CATEGORY_COUNTRY"

    const-string/jumbo v0, "100"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v1, "FIRST_TIME_DOWNLOADED"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v1, "FIRST_TIME_DOWNLOADED"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/sqlite/CategoryDatabase;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ADD_LIVING_LANGUAGE_INFO:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1, v3}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V

    :cond_b1
    :goto_b1
    invoke-static {}, Lcom/nuance/connect/util/Logger;->getTrace()Lcom/nuance/connect/util/Logger$Trace;

    move-result-object v0

    const-string/jumbo v1, "sendInstallInfo"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/Logger$Trace;->exitMethod(Ljava/lang/String;)V

    goto/16 :goto_2f

    :cond_bd
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_UPDATE_LIVING_LANGUAGE_INFO:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1, v3}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Landroid/os/Bundle;)V

    goto :goto_b1

    :catch_c5
    move-exception v0

    goto :goto_73
.end method

.method public setEnabled(Z)V
    .registers 9

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Updating "

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " old status "

    iget-boolean v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->enabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string/jumbo v5, " new status: "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->enabled:Z

    if-ne p1, v0, :cond_21

    :goto_20
    return-void

    :cond_21
    iput-boolean p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->enabled:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->LIVING_LANGUAGE_ENABLED_PREF:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Updated "

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " status to "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_56

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Enabling Living language"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastProcessed:J

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->savePreferences()V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->processNextCategory()V

    goto :goto_20

    :cond_56
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Disabling Living language"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_64
    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v3, "SUBSCRIBED"

    invoke-virtual {v2, v0, v3}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-direct {p0, v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->removeLivingLanguage(Ljava/lang/String;)V

    goto :goto_64

    :cond_7f
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->unsubscribeAll()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->cancelActiveTransactions(I)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->cancelActiveTransactions(I)V

    goto :goto_20
.end method

.method public start()V
    .registers 1

    return-void
.end method

.method public unsubscribe(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "unsubscribe("

    const-string/jumbo v3, ")"

    invoke-interface {v1, v2, p1, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v1, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->getTypeForID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->isSupported(I)Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v2, "13"

    invoke-virtual {v1, p1, v2}, Lcom/nuance/connect/sqlite/CategoryDatabase;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v3, v1}, Lcom/nuance/connect/service/ConnectClient;->getCoreForLanguage(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->sendDeleteCategoryToHost(Ljava/lang/String;)V

    :goto_3c
    new-instance v1, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$1;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0, v2, p1}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$1;-><init>(Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v2, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->startTransaction(Lcom/nuance/connect/comm/Transaction;)V

    :goto_4b
    return v0

    :cond_4c
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryDatabase:Lcom/nuance/connect/sqlite/CategoryDatabase;

    const-string/jumbo v2, "DELETE_CATEGORY"

    invoke-virtual {v1, p1, v2, v0}, Lcom/nuance/connect/sqlite/CategoryDatabase;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3c

    :cond_55
    const/4 v0, 0x0

    goto :goto_4b
.end method
