.class Lcom/nuance/connect/internal/CategoryServiceInternal;
.super Lcom/nuance/connect/internal/AbstactService;

# interfaces
.implements Lcom/nuance/connect/api/AddonDictionariesService;
.implements Lcom/nuance/connect/api/LivingLanguageService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/CategoryServiceInternal$5;,
        Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;
    }
.end annotation


# static fields
.field private static final MESSAGE_IDS:[I

.field private static final SEND_DELAY:I = 0x3a98

.field private static final SEND_DELAY_LIMIT:I = 0xbb8


# instance fields
.field private final availableDownloadDictionaries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;",
            ">;"
        }
    .end annotation
.end field

.field private connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

.field private final dictionaryDownloadCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final dictionaryListCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;",
            ">;"
        }
    .end annotation
.end field

.field private dictionaryListReceived:Z

.field private handler:Lcom/nuance/connect/internal/ConnectHandler;

.field private listener:Lcom/nuance/connect/internal/Property$ValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private livingLanguageAvailable:Z

.field private final livingLanguageCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/connect/api/LivingLanguageService$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private livingLanguageHotwordsStatus:Z

.field private livingLanguageStatus:Z

.field private livingLanguageUDAStatus:Z

.field private livingLanguageUpdatesPending:Z

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private mHandler:Landroid/os/Handler;

.field private oemLog:Lcom/nuance/connect/util/Logger$Log;

.field private final redownloadCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;",
            ">;"
        }
    .end annotation
.end field

.field private sendHotwordsStatus:Ljava/lang/Runnable;

