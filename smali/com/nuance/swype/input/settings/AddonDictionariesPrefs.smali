.class public abstract Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;
.super Lcom/nuance/swype/preference/DialogPrefs;
.source "AddonDictionariesPrefs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$10;,
        Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;,
        Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;,
        Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ADDON_DICTIONARIES_DISPLAY_NAME:Ljava/lang/String; = "dictionary_addon_display_name"

.field private static final ADDON_DICTIONARIES_KEY:Ljava/lang/String; = "dictionary_addon_key"

.field protected static final MSG_HIDE_PROGRESSBAR:I = 0x66

.field protected static final MSG_SHOW_PROGRESSBAR:I = 0x65

.field private static dictionaryNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;

.field static progessbarCallback:Landroid/os/Handler$Callback;

.field static progessbarHandler:Landroid/os/Handler;

.field private static progressBar:Landroid/widget/ProgressBar;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final adapter:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

.field private final chineseListCallback:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;

.field private final chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

.field private final connect:Lcom/nuance/swype/connect/Connect;

.field private final connectionPreferences:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

.field private final connectionStatus:Lcom/nuance/swype/connect/ConnectedStatus;

.field private currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

.field private volatile displayTimeoutDialog:Z

.field private final handler:Landroid/os/Handler;

.field private isRunning:Z

