.class public Lcom/nuance/swype/input/IMEApplication;
.super Landroid/app/Application;
.source "IMEApplication.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;

.field protected static final trace:Lcom/nuance/swype/util/LogManager$Trace;


# instance fields
.field private androidDefaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private appContextSetter:Lcom/nuance/swype/input/AppContextPredictionSetter;

.field private appPrefs:Lcom/nuance/swype/input/AppPreferences;

.field private assetFileNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private buildInfo:Lcom/nuance/swype/input/BuildInfo;

.field private categoryMap:Landroid/util/SparseIntArray;

.field private charUtils:Lcom/nuance/swype/util/CharacterUtilities;

.field private connect:Lcom/nuance/swype/connect/Connect;

.field private correctionSpanFactory:Lcom/nuance/android/compat/CorrectionSpanFactory;

.field private currentAppName:Ljava/lang/String;

.field private currentFieldInfo:I

.field private currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

.field private drawBufferManager:Lcom/nuance/swype/input/DrawBufferManager;

.field private emojiInputViewController:Lcom/nuance/swype/input/emoji/EmojiInputController;

.field private gestureManager:Lcom/nuance/swype/input/GestureManager;

.field private hardKeyboardHandler:Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;

.field private hasMicrophone:Z

.field private volatile ime:Lcom/nuance/swype/input/IME;

.field private imeSubject:Lcom/nuance/swype/util/Subject;

.field private inputMethods:Lcom/nuance/swype/input/InputMethods;

.field private isCreated:Z

.field private isMiniKeyboardSupported:Z

.field private isPhablet:Z

.field private isTablet:Z

.field private keyboardManager:Lcom/nuance/swype/input/KeyboardManager;

.field private lastTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

.field private lastThemeResId:I

.field private localyticsVisitedSettings:Ljava/lang/StringBuilder;

.field private location:Lcom/nuance/swype/location/SwypeLocationManager;

.field private lowEndDeviceBuild:Z

.field private newWordsBucketFactory:Lcom/nuance/swype/input/udb/NewWordsBucketFactory;

.field private phabletVerified:Z

.field private platformUtil:Lcom/nuance/swype/input/PlatformUtil;

.field private privateFiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private scraperStatusFactory:Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;

.field private scribeFilter:Lcom/nuance/swype/stats/ScribeFilter;

.field private settingsLauncher:Lcom/nuance/swype/input/settings/ShowSettings;

.field speechConfig:Lcom/nuance/speech/SpeechConfig;

.field private speechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

.field private statsContext:Lcom/nuance/swype/util/Subject;

.field private statsManager:Lcom/nuance/swype/stats/StatisticsManager;

.field private swypeCoreLibMgr:Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

.field private syncDataProviderManager:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

.field private sysState:Lcom/nuance/swype/input/SystemState;

.field private tabletVerified:Z

.field private themeManager:Lcom/nuance/swype/input/ThemeManager;

.field private toolTips:Lcom/nuance/swype/input/ToolTips;

.field private updateStatusManager:Lcom/nuance/swype/input/update/UpdateStatusManager;

.field private upgrade:Z

.field private usageManager:Lcom/nuance/swype/stats/UsageManager;

.field private userPrefs:Lcom/nuance/swype/input/UserPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nuance/swype/input/IMEApplication;->$assertionsDisabled:Z

    .line 72
    const-string v0, "IMEApplication"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/IMEApplication;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 74
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getTrace()Lcom/nuance/swype/util/LogManager$Trace;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/IMEApplication;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 119
    new-instance v0, Lcom/nuance/swype/util/Subject;

    invoke-direct {v0}, Lcom/nuance/swype/util/Subject;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->statsContext:Lcom/nuance/swype/util/Subject;

    .line 121
    new-instance v0, Lcom/nuance/swype/util/Subject;

    invoke-direct {v0}, Lcom/nuance/swype/util/Subject;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->imeSubject:Lcom/nuance/swype/util/Subject;

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/IMEApplication;->hasMicrophone:Z

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/IMEApplication;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/IMEApplication;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/IMEApplication;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/IMEApplication;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->androidDefaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method private createSettingsLauncher()Lcom/nuance/swype/input/settings/ShowSettings;
    .locals 2

    .prologue
    .line 304
    :try_start_0
    sget v1, Lcom/nuance/swype/input/R$string;->settings_launcher:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/IMEApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/settings/ShowSettings;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v1

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "ex":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 308
    .end local v0    # "ex":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 309
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 310
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 311
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/IMEApplication;

    return-object v0
.end method

.method private getInputMethods(Z)Lcom/nuance/swype/input/InputMethods;
    .locals 8
    .param p1, "refresh"    # Z

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 593
    if-nez p1, :cond_0

    iget-object v5, p0, Lcom/nuance/swype/input/IMEApplication;->inputMethods:Lcom/nuance/swype/input/InputMethods;

    if-nez v5, :cond_4

    .line 594
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->inputMethods:Lcom/nuance/swype/input/InputMethods;

    .line 597
    .local v4, "lastInputMethods":Lcom/nuance/swype/input/InputMethods;
    iget-object v5, p0, Lcom/nuance/swype/input/IMEApplication;->buildInfo:Lcom/nuance/swype/input/BuildInfo;

    invoke-virtual {v5}, Lcom/nuance/swype/input/BuildInfo;->getBuildDate()J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/nuance/swype/input/DatabaseConfig;->refreshDatabaseConfig(Landroid/content/Context;J)V

    .line 598
    new-instance v5, Lcom/nuance/swype/input/InputMethods;

    invoke-direct {v5, p0}, Lcom/nuance/swype/input/InputMethods;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/nuance/swype/input/IMEApplication;->inputMethods:Lcom/nuance/swype/input/InputMethods;

    .line 599
    iget-object v5, p0, Lcom/nuance/swype/input/IMEApplication;->inputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods;->refreshRecentLanguages()V

    .line 600
    iget-object v5, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    if-eqz v5, :cond_1

    .line 601
    iget-object v5, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    iget-object v6, p0, Lcom/nuance/swype/input/IMEApplication;->inputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/IME;->updateInputMethods(Lcom/nuance/swype/input/InputMethods;)V

    .line 605
    :cond_1
    if-eqz v4, :cond_4

    .line 607
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 608
    .local v3, "langIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods;->getInputLanguages()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/InputMethods$Language;

    .line 609
    .local v2, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 611
    .end local v2    # "lang":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_2
    iget-object v5, p0, Lcom/nuance/swype/input/IMEApplication;->inputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods;->getInputLanguages()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/InputMethods$Language;

    .line 612
    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v1

    .line 613
    .local v1, "id":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 614
    iget-object v5, p0, Lcom/nuance/swype/input/IMEApplication;->inputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {v5, v1}, Lcom/nuance/swype/input/InputMethods;->forceAddRecentLanguage(Ljava/lang/String;)V

    goto :goto_1

    .line 619
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "langIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "lastInputMethods":Lcom/nuance/swype/input/InputMethods;
    :cond_4
    iget-object v5, p0, Lcom/nuance/swype/input/IMEApplication;->inputMethods:Lcom/nuance/swype/input/InputMethods;

    return-object v5
.end method


# virtual methods
.method protected checkCreate()V
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/nuance/swype/input/IMEApplication;->isCreated:Z

    if-nez v0, :cond_0

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/IMEApplication;->isCreated:Z

    .line 227
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->create()V

    .line 229
    :cond_0
    return-void
.end method