.field private sendMaxLimit:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_DICTIONARIES_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DICTIONARY_INSTALL_READY:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DICTIONARY_DOWNLOAD_PROGRESS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DICTIONARY_UNINSTALL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_LIVING_LANGUAGE_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_CHINESE_CAT_DB_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ADD_LIVING_LANGUAGE_INFO:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_UPDATE_LIVING_LANGUAGE_INFO:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_REMOVE_LIVING_LANGUAGE_INFO:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_CATEGORY_DOWNLOAD_CANCEL_ACK:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_DICTIONARY_DOWNLOAD_FAILED:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_NOTIFY_LIVING_LANGUAGE_UPDATE_STATUS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_LIVING_LANGUAGE_MAX_EVENTS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/common/InternalMessages;->ordinal()I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->MESSAGE_IDS:[I

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/nuance/connect/internal/AbstactService;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-string v1, "CategoryService"

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListCallbacks:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;

    iput-boolean v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageStatus:Z

    iput-boolean v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageUDAStatus:Z

    iput-boolean v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageHotwordsStatus:Z

    iput-boolean v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageAvailable:Z

    iput-boolean v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageUpdatesPending:Z

    new-instance v0, Lcom/nuance/connect/internal/CategoryServiceInternal$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$1;-><init>(Lcom/nuance/connect/internal/CategoryServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendHotwordsStatus:Ljava/lang/Runnable;

    new-instance v0, Lcom/nuance/connect/internal/CategoryServiceInternal$2;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$2;-><init>(Lcom/nuance/connect/internal/CategoryServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendMaxLimit:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;

    new-instance v0, Lcom/nuance/connect/internal/CategoryServiceInternal$3;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$3;-><init>(Lcom/nuance/connect/internal/CategoryServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->listener:Lcom/nuance/connect/internal/Property$ValueListener;

    new-instance v0, Lcom/nuance/connect/internal/CategoryServiceInternal$4;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/CategoryServiceInternal$4;-><init>(Lcom/nuance/connect/internal/CategoryServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    iput-object p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->isLivingLanguageEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageStatus:Z

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    const-string v1, "USER_ALLOW_USAGE_COLLECTION"

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->listener:Lcom/nuance/connect/internal/Property$ValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->registerUserSettingsListener(Ljava/lang/String;Lcom/nuance/connect/internal/Property$ValueListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageStatus:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendMaxLimit:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/connect/internal/CategoryServiceInternal;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageUpdatesPending:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/nuance/connect/internal/CategoryServiceInternal;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageUpdatesPending:Z

    return p1
.end method

.method static synthetic access$1200()[I
    .locals 1

    sget-object v0, Lcom/nuance/connect/internal/CategoryServiceInternal;->MESSAGE_IDS:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/connect/internal/CategoryServiceInternal;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$602(Lcom/nuance/connect/internal/CategoryServiceInternal;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListReceived:Z

    return p1
.end method

.method static synthetic access$700(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/connect/internal/CategoryServiceInternal;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendHotwordsStatus:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nuance/connect/internal/CategoryServiceInternal;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private subscribe(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_SUBSCRIBE_OR_DOWNLOAD:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1, p1, v2, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    return-void
.end method

.method private unsubscribe(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_UNSUBSCRIBE:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1, p1, v2, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    return-void
.end method


# virtual methods
.method public cancelDownload(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "cannot cancel dict: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    const-string v2, "STATUS_CANCELED"

    invoke-virtual {v0, v2}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->setStatus(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v2

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_CANCEL:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->wasInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    :goto_1
    invoke-interface {v2, v3, p1, v0, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "canceling unsubscribing dict="

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public cancelDownloads()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_LIVING_LANGUAGE_CANCEL:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z

    return-void
.end method

.method public disableLivingLanguage()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->setLivingLanguageStatus(Z)V

    return-void
.end method

.method public enableLivingLanguage()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->setLivingLanguageStatus(Z)V

    return-void
.end method

.method public forcePendingToForeground()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_LIVING_LANGUAGE_FOREGROUND:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;)Z

    return-void
.end method

.method public getAvailableDictionaries()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
    .locals 1

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->CATEGORY:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->getDependencies()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v0

    return-object v0
.end method

.method getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/ConnectHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getMaxNumberOfEvents()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/UserSettings;->getMaxNumberOfEvents()I

    move-result v0

    return v0
.end method

.method getServiceName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->CATEGORY:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public installDictionary(Ljava/lang/String;Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "cannot install dict: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->getStatus()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "installDictionary dict="

    const-string v3, " status="

    invoke-interface {v1, v2, p1, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "STATUS_AVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "STATUS_CANCELED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->redownloadCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryDownloadCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->download()V

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->subscribe(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isCategoryLivingLanguage(I)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p1, v1, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public isDictionaryListAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListReceived:Z

    return v0
.end method

.method public isHotWordsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageHotwordsStatus:Z

    return v0
.end method

.method public isLivingLanguageEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageStatus:Z

    return v0
.end method

.method public isUDAEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageUDAStatus:Z

    return v0
.end method

.method public livingLanguageAllowed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->isLivingLanguageEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public livingLanguageAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageAvailable:Z

    return v0
.end method

.method public markDictionaryInstalled(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "dictionary is not available to mark as installed.  Dict: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->isSubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "STATUS_INSTALLED"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->setStatus(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_SUBSCRIBE_NO_DOWNLOAD:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v1, p1, v2, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;II)Z

    goto :goto_0
.end method

.method public notifyDictionariesofStatus()V
    .locals 3

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListCallbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;

    invoke-interface {v0}, Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;->listUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public registerCallback(Lcom/nuance/connect/api/LivingLanguageService$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerDictionaryListCallback(Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;)V
    .locals 3

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListCallbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "registerDictionaryListCallback callback already added"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeDictionary(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "cannot install dict: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "dictionary is not installed cannot uninstall.  Dict: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->availableDownloadDictionaries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;

    const-string v1, "STATUS_UNINSTALL_PENDING"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$AddonDictionaryImpl;->setStatus(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->unsubscribe(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLivingLanguageAvailable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageAvailable:Z

    return-void
.end method

.method public setLivingLanguageStatus(Z)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "setLivingLanguageStatus("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, ")"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-boolean p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageStatus:Z

    iput-boolean p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageUDAStatus:Z

    iput-boolean p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageHotwordsStatus:Z

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/UserSettings;->setLivingLanguageEnabled(Z)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendHotwordsStatus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendHotwordsStatus:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setLivingLanguageStatus(ZZ)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p1, v1, :cond_0

    if-ne p2, v1, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageStatus:Z

    iput-boolean p1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageUDAStatus:Z

    iput-boolean p2, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageHotwordsStatus:Z

    :goto_0
    return-void

    :cond_1
    iput-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageStatus:Z

    iput-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageUDAStatus:Z

    iput-boolean v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageHotwordsStatus:Z

    goto :goto_0
.end method

.method public setMaxNumberOfEvents(I)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getUserSettings()Lcom/nuance/connect/internal/UserSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/UserSettings;->setMaxNumberOfEvents(I)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendMaxLimit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->sendMaxLimit:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public unregisterCallback(Lcom/nuance/connect/api/LivingLanguageService$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterCallbacks()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->livingLanguageCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public unregisterDictionaryListCallback(Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;)V
    .locals 3

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListCallbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "registerDictionaryListCallback callback does not exist"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterDictionaryListCallbacks()V
    .locals 2

    iget-object v1, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListCallbacks:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal;->dictionaryListCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
