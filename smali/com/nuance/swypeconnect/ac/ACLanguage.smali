.class public final Lcom/nuance/swypeconnect/ac/ACLanguage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;,
        Lcom/nuance/swypeconnect/ac/ACLanguage$InputSessionState;,
        Lcom/nuance/swypeconnect/ac/ACLanguage$LanguageChange;
    }
.end annotation


# static fields
.field public static final SELECTED_FROM_GESTURE:I = 0x5

.field public static final SELECTED_FROM_IMPLICIT:I = 0x6

.field public static final SELECTED_FROM_KEYBOARD:I = 0x2

.field public static final SELECTED_FROM_LOCALE:I = 0x3

.field public static final SELECTED_FROM_QUICK_TOGGLE:I = 0x4

.field public static final SELECTED_FROM_SETTINGS:I = 0x1

.field public static final SELECTED_FROM_UNSPECIFIED:I


# instance fields
.field private final config:Lcom/nuance/connect/api/ConfigService;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final localeCallback:Lcom/nuance/connect/api/LocaleCallback;

.field private final manager:Lcom/nuance/swypeconnect/ac/ACManager;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->listeners:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/common/ConnectFeature;->CONFIG:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/ConfigService;

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->config:Lcom/nuance/connect/api/ConfigService;

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLanguage$1;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACLanguage$1;-><init>(Lcom/nuance/swypeconnect/ac/ACLanguage;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->localeCallback:Lcom/nuance/connect/api/LocaleCallback;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->localeCallback:Lcom/nuance/connect/api/LocaleCallback;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/ConnectServiceManager;->registerLocaleCallback(Lcom/nuance/connect/api/LocaleCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swypeconnect/ac/ACLanguage;)Ljava/util/Set;
    .locals 1

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACLanguage;->getListeners()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private getListeners()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->listeners:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->listeners:Ljava/util/Set;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final getActiveLanguages()[I
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getActiveLanguages()[I

    move-result-object v0

    return-object v0
.end method

.method public final onFinishInput()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/nuance/swypeconnect/ac/ACLanguage;->onFinishInput(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguage$InputSessionState;)V

    return-void
.end method

.method public final onFinishInput(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACLanguage;->onFinishInput(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguage$InputSessionState;)V

    return-void
.end method

.method public final onFinishInput(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguage$InputSessionState;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getDLMConnector()Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getDLMConnector()Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->getConnector()Lcom/nuance/connect/api/DLMConnector;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/api/DLMConnector;->resume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACLanguage;->getListeners()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;->onFinishInput(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguage$InputSessionState;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getDLMConnector()Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getDLMConnector()Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->getConnector()Lcom/nuance/connect/api/DLMConnector;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/api/DLMConnector;->yield()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACLanguage;->getListeners()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;->onStartInput(Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final registerListener(Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;)V
    .locals 2

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->listeners:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final setActiveLanguages([I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACLanguage;->setActiveLanguages([II)V

    return-void
.end method

.method public final setActiveLanguages([II)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getActiveLanguages()[I

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v1, p1}, Lcom/nuance/connect/api/ConfigService;->setActiveLanguages([I)V

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACLanguage;->getListeners()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;->onLanguageChange([II)V

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final setActiveLocale(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ConnectServiceManager;->setActiveLocale(Ljava/util/Locale;)V

    return-void
.end method

.method final unregisterListener(Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;)V
    .locals 2

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->listeners:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final unregisterListeners()V
    .locals 2

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->listeners:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->listeners:Ljava/util/Set;

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