.method public checkPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1160
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkThemeChanged()Z
    .locals 4

    .prologue
    .line 1168
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getCurrentTheme()Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v0

    .line 1169
    .local v0, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    iget-object v2, p0, Lcom/nuance/swype/input/IMEApplication;->lastTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1170
    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->lastTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 1171
    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getResId()I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/IMEApplication;->lastThemeResId:I

    .line 1172
    invoke-static {}, Lcom/nuance/android/util/ThemedResources;->onThemeChanged()V

    .line 1173
    sget v2, Lcom/nuance/swype/input/R$attr;->traceColor:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedColor(I)I

    move-result v1

    .line 1174
    .local v1, "themeColor":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    const-string v3, "pen_color"

    invoke-static {v2, v3, v1, p0}, Lcom/nuance/swype/input/settings/InputPrefs;->setHWRThemePenColor(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;ILandroid/content/Context;)V

    .line 1176
    const/4 v2, 0x1

    .line 1178
    .end local v1    # "themeColor":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected create()V
    .locals 5

    .prologue
    .line 236
    new-instance v3, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    invoke-direct {v3, p0}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;-><init>(Lcom/nuance/swype/input/IMEApplication;)V

    iput-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->swypeCoreLibMgr:Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    .line 238
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 239
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v3, Lcom/nuance/swype/input/BuildInfo;

    invoke-direct {v3, p0, v0}, Lcom/nuance/swype/input/BuildInfo;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    iput-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->buildInfo:Lcom/nuance/swype/input/BuildInfo;

    .line 241
    iget-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->buildInfo:Lcom/nuance/swype/input/BuildInfo;

    invoke-static {p0, v3}, Lcom/nuance/swype/input/UserPreferences;->createUserPreferences(Landroid/content/Context;Lcom/nuance/swype/input/BuildInfo;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    .line 242
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->createAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    .line 243
    iget-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/AppPreferences;->moveFromPrevious(Lcom/nuance/swype/input/UserPreferences;)V

    .line 245
    iget-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    invoke-virtual {v3}, Lcom/nuance/swype/input/AppPreferences;->isUpgrade()Z

    move-result v3

    iput-boolean v3, p0, Lcom/nuance/swype/input/IMEApplication;->upgrade:Z

    .line 246
    iget-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    iget-boolean v4, p0, Lcom/nuance/swype/input/IMEApplication;->upgrade:Z

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/AppPreferences;->setUpgradeConnect(Z)V

    .line 247
    iget-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    iget-boolean v4, p0, Lcom/nuance/swype/input/IMEApplication;->upgrade:Z

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/AppPreferences;->setStartupUpgrade(Z)V

    .line 248
    iget-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    invoke-virtual {v3}, Lcom/nuance/swype/input/AppPreferences;->ackUpgrade()V

    .line 250
    invoke-static {p0}, Lcom/nuance/swype/input/ThemeManager;->createThemeManager(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    .line 251
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getCurrentTheme()Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->lastTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 253
    iget-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->lastTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getResId()I

    move-result v3

    iput v3, p0, Lcom/nuance/swype/input/IMEApplication;->lastThemeResId:I

    .line 255
    invoke-direct {p0}, Lcom/nuance/swype/input/IMEApplication;->createSettingsLauncher()Lcom/nuance/swype/input/settings/ShowSettings;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->settingsLauncher:Lcom/nuance/swype/input/settings/ShowSettings;

    .line 257
    new-instance v3, Lcom/nuance/swype/input/ToolTips;

    invoke-direct {v3, p0}, Lcom/nuance/swype/input/ToolTips;-><init>(Lcom/nuance/swype/input/IMEApplication;)V

    iput-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->toolTips:Lcom/nuance/swype/input/ToolTips;

    .line 259
    new-instance v3, Lcom/nuance/swype/input/update/UpdateStatusManager;

    invoke-direct {v3, p0}, Lcom/nuance/swype/input/update/UpdateStatusManager;-><init>(Lcom/nuance/swype/input/IMEApplication;)V

    iput-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->updateStatusManager:Lcom/nuance/swype/input/update/UpdateStatusManager;

    .line 261
    new-instance v3, Lcom/nuance/swype/input/PlatformUtil;

    invoke-direct {v3, p0}, Lcom/nuance/swype/input/PlatformUtil;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->platformUtil:Lcom/nuance/swype/input/PlatformUtil;

    .line 263
    new-instance v3, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;

    invoke-direct {v3}, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;-><init>()V

    iput-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->scraperStatusFactory:Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;

    .line 265
    new-instance v3, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;

    invoke-direct {v3}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;-><init>()V

    iput-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->newWordsBucketFactory:Lcom/nuance/swype/input/udb/NewWordsBucketFactory;

    .line 267
    new-instance v3, Lcom/nuance/swype/location/SwypeLocationManager;

    invoke-direct {v3, p0}, Lcom/nuance/swype/location/SwypeLocationManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->location:Lcom/nuance/swype/location/SwypeLocationManager;

    .line 269
    new-instance v3, Lcom/nuance/swype/stats/StatisticsManager;

    invoke-direct {v3, p0}, Lcom/nuance/swype/stats/StatisticsManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->statsManager:Lcom/nuance/swype/stats/StatisticsManager;

    .line 271
    new-instance v3, Lcom/nuance/swype/stats/UsageManager;

    invoke-direct {v3, p0}, Lcom/nuance/swype/stats/UsageManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->usageManager:Lcom/nuance/swype/stats/UsageManager;

    .line 273
    new-instance v3, Lcom/nuance/swype/input/GestureManager;

    invoke-direct {v3, p0}, Lcom/nuance/swype/input/GestureManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->gestureManager:Lcom/nuance/swype/input/GestureManager;

    .line 276
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->createCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    .line 278
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->categoryMap:Landroid/util/SparseIntArray;

    .line 279
    sget v3, Lcom/nuance/swype/input/R$attr;->traceColor:I

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/IMEApplication;->getThemedColor(I)I

    move-result v1

    .line 280
    .local v1, "themeColor":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    .line 281
    .local v2, "up":Lcom/nuance/swype/input/UserPreferences;
    const-string v3, "pen_color"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/UserPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 282
    const-string v3, "pen_color"

    invoke-static {v2, v3, v1, p0}, Lcom/nuance/swype/input/settings/InputPrefs;->setHWRThemePenColor(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;ILandroid/content/Context;)V

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/IMEApplication;->setDeviceType(Ljava/lang/String;)V

    .line 287
    iget-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getNetworkAgreementNotAsk()Z

    move-result v3

    if-nez v3, :cond_1

    .line 288
    iget-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/UserPreferences;->setNetworkAgreement(Z)V

    .line 291
    :cond_1
    new-instance v3, Lcom/nuance/swype/connect/Connect;

    invoke-direct {v3, p0}, Lcom/nuance/swype/connect/Connect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->connect:Lcom/nuance/swype/connect/Connect;

    .line 293
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.microphone"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/nuance/swype/input/IMEApplication;->hasMicrophone:Z

    .line 294
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$bool;->LOW_END_DEVICE_BUILD:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/nuance/swype/input/IMEApplication;->lowEndDeviceBuild:Z

    .line 295
    return-void
.end method

.method protected createAppPreferences()Lcom/nuance/swype/input/AppPreferences;
    .locals 2

    .prologue
    .line 232
    new-instance v0, Lcom/nuance/swype/input/AppPreferences;

    iget-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->buildInfo:Lcom/nuance/swype/input/BuildInfo;

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/AppPreferences;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/BuildInfo;)V

    return-object v0
.end method

.method protected createCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;
    .locals 1

    .prologue
    .line 298
    new-instance v0, Lcom/nuance/swype/util/CharacterUtilities;

    invoke-direct {v0, p0}, Lcom/nuance/swype/util/CharacterUtilities;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected createCorrectionSpanFactory()Lcom/nuance/android/compat/CorrectionSpanFactory;
    .locals 1

    .prologue
    .line 1092
    new-instance v0, Lcom/nuance/android/compat/CorrectionSpanFactory;

    invoke-direct {v0}, Lcom/nuance/android/compat/CorrectionSpanFactory;-><init>()V

    return-object v0
.end method

.method public createFirstTimeStartWhitelist()Lcom/nuance/swype/input/Whitelist;
    .locals 2

    .prologue
    .line 1186
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->getBuildType()Lcom/nuance/swype/input/BuildInfo$BuildType;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/input/BuildInfo$BuildType;->PRODUCTION:Lcom/nuance/swype/input/BuildInfo$BuildType;

    if-ne v0, v1, :cond_0

    .line 1187
    sget v0, Lcom/nuance/swype/input/R$array;->first_time_startup_whitelist:I

    invoke-static {p0, v0}, Lcom/nuance/swype/input/Whitelist;->fromWhitelist(Landroid/content/Context;I)Lcom/nuance/swype/input/Whitelist;

    move-result-object v0

    .line 1189
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/nuance/swype/input/Whitelist;

    invoke-direct {v0}, Lcom/nuance/swype/input/Whitelist;-><init>()V

    goto :goto_0
.end method

.method public createFirstTimeStartupMessages()Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;
    .locals 2

    .prologue
    .line 1207
    new-instance v0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->createFirstTimeStartWhitelist()Lcom/nuance/swype/input/Whitelist;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/Whitelist;)V

    return-object v0
