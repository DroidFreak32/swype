.class public Lcom/nuance/swype/input/IMEApplication;
.super Landroid/app/Application;
.source "IMEApplication.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ALPHA_HANDWRITING_DATABASE_NAME:Ljava/lang/String; = "database_le.dat"

.field private static final MAX_HEAP_MEMORY_THRESHOLD:I = 0x80

.field private static final THEMES_FOLDER_NAME:Ljava/lang/String; = "themes"

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;

.field protected static final trace:Lcom/nuance/swype/util/LogManager$Trace;


# instance fields
.field private androidDefaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private appContextSetter:Lcom/nuance/swype/input/AppContextPredictionSetter;

.field private appPrefs:Lcom/nuance/swype/input/AppPreferences;

.field private appSpecificBehavior:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

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

.field private emojiCacheManager:Lcom/nuance/swype/input/emoji/EmojiCacheManager;

.field private emojiInputViewController:Lcom/nuance/swype/input/emoji/EmojiInputController;

.field private gestureManager:Lcom/nuance/swype/input/GestureManager;

.field private hardKeyboardHandler:Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;

.field private hasMicrophone:Z

.field private ime:Lcom/nuance/swype/input/IME;

.field private imeSubject:Lcom/nuance/swype/util/Subject;

.field private inputMethods:Lcom/nuance/swype/input/InputMethods;

.field private isCreated:Z

.field private isPhablet:Z

.field private isTablet:Z

.field public isUserTapKey:Z

.field private isUserUnlockFinished:Z

.field public isWCLMessage:Z

.field private keyboardManager:Lcom/nuance/swype/input/KeyboardManager;

.field private lastTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

.field private lastThemeResId:I

.field private lowEndDeviceBuild:Z

.field private mAdSessionTracker:Lcom/nuance/swype/input/ads/BillboardSessionTracker;

.field private mBillboardManager:Lcom/nuance/swype/input/ads/BillboardManager;

.field private mCatalogManager:Lcom/nuance/swype/inapp/CatalogManager;

.field private maxMemoryInBytes:I

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

.field private startupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

.field private statsContext:Lcom/nuance/swype/util/Subject;

.field private statsManager:Lcom/nuance/swype/stats/StatisticsManager;

.field private swypeCoreLibMgr:Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

.field private syncDataProviderManager:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

.field protected sysState:Lcom/nuance/swype/input/SystemState;

.field private tabletVerified:Z

.field private themeLoader:Lcom/nuance/swype/plugin/ThemeLoader;

.field private themeManager:Lcom/nuance/swype/input/ThemeManager;

.field private toolTips:Lcom/nuance/swype/input/ToolTips;

.field private updateStatusManager:Lcom/nuance/swype/input/update/UpdateStatusManager;

.field private usageManager:Lcom/nuance/swype/stats/UsageManager;

