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

.field private final listeners:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/util/ConcurrentCallbackSet",
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
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-direct {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->listeners:Lcom/nuance/connect/util/ConcurrentCallbackSet;

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

.method static synthetic access$000(Lcom/nuance/swypeconnect/ac/ACLanguage;)[Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;
    .registers 2

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACLanguage;->getListeners()[Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;

    move-result-object v0

    return-object v0
.end method

.method private getListeners()[Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;
    .registers 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->listeners:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;

    return-object v0
.end method


# virtual methods
.method public final getActiveLanguages()[I
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getActiveLanguages()[I

    move-result-object v0

    return-object v0
.end method

.method public final onFinishInput()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swypeconnect/ac/ACLanguage;->onFinishInput(Ljava/lang/String;)V

    return-void
.end method

.method public final onFinishInput(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACLanguage;->onFinishInput(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguage$InputSessionState;)V

    return-void
.end method

.method public final onFinishInput(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguage$InputSessionState;)V
    .registers 7

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getDLMConnector()Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getDLMConnector()Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->getConnector()Lcom/nuance/connect/api/DLMConnector;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/api/DLMConnector;->resume()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_26

    :goto_16
    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACLanguage;->getListeners()[Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1c
    if-ge v0, v2, :cond_8

    aget-object v3, v1, v0

    invoke-interface {v3, p1, p2}, Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;->onFinishInput(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACLanguage$InputSessionState;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :catch_26
    move-exception v0

    goto :goto_16
.end method

.method public final onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 7

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getDLMConnector()Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getDLMConnector()Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDLMConnector;->getConnector()Lcom/nuance/connect/api/DLMConnector;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/connect/api/DLMConnector;->yield()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_26

    :goto_16
    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACLanguage;->getListeners()[Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1c
    if-ge v0, v2, :cond_8

    aget-object v3, v1, v0

    invoke-interface {v3, p1}, Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;->onStartInput(Landroid/view/inputmethod/EditorInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :catch_26
    move-exception v0

    goto :goto_16
.end method

.method final registerListener(Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->listeners:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setActiveLanguages([I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swypeconnect/ac/ACLanguage;->setActiveLanguages([II)V

    return-void
.end method

.method public final setActiveLanguages([II)V
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v0}, Lcom/nuance/connect/api/ConfigService;->getActiveLanguages()[I

    move-result-object v0

    if-eqz p1, :cond_25

    if-eqz v0, :cond_25

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    :goto_f
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->config:Lcom/nuance/connect/api/ConfigService;

    invoke-interface {v2, p1}, Lcom/nuance/connect/api/ConfigService;->setActiveLanguages([I)V

    if-nez v0, :cond_2d

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACLanguage;->getListeners()[Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;

    move-result-object v0

    array-length v2, v0

    :goto_1b
    if-ge v1, v2, :cond_2d

    aget-object v3, v0, v1

    invoke-interface {v3, p1, p2}, Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;->onLanguageChange([II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_25
    if-nez p1, :cond_2b

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_f

    :cond_2b
    move v0, v1

    goto :goto_f

    :cond_2d
    return-void
.end method

.method public final setActiveLocale(Ljava/util/Locale;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->manager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->getConnect()Lcom/nuance/connect/api/ConnectServiceManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/ConnectServiceManager;->setActiveLocale(Ljava/util/Locale;)V

    return-void
.end method

.method final unregisterListener(Lcom/nuance/swypeconnect/ac/ACLanguage$Listener;)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->listeners:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method final unregisterListeners()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguage;->listeners:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->clear()V

    return-void
.end method
