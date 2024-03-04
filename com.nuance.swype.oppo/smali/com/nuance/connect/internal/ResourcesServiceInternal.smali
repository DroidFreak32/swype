.class Lcom/nuance/connect/internal/ResourcesServiceInternal;
.super Lcom/nuance/connect/internal/AbstactService;

# interfaces
.implements Lcom/nuance/connect/api/ResourcesService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/ResourcesServiceInternal$5;,
        Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;
    }
.end annotation


# static fields
.field private static final DELAY_BETWEEN_NOTIFICATION_RETRY:I = 0x1f4

.field private static final MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

.field private static final MSG_PROCESS_XML:I


# instance fields
.field private catIdsToLocale:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private checkLanguageCompleteHandler:Landroid/os/Handler;

.field private connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

.field private handler:Lcom/nuance/connect/internal/ConnectHandler;

.field private final log:Lcom/nuance/connect/util/Logger$Log;

.field private final noMatchCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Locale;",
            "Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;",
            ">;"
        }
    .end annotation
.end field

.field private processingResources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final processingStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final queueCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Locale;",
            "Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final queueComplexCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<[",
            "Ljava/util/Locale;",
            "Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;",
            ">;"
        }
    .end annotation
.end field

.field private resources:Lcom/nuance/connect/internal/ConnectResources;

.field private xmlProcessorHandler:Lcom/nuance/connect/util/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nuance/connect/internal/common/InternalMessages;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_STORE_IMAGE_RESOURCE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_STORE_TEXT_RESOURCE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_GET_CONNECT_RESOURCES:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_RESOURCES_FOR_LOCALE:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_SET_AVAILABLE_RESOURCES_LIST:Lcom/nuance/connect/internal/common/InternalMessages;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-void
.end method