.field private userPrefs:Lcom/nuance/swype/input/UserPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const-class v0, Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nuance/swype/input/IMEApplication;->$assertionsDisabled:Z

    .line 95
    const-string/jumbo v0, "IMEApplication"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/IMEApplication;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 97
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getTrace()Lcom/nuance/swype/util/LogManager$Trace;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/IMEApplication;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 149
    new-instance v0, Lcom/nuance/swype/util/Subject;

    invoke-direct {v0}, Lcom/nuance/swype/util/Subject;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->statsContext:Lcom/nuance/swype/util/Subject;

    .line 151
    new-instance v0, Lcom/nuance/swype/util/Subject;

    invoke-direct {v0}, Lcom/nuance/swype/util/Subject;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->imeSubject:Lcom/nuance/swype/util/Subject;

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/IMEApplication;->hasMicrophone:Z

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/IMEApplication;->isUserUnlockFinished:Z

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/IMEApplication;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/IMEApplication;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/IMEApplication;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/IMEApplication;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->androidDefaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method private convertSkuFromV1xToV2(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$array;->themeNamesInV1x:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 437
    .local v2, "oldThemeNames":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$array;->themeNamesInV2:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "newThemeNames":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 439
    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 440
    aget-object p1, v1, v0

    .line 443
    .end local p1    # "sku":Ljava/lang/String;
    :cond_0
    return-object p1

    .line 438
    .restart local p1    # "sku":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createSettingsLauncher()Lcom/nuance/swype/input/settings/ShowSettings;
    .locals 2

    .prologue
    .line 453
    :try_start_0
    sget v1, Lcom/nuance/swype/input/R$string;->settings_launcher:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/IMEApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 454
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/settings/ShowSettings;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v1

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "ex":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 457
    .end local v0    # "ex":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 458
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 459
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 460
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/IMEApplication;

    return-object v0
.end method

.method private getInputMethods(Z)Lcom/nuance/swype/input/InputMethods;
    .locals 6
    .param p1, "refresh"    # Z

    .prologue
    .line 844
    if-nez p1, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->inputMethods:Lcom/nuance/swype/input/InputMethods;

    if-nez v4, :cond_4

    .line 845
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 846
    iget-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->inputMethods:Lcom/nuance/swype/input/InputMethods;

    .line 848
    .local v3, "lastInputMethods":Lcom/nuance/swype/input/InputMethods;
    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->buildInfo:Lcom/nuance/swype/input/BuildInfo;

    invoke-virtual {v4}, Lcom/nuance/swype/input/BuildInfo;->getBuildDate()J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Lcom/nuance/swype/input/DatabaseConfig;->refreshDatabaseConfig(Landroid/content/Context;J)V

    .line 849
    invoke-virtual {p0, p0}, Lcom/nuance/swype/input/IMEApplication;->createInputMethods(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->inputMethods:Lcom/nuance/swype/input/InputMethods;

    .line 850
    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->inputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods;->refreshRecentLanguages()V

    .line 851
    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    if-eqz v4, :cond_1

    .line 852
    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    iget-object v5, p0, Lcom/nuance/swype/input/IMEApplication;->inputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/IME;->updateInputMethods(Lcom/nuance/swype/input/InputMethods;)V

    .line 856
    :cond_1
    if-eqz v3, :cond_4

    .line 858
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 859
    .local v2, "langIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods;->getInputLanguages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$Language;

    .line 860
    .local v1, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 862
    .end local v1    # "lang":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_2
    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->inputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods;->getInputLanguages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/InputMethods$Language;

    .line 863
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v0

    .line 864
    .local v0, "id":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 865
    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->inputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {v4, v0}, Lcom/nuance/swype/input/InputMethods;->forceAddRecentLanguage(Ljava/lang/String;)V

    goto :goto_1

    .line 870
    .end local v0    # "id":Ljava/lang/String;
    .end local v2    # "langIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "lastInputMethods":Lcom/nuance/swype/input/InputMethods;
    :cond_4
    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->inputMethods:Lcom/nuance/swype/input/InputMethods;

    return-object v4
.end method

.method private removeAlphaHDBOnUpgrade()Z
    .locals 8

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 403
    .local v0, "filesDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 404
    .local v1, "folder":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, "database_le.dat"

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 405
    .local v2, "hdbFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 406
    .local v3, "removed":Z
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 407
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    .line 408
    sget-object v4, Lcom/nuance/swype/input/IMEApplication;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "removeAlphaHWRDbOnUpgrade...alpha hdb exists and removed: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 410
    :cond_0
    return v3
.end method

.method private upgradeThemeSkuFromV1xToV2(Ljava/lang/String;)V
    .locals 2
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 417
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/IMEApplication;->convertSkuFromV1xToV2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "newSku":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/UserPreferences;->setCurrentThemeId(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public applyDownloadedTheme(Ljava/lang/String;)V
    .locals 7
    .param p1, "themeSku"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1593
    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1594
    :cond_0
    sget-object v1, Lcom/nuance/swype/input/IMEApplication;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "themeSku is null"

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1613
    :goto_0
    return-void

    .line 1597
    :cond_1
    sget-object v1, Lcom/nuance/swype/input/IMEApplication;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "themeSku is: "

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1599
    iget-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->themeLoader:Lcom/nuance/swype/plugin/ThemeLoader;

    if-nez v1, :cond_2

    .line 1600
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeLoader;->getInstance()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->themeLoader:Lcom/nuance/swype/plugin/ThemeLoader;

    .line 1601
    iget-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->themeLoader:Lcom/nuance/swype/plugin/ThemeLoader;

    sget-object v2, Lcom/nuance/swype/input/R$styleable;->ThemeTemplate:[I

    sget v3, Lcom/nuance/swype/input/R$style;->SwypeReference:I

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/plugin/ThemeLoader;->init([II)Z

    .line 1604
    :cond_2
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/IMEApplication;->getThemeApkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1606
    .local v0, "apkPath":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1607
    sget-object v1, Lcom/nuance/swype/input/IMEApplication;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Apk file path is: "

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1608
    iget-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->themeLoader:Lcom/nuance/swype/plugin/ThemeLoader;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/plugin/ThemeLoader;->loadThemeApkFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 1609
    sget-object v1, Lcom/nuance/swype/input/IMEApplication;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "Theme loaded from APK"

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0

    .line 1611
    :cond_3
    sget-object v1, Lcom/nuance/swype/input/IMEApplication;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "Apk file path is null"

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 1796
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 1800
    return-void
.end method

.method protected checkCreate()V
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/nuance/swype/input/IMEApplication;->isCreated:Z

    if-nez v0, :cond_0

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/IMEApplication;->isCreated:Z

    .line 281
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->create()V

    .line 283
    :cond_0
    return-void
.end method

.method public checkIfThemeLoaded()V
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getActiveDownloadedTheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/IMEApplication;->applyDownloadedTheme(Ljava/lang/String;)V

    .line 728
    return-void
.end method

.method public checkPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1369
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1370
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
    .locals 6

    .prologue
    .line 1377
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getCurrentTheme()Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v2

    .line 1378
    .local v2, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/UserPreferences;->getActiveDownloadedTheme()Ljava/lang/String;

    move-result-object v0

    .line 1379
    .local v0, "activeDownloadedTheme":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->lastTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1380
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->lastTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->lastTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1381
    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    const-string/jumbo v5, "pen_color"

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/UserPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1382
    sget v4, Lcom/nuance/swype/input/R$attr;->traceColor:I

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedColor(I)I

    move-result v3

    .line 1383
    .local v3, "themeColor":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    const-string/jumbo v5, "pen_color"

    invoke-static {v4, v5, v3, p0}, Lcom/nuance/swype/input/settings/InputPrefs;->setHWRThemePenColor(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;ILandroid/content/Context;)V

    .line 1387
    .end local v3    # "themeColor":I
    :cond_1
    iput-object v2, p0, Lcom/nuance/swype/input/IMEApplication;->lastTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 1388
    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getResId()I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/IMEApplication;->lastThemeResId:I

    .line 1389
    invoke-static {}, Lcom/nuance/android/util/ThemedResources;->onThemeChanged()V

    .line 1390
    const/4 v1, 0x0

    .line 1391
    .local v1, "apkPath":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1392
    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1393
    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v1

    .line 1398
    :cond_2
    if-eqz v1, :cond_3

    .line 1399
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getThemedContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/nuance/swype/plugin/ThemeLoader;->loadThemeApkFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 1410
    :cond_3
    :goto_0
    const/4 v4, 0x1

    .line 1412
    .end local v1    # "apkPath":Ljava/lang/String;
    :goto_1
    return v4

    .line 1403
    .restart local v1    # "apkPath":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1404
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkIfThemeLoaded()V

    goto :goto_0

    .line 1406
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/plugin/ThemeLoader;->clear()V

    goto :goto_0

    .line 1412
    .end local v1    # "apkPath":Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public clearKeyboardCache()V
    .locals 1

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->keyboardManager:Lcom/nuance/swype/input/KeyboardManager;

    if-eqz v0, :cond_0

    .line 1643
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->keyboardManager:Lcom/nuance/swype/input/KeyboardManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardManager;->evictAll()V

    .line 1645
    :cond_0
    return-void
.end method

.method protected create()V
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 305
    invoke-static {p0}, Lcom/nuance/android/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v4, v6, :cond_4

    .line 307
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v4

    .line 308
    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 312
    .local v0, "sp":Landroid/content/SharedPreferences;
    :goto_0
    new-instance v4, Lcom/nuance/swype/input/BuildInfo;

    invoke-direct {v4, p0, v0}, Lcom/nuance/swype/input/BuildInfo;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    iput-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->buildInfo:Lcom/nuance/swype/input/BuildInfo;

    .line 314
    new-instance v4, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    iget-object v6, p0, Lcom/nuance/swype/input/IMEApplication;->buildInfo:Lcom/nuance/swype/input/BuildInfo;

    invoke-virtual {v6}, Lcom/nuance/swype/input/BuildInfo;->getCoreLibName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p0, v6}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;-><init>(Lcom/nuance/swype/input/IMEApplication;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->swypeCoreLibMgr:Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    .line 316
    new-instance v4, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    invoke-direct {v4, p0}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->appSpecificBehavior:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    .line 318
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->createUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    .line 319
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->createAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    .line 320
    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    iget-object v6, p0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    invoke-virtual {v4, v6}, Lcom/nuance/swype/input/AppPreferences;->moveFromPrevious(Lcom/nuance/swype/input/UserPreferences;)V

    .line 322
    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    invoke-virtual {v4}, Lcom/nuance/swype/input/AppPreferences;->isUpgrade()Z

    move-result v3

    .line 323
    .local v3, "upgrade":Z
    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    invoke-virtual {v4, v3}, Lcom/nuance/swype/input/AppPreferences;->setUpgradeConnect(Z)V

    .line 324
    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    invoke-virtual {v4}, Lcom/nuance/swype/input/AppPreferences;->ackUpgrade()V

    .line 326
    if-eqz v3, :cond_0

    .line 327
    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    invoke-virtual {v4}, Lcom/nuance/swype/input/UserPreferences;->getCurrentThemeId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/IMEApplication;->upgradeThemeSkuFromV1xToV2(Ljava/lang/String;)V

    .line 330
    invoke-direct {p0}, Lcom/nuance/swype/input/IMEApplication;->removeAlphaHDBOnUpgrade()Z

    .line 333
    :cond_0
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeLoader;->getInstance()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->themeLoader:Lcom/nuance/swype/plugin/ThemeLoader;

    .line 334
    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->themeLoader:Lcom/nuance/swype/plugin/ThemeLoader;

    sget-object v6, Lcom/nuance/swype/input/R$styleable;->ThemeTemplate:[I

    sget v7, Lcom/nuance/swype/input/R$style;->SwypeReference:I

    invoke-virtual {v4, v6, v7}, Lcom/nuance/swype/plugin/ThemeLoader;->init([II)Z

    .line 336
    invoke-static {p0}, Lcom/nuance/swype/input/ThemeManager;->createThemeManager(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    .line 338
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getCurrentTheme()Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->lastTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 339
    sget-object v6, Lcom/nuance/swype/input/IMEApplication;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v7, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "lastTheme sku:"

    aput-object v4, v7, v5

    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->lastTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->lastTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v4}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v4

    :goto_1
    aput-object v4, v7, v9

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 340
    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->lastTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->lastTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v4}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getResId()I

    move-result v4

    :goto_2
    iput v4, p0, Lcom/nuance/swype/input/IMEApplication;->lastThemeResId:I

    .line 342
    sget-object v4, Lcom/nuance/swype/input/IMEApplication;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v8, [Ljava/lang/Object;

    const-string/jumbo v7, "lastThemeResId:"

    aput-object v7, v6, v5

    iget v7, p0, Lcom/nuance/swype/input/IMEApplication;->lastThemeResId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-interface {v4, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 343
    invoke-direct {p0}, Lcom/nuance/swype/input/IMEApplication;->createSettingsLauncher()Lcom/nuance/swype/input/settings/ShowSettings;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->settingsLauncher:Lcom/nuance/swype/input/settings/ShowSettings;

    .line 345
    new-instance v4, Lcom/nuance/swype/input/ToolTips;

    invoke-direct {v4, p0}, Lcom/nuance/swype/input/ToolTips;-><init>(Lcom/nuance/swype/input/IMEApplication;)V

    iput-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->toolTips:Lcom/nuance/swype/input/ToolTips;

    .line 347
    new-instance v4, Lcom/nuance/swype/input/update/UpdateStatusManager;

    invoke-direct {v4, p0}, Lcom/nuance/swype/input/update/UpdateStatusManager;-><init>(Lcom/nuance/swype/input/IMEApplication;)V

    iput-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->updateStatusManager:Lcom/nuance/swype/input/update/UpdateStatusManager;

    .line 349
    new-instance v4, Lcom/nuance/swype/input/PlatformUtil;

    invoke-direct {v4, p0}, Lcom/nuance/swype/input/PlatformUtil;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->platformUtil:Lcom/nuance/swype/input/PlatformUtil;

    .line 351
    new-instance v4, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;

    invoke-direct {v4}, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;-><init>()V

    iput-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->scraperStatusFactory:Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;

    .line 353
    new-instance v4, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;

    invoke-direct {v4}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;-><init>()V

    iput-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->newWordsBucketFactory:Lcom/nuance/swype/input/udb/NewWordsBucketFactory;

    .line 355
    new-instance v4, Lcom/nuance/swype/stats/StatisticsManager;

    invoke-direct {v4, p0}, Lcom/nuance/swype/stats/StatisticsManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->statsManager:Lcom/nuance/swype/stats/StatisticsManager;

    .line 357
    new-instance v4, Lcom/nuance/swype/stats/UsageManager;

    invoke-direct {v4, p0}, Lcom/nuance/swype/stats/UsageManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->usageManager:Lcom/nuance/swype/stats/UsageManager;

    .line 359
    new-instance v4, Lcom/nuance/swype/input/GestureManager;

    invoke-direct {v4, p0}, Lcom/nuance/swype/input/GestureManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->gestureManager:Lcom/nuance/swype/input/GestureManager;

    .line 362
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->createCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    .line 364
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->categoryMap:Landroid/util/SparseIntArray;

    .line 366
    sget v4, Lcom/nuance/swype/input/R$attr;->traceColor:I

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedColor(I)I

    move-result v1

    .line 367
    .local v1, "themeColor":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    .line 368
    .local v2, "up":Lcom/nuance/swype/input/UserPreferences;
    const-string/jumbo v4, "pen_color"

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/UserPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 369
    const-string/jumbo v4, "pen_color"

    invoke-static {v2, v4, v1, p0}, Lcom/nuance/swype/input/settings/InputPrefs;->setHWRThemePenColor(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;ILandroid/content/Context;)V

    .line 373
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getDeviceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/IMEApplication;->setDeviceType(Ljava/lang/String;)V

    .line 375
    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    invoke-virtual {v4}, Lcom/nuance/swype/input/UserPreferences;->getNetworkAgreementNotAsk()Z

    move-result v4

    if-nez v4, :cond_2

    .line 376
    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/UserPreferences;->setNetworkAgreement(Z)V

    .line 380
    :cond_2
    new-instance v4, Lcom/nuance/swype/connect/Connect;

    invoke-direct {v4, p0}, Lcom/nuance/swype/connect/Connect;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->connect:Lcom/nuance/swype/connect/Connect;

    .line 382
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v6, "android.hardware.microphone"

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/nuance/swype/input/IMEApplication;->hasMicrophone:Z

    .line 383
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/nuance/swype/input/R$bool;->LOW_END_DEVICE_BUILD:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/nuance/swype/input/IMEApplication;->lowEndDeviceBuild:Z

    .line 384
    new-instance v4, Lcom/nuance/swype/startup/StartupSequenceInfo;

    invoke-direct {v4, p0}, Lcom/nuance/swype/startup/StartupSequenceInfo;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->startupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    .line 386
    if-eqz v3, :cond_3

    .line 388
    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->startupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    .line 2200
    sget-object v6, Lcom/nuance/swype/startup/StartupSequenceInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v7, v9, [Ljava/lang/Object;

    const-string/jumbo v8, "setUpgradeFlags"

    aput-object v8, v7, v5

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2202
    invoke-virtual {v4, v9}, Lcom/nuance/swype/startup/StartupSequenceInfo;->setShowBackupSync(Z)V

    .line 2203
    invoke-virtual {v4, v9}, Lcom/nuance/swype/startup/StartupSequenceInfo;->setShowCud(Z)V

    .line 2204
    invoke-virtual {v4, v9}, Lcom/nuance/swype/startup/StartupSequenceInfo;->setShowGettingStarted(Z)V

    .line 2205
    invoke-virtual {v4, v9}, Lcom/nuance/swype/startup/StartupSequenceInfo;->setShowSplash(Z)V

    .line 2208
    invoke-virtual {v4}, Lcom/nuance/swype/startup/StartupSequenceInfo;->setLanguageSelectedAndInstalled$1385ff()V

    .line 391
    :cond_3
    new-instance v4, Lcom/nuance/swype/inapp/CatalogManager;

    invoke-direct {v4, p0}, Lcom/nuance/swype/inapp/CatalogManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->mCatalogManager:Lcom/nuance/swype/inapp/CatalogManager;

    .line 393
    return-void

    .line 310
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v1    # "themeColor":I
    .end local v2    # "up":Lcom/nuance/swype/input/UserPreferences;
    .end local v3    # "upgrade":Z
    :cond_4
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .restart local v0    # "sp":Landroid/content/SharedPreferences;
    goto/16 :goto_0

    .line 339
    .restart local v3    # "upgrade":Z
    :cond_5
    const-string/jumbo v4, ""

    goto/16 :goto_1

    :cond_6
    move v4, v5

    .line 340
    goto/16 :goto_2
.end method

.method protected createAppPreferences()Lcom/nuance/swype/input/AppPreferences;
    .locals 3

    .prologue
    .line 295
    invoke-static {p0}, Lcom/nuance/android/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 298
    .local v0, "deviceProtectedContext":Landroid/content/Context;
    new-instance v1, Lcom/nuance/swype/input/AppPreferences;

    iget-object v2, p0, Lcom/nuance/swype/input/IMEApplication;->buildInfo:Lcom/nuance/swype/input/BuildInfo;

    invoke-direct {v1, v0, v2}, Lcom/nuance/swype/input/AppPreferences;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/BuildInfo;)V

    .line 300
    .end local v0    # "deviceProtectedContext":Landroid/content/Context;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/nuance/swype/input/AppPreferences;

    iget-object v2, p0, Lcom/nuance/swype/input/IMEApplication;->buildInfo:Lcom/nuance/swype/input/BuildInfo;

    invoke-direct {v1, p0, v2}, Lcom/nuance/swype/input/AppPreferences;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/BuildInfo;)V

    goto :goto_0
.end method

.method protected createCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;
    .locals 1

    .prologue
    .line 447
    new-instance v0, Lcom/nuance/swype/util/CharacterUtilities;

    invoke-direct {v0, p0}, Lcom/nuance/swype/util/CharacterUtilities;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected createCorrectionSpanFactory()Lcom/nuance/android/compat/CorrectionSpanFactory;
    .locals 1

    .prologue
    .line 1305
    new-instance v0, Lcom/nuance/android/compat/CorrectionSpanFactory;

    invoke-direct {v0}, Lcom/nuance/android/compat/CorrectionSpanFactory;-><init>()V

    return-object v0
.end method

.method public createFirstTimeStartWhitelist()Lcom/nuance/swype/input/Whitelist;
    .locals 2

    .prologue
    .line 1420
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->getBuildType()Lcom/nuance/swype/input/BuildInfo$BuildType;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/input/BuildInfo$BuildType;->PRODUCTION:Lcom/nuance/swype/input/BuildInfo$BuildType;

    if-ne v0, v1, :cond_0

    .line 1421
    sget v0, Lcom/nuance/swype/input/R$array;->first_time_startup_whitelist:I

    invoke-static {p0, v0}, Lcom/nuance/swype/input/Whitelist;->fromWhitelist(Landroid/content/Context;I)Lcom/nuance/swype/input/Whitelist;

    move-result-object v0

    .line 1423
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
    .line 1441
    new-instance v0, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->createFirstTimeStartWhitelist()Lcom/nuance/swype/input/Whitelist;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/ShowFirstTimeStartupMessages;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/Whitelist;)V

    return-object v0
.end method

.method protected createInputMethods(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1649
    new-instance v0, Lcom/nuance/swype/input/InputMethods;

    invoke-direct {v0, p1}, Lcom/nuance/swype/input/InputMethods;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected createKeyboardManager()Lcom/nuance/swype/input/KeyboardManager;
    .locals 1

    .prologue
    .line 563
    new-instance v0, Lcom/nuance/swype/input/KeyboardManager;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/KeyboardManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createPortraitCandidatesViewFilter()Lcom/nuance/swype/input/Whitelist;
    .locals 2

    .prologue
    .line 1427
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$bool;->enable_portrait_cv_blacklist:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1428
    sget v0, Lcom/nuance/swype/input/R$array;->portrait_cv_blacklist:I

    invoke-static {p0, v0}, Lcom/nuance/swype/input/Whitelist;->fromBlacklist(Landroid/content/Context;I)Lcom/nuance/swype/input/Whitelist;

    move-result-object v0

    .line 1430
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
    .line 1255
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->syncDataProviderManager:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    if-nez v0, :cond_0

    .line 1256
    new-instance v0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    invoke-direct {v0}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->syncDataProviderManager:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    .line 1257
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->syncDataProviderManager:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->initialize(Landroid/content/Context;)V

    .line 1259
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->syncDataProviderManager:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    return-object v0
.end method

.method public createUnrecognizedWordDecorator(Lcom/nuance/swype/input/InputView;)Lcom/nuance/swype/util/WordDecorator;
    .locals 1
    .param p1, "view"    # Lcom/nuance/swype/input/InputView;

    .prologue
    .line 1531
    new-instance v0, Lcom/nuance/swype/util/WordDecorator;

    invoke-direct {v0, p1}, Lcom/nuance/swype/util/WordDecorator;-><init>(Lcom/nuance/swype/input/InputView;)V

    return-object v0
.end method

.method public createUserDictionaryIterator(Lcom/nuance/swype/input/InputMethods$Language;)Lcom/nuance/swype/input/udb/UserDictionaryIterator;
    .locals 2
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 1468
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v0

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1470
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreChineseInputSession()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    .line 1471
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v1

    .line 1470
    invoke-static {v0, p1, v1}, Lcom/nuance/swype/input/udb/UserDictionaryIterator;->createChineseIterator(Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/SpeechWrapper;)Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    move-result-object v0

    .line 1476
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreAlphaInputSession()Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    .line 1477
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v1

    .line 1476
    invoke-static {v0, p1, v1}, Lcom/nuance/swype/input/udb/UserDictionaryIterator;->createAlphaIterator(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/SpeechWrapper;)Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    move-result-object v0

    goto :goto_0
.end method

.method protected createUserPreferences()Lcom/nuance/swype/input/UserPreferences;
    .locals 3

    .prologue
    .line 286
    invoke-static {p0}, Lcom/nuance/android/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 289
    .local v0, "deviceProtectedContext":Landroid/content/Context;
    new-instance v1, Lcom/nuance/swype/input/UserPreferences;

    iget-object v2, p0, Lcom/nuance/swype/input/IMEApplication;->buildInfo:Lcom/nuance/swype/input/BuildInfo;

    invoke-direct {v1, v0, v2}, Lcom/nuance/swype/input/UserPreferences;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/BuildInfo;)V

    .line 291
    .end local v0    # "deviceProtectedContext":Landroid/content/Context;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/nuance/swype/input/UserPreferences;

    iget-object v2, p0, Lcom/nuance/swype/input/IMEApplication;->buildInfo:Lcom/nuance/swype/input/BuildInfo;

    invoke-direct {v1, p0, v2}, Lcom/nuance/swype/input/UserPreferences;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/BuildInfo;)V

    goto :goto_0
.end method

.method public destroySpeechWrapperInstance()V
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->speechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_0

    .line 1291
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->speechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->onDestroy()V

    .line 1292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->speechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    .line 1294
    :cond_0
    return-void
.end method

.method public destroySyncDataProviderManager()V
    .locals 1

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->syncDataProviderManager:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    if-eqz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->syncDataProviderManager:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->deinitialize(Landroid/content/Context;)V

    .line 1266
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->syncDataProviderManager:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    .line 1267
    return-void
.end method

.method public getAdSessionTracker()Lcom/nuance/swype/input/ads/BillboardSessionTracker;
    .locals 5

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->mAdSessionTracker:Lcom/nuance/swype/input/ads/BillboardSessionTracker;

    if-nez v0, :cond_0

    .line 1665
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getApplicationContext()Landroid/content/Context;

    .line 1666
    new-instance v0, Lcom/nuance/swype/input/ads/BillboardSessionTracker;

    .line 1667
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$integer;->ad_config_show_first_on:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1668
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$integer;->ad_config_show_step_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1669
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$integer;->ad_config_max_ads_per_day:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;-><init>(III)V

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->mAdSessionTracker:Lcom/nuance/swype/input/ads/BillboardSessionTracker;

    .line 1677
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->mAdSessionTracker:Lcom/nuance/swype/input/ads/BillboardSessionTracker;

    return-object v0
.end method

.method public getAppContextPredictionSetter()Lcom/nuance/swype/input/AppContextPredictionSetter;
    .locals 1

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->appContextSetter:Lcom/nuance/swype/input/AppContextPredictionSetter;

    if-nez v0, :cond_0

    .line 1435
    new-instance v0, Lcom/nuance/swype/input/AppContextPredictionSetter;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/AppContextPredictionSetter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->appContextSetter:Lcom/nuance/swype/input/AppContextPredictionSetter;

    .line 1437
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->appContextSetter:Lcom/nuance/swype/input/AppContextPredictionSetter;

    return-object v0
.end method

.method public getAppPreferences()Lcom/nuance/swype/input/AppPreferences;
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 535
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    return-object v0
.end method

.method public getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;
    .locals 1

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->appSpecificBehavior:Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

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
    .line 1241
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->assetFileNames:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->assetFileNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1243
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

    .line 1251
    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->assetFileNames:Ljava/util/Set;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1245
    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->assetFileNames:Ljava/util/Set;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1241
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBillboardManager()Lcom/nuance/swype/input/ads/BillboardManager;
    .locals 2

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->mBillboardManager:Lcom/nuance/swype/input/ads/BillboardManager;

    if-nez v0, :cond_0

    .line 1654
    new-instance v0, Lcom/nuance/swype/input/ads/BillboardManager;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/ads/BillboardManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->mBillboardManager:Lcom/nuance/swype/input/ads/BillboardManager;

    .line 1655
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->mBillboardManager:Lcom/nuance/swype/input/ads/BillboardManager;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getAdSessionTracker()Lcom/nuance/swype/input/ads/BillboardSessionTracker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/ads/BillboardManager;->setBillboardDisplayStrategy(Lcom/nuance/swype/input/ads/BillboardDisplayStrategy;)V

    .line 1657
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->mBillboardManager:Lcom/nuance/swype/input/ads/BillboardManager;

    return-object v0
.end method

.method public getBuildInfo()Lcom/nuance/swype/input/BuildInfo;
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 466
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->buildInfo:Lcom/nuance/swype/input/BuildInfo;

    return-object v0
.end method

.method public getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;
    .locals 1

    .prologue
    .line 1588
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 1589
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->mCatalogManager:Lcom/nuance/swype/inapp/CatalogManager;

    return-object v0
.end method

.method public getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;
    .locals 1

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 478
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 1148
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getConnect()Lcom/nuance/swype/connect/Connect;
    .locals 1

    .prologue
    .line 1508
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 1509
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->connect:Lcom/nuance/swype/connect/Connect;

    return-object v0
.end method

.method public getCorrectionSpanFactory()Lcom/nuance/android/compat/CorrectionSpanFactory;
    .locals 1

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->correctionSpanFactory:Lcom/nuance/android/compat/CorrectionSpanFactory;

    if-nez v0, :cond_0

    .line 1310
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->createCorrectionSpanFactory()Lcom/nuance/android/compat/CorrectionSpanFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->correctionSpanFactory:Lcom/nuance/android/compat/CorrectionSpanFactory;

    .line 1312
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->correctionSpanFactory:Lcom/nuance/android/compat/CorrectionSpanFactory;

    return-object v0
.end method

.method public getCurrentApplicationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->currentAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentFieldInfo()I
    .locals 1

    .prologue
    .line 1185
    iget v0, p0, Lcom/nuance/swype/input/IMEApplication;->currentFieldInfo:I

    return v0
.end method

.method public getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;
    .locals 1

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    return-object v0
.end method

.method public getCurrentTheme()Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .locals 4

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 652
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getThemeManager()Lcom/nuance/swype/input/ThemeManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 653
    sget-object v0, Lcom/nuance/swype/input/IMEApplication;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "getThemeManager() == null"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 655
    :cond_0
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
    .line 659
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getCurrentTheme()Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultKeyStyleSetting([IIZ)Z
    .locals 0
    .param p1, "codes"    # [I
    .param p2, "attr"    # I
    .param p3, "fallback"    # Z

    .prologue
    .line 1579
    return p3
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1094
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1095
    const-string/jumbo v0, "Tablet"

    .line 1099
    :goto_0
    return-object v0

    .line 1096
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->isScreenPhablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1097
    const-string/jumbo v0, "Phablet"

    goto :goto_0

    .line 1099
    :cond_1
    const-string/jumbo v0, "Phone"

    goto :goto_0
.end method

.method public getDisplay()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 1144
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayHeight()I
    .locals 1

    .prologue
    .line 1108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/IMEApplication;->getDisplayRectSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getDisplayRectSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "outSize"    # Landroid/graphics/Rect;

    .prologue
    .line 1117
    sget-boolean v0, Lcom/nuance/swype/input/IMEApplication;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1118
    :cond_0
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/IMEApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1119
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/nuance/android/compat/DisplayCompat;->getRectSize(Landroid/view/Display;Landroid/graphics/Rect;)V

    .line 1120
    return-object p1
.end method

.method public getDisplayWidth()I
    .locals 1

    .prologue
    .line 1104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/IMEApplication;->getDisplayRectSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getDrawBufferManager()Lcom/nuance/swype/input/DrawBufferManager;
    .locals 1

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 548
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->drawBufferManager:Lcom/nuance/swype/input/DrawBufferManager;

    if-nez v0, :cond_0

    .line 549
    new-instance v0, Lcom/nuance/swype/input/DrawBufferManager;

    invoke-direct {v0}, Lcom/nuance/swype/input/DrawBufferManager;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->drawBufferManager:Lcom/nuance/swype/input/DrawBufferManager;

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->drawBufferManager:Lcom/nuance/swype/input/DrawBufferManager;

    return-object v0
.end method

.method public getEmojiCacheManager()Lcom/nuance/swype/input/emoji/EmojiCacheManager;
    .locals 1

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 556
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->emojiCacheManager:Lcom/nuance/swype/input/emoji/EmojiCacheManager;

    if-nez v0, :cond_0

    .line 557
    new-instance v0, Lcom/nuance/swype/input/emoji/EmojiCacheManager;

    invoke-direct {v0}, Lcom/nuance/swype/input/emoji/EmojiCacheManager;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->emojiCacheManager:Lcom/nuance/swype/input/emoji/EmojiCacheManager;

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->emojiCacheManager:Lcom/nuance/swype/input/emoji/EmojiCacheManager;

    return-object v0
.end method

.method public getEmojiInputViewController()Lcom/nuance/swype/input/emoji/EmojiInputController;
    .locals 1

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->emojiInputViewController:Lcom/nuance/swype/input/emoji/EmojiInputController;

    if-nez v0, :cond_0

    .line 1298
    new-instance v0, Lcom/nuance/swype/input/emoji/EmojiInputController;

    invoke-direct {v0}, Lcom/nuance/swype/input/emoji/EmojiInputController;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->emojiInputViewController:Lcom/nuance/swype/input/emoji/EmojiInputController;

    .line 1301
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->emojiInputViewController:Lcom/nuance/swype/input/emoji/EmojiInputController;

    return-object v0
.end method

.method public getGestureManager()Lcom/nuance/swype/input/GestureManager;
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 915
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->gestureManager:Lcom/nuance/swype/input/GestureManager;

    return-object v0
.end method

.method public getHardKeyIMEHandler()Lcom/nuance/swype/input/IMEHandler;
    .locals 1

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->hardKeyboardHandler:Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;

    return-object v0
.end method

.method public getHardKeyIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;
    .locals 2

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1493
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 1494
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->hardKeyboardHandler:Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;

    if-nez v0, :cond_0

    .line 1495
    new-instance v0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->hardKeyboardHandler:Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;

    .line 1497
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->hardKeyboardHandler:Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;

    .line 1500
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIME()Lcom/nuance/swype/input/IME;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method public getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;
    .locals 1

    .prologue
    .line 525
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
    .line 495
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 496
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    if-nez v0, :cond_0

    .line 497
    const/4 v0, 0x0

    .line 506
    :goto_0
    return-object v0

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    iget-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEHandlerManager;->refreshIME(Lcom/nuance/swype/input/IME;)V

    .line 501
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    goto :goto_0

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->isCJKOnDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 504
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    new-instance v1, Lcom/nuance/swype/input/IMEHandlerManager;

    iget-object v2, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    invoke-direct {v1, v2}, Lcom/nuance/swype/input/IMEHandlerManager;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v1, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    .line 506
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

    .line 1355
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 1356
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->hasCurrentActiveCore()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1357
    iget-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->categoryMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1359
    :cond_0
    return v0
.end method

.method public getInputMethods()Lcom/nuance/swype/input/InputMethods;
    .locals 1

    .prologue
    .line 760
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods(Z)Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    return-object v0
.end method

.method public getKeyboardManager()Lcom/nuance/swype/input/KeyboardManager;
    .locals 1

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 540
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->keyboardManager:Lcom/nuance/swype/input/KeyboardManager;

    if-nez v0, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->createKeyboardManager()Lcom/nuance/swype/input/KeyboardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->keyboardManager:Lcom/nuance/swype/input/KeyboardManager;

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->keyboardManager:Lcom/nuance/swype/input/KeyboardManager;

    return-object v0
.end method

.method public getLegalActivitiesStartIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1544
    return-object p1
.end method

.method public getMaxMemoryInMegaBytes()I
    .locals 5

    .prologue
    .line 638
    iget v1, p0, Lcom/nuance/swype/input/IMEApplication;->maxMemoryInBytes:I

    if-nez v1, :cond_0

    .line 639
    const-string/jumbo v1, "activity"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/IMEApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 640
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/IMEApplication;->maxMemoryInBytes:I

    .line 643
    .end local v0    # "am":Landroid/app/ActivityManager;
    :cond_0
    sget-object v1, Lcom/nuance/swype/input/IMEApplication;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "getMaxMemoryInMegaBytes max memory:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/nuance/swype/input/IMEApplication;->maxMemoryInBytes:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 644
    iget v1, p0, Lcom/nuance/swype/input/IMEApplication;->maxMemoryInBytes:I

    return v1
.end method

.method public getNewThemeApkPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "themeSku"    # Ljava/lang/String;

    .prologue
    .line 1616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/themes/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNewWordsBucketFactory()Lcom/nuance/swype/input/udb/NewWordsBucketFactory;
    .locals 1

    .prologue
    .line 893
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 894
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->newWordsBucketFactory:Lcom/nuance/swype/input/udb/NewWordsBucketFactory;

    return-object v0
.end method

.method public getNoConnectionDialogBuilder(Landroid/content/Context;Ljava/lang/Runnable;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelAction"    # Ljava/lang/Runnable;

    .prologue
    .line 1520
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlatformUtil()Lcom/nuance/swype/input/PlatformUtil;
    .locals 1

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 530
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
    .line 1225
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->privateFiles:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->privateFiles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->privateFiles:Ljava/util/Set;

    .line 1229
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->fileList()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->privateFiles:Ljava/util/Set;

    .line 1233
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->privateFiles:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 4

    .prologue
    .line 1457
    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1458
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    if-nez v1, :cond_0

    .line 1459
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
    .line 888
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 889
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->scraperStatusFactory:Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;

    return-object v0
.end method

.method public getScreenRectSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "outSize"    # Landroid/graphics/Rect;

    .prologue
    .line 1132
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/IMEApplication;->getDisplayRectSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1133
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1134
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1135
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1136
    return-object v1
.end method

.method public getScribeFilter()Lcom/nuance/swype/stats/ScribeFilter;
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->scribeFilter:Lcom/nuance/swype/stats/ScribeFilter;

    return-object v0
.end method

.method public getSettingsLauncher()Lcom/nuance/swype/input/settings/ShowSettings;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->settingsLauncher:Lcom/nuance/swype/input/settings/ShowSettings;

    if-nez v0, :cond_0

    .line 632
    invoke-direct {p0}, Lcom/nuance/swype/input/IMEApplication;->createSettingsLauncher()Lcom/nuance/swype/input/settings/ShowSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->settingsLauncher:Lcom/nuance/swype/input/settings/ShowSettings;

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->settingsLauncher:Lcom/nuance/swype/input/settings/ShowSettings;

    return-object v0
.end method

.method public getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 944
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSmallestScreenWidthDp()I
    .locals 1

    .prologue
    .line 1072
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1073
    invoke-static {v0}, Lcom/nuance/android/compat/ConfigurationCompat;->getSmallestScreenWidthDp(Landroid/content/res/Configuration;)I

    move-result v0

    return v0
.end method

.method public getSpeechConfig()Lcom/nuance/speech/SpeechConfig;
    .locals 4

    .prologue
    .line 1215
    iget-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->speechConfig:Lcom/nuance/speech/SpeechConfig;

    if-nez v1, :cond_0

    .line 1216
    invoke-static {p0}, Lcom/nuance/speech/SpeechInfo;->makeInstance(Landroid/content/Context;)Lcom/nuance/speech/SpeechInfo;

    move-result-object v0

    .line 1217
    .local v0, "speechInfo":Lcom/nuance/speech/SpeechInfo;
    new-instance v1, Lcom/nuance/speech/SpeechConfig;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    .line 1218
    invoke-virtual {v0}, Lcom/nuance/speech/SpeechInfo;->getSpeechInfoTable()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/nuance/speech/SpeechConfig;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->speechConfig:Lcom/nuance/speech/SpeechConfig;

    .line 1220
    .end local v0    # "speechInfo":Lcom/nuance/speech/SpeechInfo;
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->speechConfig:Lcom/nuance/speech/SpeechConfig;

    return-object v1
.end method

.method public getSpeechProvider()I
    .locals 2

    .prologue
    .line 879
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 880
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/nuance/swype/input/R$bool;->dictation_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 881
    sget v1, Lcom/nuance/swype/input/R$integer;->speech_provider:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 883
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x63

    goto :goto_0
.end method

.method public getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;
    .locals 1

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->speechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSpeechProvider()I

    move-result v0

    if-nez v0, :cond_0

    .line 1284
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->newSpeechWrapperInstance()Lcom/nuance/swype/input/SpeechWrapper;

    .line 1286
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->speechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    return-object v0
.end method

.method public getStartupSequenceInfo()Lcom/nuance/swype/startup/StartupSequenceInfo;
    .locals 1

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 511
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->startupSequenceInfo:Lcom/nuance/swype/startup/StartupSequenceInfo;

    return-object v0
.end method

.method public getStatisticsManager()Lcom/nuance/swype/stats/StatisticsManager;
    .locals 1

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->statsManager:Lcom/nuance/swype/stats/StatisticsManager;

    return-object v0
.end method

.method public getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;
    .locals 1

    .prologue
    .line 1463
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 1464
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->swypeCoreLibMgr:Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    return-object v0
.end method

.method public getSyncDataProviderManager()Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;
    .locals 1

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->syncDataProviderManager:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    return-object v0
.end method

.method public getSystemState()Lcom/nuance/swype/input/SystemState;
    .locals 1

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->sysState:Lcom/nuance/swype/input/SystemState;

    if-nez v0, :cond_0

    .line 1334
    new-instance v0, Lcom/nuance/swype/input/SystemState;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/SystemState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->sysState:Lcom/nuance/swype/input/SystemState;

    .line 1336
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->sysState:Lcom/nuance/swype/input/SystemState;

    return-object v0
.end method

.method public getThemeApkPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "themeSku"    # Ljava/lang/String;

    .prologue
    .line 1621
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/IMEApplication;->getNewThemeApkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1622
    .local v0, "apkPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 1638
    .end local v0    # "apkPath":Ljava/lang/String;
    .local v1, "apkPath":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1627
    .end local v1    # "apkPath":Ljava/lang/String;
    .restart local v0    # "apkPath":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/themes/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1628
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1629
    new-instance v4, Lcom/nuance/swype/input/IMEApplication$3;

    invoke-direct {v4, p0}, Lcom/nuance/swype/input/IMEApplication$3;-><init>(Lcom/nuance/swype/input/IMEApplication;)V

    invoke-virtual {v2, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 1634
    .local v3, "dirFiles":[Ljava/io/File;
    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    .line 1635
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .end local v3    # "dirFiles":[Ljava/io/File;
    :cond_1
    move-object v1, v0

    .line 1638
    .end local v0    # "apkPath":Ljava/lang/String;
    .restart local v1    # "apkPath":Ljava/lang/String;
    goto :goto_0
.end method

.method public getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;
    .locals 3

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 577
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->themeLoader:Lcom/nuance/swype/plugin/ThemeLoader;

    if-nez v0, :cond_0

    .line 578
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeLoader;->getInstance()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->themeLoader:Lcom/nuance/swype/plugin/ThemeLoader;

    .line 579
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->themeLoader:Lcom/nuance/swype/plugin/ThemeLoader;

    sget-object v1, Lcom/nuance/swype/input/R$styleable;->ThemeTemplate:[I

    sget v2, Lcom/nuance/swype/input/R$style;->SwypeReference:I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/plugin/ThemeLoader;->init([II)Z

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->themeLoader:Lcom/nuance/swype/plugin/ThemeLoader;

    return-object v0
.end method

.method public getThemeManager()Lcom/nuance/swype/input/ThemeManager;
    .locals 4

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 568
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    if-nez v0, :cond_0

    .line 569
    sget-object v0, Lcom/nuance/swype/input/IMEApplication;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "creating new theme manager"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 570
    invoke-static {p0}, Lcom/nuance/swype/input/ThemeManager;->createThemeManager(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    return-object v0
.end method

.method public getThemedBoolean(I)Z
    .locals 3
    .param p1, "attrResId"    # I

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v0

    .line 2581
    iget-boolean v0, v0, Lcom/nuance/swype/plugin/ThemeLoader;->bThemeApkLoaded:Z

    .line 663
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 3032
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/util/ThemeUtil;->getBool(Landroid/content/res/TypedArray;)Z

    move-result v0

    .line 664
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/nuance/swype/plugin/ThemeLoader;->getThemedBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public getThemedColor(I)I
    .locals 3
    .param p1, "attrResId"    # I

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v0

    .line 3581
    iget-boolean v0, v0, Lcom/nuance/swype/plugin/ThemeLoader;->bThemeApkLoaded:Z

    .line 668
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 4079
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/util/ThemeUtil;->getColor(Landroid/content/res/TypedArray;)I

    move-result v0

    .line 669
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/nuance/swype/plugin/ThemeLoader;->getThemedColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public getThemedColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "attrResId"    # I

    .prologue
    const/4 v3, 0x0

    .line 673
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v0

    .line 4581
    iget-boolean v0, v0, Lcom/nuance/swype/plugin/ThemeLoader;->bThemeApkLoaded:Z

    .line 673
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getCurrentTheme()Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getResId()I

    move-result v0

    .line 5039
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/util/ThemeUtil;->getColorStateList(Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 674
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/nuance/swype/plugin/ThemeLoader;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 723
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
    .param p1, "attrResId"    # I

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v0

    .line 5581
    iget-boolean v0, v0, Lcom/nuance/swype/plugin/ThemeLoader;->bThemeApkLoaded:Z

    .line 678
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 6072
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/util/ThemeUtil;->getDimen(Landroid/content/res/TypedArray;)F

    move-result v0

    .line 679
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/nuance/swype/plugin/ThemeLoader;->getThemedDimension(I)F

    move-result v0

    goto :goto_0
.end method

.method public getThemedDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "attrResId"    # I

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v0

    .line 6581
    iget-boolean v0, v0, Lcom/nuance/swype/plugin/ThemeLoader;->bThemeApkLoaded:Z

    .line 683
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 7086
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/util/ThemeUtil;->getDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 684
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/nuance/swype/plugin/ThemeLoader;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getThemedDrawableOrNoOp(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "attr"    # I

    .prologue
    .line 696
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 697
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 699
    new-instance v0, Lcom/nuance/swype/input/IMEApplication$2;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/IMEApplication$2;-><init>(Lcom/nuance/swype/input/IMEApplication;I)V

    .line 711
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v0
.end method

.method public getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 732
    .local v0, "themedContext":Landroid/content/Context;
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 733
    return-object v1
.end method

.method public getToastContext()Landroid/content/Context;
    .locals 6

    .prologue
    .line 744
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p0}, Lcom/nuance/swype/util/ThemeUtil;->getAppThemeId(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 745
    sget v2, Lcom/nuance/swype/input/R$attr;->toastStyle:I

    sget v3, Lcom/nuance/swype/input/R$style;->ToastStyle:I

    .line 8046
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v2, v4, v5

    invoke-virtual {v1, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/nuance/swype/util/ThemeUtil;->getResId(Landroid/content/res/TypedArray;I)I

    move-result v0

    .line 746
    .local v0, "toastStyleResId":I
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v1
.end method

.method public getToolTips()Lcom/nuance/swype/input/ToolTips;
    .locals 1

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 751
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->toolTips:Lcom/nuance/swype/input/ToolTips;

    return-object v0
.end method

.method public getUpdateStatusManager()Lcom/nuance/swype/input/update/UpdateStatusManager;
    .locals 1

    .prologue
    .line 755
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 756
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->updateStatusManager:Lcom/nuance/swype/input/update/UpdateStatusManager;

    return-object v0
.end method

.method public getUsageManager()Lcom/nuance/swype/stats/UsageManager;
    .locals 1

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->usageManager:Lcom/nuance/swype/stats/UsageManager;

    return-object v0
.end method

.method public getUserPreferences()Lcom/nuance/swype/input/UserPreferences;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 586
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    return-object v0
.end method

.method public hasActiveHardKeyIMEHandlerInstance()Z
    .locals 1

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->hardKeyboardHandler:Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v0

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
    .line 518
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
    .line 1584
    iget-boolean v0, p0, Lcom/nuance/swype/input/IMEApplication;->hasMicrophone:Z

    return v0
.end method

.method public isImeInUse()Z
    .locals 1

    .prologue
    .line 1317
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isImeInUse()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLowEndDeviceBuild()Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 613
    const/4 v0, 0x0

    .line 614
    .local v0, "isLowMemoryDevice":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v1, v4, :cond_0

    .line 615
    const-string/jumbo v1, "activity"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/IMEApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 616
    invoke-virtual {v1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    .line 617
    sget-object v1, Lcom/nuance/swype/input/IMEApplication;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "isLowMemoryDevice..."

    aput-object v5, v4, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-interface {v1, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 619
    :cond_0
    iget-boolean v1, p0, Lcom/nuance/swype/input/IMEApplication;->lowEndDeviceBuild:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v1, v3

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public isMiniKeyboardSupported(I)Z
    .locals 3
    .param p1, "currentOrientation"    # I

    .prologue
    const/4 v1, 0x1

    .line 1078
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1090
    :cond_0
    :goto_0
    return v1

    .line 1080
    :cond_1
    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    .line 1086
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 1087
    .local v0, "movable":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    if-ne p1, v1, :cond_2

    .line 1088
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->isEnabled(Landroid/content/res/Resources;I)Z

    move-result v2

    if-nez v2, :cond_0

    .end local v0    # "movable":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    :cond_2
    const/4 v1, 0x0

    .line 1090
    goto :goto_0
.end method

.method public isMultipleEnabledSubtypeAvailable(I)Z
    .locals 1
    .param p1, "swypeActiveLangCount"    # I

    .prologue
    const/4 v0, 0x1

    .line 1551
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

    .line 1043
    iget-boolean v4, p0, Lcom/nuance/swype/input/IMEApplication;->tabletVerified:Z

    if-nez v4, :cond_1

    .line 1044
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1045
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-static {v0}, Lcom/nuance/android/compat/ConfigurationCompat;->getSmallestScreenWidthDp(Landroid/content/res/Configuration;)I

    move-result v1

    .line 1046
    .local v1, "swDp":I
    if-eqz v1, :cond_2

    .line 1047
    const/16 v4, 0x258

    if-lt v1, v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/nuance/swype/input/IMEApplication;->isTablet:Z

    .line 1051
    :goto_0
    iput-boolean v3, p0, Lcom/nuance/swype/input/IMEApplication;->tabletVerified:Z

    .line 1053
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "swDp":I
    :cond_1
    iget-boolean v2, p0, Lcom/nuance/swype/input/IMEApplication;->isTablet:Z

    return v2

    .line 1049
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

    .line 1057
    iget-boolean v1, p0, Lcom/nuance/swype/input/IMEApplication;->phabletVerified:Z

    if-nez v1, :cond_1

    .line 1058
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1059
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_LEFT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 1060
    .local v0, "leftMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->isEnabled(Landroid/content/res/Resources;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1062
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->isEnabled(Landroid/content/res/Resources;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1063
    iput-boolean v3, p0, Lcom/nuance/swype/input/IMEApplication;->isPhablet:Z

    .line 1066
    .end local v0    # "leftMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    :cond_0
    iput-boolean v3, p0, Lcom/nuance/swype/input/IMEApplication;->phabletVerified:Z

    .line 1068
    :cond_1
    iget-boolean v1, p0, Lcom/nuance/swype/input/IMEApplication;->isPhablet:Z

    return v1
.end method

.method public isSmallImageCacheDevice()Z
    .locals 5

    .prologue
    .line 623
    const/4 v0, 0x0

    .line 624
    .local v0, "isSmallCache":Z
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getMaxMemoryInMegaBytes()I

    move-result v1

    const/16 v2, 0x80

    if-gt v1, v2, :cond_0

    .line 625
    const/4 v0, 0x1

    .line 627
    :cond_0
    sget-object v1, Lcom/nuance/swype/input/IMEApplication;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "isSmallImageCacheDevice..."

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 628
    return v0
.end method

.method public isThemeChanged()Z
    .locals 2

    .prologue
    .line 1416
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

.method public isTrialExpired()Z
    .locals 2

    .prologue
    .line 1820
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    .line 1822
    .local v0, "buildInfo":Lcom/nuance/swype/input/BuildInfo;
    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->isTrialBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1823
    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->updateExpirationPeriod()V

    .line 1824
    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->isTrialPeriodExpired()Z

    move-result v1

    .line 1826
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUserTapKey()Z
    .locals 1

    .prologue
    .line 1812
    iget-boolean v0, p0, Lcom/nuance/swype/input/IMEApplication;->isUserTapKey:Z

    return v0
.end method

.method public isUserUnlockFinished()Z
    .locals 1

    .prologue
    .line 1849
    iget-boolean v0, p0, Lcom/nuance/swype/input/IMEApplication;->isUserUnlockFinished:Z

    return v0
.end method

.method public isWCLMessage()Z
    .locals 1

    .prologue
    .line 1804
    iget-boolean v0, p0, Lcom/nuance/swype/input/IMEApplication;->isWCLMessage:Z

    return v0
.end method

.method public newSpeechWrapperInstance()Lcom/nuance/swype/input/SpeechWrapper;
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->speechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-nez v0, :cond_0

    .line 1275
    new-instance v0, Lcom/nuance/swype/input/SpeechWrapper;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/SpeechWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->speechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    .line 1276
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->speechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->onCreate()V

    .line 1279
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->speechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    return-object v0
.end method

.method public notifyLanguageInstalled(Ljava/lang/String;I)V
    .locals 0
    .param p1, "langName"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 1556
    return-void
.end method

.method public notifyNewWordsForScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V
    .locals 1
    .param p1, "bucket"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 908
    .local v0, "imeLocal":Lcom/nuance/swype/input/IME;
    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/IME;->startDelayScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V

    .line 911
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1447
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1448
    invoke-static {}, Lcom/nuance/android/util/ThemedResources;->onConfigChanged()V

    .line 9023
    sget-boolean v0, Lcom/nuance/swype/util/AdsUtil;->sAdsSupported:Z

    .line 1449
    if-eqz v0, :cond_0

    .line 1450
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getAdSessionTracker()Lcom/nuance/swype/input/ads/BillboardSessionTracker;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->setScreenOrientation(I)V

    .line 1452
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 240
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 242
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/usagedata/UsageData;->init(Landroid/content/Context;)V

    .line 247
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/EmojiLoader;->init(Landroid/content/Context;)V

    .line 249
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->isDTCbuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const/4 v0, 0x1

    new-array v0, v0, [Lio/fabric/sdk/android/Kit;

    new-instance v1, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v1}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 254
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->androidDefaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 255
    new-instance v0, Lcom/nuance/swype/input/IMEApplication$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/IMEApplication$1;-><init>(Lcom/nuance/swype/input/IMEApplication;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 273
    invoke-static {p0}, Lcom/nuance/android/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    iput-boolean v2, p0, Lcom/nuance/swype/input/IMEApplication;->isUserUnlockFinished:Z

    .line 276
    :cond_1
    return-void
.end method

.method public onImeInUse(Z)V
    .locals 1
    .param p1, "inUse"    # Z

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->imeSubject:Lcom/nuance/swype/util/Subject;

    invoke-virtual {v0}, Lcom/nuance/swype/util/Subject;->doNotify()V

    .line 1322
    return-void
.end method

.method public onPostInstallLanguage(Ljava/lang/String;)V
    .locals 7
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 793
    iget-object v5, p0, Lcom/nuance/swype/input/IMEApplication;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/nuance/swype/input/IMEApplication;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 794
    invoke-virtual {v5, p1}, Lcom/nuance/swype/input/InputMethods$Language;->usesLanguage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    .line 795
    :goto_0
    if-nez v5, :cond_2

    .line 814
    :cond_0
    :goto_1
    return-void

    .line 794
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 798
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods;->getAllLanguages()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/InputMethods$Language;

    .line 799
    .local v4, "installLang":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 800
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v1

    .line 801
    .local v1, "coreLangId":I
    iget-object v5, p0, Lcom/nuance/swype/input/IMEApplication;->swypeCoreLibMgr:Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    invoke-virtual {v5}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v2

    .line 802
    .local v2, "corelib":Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v3

    .line 803
    .local v3, "im":Lcom/nuance/swype/input/InputMethods;
    if-eqz v3, :cond_0

    .line 804
    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getChineseCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->hasInputContext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 805
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v5

    .line 806
    invoke-virtual {v5}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreChineseInputSession()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    .line 807
    .local v0, "chineseInput":Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->startSession()V

    .line 808
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    .line 810
    .end local v0    # "chineseInput":Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    :cond_3
    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getChineseCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v5

    .line 811
    invoke-virtual {v5, v1, v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->onPostInstallLanguage(IZ)Z

    goto :goto_1
.end method

.method public onPreInstallLanguage(Ljava/lang/String;)V
    .locals 7
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 768
    iget-object v5, p0, Lcom/nuance/swype/input/IMEApplication;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/nuance/swype/input/IMEApplication;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 769
    invoke-virtual {v5, p1}, Lcom/nuance/swype/input/InputMethods$Language;->usesLanguage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    .line 770
    :goto_0
    if-nez v5, :cond_2

    .line 790
    :cond_0
    :goto_1
    return-void

    .line 769
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 773
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods;->getAllLanguages()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/InputMethods$Language;

    .line 774
    .local v4, "installLang":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 776
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v1

    .line 777
    .local v1, "coreLangId":I
    iget-object v5, p0, Lcom/nuance/swype/input/IMEApplication;->swypeCoreLibMgr:Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    invoke-virtual {v5}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v2

    .line 778
    .local v2, "corelib":Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v3

    .line 779
    .local v3, "im":Lcom/nuance/swype/input/InputMethods;
    if-eqz v3, :cond_0

    .line 780
    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getChineseCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->hasInputContext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 781
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v5

    .line 782
    invoke-virtual {v5}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreChineseInputSession()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    .line 783
    .local v0, "chineseInput":Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->startSession()V

    .line 784
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    .line 786
    .end local v0    # "chineseInput":Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    :cond_3
    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getChineseCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v5

    .line 787
    invoke-virtual {v5, v1, v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->onPreInstallLanguage(IZ)Z

    goto :goto_1
.end method

.method public onUpdateLanguage(Ljava/lang/String;)V
    .locals 5
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 817
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods;->getAllLanguages()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/InputMethods$Language;

    .line 819
    .local v3, "updateLang":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v3, :cond_0

    .line 821
    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 822
    invoke-virtual {v4, p1}, Lcom/nuance/swype/input/InputMethods$Language;->usesLanguage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 823
    .local v2, "isCurrentLanguage":Z
    :goto_0
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v0

    .line 825
    .local v0, "coreLangId":I
    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->swypeCoreLibMgr:Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    invoke-virtual {v4}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v1

    .line 827
    .local v1, "corelib":Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isChineseInputHasContext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 828
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getChineseCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->onUpdateLanguage(IZ)Z

    .line 840
    .end local v0    # "coreLangId":I
    .end local v1    # "corelib":Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
    .end local v2    # "isCurrentLanguage":Z
    :cond_0
    :goto_1
    return-void

    .line 822
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 830
    .restart local v0    # "coreLangId":I
    .restart local v1    # "corelib":Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
    .restart local v2    # "isCurrentLanguage":Z
    :cond_2
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isKoreanInputHasContext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 831
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getAlphaCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getKoreanCoreInstance(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;)Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->onUpdateLanguage(IZ)Z

    goto :goto_1

    .line 833
    :cond_3
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isJapaneseInputHasContext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 834
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getAlphaCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getJapaneseCoreInstance(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;)Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->onUpdateLanguage(IZ)Z

    goto :goto_1

    .line 836
    :cond_4
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isAlphaInputHasContext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 837
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getAlphaCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->onUpdateLanguage(IZ)Z

    goto :goto_1
.end method

.method public postUserUnlock()V
    .locals 2

    .prologue
    .line 1858
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->updatePreferencesConfig()V

    .line 1859
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/connect/Connect;->setContext(Landroid/content/Context;)V

    .line 1860
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->startCreatorThread()V

    .line 1861
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isUsageCollectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1862
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->isUsageCollectionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/Connect;->setContributeUsageData(Z)V

    .line 1865
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->mCatalogManager:Lcom/nuance/swype/inapp/CatalogManager;

    .line 12607
    iput-object p0, v0, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    .line 1866
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/ThemeManager;->setThemeManagerContext(Landroid/content/Context;)V

    .line 1868
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->getBuildDate()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/nuance/swype/input/DatabaseConfig;->refreshDatabaseConfig(Landroid/content/Context;J)V

    .line 1869
    invoke-static {p0}, Lcom/nuance/swype/input/DatabaseConfig;->refreshDatabaseConfigInJNI(Landroid/content/Context;)V

    .line 1872
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getEmojiInputViewController()Lcom/nuance/swype/input/emoji/EmojiInputController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/EmojiInputController;->setContext(Landroid/content/Context;)V

    .line 1874
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->refreshInputMethods()V

    .line 1876
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/IMEApplication;->setUserUnlockFinished(Z)V

    .line 1877
    return-void
.end method

.method public refreshInputMethods()V
    .locals 1

    .prologue
    .line 764
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods(Z)Lcom/nuance/swype/input/InputMethods;

    .line 765
    return-void
.end method

.method public registerContextObserver(Lcom/nuance/swype/util/Observer;)V
    .locals 1
    .param p1, "o"    # Lcom/nuance/swype/util/Observer;

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->statsContext:Lcom/nuance/swype/util/Subject;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/util/Subject;->addObserver(Lcom/nuance/swype/util/Observer;)V

    .line 1199
    return-void
.end method

.method public registerImeObserver(Lcom/nuance/swype/util/Observer;)V
    .locals 1
    .param p1, "observer"    # Lcom/nuance/swype/util/Observer;

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->imeSubject:Lcom/nuance/swype/util/Subject;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/util/Subject;->addObserver(Lcom/nuance/swype/util/Observer;)V

    .line 1326
    return-void
.end method

.method public releaseBillboardManager()V
    .locals 1

    .prologue
    .line 1661
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->mBillboardManager:Lcom/nuance/swype/input/ads/BillboardManager;

    .line 1662
    return-void
.end method

.method public releaseInstances()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 590
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->drawBufferManager:Lcom/nuance/swype/input/DrawBufferManager;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->drawBufferManager:Lcom/nuance/swype/input/DrawBufferManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/DrawBufferManager;->evictAll()V

    .line 592
    iput-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->drawBufferManager:Lcom/nuance/swype/input/DrawBufferManager;

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->keyboardManager:Lcom/nuance/swype/input/KeyboardManager;

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->keyboardManager:Lcom/nuance/swype/input/KeyboardManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardManager;->evictAll()V

    .line 596
    iput-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->keyboardManager:Lcom/nuance/swype/input/KeyboardManager;

    .line 599
    :cond_1
    iput-object v1, p0, Lcom/nuance/swype/input/IMEApplication;->themeLoader:Lcom/nuance/swype/plugin/ThemeLoader;

    .line 600
    return-void
.end method

.method public resetScrapperStatus()V
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->scraperStatusFactory:Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->scraperStatusFactory:Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;

    invoke-virtual {v0, p0}, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->reset(Landroid/content/Context;)V

    .line 901
    :cond_0
    return-void
.end method

.method public resetThemeManagedData()V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager;->clearCache()V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->themeLoader:Lcom/nuance/swype/plugin/ThemeLoader;

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->themeLoader:Lcom/nuance/swype/plugin/ThemeLoader;

    invoke-virtual {v0}, Lcom/nuance/swype/plugin/ThemeLoader;->clear()V

    .line 609
    :cond_1
    return-void
.end method

.method public setCurrentApplicationName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/nuance/swype/input/IMEApplication;->currentAppName:Ljava/lang/String;

    .line 1161
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->statsContext:Lcom/nuance/swype/util/Subject;

    invoke-virtual {v0}, Lcom/nuance/swype/util/Subject;->doNotify()V

    .line 1162
    return-void
.end method

.method public setCurrentFieldInfo(I)V
    .locals 1
    .param p1, "info"    # I

    .prologue
    .line 1172
    iput p1, p0, Lcom/nuance/swype/input/IMEApplication;->currentFieldInfo:I

    .line 1173
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->statsContext:Lcom/nuance/swype/util/Subject;

    invoke-virtual {v0}, Lcom/nuance/swype/util/Subject;->doNotify()V

    .line 1174
    return-void
.end method

.method public setCurrentLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 5
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 1165
    iput-object p1, p0, Lcom/nuance/swype/input/IMEApplication;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 1166
    sget-object v0, Lcom/nuance/swype/input/IMEApplication;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "IMEApplication.currentLanguage:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1167
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/Connect;->setCurrentLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 1168
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->statsContext:Lcom/nuance/swype/util/Subject;

    invoke-virtual {v0}, Lcom/nuance/swype/util/Subject;->doNotify()V

    .line 1169
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1206
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 1207
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isDeviceTypeRecorded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/UserPreferences;->setDeviceType(Z)V

    .line 1210
    :cond_0
    return-void
.end method

.method public setIME(Lcom/nuance/swype/input/IME;)V
    .locals 0
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 483
    iput-object p1, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    .line 484
    return-void
.end method

.method public setInputCategory(II)V
    .locals 1
    .param p1, "category"    # I
    .param p2, "language"    # I

    .prologue
    .line 1340
    if-eqz p1, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->categoryMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1342
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->statsContext:Lcom/nuance/swype/util/Subject;

    invoke-virtual {v0}, Lcom/nuance/swype/util/Subject;->doNotify()V

    .line 1344
    :cond_0
    return-void
.end method

.method public setScribeFilter(Lcom/nuance/swype/stats/ScribeFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/nuance/swype/stats/ScribeFilter;

    .prologue
    .line 1189
    iput-object p1, p0, Lcom/nuance/swype/input/IMEApplication;->scribeFilter:Lcom/nuance/swype/stats/ScribeFilter;

    .line 1190
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->statsContext:Lcom/nuance/swype/util/Subject;

    invoke-virtual {v0}, Lcom/nuance/swype/util/Subject;->doNotify()V

    .line 1191
    return-void
.end method

.method public setUserTapKey(Z)V
    .locals 0
    .param p1, "userTapKey"    # Z

    .prologue
    .line 1816
    iput-boolean p1, p0, Lcom/nuance/swype/input/IMEApplication;->isUserTapKey:Z

    .line 1817
    return-void
.end method

.method public setUserUnlockFinished(Z)V
    .locals 0
    .param p1, "userUnlockFinished"    # Z

    .prologue
    .line 1853
    iput-boolean p1, p0, Lcom/nuance/swype/input/IMEApplication;->isUserUnlockFinished:Z

    .line 1854
    return-void
.end method

.method public setWCLMessage(Z)V
    .locals 0
    .param p1, "WCLMessage"    # Z

    .prologue
    .line 1808
    iput-boolean p1, p0, Lcom/nuance/swype/input/IMEApplication;->isWCLMessage:Z

    .line 1809
    return-void
.end method

.method public showAddonDictionaries()V
    .locals 1

    .prologue
    .line 1026
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/IMEApplication;->showAddonDictionaries(Z)V

    .line 1027
    return-void
.end method

.method public showAddonDictionaries(Z)V
    .locals 1
    .param p1, "shouldClearPreviousTask"    # Z

    .prologue
    .line 1030
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 1031
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSettingsLauncher()Lcom/nuance/swype/input/settings/ShowSettings;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/nuance/swype/input/settings/ShowSettings;->showAddonDictionaries(Landroid/content/Context;Z)V

    .line 1032
    return-void
.end method

.method public showChineseSettings()V
    .locals 1

    .prologue
    .line 1038
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 1039
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSettingsLauncher()Lcom/nuance/swype/input/settings/ShowSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/nuance/swype/input/settings/ShowSettings;->showChineseSettings(Landroid/content/Context;)V

    .line 1040
    return-void
.end method

.method public showGestures()V
    .locals 1

    .prologue
    .line 978
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 979
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSettingsLauncher()Lcom/nuance/swype/input/settings/ShowSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/nuance/swype/input/settings/ShowSettings;->showGestures(Landroid/content/Context;)V

    .line 980
    return-void
.end method

.method public showLanguageDownloads()V
    .locals 1

    .prologue
    .line 994
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 995
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSettingsLauncher()Lcom/nuance/swype/input/settings/ShowSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/nuance/swype/input/settings/ShowSettings;->showLanguageDownloads(Landroid/content/Context;)V

    .line 996
    return-void
.end method

.method public showLanguages()V
    .locals 1

    .prologue
    .line 986
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 987
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSettingsLauncher()Lcom/nuance/swype/input/settings/ShowSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/nuance/swype/input/settings/ShowSettings;->showLanguages(Landroid/content/Context;)V

    .line 988
    return-void
.end method

.method public showMainSettings()V
    .locals 1

    .prologue
    .line 952
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 954
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSettingsLauncher()Lcom/nuance/swype/input/settings/ShowSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/nuance/swype/input/settings/ShowSettings;->showMain(Landroid/content/Context;)V

    .line 955
    return-void
.end method

.method public showMyWordsPrefs()V
    .locals 1

    .prologue
    .line 1002
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 1003
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSettingsLauncher()Lcom/nuance/swype/input/settings/ShowSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/nuance/swype/input/settings/ShowSettings;->showMyWordsPrefs(Landroid/content/Context;)V

    .line 1004
    return-void
.end method

.method public showSettingsPrefs()V
    .locals 1

    .prologue
    .line 962
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 963
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSettingsLauncher()Lcom/nuance/swype/input/settings/ShowSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/nuance/swype/input/settings/ShowSettings;->showSettingsPrefs(Landroid/content/Context;)V

    .line 964
    return-void
.end method

.method public showThemes()V
    .locals 1

    .prologue
    .line 1018
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 1019
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSettingsLauncher()Lcom/nuance/swype/input/settings/ShowSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/nuance/swype/input/settings/ShowSettings;->showThemes(Landroid/content/Context;)V

    .line 1020
    return-void
.end method

.method public showTutorial()V
    .locals 1

    .prologue
    .line 970
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 971
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSettingsLauncher()Lcom/nuance/swype/input/settings/ShowSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/nuance/swype/input/settings/ShowSettings;->showTutorial(Landroid/content/Context;)V

    .line 972
    return-void
.end method

.method public showUpdates()V
    .locals 1

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->checkCreate()V

    .line 1011
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSettingsLauncher()Lcom/nuance/swype/input/settings/ShowSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/nuance/swype/input/settings/ShowSettings;->showUpdates(Landroid/content/Context;)V

    .line 1012
    return-void
.end method

.method protected startScraperAndroidDictionary()V
    .locals 3

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getSyncDataProviderManager()Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    move-result-object v0

    new-instance v1, Lcom/nuance/swype/input/udb/sync/AndroidUserDictionarySyncDataProvider;

    .line 934
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->getNewWordsBucketFactory()Lcom/nuance/swype/input/udb/NewWordsBucketFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->getAndroidNewWordsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/nuance/swype/input/udb/sync/AndroidUserDictionarySyncDataProvider;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V

    .line 932
    invoke-virtual {v0, p0, v1}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->addProvider(Landroid/content/Context;Lcom/nuance/swype/input/udb/sync/SyncDataProvider;)V

    .line 935
    return-void
.end method

.method public startScrapingServices()V
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->syncDataProviderManager:Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    if-eqz v0, :cond_0

    .line 925
    :goto_0
    return-void

    .line 922
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->createSyncDataProviderManager()Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    .line 923
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->startScraperAndroidDictionary()V

    goto :goto_0
.end method

.method public statsSettingChanged()V
    .locals 1

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->reloadKeyboard()V

    .line 1366
    :cond_0
    return-void
.end method

.method public unregisterContextObserver(Lcom/nuance/swype/util/Observer;)V
    .locals 1
    .param p1, "o"    # Lcom/nuance/swype/util/Observer;

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->statsContext:Lcom/nuance/swype/util/Subject;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/util/Subject;->removeObserver(Lcom/nuance/swype/util/Observer;)V

    .line 1203
    return-void
.end method

.method public unregisterImeObserver(Lcom/nuance/swype/util/Observer;)V
    .locals 1
    .param p1, "observer"    # Lcom/nuance/swype/util/Observer;

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/nuance/swype/input/IMEApplication;->imeSubject:Lcom/nuance/swype/util/Subject;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/util/Subject;->removeObserver(Lcom/nuance/swype/util/Observer;)V

    .line 1330
    return-void
.end method

.method public updateCustomDimensions()V
    .locals 22

    .prologue
    .line 1686
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IMEApplication;->getCurrentTheme()Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v14

    .line 1688
    .local v14, "themeSku":Ljava/lang/String;
    invoke-static {v14}, Lcom/nuance/swype/util/StringUtils;->isApkCompletePath(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 1690
    const-string/jumbo v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1691
    .local v13, "themePath":[Ljava/lang/String;
    if-eqz v13, :cond_0

    array-length v0, v13

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_0

    .line 1692
    array-length v0, v13

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x2

    aget-object v14, v13, v16

    .line 1696
    .end local v13    # "themePath":[Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    move-object/from16 v0, v16

    iget v12, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1698
    .local v12, "orientation":I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IMEApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/AppPreferences;->getChineseCloudNetworkOption()Ljava/lang/String;

    move-result-object v2

    .line 1701
    .local v2, "cloudOpt":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 1702
    :cond_1
    const-string/jumbo v3, "chinese_cloud_diabled"

    .line 1707
    .local v3, "cloudSetting":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nuance/swype/input/IMEApplication;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 1710
    .local v9, "language":Lcom/nuance/swype/input/InputMethods$Language;
    if-nez v9, :cond_2

    .line 1711
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/InputMethods;->syncWithCurrentUserConfiguration()V

    .line 1712
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v9

    .line 1715
    :cond_2
    if-eqz v9, :cond_14

    .line 1716
    iget-object v0, v9, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 9088
    sget-object v17, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->KEYBOARD_LANGUAGE:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/nuance/swype/usagedata/UsageData;->setCustomDimension(Lcom/nuance/swype/usagedata/CustomDimension$Dimension;Ljava/lang/String;)V

    .line 1717
    instance-of v0, v9, Lcom/nuance/swype/input/BilingualLanguage;

    move/from16 v16, v0

    if-nez v16, :cond_3

    .line 1718
    invoke-virtual {v9}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v16

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/UserPreferences;->getEnableChineseBilingual()Z

    move-result v16

    if-eqz v16, :cond_8

    :cond_3
    const/16 v16, 0x1

    .line 9109
    :goto_1
    sget-object v17, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->BILINGUAL:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    invoke-static/range {v16 .. v16}, Lcom/nuance/swype/usagedata/CustomDimension;->isEnabled(Z)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/nuance/swype/usagedata/UsageData;->setCustomDimension(Lcom/nuance/swype/usagedata/CustomDimension$Dimension;Ljava/lang/String;)V

    .line 1722
    const/4 v8, 0x0

    .line 1723
    .local v8, "keyboardLayout":Ljava/lang/String;
    new-instance v4, Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1724
    .local v4, "config":Landroid/content/res/Configuration;
    new-instance v16, Ljava/util/Locale;

    const-string/jumbo v17, "en"

    invoke-direct/range {v16 .. v17}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 1725
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1727
    .local v5, "englishRes":Landroid/content/res/Resources;
    invoke-virtual {v9}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/InputMethods$InputMode;->getDisplayInputModeID()I

    move-result v7

    .line 1728
    .local v7, "inputModeNameResId":I
    invoke-virtual {v9}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/InputMethods$Layout;->getDisplayLayoutNameID()I

    move-result v11

    .line 1730
    .local v11, "layoutNameResId":I
    if-lez v7, :cond_4

    .line 1731
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1732
    .local v6, "inputMode":Ljava/lang/String;
    sget-object v16, Lcom/nuance/swype/input/IMEApplication;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "updateCustomDimensions: inputModeNameResId "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-interface/range {v16 .. v17}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1735
    sget v16, Lcom/nuance/swype/input/R$string;->full_keyboard:I

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 1736
    move-object v8, v6

    .line 1740
    .end local v6    # "inputMode":Ljava/lang/String;
    :cond_4
    if-lez v11, :cond_5

    .line 1741
    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1742
    .local v10, "layoutName":Ljava/lang/String;
    sget-object v16, Lcom/nuance/swype/input/IMEApplication;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "updateCustomDimensions: layoutNameResId "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-interface/range {v16 .. v17}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1745
    sget v16, Lcom/nuance/swype/input/R$string;->full_keyboard:I

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 1746
    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1750
    .end local v10    # "layoutName":Ljava/lang/String;
    :cond_5
    if-nez v8, :cond_6

    .line 1752
    invoke-virtual {v9}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/InputMethods$InputMode;->getDisplayInputMode()Ljava/lang/String;

    move-result-object v8

    .line 1753
    sget-object v16, Lcom/nuance/swype/input/IMEApplication;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "updateCustomDimensions: getDisplayInputMode "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-interface/range {v16 .. v17}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1756
    :cond_6
    sget-object v16, Lcom/nuance/swype/input/IMEApplication;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "updateCustomDimensions: keyboardLayout final "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-interface/range {v16 .. v17}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 10097
    sget-object v16, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->KEYBOARD_LAYOUT:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    move-object/from16 v0, v16

    invoke-static {v0, v8}, Lcom/nuance/swype/usagedata/UsageData;->setCustomDimension(Lcom/nuance/swype/usagedata/CustomDimension$Dimension;Ljava/lang/String;)V

    .line 1760
    invoke-virtual {v9}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage(I)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 1761
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getChineseCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->dlmCount()I

    move-result v15

    .line 1763
    .local v15, "wordCount":I
    :goto_2
    sget-object v16, Lcom/nuance/swype/input/IMEApplication;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "updateCustomDimensions: wordCount "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-interface/range {v16 .. v17}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 10166
    sget-object v17, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->DICTIONARY_WORDS:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    .line 10195
    if-gtz v15, :cond_a

    .line 10196
    const-string/jumbo v16, "0"

    .line 10166
    :goto_3
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/nuance/swype/usagedata/UsageData;->setCustomDimension(Lcom/nuance/swype/usagedata/CustomDimension$Dimension;Ljava/lang/String;)V

    .line 1770
    .end local v4    # "config":Landroid/content/res/Configuration;
    .end local v5    # "englishRes":Landroid/content/res/Resources;
    .end local v7    # "inputModeNameResId":I
    .end local v8    # "keyboardLayout":Ljava/lang/String;
    .end local v11    # "layoutNameResId":I
    .end local v15    # "wordCount":I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v16

    if-eqz v16, :cond_15

    sget-object v16, Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;->TABLET:Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;

    .line 11092
    :goto_5
    sget-object v17, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->DEVICE_TYPE:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    if-nez v16, :cond_16

    const-string/jumbo v16, "Not Available"

    :goto_6
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/nuance/swype/usagedata/UsageData;->setCustomDimension(Lcom/nuance/swype/usagedata/CustomDimension$Dimension;Ljava/lang/String;)V

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode(I)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->name()Ljava/lang/String;

    move-result-object v16

    .line 11101
    sget-object v17, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->ABC_KEYBOARD_MODE:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/nuance/swype/usagedata/UsageData;->setCustomDimension(Lcom/nuance/swype/usagedata/CustomDimension$Dimension;Ljava/lang/String;)V

    .line 11105
    sget-object v16, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->THEME_NAME:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    move-object/from16 v0, v16

    invoke-static {v0, v14}, Lcom/nuance/swype/usagedata/UsageData;->setCustomDimension(Lcom/nuance/swype/usagedata/CustomDimension$Dimension;Ljava/lang/String;)V

    .line 1775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/UserPreferences;->getAutoCorrection()Z

    move-result v16

    .line 11113
    sget-object v17, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->AUTO_CORRECT:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    invoke-static/range {v16 .. v16}, Lcom/nuance/swype/usagedata/CustomDimension;->isEnabled(Z)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/nuance/swype/usagedata/UsageData;->setCustomDimension(Lcom/nuance/swype/usagedata/CustomDimension$Dimension;Ljava/lang/String;)V

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/UserPreferences;->getShowNumberRow()Z

    move-result v16

    .line 11117
    sget-object v17, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->NUMBER_ROW:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    invoke-static/range {v16 .. v16}, Lcom/nuance/swype/usagedata/CustomDimension;->isEnabled(Z)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/nuance/swype/usagedata/UsageData;->setCustomDimension(Lcom/nuance/swype/usagedata/CustomDimension$Dimension;Ljava/lang/String;)V

    .line 1777
    sget-object v16, Lcom/nuance/swype/input/IMEApplication;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string/jumbo v19, "showNumberRow: "

    aput-object v19, v17, v18

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/input/UserPreferences;->getShowNumberRow()Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-interface/range {v16 .. v17}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardHideSecondaries()Z

    move-result v16

    if-nez v16, :cond_17

    const/16 v16, 0x1

    .line 11121
    :goto_7
    sget-object v17, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->SECONDARY_ENABLED:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    invoke-static/range {v16 .. v16}, Lcom/nuance/swype/usagedata/CustomDimension;->isEnabled(Z)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/nuance/swype/usagedata/UsageData;->setCustomDimension(Lcom/nuance/swype/usagedata/CustomDimension$Dimension;Ljava/lang/String;)V

    .line 1779
    sget-object v17, Lcom/nuance/swype/input/IMEApplication;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v16, 0x0

    const-string/jumbo v19, "secondaryKeys: "

    aput-object v19, v18, v16

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardHideSecondaries()Z

    move-result v16

    if-nez v16, :cond_18

    const/16 v16, 0x1

    :goto_8
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v18, v19

    invoke-interface/range {v17 .. v18}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1780
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IMEApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    .line 11125
    sget-object v17, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->PACKAGE_ID:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/nuance/swype/usagedata/UsageData;->setCustomDimension(Lcom/nuance/swype/usagedata/CustomDimension$Dimension;Ljava/lang/String;)V

    .line 1781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/UserPreferences;->isHandwritingEnabled()Z

    move-result v16

    .line 11129
    sget-object v17, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->ENABLE_HWR:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    invoke-static/range {v16 .. v16}, Lcom/nuance/swype/usagedata/CustomDimension;->isEnabled(Z)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/nuance/swype/usagedata/UsageData;->setCustomDimension(Lcom/nuance/swype/usagedata/CustomDimension$Dimension;Ljava/lang/String;)V

    .line 1782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScalePortrait()F

    move-result v16

    .line 11133
    sget-object v17, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->KB_HEIGHT_PORTRAIT:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v19, 0x42c80000    # 100.0f

    mul-float v16, v16, v19

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v18, "%"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/nuance/swype/usagedata/UsageData;->setCustomDimension(Lcom/nuance/swype/usagedata/CustomDimension$Dimension;Ljava/lang/String;)V

    .line 1783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScaleLandscape()F

    move-result v16

    .line 11137
    sget-object v17, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->KB_HEIGHT_LANDSCAPE:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v19, 0x42c80000    # 100.0f

    mul-float v16, v16, v19

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v18, "%"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/nuance/swype/usagedata/UsageData;->setCustomDimension(Lcom/nuance/swype/usagedata/CustomDimension$Dimension;Ljava/lang/String;)V

    .line 1784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/UserPreferences;->getAskBeforeAdd()Z

    move-result v16

    if-eqz v16, :cond_19

    sget-object v16, Lcom/nuance/swype/usagedata/CustomDimension$DictionaryBehavior;->MANUAL:Lcom/nuance/swype/usagedata/CustomDimension$DictionaryBehavior;

    .line 11141
    :goto_9
    sget-object v17, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->DICTIONARY_BEHAVIOR:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    if-nez v16, :cond_1a

    const/16 v16, 0x0

    :goto_a
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/nuance/swype/usagedata/UsageData;->setCustomDimension(Lcom/nuance/swype/usagedata/CustomDimension$Dimension;Ljava/lang/String;)V

    .line 1787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/UserPreferences;->isKeySoundOn()Z

    move-result v16

    .line 11146
    sget-object v17, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->SOUND_ON_KEYPRESS:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    invoke-static/range {v16 .. v16}, Lcom/nuance/swype/usagedata/CustomDimension;->isEnabled(Z)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/nuance/swype/usagedata/UsageData;->setCustomDimension(Lcom/nuance/swype/usagedata/CustomDimension$Dimension;Ljava/lang/String;)V

    .line 1788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/UserPreferences;->isNextWordPredictionEnabled()Z

    move-result v16

    .line 11150
    sget-object v17, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->NEXT_WORD_PREDICTION:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    invoke-static/range {v16 .. v16}, Lcom/nuance/swype/usagedata/CustomDimension;->isEnabled(Z)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/nuance/swype/usagedata/UsageData;->setCustomDimension(Lcom/nuance/swype/usagedata/CustomDimension$Dimension;Ljava/lang/String;)V

    .line 1789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/UserPreferences;->getLongPressDelay()I

    move-result v16

    .line 11154
    sget-object v17, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->LONG_PRESS_DELAY:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 11177
    const-wide/16 v20, 0x0

    cmp-long v16, v18, v20

    if-ltz v16, :cond_1b

    const-wide/16 v20, 0xc8

    cmp-long v16, v18, v20

    if-gtz v16, :cond_1b

    .line 11178
    const-string/jumbo v16, "0-200ms"

    .line 11154
    :goto_b
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/nuance/swype/usagedata/UsageData;->setCustomDimension(Lcom/nuance/swype/usagedata/CustomDimension$Dimension;Ljava/lang/String;)V

    .line 1790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/UserPreferences;->isEmojiSuggestionsEnabled()Z

    move-result v16

    .line 12158
    sget-object v17, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->EMOJI_PREDICTION:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    invoke-static/range {v16 .. v16}, Lcom/nuance/swype/usagedata/CustomDimension;->isEnabled(Z)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/nuance/swype/usagedata/UsageData;->setCustomDimension(Lcom/nuance/swype/usagedata/CustomDimension$Dimension;Ljava/lang/String;)V

    .line 12162
    sget-object v16, Lcom/nuance/swype/usagedata/CustomDimension$Dimension;->CLOUD_INPUT:Lcom/nuance/swype/usagedata/CustomDimension$Dimension;

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/nuance/swype/usagedata/UsageData;->setCustomDimension(Lcom/nuance/swype/usagedata/CustomDimension$Dimension;Ljava/lang/String;)V

    .line 1792
    return-void

    .line 1704
    .end local v3    # "cloudSetting":Ljava/lang/String;
    .end local v9    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_7
    move-object v3, v2

    .restart local v3    # "cloudSetting":Ljava/lang/String;
    goto/16 :goto_0

    .line 1718
    .restart local v9    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1762
    .restart local v4    # "config":Landroid/content/res/Configuration;
    .restart local v5    # "englishRes":Landroid/content/res/Resources;
    .restart local v7    # "inputModeNameResId":I
    .restart local v8    # "keyboardLayout":Ljava/lang/String;
    .restart local v11    # "layoutNameResId":I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getAlphaCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmCount()I

    move-result v15

    goto/16 :goto_2

    .line 10197
    .restart local v15    # "wordCount":I
    :cond_a
    const/16 v16, 0xa

    move/from16 v0, v16

    if-gt v15, v0, :cond_b

    .line 10198
    const-string/jumbo v16, "1-10"

    goto/16 :goto_3

    .line 10199
    :cond_b
    const/16 v16, 0x19

    move/from16 v0, v16

    if-gt v15, v0, :cond_c

    .line 10200
    const-string/jumbo v16, "11-25"

    goto/16 :goto_3

    .line 10201
    :cond_c
    const/16 v16, 0x4b

    move/from16 v0, v16

    if-gt v15, v0, :cond_d

    .line 10202
    const-string/jumbo v16, "26-75"

    goto/16 :goto_3

    .line 10203
    :cond_d
    const/16 v16, 0x7d

    move/from16 v0, v16

    if-gt v15, v0, :cond_e

    .line 10204
    const-string/jumbo v16, "76-125"

    goto/16 :goto_3

    .line 10205
    :cond_e
    const/16 v16, 0xc8

    move/from16 v0, v16

    if-gt v15, v0, :cond_f

    .line 10206
    const-string/jumbo v16, "126-200"

    goto/16 :goto_3

    .line 10207
    :cond_f
    const/16 v16, 0x190

    move/from16 v0, v16

    if-gt v15, v0, :cond_10

    .line 10208
    const-string/jumbo v16, "201-400"

    goto/16 :goto_3

    .line 10209
    :cond_10
    const/16 v16, 0x258

    move/from16 v0, v16

    if-gt v15, v0, :cond_11

    .line 10210
    const-string/jumbo v16, "401-600"

    goto/16 :goto_3

    .line 10211
    :cond_11
    const/16 v16, 0x320

    move/from16 v0, v16

    if-gt v15, v0, :cond_12

    .line 10212
    const-string/jumbo v16, "601-800"

    goto/16 :goto_3

    .line 10213
    :cond_12
    const/16 v16, 0x3e8

    move/from16 v0, v16

    if-gt v15, v0, :cond_13

    .line 10214
    const-string/jumbo v16, "801-1000"

    goto/16 :goto_3

    .line 10216
    :cond_13
    const-string/jumbo v16, "1000+"

    goto/16 :goto_3

    .line 1767
    .end local v4    # "config":Landroid/content/res/Configuration;
    .end local v5    # "englishRes":Landroid/content/res/Resources;
    .end local v7    # "inputModeNameResId":I
    .end local v8    # "keyboardLayout":Ljava/lang/String;
    .end local v11    # "layoutNameResId":I
    .end local v15    # "wordCount":I
    :cond_14
    sget-object v16, Lcom/nuance/swype/input/IMEApplication;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string/jumbo v19, "updateCustomDimensions: ERROR: could not determine current language"

    aput-object v19, v17, v18

    invoke-interface/range {v16 .. v17}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1770
    :cond_15
    sget-object v16, Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;->HANDSET:Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;

    goto/16 :goto_5

    .line 11093
    :cond_16
    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/usagedata/CustomDimension$DeviceType;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_6

    .line 1778
    :cond_17
    const/16 v16, 0x0

    goto/16 :goto_7

    .line 1779
    :cond_18
    const/16 v16, 0x0

    goto/16 :goto_8

    .line 1784
    :cond_19
    sget-object v16, Lcom/nuance/swype/usagedata/CustomDimension$DictionaryBehavior;->AUTOMATIC:Lcom/nuance/swype/usagedata/CustomDimension$DictionaryBehavior;

    goto/16 :goto_9

    .line 11142
    :cond_1a
    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/usagedata/CustomDimension$DictionaryBehavior;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_a

    .line 11179
    :cond_1b
    const-wide/16 v20, 0xc8

    cmp-long v16, v18, v20

    if-lez v16, :cond_1c

    const-wide/16 v20, 0x190

    cmp-long v16, v18, v20

    if-gtz v16, :cond_1c

    .line 11180
    const-string/jumbo v16, "200-400ms"

    goto/16 :goto_b

    .line 11181
    :cond_1c
    const-wide/16 v20, 0x190

    cmp-long v16, v18, v20

    if-lez v16, :cond_1d

    const-wide/16 v20, 0x258

    cmp-long v16, v18, v20

    if-gtz v16, :cond_1d

    .line 11182
    const-string/jumbo v16, "400-600ms"

    goto/16 :goto_b

    .line 11183
    :cond_1d
    const-wide/16 v20, 0x258

    cmp-long v16, v18, v20

    if-lez v16, :cond_1e

    const-wide/16 v20, 0x320

    cmp-long v16, v18, v20

    if-gtz v16, :cond_1e

    .line 11184
    const-string/jumbo v16, "600-800ms"

    goto/16 :goto_b

    .line 11185
    :cond_1e
    const-wide/16 v20, 0x320

    cmp-long v16, v18, v20

    if-lez v16, :cond_1f

    const-wide/16 v20, 0x3e8

    cmp-long v16, v18, v20

    if-gtz v16, :cond_1f

    .line 11186
    const-string/jumbo v16, "800-1000ms"

    goto/16 :goto_b

    .line 11187
    :cond_1f
    const-wide/16 v20, 0x3e8

    cmp-long v16, v18, v20

    if-lez v16, :cond_20

    .line 11188
    const-string/jumbo v16, "1000ms +"

    goto/16 :goto_b

    .line 11190
    :cond_20
    const-string/jumbo v16, "invalid"

    goto/16 :goto_b
.end method

.method public updatePreferencesConfig()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 1831
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->createAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    .line 1832
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->createUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    .line 1834
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 1835
    invoke-virtual {p0}, Lcom/nuance/swype/input/IMEApplication;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    .line 1836
    .local v1, "deviceProtectedContext":Landroid/content/Context;
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1837
    .local v2, "sp":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    invoke-virtual {v3, v2}, Lcom/nuance/swype/input/UserPreferences;->importPreferences(Landroid/content/SharedPreferences;)V

    .line 1838
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1840
    const-string/jumbo v3, "app_prefs"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1841
    .local v0, "appSp":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    invoke-virtual {v3, v0}, Lcom/nuance/swype/input/AppPreferences;->importPreferences(Landroid/content/SharedPreferences;)V

    .line 1842
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1845
    .end local v0    # "appSp":Landroid/content/SharedPreferences;
    .end local v1    # "deviceProtectedContext":Landroid/content/Context;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/input/IMEApplication;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    iget-object v4, p0, Lcom/nuance/swype/input/IMEApplication;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/AppPreferences;->moveFromPrevious(Lcom/nuance/swype/input/UserPreferences;)V

    .line 1846
    return-void
.end method
