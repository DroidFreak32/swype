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
        Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;
    }
.end annotation


# static fields
.field private static final FIRST_TIME_DOWNLOADED:Ljava/lang/String; = "FIRST_TIME_DOWNLOADED"

.field private static final LIVINGLANGUAGE_CURRENTCOUNT_PREF:Ljava/lang/String; = "LIVINGLANGUAGE_CURRENTCOUNT_PREF"

.field private static final LIVINGLANGUAGE_LAST_PROCESSED_PREF:Ljava/lang/String; = "LIVINGLANGUAGE_LAST_PROCESSED_PREF"

.field private static final LIVINGLANGUAGE_LAST_UPDATED_PREF:Ljava/lang/String; = "LIVINGLANGUAGE_LAST_UPDATED_PREF"

.field private static final LIVINGLANGUAGE_MAX_EVENTS_PREF:Ljava/lang/String; = "LIVINGLANGUAGE_MAX_EVENTS_PREF"

.field private static final LIVING_LANGUAGE_ENABLED_PREF:Ljava/lang/String;

.field private static final MESSAGES_HANDLED:[I

.field private static final PROCESS_DELAY:I = 0x2710


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

.field private categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

.field private final client:Lcom/nuance/connect/service/ConnectClient;

.field private currentEventCount:I

.field private volatile enabled:Z

.field private lastProcessed:J

.field private lastUpdated:J

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private maxEvents:I

.field private oemLog:Lcom/nuance/connect/util/Logger$Log;

.field private final parent:Lcom/nuance/connect/service/manager/CategoryManager;

.field private final typesSupported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/connect/service/manager/CategoryManager;->MANAGER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LivingLanguageEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->LIVING_LANGUAGE_ENABLED_PREF:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_PROCESS_LIVING_LANGUAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_LIVING_LANGUAGE_REFRESH:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_LIVING_LANGUAGE_CANCEL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_LIVING_LANGUAGE_FOREGROUND:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_LIVING_LANGUAGE_MAX_EVENTS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->MESSAGES_HANDLED:[I

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager;Lcom/nuance/connect/service/ConnectClient;Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

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

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->typesSupported:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoriesManaged:Ljava/util/List;

    iput v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->currentEventCount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->maxEvents:I

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iput-object p2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {p2}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->LIVING_LANGUAGE_ENABLED_PREF:Ljava/lang/String;

    invoke-interface {v0, v1, p3}, Lcom/nuance/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->enabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method private findVariantLanguageCategory(ILjava/lang/String;I)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "findVariantLanguageCategory("

    const-string v3, ", "

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ") for keyboardId 0x"

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    move-object v2, p2

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->getDownloadListState()Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_NONE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->hasPackages()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "findVariantLanguageCategory() - none exist. done."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_1
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->enabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "findVariantLanguageCategory() - living language not enabled"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    move-object v0, v7

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v0, p3}, Lcom/nuance/connect/service/manager/CategoryManager;->getAllEntriesWithCategoryId(I)Ljava/util/ArrayList;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v7

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "25"

    invoke-virtual {v2, v0, v3}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v5, "13"

    invoke-virtual {v3, v0, v5}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x3

    if-ne v2, v5, :cond_6

    if-ne v3, p1, :cond_6

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "100"

    invoke-virtual {v2, v0, v3}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_5

    array-length v5, v3

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v5, :cond_3

    aget-object v6, v3, v2

    if-eqz p2, :cond_4

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Found exact match database for variant: "

    const-string v3, " category: "

    invoke-interface {v1, v2, p2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Found default database without variant for category: "

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    move-object v1, v0

    goto :goto_1

    :cond_6
    if-ne v2, v8, :cond_7

    if-ne v3, p1, :cond_7

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Found TYPE_KEYBOARD_LANGUAGE_ONLY category: "

    invoke-interface {v1, v2, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    if-ne v2, v8, :cond_3

    and-int/lit16 v2, v3, 0xff

    const/16 v5, 0x12

    if-ne v2, v5, :cond_3

    and-int/lit16 v2, v3, 0xff

    and-int/lit16 v5, p1, 0xff

    if-ne v2, v5, :cond_3

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Found Korean database with partial keyboard match 0x"

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, " : "

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Return default category for variant: "

    const-string v3, " category: "

    invoke-interface {v0, v2, p2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    move-object v0, v1

    goto/16 :goto_0

    :cond_a
    move-object v0, v1

    goto :goto_4

    :cond_b
    move-object v3, v7

    goto :goto_2
.end method

.method private declared-synchronized processNextCategory(I)V
    .locals 20

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "LL.processNextCategory() - languageId: ["

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    invoke-interface {v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Current core not yet set.  Delay processing."

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v2}, Lcom/nuance/connect/service/manager/CategoryManager;->getUniqueCategoryIds()Landroid/util/SparseIntArray;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v11, v2

    :goto_1
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v11, v2, :cond_8

    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->typesSupported:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/CategoryManager;->currentLocale:Ljava/util/Locale;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/CategoryManager;->currentLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->findVariantLanguageCategory(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :cond_2
    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "SUBSCRIBED"

    invoke-virtual {v2, v4, v3}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v5, "13"

    invoke-virtual {v3, v4, v5}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "25"

    invoke-virtual {v5, v4, v6}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v6, v4}, Lcom/nuance/connect/util/InstallMetadata;->isDownloading(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v7, v7, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v8, v3}, Lcom/nuance/connect/service/ConnectClient;->getCoreForLanguage(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v7, "DELETE_CATEGORY"

    invoke-virtual {v3, v4, v7}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->sendDeleteCategoryToHost(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "DELETE_CATEGORY"

    invoke-virtual {v2, v4, v3}, Lcom/nuance/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto/16 :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    if-nez v6, :cond_7

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "LAST_UPDATE_FETCHED"

    invoke-virtual {v2, v4, v3}, Lcom/nuance/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "LAST_UPDATE_AVAILABLE"

    invoke-virtual {v2, v4, v3}, Lcom/nuance/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "getNextCategory() -- key: ["

    const-string v5, "] lastFetched: ["

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "] "

    const-string v8, "lastAvailable: ["

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "]"

    invoke-interface/range {v2 .. v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    cmp-long v2, v16, v18

    if-gez v2, :cond_6

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "LAST_USED_AT"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v4, v3, v6, v7}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->enabled:Z

    if-eqz v3, :cond_6

    if-nez v6, :cond_6

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->typesSupported:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "FIRST_TIME_DOWNLOADED"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v3, v5}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v2, v13}, Lcom/nuance/connect/service/manager/CategoryManager;->getList(Ljava/util/ArrayList;)V

    :cond_9
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v2, v14}, Lcom/nuance/connect/service/manager/CategoryManager;->subscribeList(Ljava/util/ArrayList;)V

    :cond_a
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_b

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_c

    :cond_b
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->sendLivingLanguageUpdateStatus(Z)V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->savePreferences()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected determinePurgeRequired(I)V
    .locals 8

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->enabled:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->currentEventCount:I

    add-int v1, p1, v0

    iget v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->maxEvents:I

    if-le v1, v2, :cond_4

    const/4 v0, -0x1

    if-eq v2, v0, :cond_4

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v5, "25"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Lcom/nuance/connect/util/InstallMetadata;->listFromPropEquals(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "25"

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Lcom/nuance/connect/util/InstallMetadata;->listFromPropEquals(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "SUBSCRIBED"

    invoke-virtual {v5, v0, v6}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "CATEGORY_COUNT"

    invoke-virtual {v5, v0, v6}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "LAST_USED_AT"

    invoke-virtual {v5, v0, v6}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_2
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v6, "CATEGORY_COUNT"

    invoke-virtual {v5, v0, v6}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v1, v5

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->removeLivingLanguage(Ljava/lang/String;)V

    if-gt v1, v2, :cond_3

    :cond_4
    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->savePreferences()V

    goto/16 :goto_0
.end method

.method public getMessageIDs()[I
    .locals 1

    sget-object v0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->MESSAGES_HANDLED:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->SUBMANAGER_LIVING_LANGUAGE:Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategoryManager$SubManagerDefinition;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypesSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->typesSupported:Ljava/util/List;

    return-object v0
.end method

.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_LIVING_LANGUAGE_MAX_EVENTS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;)V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->loadPreferences()V

    return-void
.end method

.method install(Ljava/lang/String;)Z
    .locals 9

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "25"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "CATEGORY_COUNT"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "CATEGORY_COUNT_OLD"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "CategorySubmanagerLivingLanguage.install("

    const-string v3, ") Count: ["

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->typesSupported:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez v8, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "CategorySubmanagerLivingLanguage.install("

    const-string v2, ") -- this is an update, removing old count: "

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->currentEventCount:I

    sub-int/2addr v0, v8

    iput v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->currentEventCount:I

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->savePreferences()V

    :cond_0
    invoke-virtual {p0, v7}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->determinePurgeRequired(I)V

    iget v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->currentEventCount:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->currentEventCount:I

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->savePreferences()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/manager/CategoryManager;->installCategory(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->enabled:Z

    return v0
.end method

.method public isSupported(I)Z
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->typesSupported:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public languageUpdated([ILjava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastProcessed:J

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->processNextCategory()V

    return-void
.end method

.method protected loadPreferences()V
    .locals 6

    const-wide/high16 v4, -0x8000000000000000L

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "LIVINGLANGUAGE_CURRENTCOUNT_PREF"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->currentEventCount:I

    const-string v1, "LIVINGLANGUAGE_MAX_EVENTS_PREF"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->maxEvents:I

    const-string v1, "LIVINGLANGUAGE_LAST_UPDATED_PREF"

    invoke-interface {v0, v1, v4, v5}, Lcom/nuance/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastUpdated:J

    const-string v1, "LIVINGLANGUAGE_LAST_PROCESSED_PREF"

    invoke-interface {v0, v1, v4, v5}, Lcom/nuance/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastProcessed:J

    iget-wide v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastUpdated:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastUpdated:J

    :goto_0
    iput-wide v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastUpdated:J

    iget-wide v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastProcessed:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-wide v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastProcessed:J

    :goto_1
    iput-wide v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastProcessed:J

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_1
.end method

.method public localeUpdated(Ljava/util/Locale;)V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastProcessed:J

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->processNextCategory()V

    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

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
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "MESSAGE_COMMAND_PROCESS_LIVING_LANGUAGE "

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v2, v2, Lcom/nuance/connect/service/manager/CategoryManager;->currentLanguageCodes:[I

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastProcessed:J

    iget-wide v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastUpdated:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "processNextCategory() no changes requiring processing"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_0
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v3, v2, Lcom/nuance/connect/service/manager/CategoryManager;->currentLanguageCodes:[I

    array-length v4, v3

    move v2, v0

    :goto_2
    if-ge v2, v4, :cond_2

    aget v5, v3, v2

    invoke-direct {p0, v5}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->processNextCategory(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->determinePurgeRequired(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastProcessed:J

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->savePreferences()V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "MESSAGE_CLIENT_CATEGORY_LIVING_LANGUAGE_REFRESH"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v5, "13"

    invoke-virtual {v4, v0, v5}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v5, v4}, Lcom/nuance/connect/service/ConnectClient;->getCoreForLanguage(I)I

    move-result v4

    if-ne v2, v4, :cond_3

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v5, "LAST_UPDATE_FETCHED"

    invoke-virtual {v4, v0, v5}, Lcom/nuance/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastProcessed:J

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->processNextCategory()V

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "MESSAGE_CLIENT_CATEGORY_LIVING_LANGUAGE_CANCEL"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v0, v1, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->cancelActiveTransactions(IZ)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->cancelActiveTransactions(IZ)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "MASSAGE_CLIENT_SET_LIVING_LANGUAGE_MAX_EVENTS events: "

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iput v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->maxEvents:I

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->savePreferences()V

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->determinePurgeRequired(I)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method declared-synchronized processNextCategory()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_PROCESS_LIVING_LANGUAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient;->removeMessages(Lcom/nuance/connect/internal/common/InternalMessages;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_COMMAND_PROCESS_LIVING_LANGUAGE:Lcom/nuance/connect/internal/common/InternalMessages;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/service/ConnectClient;->postMessageDelayed(Lcom/nuance/connect/internal/common/InternalMessages;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected removeLivingLanguage(Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "removeLivingLanguage: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "CATEGORY_COUNT"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v1, p1, v2}, Lcom/nuance/connect/util/InstallMetadata;->setStep(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "LL_DELETE_CLEAR"

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "CATEGORY_COUNT"

    invoke-virtual {v1, p1, v2}, Lcom/nuance/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->currentEventCount:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->currentEventCount:I

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->savePreferences()V

    invoke-virtual {p0, p1}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->sendDeleteCategoryToHost(Ljava/lang/String;)V

    return-void
.end method

.method protected savePreferences()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "LIVINGLANGUAGE_CURRENTCOUNT_PREF"

    iget v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->currentEventCount:I

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveInt(Ljava/lang/String;I)Z

    const-string v1, "LIVINGLANGUAGE_MAX_EVENTS_PREF"

    iget v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->maxEvents:I

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveInt(Ljava/lang/String;I)Z

    const-string v1, "LIVINGLANGUAGE_LAST_UPDATED_PREF"

    iget-wide v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastUpdated:J

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    const-string v1, "LIVINGLANGUAGE_LAST_PROCESSED_PREF"

    iget-wide v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastProcessed:J

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    return-void
.end method

.method sendDeleteCategoryToHost(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "13"

    invoke-virtual {v1, p1, v2}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "78"

    invoke-virtual {v2, p1, v3}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v3, v1}, Lcom/nuance/connect/service/ConnectClient;->getCoreForLanguage(I)I

    move-result v3

    const-string v4, "DLM_EVENT_CORE"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "DLM_DELETE_CAETEGORY"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "DLM_DELETE_LANGUAGE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "IDENTIFIER"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_PROCESS_DLM_DELETE_CATEGORY:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method sendInstallInfo(Ljava/lang/String;I)V
    .locals 7

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "78"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "25"

    invoke-virtual {v1, p1, v2}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "13"

    invoke-virtual {v2, p1, v3}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "98"

    invoke-virtual {v3, p1, v4}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v5, "100"

    invoke-virtual {v4, p1, v5}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "CATEGORY_ID"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CATEGORY_TYPE"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CATEGORY_COUNT"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CATEGORY_LANGUAGE_ID"

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CATEGORY_LOCALE"

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CATEGORY_COUNTRY"

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CATEGORY_UUID"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "FIRST_TIME_DOWNLOADED"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "FIRST_TIME_DOWNLOADED"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/util/InstallMetadata;->removeProp(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ADD_LIVING_LANGUAGE_INFO:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1, v5}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_UPDATE_LIVING_LANGUAGE_INFO:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1, v5}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method sendLivingLanguageUpdateStatus(Z)V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_NOTIFY_LIVING_LANGUAGE_UPDATE_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    return-void
.end method

.method sendUninstallInfo(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "78"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "25"

    invoke-virtual {v1, p1, v2}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "13"

    invoke-virtual {v2, p1, v3}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "98"

    invoke-virtual {v3, p1, v4}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v5, "100"

    invoke-virtual {v4, p1, v5}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "CATEGORY_ID"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CATEGORY_TYPE"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CATEGORY_LANGUAGE_ID"

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CATEGORY_LOCALE"

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CATEGORY_COUNTRY"

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CATEGORY_UUID"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v1, "FIRST_TIME_DOWNLOADED"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_REMOVE_LIVING_LANGUAGE_INFO:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v0, v1, v5}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Updating "

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, " old status "

    iget-boolean v4, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->enabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, " new status: "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->enabled:Z

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->enabled:Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->client:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/connect/service/ConnectClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->LIVING_LANGUAGE_ENABLED_PREF:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Updated "

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, " status to "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Enabling Living language"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastProcessed:J

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->savePreferences()V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->processNextCategory()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Disabling Living language"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoriesManaged:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v3, "SUBSCRIBED"

    invoke-virtual {v2, v0, v3}, Lcom/nuance/connect/util/InstallMetadata;->getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->removeLivingLanguage(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->unsubscribeAll()V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v7}, Lcom/nuance/connect/service/manager/CategoryManager;->cancelActiveTransactions(IZ)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v7}, Lcom/nuance/connect/service/manager/CategoryManager;->cancelActiveTransactions(IZ)V

    goto :goto_0
.end method

.method public setInstallMetadata(Lcom/nuance/connect/util/InstallMetadata;Z)V
    .locals 5

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "setInstallMetadata()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    invoke-virtual {v0}, Lcom/nuance/connect/util/InstallMetadata;->allPackages()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->typesSupported:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v4, "25"

    invoke-virtual {v3, v0, v4}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoriesManaged:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->lastUpdated:J

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->savePreferences()V

    invoke-virtual {p0}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->processNextCategory()V

    :cond_2
    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public unsubscribe(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "unsubscribe("

    const-string v3, ")"

    invoke-interface {v1, v2, p1, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "25"

    invoke-virtual {v1, p1, v2}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->isSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "13"

    invoke-virtual {v1, p1, v2}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->sendDeleteCategoryToHost(Ljava/lang/String;)V

    :goto_0
    new-instance v1, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$1;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0, v2, p1}, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage$1;-><init>(Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;Lcom/nuance/connect/service/manager/CategoryManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->parent:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-virtual {v2, v1}, Lcom/nuance/connect/service/manager/CategoryManager;->startTransaction(Lcom/nuance/connect/service/comm/Transaction;)V

    :goto_1
    return v0

    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/service/manager/CategorySubmanagerLivingLanguage;->categoryInstallMetadata:Lcom/nuance/connect/util/InstallMetadata;

    const-string v2, "DELETE_CATEGORY"

    invoke-virtual {v1, p1, v2, v0}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