.field private timeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->$assertionsDisabled:Z

    .line 53
    const-string v0, "AddonDictionaries"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 70
    new-instance v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$1;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$1;-><init>()V

    .line 86
    sput-object v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->progessbarCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->progessbarHandler:Landroid/os/Handler;

    .line 339
    new-instance v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$9;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$9;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->dictionaryNameComparator:Ljava/util/Comparator;

    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x1

    .line 135
    invoke-direct {p0}, Lcom/nuance/swype/preference/DialogPrefs;-><init>()V

    .line 87
    new-instance v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$2;-><init>(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->chineseListCallback:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;

    .line 123
    iput-boolean v2, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->displayTimeoutDialog:Z

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->handler:Landroid/os/Handler;

    .line 125
    new-instance v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$3;-><init>(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->timeoutRunnable:Ljava/lang/Runnable;

    .line 136
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->activity:Landroid/app/Activity;

    .line 137
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->createProgressBar(Landroid/app/Activity;)Landroid/widget/ProgressBar;

    .line 138
    invoke-static {p1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    .line 140
    new-instance v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$4;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$4;-><init>(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->connectionStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    .line 149
    new-instance v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$5;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$5;-><init>(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->connectionPreferences:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    .line 156
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getChineseDictionaryDownloadService()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    .line 157
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    if-nez v0, :cond_0

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->adapter:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    .line 159
    sget-object v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "Unexpected failure when loading chinese addon dictionaries: Service is NULL!"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 163
    :goto_0
    invoke-virtual {p1, v2}, Landroid/app/Activity;->setProgressBarIndeterminate(Z)V

    .line 164
    return-void

    .line 161
    :cond_0
    new-instance v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getDictionaryDownloadManager()Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;-><init>(Landroid/content/Context;Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->adapter:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    goto :goto_0
.end method

.method static synthetic access$000()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->displayTimeoutDialog:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Lcom/nuance/swype/input/InputMethods$Language;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->displayTimeoutDialog:Z

    return p1
.end method

.method static synthetic access$1100()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->dictionaryNameComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->adapter:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->isRunning:Z

    return v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Lcom/nuance/swype/connect/ConnectedStatus;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->connectionStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->timeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->removeDictionary(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    return-object v0
.end method

.method private createProgressBar(Landroid/app/Activity;)Landroid/widget/ProgressBar;
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, -0x2

    .line 198
    const v2, 0x1020002

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 199
    .local v1, "rootContainer":Landroid/widget/FrameLayout;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 202
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 204
    new-instance v2, Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    const v4, 0x101007a

    invoke-direct {v2, p1, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 205
    sput-object v2, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->progressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 206
    sget-object v2, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    sget-object v2, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 208
    sget-object v2, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->progressBar:Landroid/widget/ProgressBar;

    return-object v2
.end method

.method private removeDictionary(Ljava/lang/String;)V
    .locals 7
    .param p1, "dictKey"    # Ljava/lang/String;

    .prologue
    .line 288
    iget-object v4, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    if-eqz v4, :cond_7

    .line 289
    const/4 v1, 0x0

    .line 290
    .local v1, "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    iget-object v4, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getDownloadedDictionaries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .line 291
    .local v0, "currentDict":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 292
    move-object v1, v0

    .line 296
    .end local v0    # "currentDict":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    :cond_1
    if-nez v1, :cond_3

    .line 297
    iget-object v4, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getUpdatableDictionaries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .line 298
    .restart local v0    # "currentDict":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 299
    move-object v1, v0

    .line 304
    .end local v0    # "currentDict":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    :cond_3
    if-nez v1, :cond_5

    .line 305
    iget-object v4, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .line 306
    .restart local v0    # "currentDict":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 307
    move-object v1, v0

    .line 312
    .end local v0    # "currentDict":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    :cond_5
    if-eqz v1, :cond_8

    .line 313
    iget-object v4, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v4, v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->removeDictionary(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V

    .line 314
    new-instance v4, Lcom/nuance/swype/input/CategoryDBList;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/nuance/swype/input/CategoryDBList;-><init>(Landroid/content/Context;)V

    .line 315
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getId()I

    move-result v5

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getLanguage()I

    move-result v6

    invoke-virtual {v4, p1, v5, v6}, Lcom/nuance/swype/input/CategoryDBList;->uninstallDownloadedCategoryDB(Ljava/lang/String;II)Z

    .line 317
    iget-object v4, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v3

    .line 318
    .local v3, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v3, :cond_6

    .line 319
    const-string v4, "dictionary_addon_key"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " removed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "not removed"

    invoke-interface {v3, v4, v5, v6}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 322
    :cond_6
    iget-object v4, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->adapter:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    if-eqz v4, :cond_7

    .line 323
    iget-object v4, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->adapter:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    invoke-virtual {v4, v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->removeDictionary(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V

    .line 329
    .end local v1    # "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    :cond_7
    :goto_0
    return-void

    .line 326
    .restart local v1    # "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_8
    sget-object v4, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not find dictionary to remove: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected createConnectDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->connectionPreferences:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    invoke-virtual {v0}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->getConnectDialog()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected createRemoveDictionaryDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 269
    sget-boolean v3, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 270
    :cond_0
    const-string v3, "dictionary_addon_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "key":Ljava/lang/String;
    const-string v3, "dictionary_addon_display_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "dictionary":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->activity:Landroid/app/Activity;

    sget v4, Lcom/nuance/swype/input/R$string;->pref_remove_languages_dialog_desc:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 273
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/nuance/swype/input/R$string;->pref_remove_languages_dialog_title:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->yes_button:I

    new-instance v5, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$8;

    invoke-direct {v5, p0, v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$8;-><init>(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->no_button:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method protected abstract doStartActivityForResult(Landroid/content/Intent;I)V
.end method

.method getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->adapter:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 225
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 336
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->adapter:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 337
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->isRunning:Z

    .line 213
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->chineseListCallback:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->unregisterCallback(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;)V

    .line 218
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x32

    const/16 v4, 0x66

    const/16 v3, 0x65

    .line 171
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->isRunning:Z

    .line 172
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    .line 173
    .local v0, "inputMethods":Lcom/nuance/swype/input/InputMethods;
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 174
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isDictionaryListAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 176
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 177
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->timeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    sget-object v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->progessbarHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    sget-object v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->progessbarHandler:Landroid/os/Handler;

    sget-object v2, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->progessbarHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 184
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->chineseService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->chineseListCallback:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->registerCallback(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;Z)V

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->adapter:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->adapter:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->connectionStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->onConnectionChanged(Z)V

    .line 193
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->adapter:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->updateData()V

    .line 195
    :cond_1
    return-void

    .line 181
    :cond_2
    sget-object v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->progessbarHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    sget-object v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->progessbarHandler:Landroid/os/Handler;

    sget-object v2, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->progessbarHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->connectionStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->register()V

    .line 168
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->connectionStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->unregister()V

    .line 222
    return-void
.end method

.method public runOnUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 766
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 767
    return-void
.end method

.method protected abstract showConnectDialog()V
.end method

.method protected abstract showRemoveDictionaryDialog(Landroid/os/Bundle;)V
.end method

.method protected abstract showTimeoutDialog()V
.end method

.method public timeoutDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 237
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 238
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 239
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/nuance/swype/input/R$string;->startup_internet_connection:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 240
    sget v1, Lcom/nuance/swype/input/R$string;->startup_connection_error:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 241
    sget v1, Lcom/nuance/swype/input/R$drawable;->ic_connection_error:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 242
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->startup_close:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$6;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$6;-><init>(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 252
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->startup_retry:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$7;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$7;-><init>(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 261
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