.end method

.method public createPortraitCandidatesViewFilter()Lcom/nuance/swype/input/Whitelist;
    .locals 2

    .prologue
    .line 1193
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$bool;->enable_portrait_cv_blacklist:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    sget v0, Lcom/nuance/swype/input/R$array;->portrait_cv_blacklist:I

    invoke-static {p0, v0}, Lcom/nuance/swype/input/Whitelist;->fromBlacklist(Landroid/content/Context;I)Lcom/nuance/swype/input/Whitelist;

    move-result-object v0

    .line 1196
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/nuance/swype/input/Whitelist;

    invoke-direct {v0}, Lcom/nuance/swype/input/Whitelist;-><init>()V

    goto :goto_0
.end method

.method public createSyncDataProviderManager()Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->syncDataProviderManager:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    if-nez v0, :cond_0

    .line 1037
    new-instance v0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    invoke-direct {v0}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->syncDataProviderManager:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    .line 1038
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->syncDataProviderManager:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->initialize(Landroid/content/Context;)V

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->syncDataProviderManager:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    return-object v0
.end method

.method public createUnrecognizedWordDecorator(Lcom/nuance/swype/input/InputView;)Lcom/nuance/swype/util/WordDecorator;
    .locals 1
    .param p1, "view"    # Lcom/nuance/swype/input/InputView;

    .prologue
    .line 1300
    new-instance v0, Lcom/nuance/swype/util/WordDecorator;

    invoke-direct {v0, p1}, Lcom/nuance/swype/util/WordDecorator;-><init>(Lcom/nuance/swype/input/InputView;)V

    return-object v0
.end method

.method public createUserDictionaryIterator(Lcom/nuance/swype/input/InputMethods$Language;)Lcom/nuance/swype/input/udb/UserDictionaryIterator;
    .locals 2
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 1231
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v0

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1232
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreChineseInputSession()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/nuance/swype/input/udb/UserDictionaryIterator;->createChineseIterator(Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/SpeechWrapper;)Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    move-result-object v0

    .line 1249
    :goto_0
    return-object v0

    .line 1237
    :cond_0
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v0

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1238
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreKoreanInputSession()Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/nuance/swype/input/udb/UserDictionaryIterator;->createKoreanIterator(Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/SpeechWrapper;)Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    move-result-object v0

    goto :goto_0

    .line 1243
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v0

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1244
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreJapaneseInputSession()Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/nuance/swype/input/udb/UserDictionaryIterator;->createJapaneseIterator(Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/SpeechWrapper;)Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    move-result-object v0

    goto :goto_0

    .line 1249
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreAlphaInputSession()Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/nuance/swype/input/udb/UserDictionaryIterator;->createAlphaIterator(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/SpeechWrapper;)Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    move-result-object v0

    goto :goto_0
.end method

.method public destroySpeechWrapperInstance()V
    .locals 1

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->speechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->speechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->onDestroy()V

    .line 1073
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->speechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    .line 1075
    :cond_0
    return-void
.end method

.method public destroySyncDataProviderManager()V
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->syncDataProviderManager:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->syncDataProviderManager:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->deinitialize(Landroid/content/Context;)V

    .line 1047
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->syncDataProviderManager:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    .line 1048
    return-void
.end method

.method public getAppContextPredictionSetter()Lcom/nuance/swype/input/AppContextPredictionSetter;
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->appContextSetter:Lcom/nuance/swype/input/AppContextPredictionSetter;

    if-nez v0, :cond_0

    .line 1201
    new-instance v0, Lcom/nuance/swype/input/AppContextPredictionSetter;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/AppContextPredictionSetter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->appContextSetter:Lcom/nuance/swype/input/AppContextPredictionSetter;

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->appContextSetter:Lcom/nuance/swype/input/AppContextPredictionSetter;

    return-object v0
.end method

.method public getAppPreferences()Lcom/nuance/swype/input/AppPreferences;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 381
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    return-object v0
.end method