.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .locals 5

    invoke-direct {p0}, Lcom/nuance/connect/internal/AbstactService;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->processingStatus:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->queueCallbacks:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->queueComplexCallbacks:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->noMatchCallbacks:Ljava/util/HashMap;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->processingResources:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->checkLanguageCompleteHandler:Landroid/os/Handler;

    new-instance v0, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/ResourcesServiceInternal$1;-><init>(Lcom/nuance/connect/internal/ResourcesServiceInternal;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    iput-object p1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/nuance/connect/internal/ConnectResources;

    iget-object v2, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v2}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppFilesFolder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/nuance/connect/internal/ConnectResources;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/internal/ConnectResources;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/connect/internal/ResourcesServiceInternal;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->checkLanguageComplete(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->processingStatus:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/connect/internal/ResourcesServiceInternal;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->processResourcesXML(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->catIdsToLocale:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$402(Lcom/nuance/connect/internal/ResourcesServiceInternal;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->catIdsToLocale:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/nuance/connect/internal/ResourcesServiceInternal;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->normalizeLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->queueCallbacks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->queueComplexCallbacks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/connect/internal/ResourcesServiceInternal;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->noMatchCallbacks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900()[Lcom/nuance/connect/internal/common/InternalMessages;
    .locals 1

    sget-object v0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;

    return-object v0
.end method

.method private checkLanguageComplete(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->isLanguageAvailable(Ljava/util/Locale;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->isLanguageProcessing(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->checkLanguageCompleteHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/connect/internal/ResourcesServiceInternal$2;

    invoke-direct {v1, p0, p1}, Lcom/nuance/connect/internal/ResourcesServiceInternal$2;-><init>(Lcom/nuance/connect/internal/ResourcesServiceInternal;Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->processingStatus:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->processingStatus:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getXmlHandler()Lcom/nuance/connect/util/HandlerThread;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->xmlProcessorHandler:Lcom/nuance/connect/util/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;

    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;

    invoke-direct {v0, p0, v1}, Lcom/nuance/connect/internal/ResourcesServiceInternal$XmlHandlerThread;-><init>(Lcom/nuance/connect/internal/ResourcesServiceInternal;Lcom/nuance/connect/internal/ConnectResources;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->xmlProcessorHandler:Lcom/nuance/connect/util/HandlerThread;

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->xmlProcessorHandler:Lcom/nuance/connect/util/HandlerThread;

    invoke-virtual {v0}, Lcom/nuance/connect/util/HandlerThread;->start()V

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->xmlProcessorHandler:Lcom/nuance/connect/util/HandlerThread;

    return-object v0
.end method

.method private normalizeLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-R"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private processResourcesXML(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "PROP_LANGUAGE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->processingResources:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->normalizeLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->getXmlHandler()Lcom/nuance/connect/util/HandlerThread;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/nuance/connect/util/HandlerThread;->process(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method getBestMatch(Ljava/util/Locale;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->catIdsToLocale:Ljava/util/HashMap;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "ResourceService.getBestMatch() catIdsToLocale not ready, yet."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->catIdsToLocale:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->catIdsToLocale:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2
    move-object v2, v0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_3
    if-nez v2, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_3
    move-object v2, v0

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_3

    :cond_5
    move-object v0, v2

    goto :goto_2
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/ConnectResources;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
    .locals 1

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->RESOURCES:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->getDependencies()[Lcom/nuance/connect/common/ConnectFeature;

    move-result-object v0

    return-object v0
.end method

.method getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/nuance/connect/internal/ConnectHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->handler:Lcom/nuance/connect/internal/ConnectHandler;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getLanguageBitmap(Ljava/lang/String;Ljava/util/Locale;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/internal/ConnectResources;->getLanguageBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/ConnectResources;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageString(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/internal/ConnectResources;->getLanguageString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getServiceName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->RESOURCES:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v0}, Lcom/nuance/connect/common/ConnectFeature;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/internal/ConnectResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLanguageAvailable(Ljava/util/Locale;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->getBestMatch(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/connect/internal/ConnectResources;->hasResourcesForLanguage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isLanguageProcessing(Ljava/util/Locale;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->getBestMatch(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->processingResources:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setBitmap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/internal/ConnectResources;->setBitmap(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLanguageBitmap(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/nuance/connect/internal/ConnectResources;->setLanguageBitmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLanguageString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/internal/ConnectResources;->setLanguageString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLanguageString(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/nuance/connect/internal/ConnectResources;->setLanguageString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->resources:Lcom/nuance/connect/internal/ConnectResources;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/internal/ConnectResources;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public subscribe(Ljava/util/Locale;Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;)V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "subscribe locale: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "subscribe Error locale or callback is null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->catIdsToLocale:Ljava/util/HashMap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "queuing callback"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->queueCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->catIdsToLocale:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2
    if-eqz v0, :cond_5

    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->isLanguageAvailable(Ljava/util/Locale;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "resources already downloaded for: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;->complete(Ljava/util/Locale;)V

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_4
    if-nez v3, :cond_7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_3
    move-object v2, v0

    move-object v3, v1

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->processingStatus:Ljava/util/HashMap;

    new-instance v3, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;

    invoke-direct {v3, p0, p2, p1}, Lcom/nuance/connect/internal/ResourcesServiceInternal$4;-><init>(Lcom/nuance/connect/internal/ResourcesServiceInternal;Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;Ljava/util/Locale;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v2, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_SUBSCRIBE_OR_DOWNLOAD:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v0, v2, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->noMatchCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Did not find suitable resources for: "

    invoke-interface {v0, v1, p1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    move-object v0, v2

    move-object v1, v3

    goto :goto_3

    :cond_8
    move-object v0, v2

    move-object v1, v3

    goto :goto_2
.end method

.method public subscribe([Ljava/util/Locale;Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;)V
    .locals 12

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "subscribe locales: "

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "subscribe Error locale or callback is null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->catIdsToLocale:Ljava/util/HashMap;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "queuing callback"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->queueComplexCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    array-length v7, p1

    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-ge v5, v7, :cond_8

    aget-object v8, p1, v5

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->catIdsToLocale:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v2, v4

    move-object v3, v4

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_3
    if-eqz v0, :cond_6

    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->isLanguageAvailable(Ljava/util/Locale;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "resources already downloaded for: "

    invoke-interface {v0, v1, v8}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v8}, Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;->complete(Ljava/util/Locale;)V

    :goto_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3

    :cond_5
    if-nez v3, :cond_9

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_5
    move-object v2, v0

    move-object v3, v1

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->processingStatus:Ljava/util/HashMap;

    new-instance v3, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;

    invoke-direct {v3, p0, p2, v8}, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;-><init>(Lcom/nuance/connect/internal/ResourcesServiceInternal;Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;Ljava/util/Locale;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->noMatchCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, v8, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Did not find suitable resources for: "

    invoke-interface {v0, v1, v8}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_CATEGORY_DB_SUBSCRIBE_OR_DOWNLOAD_LIST:Lcom/nuance/connect/internal/common/InternalMessages;

    const-string v2, ","

    invoke-static {v6, v2}, Lcom/nuance/connect/util/StringUtils;->listToString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    move-object v0, v2

    move-object v1, v3

    goto :goto_5

    :cond_a
    move-object v0, v2

    move-object v1, v3

    goto/16 :goto_3
.end method

.method public unsubscribe(Ljava/util/Locale;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->getBestMatch(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal;->catIdsToLocale:Ljava/util/HashMap;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