.method public declared-synchronized getAssetFileNames(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1021
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/nuance/swype/input/IMEApplication;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 1022
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->assetFileNames:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->assetFileNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1024
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->assetFileNames:Ljava/util/Set;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1030
    :cond_1
    :goto_0
    :try_start_2
    sget-object v0, Lcom/nuance/swype/input/IMEApplication;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 1032
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->assetFileNames:Ljava/util/Set;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1026
    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->assetFileNames:Ljava/util/Set;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1021
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBuildInfo()Lcom/nuance/swype/input/BuildInfo;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 317
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->buildInfo:Lcom/nuance/swype/input/BuildInfo;

    return-object v0
.end method

.method public getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 329
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getConnect()Lcom/nuance/swype/connect/Connect;
    .locals 1

    .prologue
    .line 1277
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 1278
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->connect:Lcom/nuance/swype/connect/Connect;

    return-object v0
.end method

.method public getCorrectionSpanFactory()Lcom/nuance/android/compat/CorrectionSpanFactory;
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->correctionSpanFactory:Lcom/nuance/android/compat/CorrectionSpanFactory;

    if-nez v0, :cond_0

    .line 1097
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->createCorrectionSpanFactory()Lcom/nuance/android/compat/CorrectionSpanFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->correctionSpanFactory:Lcom/nuance/android/compat/CorrectionSpanFactory;

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->correctionSpanFactory:Lcom/nuance/android/compat/CorrectionSpanFactory;

    return-object v0
.end method

.method public getCurrentApplicationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->currentAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentFieldInfo()I
    .locals 1

    .prologue
    .line 966
    iget v0, p0, Lcom/nuance/swype/input/IMEApplication;->currentFieldInfo:I

    return v0
.end method

.method public getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    return-object v0
.end method

.method public getCurrentTheme()Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .locals 2

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 443
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getThemeManager()Lcom/nuance/swype/input/ThemeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getCurrentThemeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/ThemeManager;->getSwypeTheme(Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentThemeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getCurrentTheme()Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultKeyStyleSetting([IIZ)Z
    .locals 0
    .param p1, "codes"    # [I
    .param p2, "attr"    # I
    .param p3, "fallback"    # Z

    .prologue
    .line 1341
    return p3
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 895
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    const-string v0, "Tablet"

    .line 900
    :goto_0
    return-object v0

    .line 897
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->isScreenPhablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 898
    const-string v0, "Phablet"

    goto :goto_0

    .line 900
    :cond_1
    const-string v0, "Phone"

    goto :goto_0
.end method

.method public getDisplay()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayHeight()I
    .locals 2

    .prologue
    .line 910
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 911
    .local v0, "outSize":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/IMEApplication;->getDisplayRectSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    return v1
.end method

.method public getDisplayRectSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "outSize"    # Landroid/graphics/Rect;

    .prologue
    .line 918
    sget-boolean v0, Lcom/nuance/swype/input/IMEApplication;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 919
    :cond_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/IMEApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 920
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/nuance/android/compat/DisplayCompat;->getRectSize(Landroid/view/Display;Landroid/graphics/Rect;)V

    .line 921
    return-object p1
.end method

.method public getDisplayWidth()I
    .locals 2

    .prologue
    .line 905
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 906
    .local v0, "outSize":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/IMEApplication;->getDisplayRectSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    return v1
.end method

.method public getDrawBufferManager()Lcom/nuance/swype/input/DrawBufferManager;
    .locals 1

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 394
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->drawBufferManager:Lcom/nuance/swype/input/DrawBufferManager;

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Lcom/nuance/swype/input/DrawBufferManager;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/DrawBufferManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->drawBufferManager:Lcom/nuance/swype/input/DrawBufferManager;

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->drawBufferManager:Lcom/nuance/swype/input/DrawBufferManager;

    return-object v0
.end method

.method protected getEmojiInputViewController()Lcom/nuance/swype/input/emoji/EmojiInputController;
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->emojiInputViewController:Lcom/nuance/swype/input/emoji/EmojiInputController;

    if-nez v0, :cond_0

    .line 1079
    new-instance v0, Lcom/nuance/swype/input/emoji/EmojiInputController;

    invoke-direct {v0}, Lcom/nuance/swype/input/emoji/EmojiInputController;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->emojiInputViewController:Lcom/nuance/swype/input/emoji/EmojiInputController;

    .line 1081
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->emojiInputViewController:Lcom/nuance/swype/input/emoji/EmojiInputController;

    return-object v0
.end method

.method public getGestureManager()Lcom/nuance/swype/input/GestureManager;
    .locals 1

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 668
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->gestureManager:Lcom/nuance/swype/input/GestureManager;

    return-object v0
.end method

.method public getHardKeyIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;
    .locals 2

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isHardKeyboardEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1266
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 1267
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->hardKeyboardHandler:Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;

    if-nez v0, :cond_0

    .line 1268
    new-instance v0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->hardKeyboardHandler:Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;

    .line 1270
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->hardKeyboardHandler:Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;

    .line 1273
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIME()Lcom/nuance/swype/input/IME;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method public getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;
    .locals 1

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEHandlerManager;->getIMEInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;
    .locals 3

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 347
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    if-nez v0, :cond_0

    .line 348
    const/4 v0, 0x0

    .line 357
    :goto_0
    return-object v0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    iget-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEHandlerManager;->refreshIME(Lcom/nuance/swype/input/IME;)V

    .line 352
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    goto :goto_0

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->isCJKOnDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 355
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    new-instance v1, Lcom/nuance/swype/input/IMEHandlerManager;

    iget-object v2, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    invoke-direct {v1, v2}, Lcom/nuance/swype/input/IMEHandlerManager;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v1, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    goto :goto_0
.end method

.method public getInputCategory(Lcom/nuance/swype/input/InputMethods$Language;)I
    .locals 3
    .param p1, "lang"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    const/4 v0, 0x0

    .line 1146
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 1147
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->hasCurrentActiveCore()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1148
    iget-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->categoryMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1150
    :cond_0
    return v0
.end method

.method public getInputMethods()Lcom/nuance/swype/input/InputMethods;
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods(Z)Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    return-object v0
.end method

.method public getKeyboardManager()Lcom/nuance/swype/input/KeyboardManager;
    .locals 1

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 386
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->keyboardManager:Lcom/nuance/swype/input/KeyboardManager;

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Lcom/nuance/swype/input/KeyboardManager;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/KeyboardManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->keyboardManager:Lcom/nuance/swype/input/KeyboardManager;

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->keyboardManager:Lcom/nuance/swype/input/KeyboardManager;

    return-object v0
.end method

.method public getLastSmsCalllogScrapedInMinutes()I
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 734
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    iget-object v5, v5, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/AppPreferences;->getLastSmsCalllogScrapedTimeInMilliSecond(Ljava/lang/String;)J

    move-result-wide v2

    .line 737
    .local v2, "lastScrapedInMilliSeconds":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 740
    .local v0, "cal":Ljava/util/Calendar;
    cmp-long v4, v2, v6

    if-nez v4, :cond_0

    .line 741
    const/16 v1, 0x2760

    .line 747
    .local v1, "lastScrapedInMinutes":I
    :goto_0
    return v1

    .line 743
    .end local v1    # "lastScrapedInMinutes":I
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    long-to-int v1, v4

    .restart local v1    # "lastScrapedInMinutes":I
    goto :goto_0
.end method

.method public getLegalActivitiesStartIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1313
    return-object p1
.end method

.method public getNewWordsBucketFactory()Lcom/nuance/swype/input/udb/NewWordsBucketFactory;
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 647
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->newWordsBucketFactory:Lcom/nuance/swype/input/udb/NewWordsBucketFactory;

    return-object v0
.end method

.method public getNoConnectionDialogBuilder(Landroid/content/Context;Ljava/lang/Runnable;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelAction"    # Ljava/lang/Runnable;

    .prologue
    .line 1289
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlatformUtil()Lcom/nuance/swype/input/PlatformUtil;
    .locals 1

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 376
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->platformUtil:Lcom/nuance/swype/input/PlatformUtil;

    return-object v0
.end method

.method public declared-synchronized getPrivateFiles()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1005
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/nuance/swype/input/IMEApplication;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 1006
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->privateFiles:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->privateFiles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1008
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->privateFiles:Ljava/util/Set;

    .line 1010
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->fileList()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->privateFiles:Ljava/util/Set;

    .line 1012
    sget-object v0, Lcom/nuance/swype/input/IMEApplication;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 1014
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->privateFiles:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1005
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRecordedEntryPoints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->localyticsVisitedSettings:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->localyticsVisitedSettings:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1365
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 4

    .prologue
    .line 1220
    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1221
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    if-nez v1, :cond_0

    .end local v0    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v0

    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-static {v1, v2, v3, p0}, Lcom/nuance/android/util/ThemedResources;->from(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/Context;)Lcom/nuance/android/util/ThemedResources;

    move-result-object v0

    goto :goto_0
.end method

.method public getScraperStatusFactory()Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;
    .locals 1

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 642
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->scraperStatusFactory:Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;

    return-object v0
.end method

.method public getScribeFilter()Lcom/nuance/swype/stats/ScribeFilter;
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->scribeFilter:Lcom/nuance/swype/stats/ScribeFilter;

    return-object v0
.end method

.method public getSettingsLauncher()Lcom/nuance/swype/input/settings/ShowSettings;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->settingsLauncher:Lcom/nuance/swype/input/settings/ShowSettings;

    if-nez v0, :cond_0

    .line 433
    invoke-direct {p0}, Lcom/nuance/swype/input/IMEApplication;->createSettingsLauncher()Lcom/nuance/swype/input/settings/ShowSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->settingsLauncher:Lcom/nuance/swype/input/settings/ShowSettings;

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->settingsLauncher:Lcom/nuance/swype/input/settings/ShowSettings;

    return-object v0
.end method

.method public getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 756
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSpeechConfig()Lcom/nuance/speech/SpeechConfig;
    .locals 4

    .prologue
    .line 996
    iget-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->speechConfig:Lcom/nuance/speech/SpeechConfig;

    if-nez v1, :cond_0

    .line 997
    invoke-static {p0}, Lcom/nuance/speech/SpeechInfo;->makeInstance(Landroid/content/Context;)Lcom/nuance/speech/SpeechInfo;

    move-result-object v0

    .line 998
    .local v0, "speechInfo":Lcom/nuance/speech/SpeechInfo;
    new-instance v1, Lcom/nuance/speech/SpeechConfig;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechInfo;->getSpeechInfoTable()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/nuance/speech/SpeechConfig;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->speechConfig:Lcom/nuance/speech/SpeechConfig;

    .line 1001
    .end local v0    # "speechInfo":Lcom/nuance/speech/SpeechInfo;
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->speechConfig:Lcom/nuance/speech/SpeechConfig;

    return-object v1
.end method

.method public getSpeechProvider()I
    .locals 2

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 633
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/nuance/swype/input/R$bool;->dictation_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 634
    sget v1, Lcom/nuance/swype/input/R$integer;->speech_provider:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 636
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x63

    goto :goto_0
.end method

.method public getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->speechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSpeechProvider()I

    move-result v0

    if-nez v0, :cond_0

    .line 1065
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->newSpeechWrapperInstance()Lcom/nuance/swype/input/SpeechWrapper;

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->speechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    return-object v0
.end method

.method public getStatisticsManager()Lcom/nuance/swype/stats/StatisticsManager;
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->statsManager:Lcom/nuance/swype/stats/StatisticsManager;

    return-object v0
.end method

.method public getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;
    .locals 1

    .prologue
    .line 1226
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 1227
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->swypeCoreLibMgr:Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    return-object v0
.end method

.method public getSwypeLocation()Lcom/nuance/swype/location/SwypeLocationManager;
    .locals 1

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 624
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->location:Lcom/nuance/swype/location/SwypeLocationManager;

    return-object v0
.end method

.method public getSyncDataProviderManager()Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->syncDataProviderManager:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    return-object v0
.end method

.method public getSystemState()Lcom/nuance/swype/input/SystemState;
    .locals 1

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->sysState:Lcom/nuance/swype/input/SystemState;

    if-nez v0, :cond_0

    .line 1125
    new-instance v0, Lcom/nuance/swype/input/SystemState;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/SystemState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->sysState:Lcom/nuance/swype/input/SystemState;

    .line 1127
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->sysState:Lcom/nuance/swype/input/SystemState;

    return-object v0
.end method

.method public getThemeManager()Lcom/nuance/swype/input/ThemeManager;
    .locals 1

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 402
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    if-nez v0, :cond_0

    .line 403
    invoke-static {p0}, Lcom/nuance/swype/input/ThemeManager;->createThemeManager(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    return-object v0
.end method

.method public getThemedBoolean(I)Z
    .locals 4
    .param p1, "attr"    # I

    .prologue
    const/4 v3, 0x0

    .line 451
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getCurrentTheme()Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getResId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->getBool(Landroid/content/res/TypedArray;)Z

    move-result v0

    return v0
.end method

.method public getThemedColor(I)I
    .locals 4
    .param p1, "attr"    # I

    .prologue
    const/4 v3, 0x0

    .line 455
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getCurrentTheme()Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getResId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->getColor(Landroid/content/res/TypedArray;)I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 474
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getCurrentTheme()Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getResId()I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public getThemedDimension(I)F
    .locals 4
    .param p1, "attr"    # I

    .prologue
    const/4 v3, 0x0

    .line 459
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getCurrentTheme()Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getResId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->getDimen(Landroid/content/res/TypedArray;)F

    move-result v0

    return v0
.end method

.method public getThemedDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "attr"    # I

    .prologue
    const/4 v3, 0x0

    .line 463
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getCurrentTheme()Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getResId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->getDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 479
    .local v0, "themedContext":Landroid/content/Context;
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 481
    return-object v1
.end method

.method public getToastContext()Landroid/content/Context;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 491
    sget v1, Lcom/nuance/swype/input/R$attr;->toastStyle:I

    invoke-static {p0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->getAppThemeId(Landroid/content/Context;)I

    move-result v2

    sget v3, Lcom/nuance/swype/input/R$style;->ToastStyle:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [I

    aput v1, v5, v6

    invoke-virtual {p0, v4, v5, v6, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/support/v4/app/ActivityCompatHoneycomb;->getResId(Landroid/content/res/TypedArray;I)I

    move-result v0

    .line 492
    .local v0, "toastStyleResId":I
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v1
.end method

.method public getToolTips()Lcom/nuance/swype/input/ToolTips;
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 497
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->toolTips:Lcom/nuance/swype/input/ToolTips;

    return-object v0
.end method

.method public getUpdateStatusManager()Lcom/nuance/swype/input/update/UpdateStatusManager;
    .locals 1

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 502
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->updateStatusManager:Lcom/nuance/swype/input/update/UpdateStatusManager;

    return-object v0
.end method

.method public getUsageManager()Lcom/nuance/swype/stats/UsageManager;
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->usageManager:Lcom/nuance/swype/stats/UsageManager;

    return-object v0
.end method

.method public getUserPreferences()Lcom/nuance/swype/input/UserPreferences;
    .locals 1

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 410
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    return-object v0
.end method

.method public hasActiveHardKeyIMEHandlerInstance()Z
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->hardKeyboardHandler:Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActiveIMEManagerInstance()Z
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMicrophone()Z
    .locals 1

    .prologue
    .line 1346
    iget-boolean v0, p0, Lcom/nuance/swype/input/IMEApplication;->hasMicrophone:Z

    return v0
.end method

.method protected isFullContactScrapingEnabled()Z
    .locals 1

    .prologue
    .line 703
    const/4 v0, 0x0

    return v0
.end method

.method public isImeInUse()Z
    .locals 1

    .prologue
    .line 1104
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1105
    const/4 v0, 0x0

    .line 1107
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isImeInUse()Z

    move-result v0

    goto :goto_0
.end method

.method public isLVLLicenseValid()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1388
    iget-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    if-nez v1, :cond_1

    .line 1391
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isLVLLicenseValid()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLowEndDeviceBuild()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/nuance/swype/input/IMEApplication;->lowEndDeviceBuild:Z

    return v0
.end method

.method public isMiniKeyboardSupported(I)Z
    .locals 3
    .param p1, "currentOrientation"    # I

    .prologue
    const/4 v2, 0x1

    .line 875
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 876
    iput-boolean v2, p0, Lcom/nuance/swype/input/IMEApplication;->isMiniKeyboardSupported:Z

    .line 891
    :goto_0
    iget-boolean v1, p0, Lcom/nuance/swype/input/IMEApplication;->isMiniKeyboardSupported:Z

    return v1

    .line 877
    :cond_0
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 879
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 884
    .local v0, "movable":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->isEnabled(Landroid/content/res/Resources;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 886
    iput-boolean v2, p0, Lcom/nuance/swype/input/IMEApplication;->isMiniKeyboardSupported:Z

    goto :goto_0

    .line 888
    .end local v0    # "movable":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/swype/input/IMEApplication;->isMiniKeyboardSupported:Z

    goto :goto_0
.end method

.method public isMultipleEnabledSubtypeAvailable(I)Z
    .locals 1
    .param p1, "swypeActiveLangCount"    # I

    .prologue
    const/4 v0, 0x1

    .line 1320
    if-le p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScreenLayoutTablet()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 846
    iget-boolean v4, p0, Lcom/nuance/swype/input/IMEApplication;->tabletVerified:Z

    if-nez v4, :cond_1

    .line 847
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 848
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-static {v0}, Lcom/nuance/android/compat/ConfigurationCompat;->getSmallestScreenWidthDp(Landroid/content/res/Configuration;)I

    move-result v1

    .line 849
    .local v1, "swDp":I
    if-eqz v1, :cond_2

    .line 850
    const/16 v4, 0x258

    if-lt v1, v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/nuance/swype/input/IMEApplication;->isTablet:Z

    .line 854
    :goto_0
    iput-boolean v3, p0, Lcom/nuance/swype/input/IMEApplication;->tabletVerified:Z

    .line 856
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "swDp":I
    :cond_1
    iget-boolean v2, p0, Lcom/nuance/swype/input/IMEApplication;->isTablet:Z

    return v2

    .line 852
    .restart local v0    # "config":Landroid/content/res/Configuration;
    .restart local v1    # "swDp":I
    :cond_2
    iget v4, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    move v2, v3

    :cond_3
    iput-boolean v2, p0, Lcom/nuance/swype/input/IMEApplication;->isTablet:Z

    goto :goto_0
.end method

.method public isScreenPhablet()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 860
    iget-boolean v1, p0, Lcom/nuance/swype/input/IMEApplication;->phabletVerified:Z

    if-nez v1, :cond_1

    .line 861
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 862
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_LEFT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 863
    .local v0, "leftMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->isEnabled(Landroid/content/res/Resources;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->isEnabled(Landroid/content/res/Resources;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 866
    iput-boolean v3, p0, Lcom/nuance/swype/input/IMEApplication;->isPhablet:Z

    .line 869
    .end local v0    # "leftMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    :cond_0
    iput-boolean v3, p0, Lcom/nuance/swype/input/IMEApplication;->phabletVerified:Z

    .line 871
    :cond_1
    iget-boolean v1, p0, Lcom/nuance/swype/input/IMEApplication;->isPhablet:Z

    return v1
.end method

.method public isThemeChanged()Z
    .locals 2

    .prologue
    .line 1182
    iget v0, p0, Lcom/nuance/swype/input/IMEApplication;->lastThemeResId:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getCurrentTheme()Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getResId()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newSpeechWrapperInstance()Lcom/nuance/swype/input/SpeechWrapper;
    .locals 1

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->speechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-nez v0, :cond_0

    .line 1056
    new-instance v0, Lcom/nuance/swype/input/SpeechWrapper;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/SpeechWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->speechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    .line 1057
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->speechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->onCreate()V

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->speechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    return-object v0
.end method

.method public notifyLanguageInstalled(Ljava/lang/String;I)V
    .locals 0
    .param p1, "langName"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 1325
    return-void
.end method

.method public notifyNewWordsForScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V
    .locals 1
    .param p1, "bucket"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 661
    .local v0, "imeLocal":Lcom/nuance/swype/input/IME;
    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/IME;->startDelayScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V

    .line 664
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1213
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1214
    invoke-static {}, Lcom/nuance/android/util/ThemedResources;->onConfigChanged()V

    .line 1215
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 203
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->androidDefaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 204
    new-instance v0, Lcom/nuance/swype/input/IMEApplication$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/IMEApplication$1;-><init>(Lcom/nuance/swype/input/IMEApplication;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 222
    return-void
.end method

.method public onImeInUse(Z)V
    .locals 1
    .param p1, "inUse"    # Z

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->imeSubject:Lcom/nuance/swype/util/Subject;

    invoke-virtual {v0}, Lcom/nuance/swype/util/Subject;->doNotify()V

    .line 1113
    return-void
.end method

.method public onPostInstallLanguage(Ljava/lang/String;)V
    .locals 7
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 539
    iget-object v5, p0, Lcom/nuance/swype/input/IMEApplication;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/nuance/swype/input/IMEApplication;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5, p1}, Lcom/nuance/swype/input/InputMethods$Language;->usesLanguage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    .line 541
    :goto_0
    if-nez v5, :cond_2

    .line 560
    :cond_0
    :goto_1
    return-void

    .line 539
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 544
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods;->getAllLanguages()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/InputMethods$Language;

    .line 545
    .local v4, "installLang":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 546
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v1

    .line 547
    .local v1, "coreLangId":I
    iget-object v5, p0, Lcom/nuance/swype/input/IMEApplication;->swypeCoreLibMgr:Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    invoke-virtual {v5}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v2

    .line 548
    .local v2, "corelib":Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v3

    .line 549
    .local v3, "im":Lcom/nuance/swype/input/InputMethods;
    if-eqz v3, :cond_0

    .line 550
    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getChineseCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->hasInputContext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 551
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreChineseInputSession()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    .line 553
    .local v0, "chineseInput":Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->startSession()V

    .line 554
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    .line 556
    .end local v0    # "chineseInput":Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    :cond_3
    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getChineseCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v5

    invoke-virtual {v5, v1, v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->onPostInstallLanguage(IZ)Z

    goto :goto_1
.end method

.method public onPreInstallLanguage(Ljava/lang/String;)V
    .locals 7
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 514
    iget-object v5, p0, Lcom/nuance/swype/input/IMEApplication;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/nuance/swype/input/IMEApplication;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5, p1}, Lcom/nuance/swype/input/InputMethods$Language;->usesLanguage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    .line 516
    :goto_0
    if-nez v5, :cond_2

    .line 536
    :cond_0
    :goto_1
    return-void

    .line 514
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 519
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods;->getAllLanguages()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/InputMethods$Language;

    .line 520
    .local v4, "installLang":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 522
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v1

    .line 523
    .local v1, "coreLangId":I
    iget-object v5, p0, Lcom/nuance/swype/input/IMEApplication;->swypeCoreLibMgr:Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    invoke-virtual {v5}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v2

    .line 524
    .local v2, "corelib":Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v3

    .line 525
    .local v3, "im":Lcom/nuance/swype/input/InputMethods;
    if-eqz v3, :cond_0

    .line 526
    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getChineseCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->hasInputContext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 527
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreChineseInputSession()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    .line 529
    .local v0, "chineseInput":Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->startSession()V

    .line 530
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    .line 532
    .end local v0    # "chineseInput":Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    :cond_3
    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getChineseCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v5

    invoke-virtual {v5, v1, v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->onPreInstallLanguage(IZ)Z

    goto :goto_1
.end method

.method public onUpdateLanguage(Ljava/lang/String;)V
    .locals 5
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods;->getAllLanguages()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/InputMethods$Language;

    .line 565
    .local v3, "updateLang":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v3, :cond_0

    .line 567
    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4, p1}, Lcom/nuance/swype/input/InputMethods$Language;->usesLanguage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 569
    .local v2, "isCurrentLanguage":Z
    :goto_0
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v0

    .line 571
    .local v0, "coreLangId":I
    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->swypeCoreLibMgr:Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    invoke-virtual {v4}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v1

    .line 573
    .local v1, "corelib":Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getChineseCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->hasInputContext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 575
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getChineseCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->onUpdateLanguage(IZ)Z

    .line 589
    .end local v0    # "coreLangId":I
    .end local v1    # "corelib":Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
    .end local v2    # "isCurrentLanguage":Z
    :cond_0
    :goto_1
    return-void

    .line 567
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 577
    .restart local v0    # "coreLangId":I
    .restart local v1    # "corelib":Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
    .restart local v2    # "isCurrentLanguage":Z
    :cond_2
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getKoreanCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->hasInputContext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 579
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getKoreanCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->onUpdateLanguage(IZ)Z

    goto :goto_1

    .line 581
    :cond_3
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getJapaneseCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->hasInputContext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 583
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getJapaneseCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->onUpdateLanguage(IZ)Z

    goto :goto_1

    .line 585
    :cond_4
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getAlphaCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->hasInputContext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 586
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getAlphaCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->onUpdateLanguage(IZ)Z

    goto :goto_1
.end method

.method public recordEntryPoints(Ljava/lang/String;)V
    .locals 3
    .param p1, "visited"    # Ljava/lang/String;

    .prologue
    .line 1353
    invoke-static {p0}, Lcom/nuance/android/compat/LocalyticsCompat;->isLocalyticsClassExistingAndContributionaAllowed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1354
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->localyticsVisitedSettings:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 1355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->localyticsVisitedSettings:Ljava/lang/StringBuilder;

    .line 1357
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->localyticsVisitedSettings:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1359
    :cond_1
    return-void
.end method

.method public recordScreenVisited(Ljava/lang/String;)V
    .locals 2
    .param p1, "visited"    # Ljava/lang/String;

    .prologue
    .line 1378
    invoke-static {p0}, Lcom/nuance/android/compat/LocalyticsCompat;->isLocalyticsClassExistingAndContributionaAllowed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1379
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->getSwypePreferenceAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/android/compat/LocalyticsCompat;->createLocalyticsSession(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/swype/stats/LocalyticsUtils;

    .line 1381
    invoke-static {}, Lcom/nuance/android/compat/LocalyticsCompat;->open()V

    .line 1382
    invoke-static {p1}, Lcom/nuance/android/compat/LocalyticsCompat;->tagScreen(Ljava/lang/String;)V

    .line 1383
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/android/compat/LocalyticsCompat;->upload(Landroid/content/Context;)V

    .line 1385
    :cond_0
    return-void
.end method

.method public refreshInputMethods()V
    .locals 1

    .prologue
    .line 510
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods(Z)Lcom/nuance/swype/input/InputMethods;

    .line 511
    return-void
.end method

.method public registerContextObserver(Lcom/nuance/swype/util/Observer;)V
    .locals 1
    .param p1, "o"    # Lcom/nuance/swype/util/Observer;

    .prologue
    .line 979
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->statsContext:Lcom/nuance/swype/util/Subject;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/util/Subject;->addObserver(Lcom/nuance/swype/util/Observer;)V

    .line 980
    return-void
.end method

.method public registerImeObserver(Lcom/nuance/swype/util/Observer;)V
    .locals 1
    .param p1, "observer"    # Lcom/nuance/swype/util/Observer;

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->imeSubject:Lcom/nuance/swype/util/Subject;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/util/Subject;->addObserver(Lcom/nuance/swype/util/Observer;)V

    .line 1117
    return-void
.end method

.method public releaseEmojiInputViewController()V
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->emojiInputViewController:Lcom/nuance/swype/input/emoji/EmojiInputController;

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->emojiInputViewController:Lcom/nuance/swype/input/emoji/EmojiInputController;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->release()V

    .line 1087
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->emojiInputViewController:Lcom/nuance/swype/input/emoji/EmojiInputController;

    .line 1089
    :cond_0
    return-void
.end method

.method public releaseInstances()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 414
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->drawBufferManager:Lcom/nuance/swype/input/DrawBufferManager;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->drawBufferManager:Lcom/nuance/swype/input/DrawBufferManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/DrawBufferManager;->evictAll()V

    .line 416
    iput-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->drawBufferManager:Lcom/nuance/swype/input/DrawBufferManager;

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->keyboardManager:Lcom/nuance/swype/input/KeyboardManager;

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->keyboardManager:Lcom/nuance/swype/input/KeyboardManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardManager;->evictAll()V

    .line 420
    iput-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->keyboardManager:Lcom/nuance/swype/input/KeyboardManager;

    .line 423
    :cond_1
    iput-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    .line 424
    iput-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->settingsLauncher:Lcom/nuance/swype/input/settings/ShowSettings;

    .line 425
    return-void
.end method

.method public resetRecordedEntryPoints()V
    .locals 2

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->localyticsVisitedSettings:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 1370
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->localyticsVisitedSettings:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1372
    :cond_0
    return-void
.end method

.method public resetScrapperStatus()V
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->scraperStatusFactory:Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->scraperStatusFactory:Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;

    invoke-virtual {v0, p0}, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->reset(Landroid/content/Context;)V

    .line 654
    :cond_0
    return-void
.end method

.method public setCurrentApplicationName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 941
    iput-object p1, p0, Lcom/nuance/swype/input/IMEApplication;->currentAppName:Ljava/lang/String;

    .line 942
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->statsContext:Lcom/nuance/swype/util/Subject;

    invoke-virtual {v0}, Lcom/nuance/swype/util/Subject;->doNotify()V

    .line 943
    return-void
.end method

.method public setCurrentFieldInfo(I)V
    .locals 1
    .param p1, "info"    # I

    .prologue
    .line 953
    iput p1, p0, Lcom/nuance/swype/input/IMEApplication;->currentFieldInfo:I

    .line 954
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->statsContext:Lcom/nuance/swype/util/Subject;

    invoke-virtual {v0}, Lcom/nuance/swype/util/Subject;->doNotify()V

    .line 955
    return-void
.end method

.method public setCurrentLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 3
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 946
    iput-object p1, p0, Lcom/nuance/swype/input/IMEApplication;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 947
    sget-object v0, Lcom/nuance/swype/input/IMEApplication;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IMEApplication.currentLanguage:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/swype/input/IMEApplication;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 948
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/Connect;->setCurrentLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 949
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->statsContext:Lcom/nuance/swype/util/Subject;

    invoke-virtual {v0}, Lcom/nuance/swype/util/Subject;->doNotify()V

    .line 950
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 987
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 988
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isDeviceTypeRecorded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/UserPreferences;->setDeviceType(Z)V

    .line 991
    :cond_0
    return-void
.end method

.method public setIME(Lcom/nuance/swype/input/IME;)V
    .locals 0
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 334
    iput-object p1, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    .line 335
    return-void
.end method

.method public setInputCategory(II)V
    .locals 1
    .param p1, "category"    # I
    .param p2, "language"    # I

    .prologue
    .line 1131
    if-eqz p1, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->categoryMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1133
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->statsContext:Lcom/nuance/swype/util/Subject;

    invoke-virtual {v0}, Lcom/nuance/swype/util/Subject;->doNotify()V

    .line 1135
    :cond_0
    return-void
.end method

.method public setScribeFilter(Lcom/nuance/swype/stats/ScribeFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/nuance/swype/stats/ScribeFilter;

    .prologue
    .line 970
    iput-object p1, p0, Lcom/nuance/swype/input/IMEApplication;->scribeFilter:Lcom/nuance/swype/stats/ScribeFilter;

    .line 971
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->statsContext:Lcom/nuance/swype/util/Subject;

    invoke-virtual {v0}, Lcom/nuance/swype/util/Subject;->doNotify()V

    .line 972
    return-void
.end method

.method public showAddonDictionaries()V
    .locals 1

    .prologue
    .line 833
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 834
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSettingsLauncher()Lcom/nuance/swype/input/settings/ShowSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/nuance/swype/input/settings/ShowSettings;->showAddonDictionaries(Landroid/content/Context;)V

    .line 835
    return-void
.end method

.method public showChineseSettings()V
    .locals 1

    .prologue
    .line 841
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 842
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSettingsLauncher()Lcom/nuance/swype/input/settings/ShowSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/nuance/swype/input/settings/ShowSettings;->showChineseSettings(Landroid/content/Context;)V

    .line 843
    return-void
.end method

.method public showGestures()V
    .locals 1

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 786
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSettingsLauncher()Lcom/nuance/swype/input/settings/ShowSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/nuance/swype/input/settings/ShowSettings;->showGestures(Landroid/content/Context;)V

    .line 787
    return-void
.end method

.method public showLanguageDownloads()V
    .locals 1

    .prologue
    .line 801
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 802
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSettingsLauncher()Lcom/nuance/swype/input/settings/ShowSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/nuance/swype/input/settings/ShowSettings;->showLanguageDownloads(Landroid/content/Context;)V

    .line 803
    return-void
.end method

.method public showLanguages()V
    .locals 1

    .prologue
    .line 793
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 794
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSettingsLauncher()Lcom/nuance/swype/input/settings/ShowSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/nuance/swype/input/settings/ShowSettings;->showLanguages(Landroid/content/Context;)V

    .line 795
    return-void
.end method

.method public showMyWordsPrefs()V
    .locals 1

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 810
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSettingsLauncher()Lcom/nuance/swype/input/settings/ShowSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/nuance/swype/input/settings/ShowSettings;->showMyWordsPrefs(Landroid/content/Context;)V

    .line 811
    return-void
.end method

.method public showSettings()V
    .locals 2

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 765
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getRecordedEntryPoints()Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, "visited":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "functionbar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "swypekey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 767
    const-string v1, "system"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/IMEApplication;->recordEntryPoints(Ljava/lang/String;)V

    .line 769
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSettingsLauncher()Lcom/nuance/swype/input/settings/ShowSettings;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/nuance/swype/input/settings/ShowSettings;->showMain(Landroid/content/Context;)V

    .line 770
    return-void
.end method

.method public showThemes()V
    .locals 1

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 826
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSettingsLauncher()Lcom/nuance/swype/input/settings/ShowSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/nuance/swype/input/settings/ShowSettings;->showThemes(Landroid/content/Context;)V

    .line 827
    return-void
.end method

.method public showTutorial()V
    .locals 1

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 778
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSettingsLauncher()Lcom/nuance/swype/input/settings/ShowSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/nuance/swype/input/settings/ShowSettings;->showTutorial(Landroid/content/Context;)V

    .line 779
    return-void
.end method

.method public showUpdates()V
    .locals 1

    .prologue
    .line 817
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 818
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSettingsLauncher()Lcom/nuance/swype/input/settings/ShowSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/nuance/swype/input/settings/ShowSettings;->showUpdates(Landroid/content/Context;)V

    .line 819
    return-void
.end method

.method protected startScraperAndroidDictionary()V
    .locals 3

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSyncDataProviderManager()Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    move-result-object v0

    new-instance v1, Lcom/nuance/swype/input/udb/sync/AndroidUserDictionarySyncDataProvider;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getNewWordsBucketFactory()Lcom/nuance/swype/input/udb/NewWordsBucketFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->getAndroidNewWordsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/nuance/swype/input/udb/sync/AndroidUserDictionarySyncDataProvider;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V

    invoke-virtual {v0, p0, v1}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->addProvider(Landroid/content/Context;Lcom/nuance/swype/input/udb/sync/SyncDataProvider;)V

    .line 689
    return-void
.end method

.method protected startScraperContacts()V
    .locals 4

    .prologue
    .line 696
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSyncDataProviderManager()Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    move-result-object v0

    new-instance v1, Lcom/nuance/swype/input/udb/sync/ContactsSyncDataProvider;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getNewWordsBucketFactory()Lcom/nuance/swype/input/udb/NewWordsBucketFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->getSmsCalllogContactsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->isFullContactScrapingEnabled()Z

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/nuance/swype/input/udb/sync/ContactsSyncDataProvider;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;Z)V

    invoke-virtual {v0, p0, v1}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->addProvider(Landroid/content/Context;Lcom/nuance/swype/input/udb/sync/SyncDataProvider;)V

    .line 700
    return-void
.end method

.method public startScrapingServices()V
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->syncDataProviderManager:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    if-eqz v0, :cond_0

    .line 679
    :goto_0
    return-void

    .line 675
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->createSyncDataProviderManager()Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    .line 676
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->startScraperContacts()V

    .line 677
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->startScraperAndroidDictionary()V

    goto :goto_0
.end method

.method public startSmsCalllogScraperService(Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;)V
    .locals 10
    .param p1, "target"    # Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v1

    .line 709
    .local v1, "im":Lcom/nuance/swype/input/InputMethods;
    if-nez v1, :cond_1

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    .line 713
    .local v2, "lan":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/UserPreferences;->getAutoImportContacts()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;->SMSCALLLOG:Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

    if-eq p1, v5, :cond_3

    :cond_2
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->isLatinLanguage()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;->CALLLOG:Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

    if-ne p1, v5, :cond_0

    .line 717
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 718
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getLastSmsCalllogScrapedInMinutes()I

    move-result v3

    .line 720
    .local v3, "lastScrapedInMinutes":I
    if-lez v3, :cond_0

    .line 721
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/nuance/sns/sms/SMSCalllogScraper;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 722
    .local v4, "smsCalllogIntent":Landroid/content/Intent;
    const-string v5, "SMS_CALLLOG_SENT_DATE_IN_MINUTES"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 724
    const-string v5, "SMS_CALLLOG_SCRAPE_TARGET"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 725
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/IMEApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 726
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v5

    iget-object v6, v2, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Lcom/nuance/swype/input/AppPreferences;->setLastSmsCalllogScrapedTimeMilliSecond(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public statsSettingChanged()V
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->reloadKeyboard()V

    .line 1157
    :cond_0
    return-void
.end method

.method public unregisterContextObserver(Lcom/nuance/swype/util/Observer;)V
    .locals 1
    .param p1, "o"    # Lcom/nuance/swype/util/Observer;

    .prologue
    .line 983
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->statsContext:Lcom/nuance/swype/util/Subject;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/util/Subject;->removeObserver(Lcom/nuance/swype/util/Observer;)V

    .line 984
    return-void
.end method

.method public unregisterImeObserver(Lcom/nuance/swype/util/Observer;)V
    .locals 1
    .param p1, "observer"    # Lcom/nuance/swype/util/Observer;

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->imeSubject:Lcom/nuance/swype/util/Subject;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/util/Subject;->removeObserver(Lcom/nuance/swype/util/Observer;)V

    .line 1121
    return-void
.end method
