.class public abstract Lcom/nuance/swype/input/settings/ChinesePrefs;
.super Lcom/nuance/swype/preference/DialogPrefs;
.source "ChinesePrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;


# static fields
.field static final ACTIVATION_DIALOG:I = 0x5

.field static final ADDON_DIALOG:I = 0x1

.field protected static final ADDON_DICTIONARIES_CAT:Ljava/lang/String; = "addon_dictionaries"

.field private static final CATEGORY_DB_CAT:Ljava/lang/String; = "addon_dictionaries_cat"

.field public static final CHINESE_PREFS_XML:I

.field protected static final CHINESE_SETTINGS_CAT:Ljava/lang/String; = "chinese_settings"

.field static final CONNECTION_DIALOG:I = 0x2

.field protected static final DOWNLOAD_ADDON_DICTIONARIES_KEY:Ljava/lang/String; = "download_addon_dictionaries"

.field private static final MAX_CatDB_COUNT:I = 0x8

.field static final NO_NETWORK_DIALOG:I = 0x3

.field static final PRIVACY_DIALOG:I = 0x4

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private CDBDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private CDBNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field activationDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

.field protected final activity:Landroid/app/Activity;

.field addonDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

.field private cdbList:Lcom/nuance/swype/input/CategoryDBList;

.field private cdbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final connect:Lcom/nuance/swype/connect/Connect;

.field private final connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

.field connectionDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

.field private currrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

.field noNetworkDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

.field privacyDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

.field private screen:Landroid/preference/PreferenceScreen;

.field private started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "Chinese"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/settings/ChinesePrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 45
    sget v0, Lcom/nuance/swype/input/R$xml;->chinesepreferences:I

    sput v0, Lcom/nuance/swype/input/settings/ChinesePrefs;->CHINESE_PREFS_XML:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/nuance/swype/preference/DialogPrefs;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->started:Z

    .line 382
    new-instance v0, Lcom/nuance/swype/input/settings/ChinesePrefs$6;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/ChinesePrefs$6;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->addonDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    .line 389
    new-instance v0, Lcom/nuance/swype/input/settings/ChinesePrefs$7;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/ChinesePrefs$7;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->connectionDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    .line 398
    new-instance v0, Lcom/nuance/swype/input/settings/ChinesePrefs$8;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/ChinesePrefs$8;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->privacyDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    .line 405
    new-instance v0, Lcom/nuance/swype/input/settings/ChinesePrefs$9;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/ChinesePrefs$9;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activationDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    .line 412
    new-instance v0, Lcom/nuance/swype/input/settings/ChinesePrefs$10;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/ChinesePrefs$10;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->noNetworkDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    .line 67
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    .line 68
    invoke-static {p1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->connect:Lcom/nuance/swype/connect/Connect;

    .line 70
    new-instance v0, Lcom/nuance/swype/input/settings/ChinesePrefs$1;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/settings/ChinesePrefs$1;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefs;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    .line 76
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->addonDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/settings/ChinesePrefs;->registerDialog(ILcom/nuance/swype/preference/DialogPrefs$DialogCreator;)V

    .line 77
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->privacyDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/settings/ChinesePrefs;->registerDialog(ILcom/nuance/swype/preference/DialogPrefs$DialogCreator;)V

    .line 78
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->connectionDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/settings/ChinesePrefs;->registerDialog(ILcom/nuance/swype/preference/DialogPrefs$DialogCreator;)V

    .line 79
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->noNetworkDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/settings/ChinesePrefs;->registerDialog(ILcom/nuance/swype/preference/DialogPrefs$DialogCreator;)V

    .line 80
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activationDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/settings/ChinesePrefs;->registerDialog(ILcom/nuance/swype/preference/DialogPrefs$DialogCreator;)V

    .line 81
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    const-string v1, "swype chinese"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->recordScreenVisited(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/ChinesePrefs;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cdbs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/nuance/swype/input/settings/ChinesePrefs;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cdbs:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/ChinesePrefs;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->CDBNames:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/swype/input/settings/ChinesePrefs;)Lcom/nuance/swype/preference/ConnectionAwarePreferences;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nuance/swype/input/settings/ChinesePrefs;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->CDBNames:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/settings/ChinesePrefs;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->CDBDescriptions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/nuance/swype/input/settings/ChinesePrefs;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->CDBDescriptions:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/settings/ChinesePrefs;)Lcom/nuance/swype/input/CategoryDBList;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cdbList:Lcom/nuance/swype/input/CategoryDBList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/settings/ChinesePrefs;)Lcom/nuance/swype/input/InputMethods$Language;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->currrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/settings/ChinesePrefs;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/ChinesePrefs;->getNameForDictionary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/settings/ChinesePrefs;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/ChinesePrefs;->getCategoryNameForDictionary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/settings/ChinesePrefs;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/settings/ChinesePrefs;->updateCDBInWorkerThread(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/settings/ChinesePrefs;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/settings/ChinesePrefs;->updateCategoryDBCheckBoxes(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/settings/ChinesePrefs;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->getSelectedCatDBCount()I

    move-result v0

    return v0
.end method

.method private getCategoryNameForDictionary(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "dictKey"    # Ljava/lang/String;

    .prologue
    .line 462
    iget-object v3, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/Connect;->getChineseDictionaryDownloadService()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    move-result-object v0

    .line 463
    .local v0, "chineseService":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    if-eqz v0, :cond_5

    .line 464
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getDownloadedDictionaries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .line 465
    .local v1, "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 466
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getCategory()Ljava/lang/String;

    move-result-object v3

    .line 483
    .end local v1    # "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v3

    .line 471
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    sget-object v3, Lcom/nuance/swype/input/settings/ChinesePrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "Dictionary key not found in downloaded!"

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 472
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getUpdatableDictionaries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .line 473
    .restart local v1    # "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 474
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getCategory()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 477
    .end local v1    # "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    :cond_3
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .line 478
    .restart local v1    # "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 479
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getCategory()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 483
    .end local v1    # "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getNameForDictionary(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "dictKey"    # Ljava/lang/String;

    .prologue
    .line 437
    iget-object v3, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/Connect;->getChineseDictionaryDownloadService()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    move-result-object v0

    .line 438
    .local v0, "chineseService":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    if-eqz v0, :cond_5

    .line 439
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getDownloadedDictionaries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .line 440
    .local v1, "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 441
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getName()Ljava/lang/String;

    move-result-object v3

    .line 458
    .end local v1    # "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v3

    .line 446
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    sget-object v3, Lcom/nuance/swype/input/settings/ChinesePrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "Dictionary key not found in downloaded!"

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 447
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getUpdatableDictionaries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .line 448
    .restart local v1    # "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 449
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 452
    .end local v1    # "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    :cond_3
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .line 453
    .restart local v1    # "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 454
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 458
    .end local v1    # "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getSelectedCatDBCount()I
    .locals 7

    .prologue
    .line 487
    const/4 v3, 0x0

    .line 488
    .local v3, "count":I
    iget-object v5, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cdbs:Ljava/util/List;

    if-nez v5, :cond_0

    .line 489
    iget-object v5, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cdbList:Lcom/nuance/swype/input/CategoryDBList;

    iget-object v6, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->currrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v6, v6, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/CategoryDBList;->getShowableCDBs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cdbs:Ljava/util/List;

    .line 491
    :cond_0
    iget-object v5, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cdbs:Ljava/util/List;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cdbs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 492
    iget-object v5, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 493
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    iget-object v5, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cdbs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 494
    .local v1, "cdb":Ljava/lang/String;
    iget-object v5, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cdbList:Lcom/nuance/swype/input/CategoryDBList;

    invoke-virtual {v5, v1}, Lcom/nuance/swype/input/CategoryDBList;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, "cdbName":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 496
    if-eqz v5, :cond_1

    .line 497
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 501
    .end local v0    # "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    .end local v1    # "cdb":Ljava/lang/String;
    .end local v2    # "cdbName":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    return v3
.end method

.method private removePreference(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->screen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private retrieveDictionaryNamesInBackground()V
    .locals 3

    .prologue
    .line 234
    new-instance v0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/ChinesePrefs$3;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefs;)V

    .line 272
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 273
    .local v1, "t":Ljava/lang/Thread;
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 274
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 275
    return-void
.end method

.method private updateCDBInWorkerThread(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, "cdbs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "descriptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/nuance/swype/input/settings/ChinesePrefs$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/nuance/swype/input/settings/ChinesePrefs$4;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefs;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 285
    return-void
.end method

.method private updateCategoryDBCheckBoxes(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, "cdbs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "descriptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v12, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->started:Z

    if-eqz v12, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    if-gtz v12, :cond_1

    .line 357
    :cond_0
    return-void

    .line 295
    :cond_1
    iget-object v12, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-static {v12}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    .line 296
    .local v1, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    iget-object v12, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v13, "addon_dictionaries_cat"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 298
    .local v2, "categorydbCategory":Landroid/preference/PreferenceCategory;
    if-eqz v2, :cond_0

    .line 299
    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 300
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->creatAddOnDictionaryPref()Landroid/preference/Preference;

    move-result-object v11

    .line 301
    .local v11, "pref":Landroid/preference/Preference;
    sget v12, Lcom/nuance/swype/input/R$string;->download_addon_dictionaries:I

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(I)V

    .line 302
    const-string v12, "download_addon_dictionaries"

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v2, v11}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 305
    const/4 v10, 0x0

    .line 306
    .local v10, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 307
    .local v6, "description":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_0

    .line 308
    const/4 v8, 0x0

    .line 309
    .local v8, "index":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 310
    .local v3, "cdb":Ljava/lang/String;
    iget-object v12, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cdbList:Lcom/nuance/swype/input/CategoryDBList;

    invoke-virtual {v12, v3}, Lcom/nuance/swype/input/CategoryDBList;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 311
    .local v4, "cdbName":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 312
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 315
    :cond_2
    new-instance v5, Landroid/preference/CheckBoxPreference;

    iget-object v12, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-direct {v5, v12}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 316
    .local v5, "cdbPreference":Landroid/preference/CheckBoxPreference;
    const/4 v12, 0x0

    invoke-virtual {v1, v4, v12}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 317
    .local v9, "isChecked":Z
    iget-object v12, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-static {v12}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v12

    invoke-virtual {v12, v4, v9}, Lcom/nuance/swype/input/UserPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 319
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v5, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 321
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "name":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 323
    .restart local v10    # "name":Ljava/lang/String;
    invoke-virtual {v5, v10}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 324
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 325
    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "description":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 326
    .restart local v6    # "description":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    .line 328
    if-eqz v6, :cond_5

    iget-object v12, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    sget v13, Lcom/nuance/swype/input/R$string;->sports_entertainment:I

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    .line 330
    :goto_1
    if-nez v12, :cond_4

    .line 331
    if-eqz v6, :cond_3

    move-object v4, v6

    .end local v4    # "cdbName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 333
    :cond_4
    new-instance v12, Lcom/nuance/swype/input/settings/ChinesePrefs$5;

    invoke-direct {v12, p0, v5}, Lcom/nuance/swype/input/settings/ChinesePrefs$5;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefs;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v5, v12}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 352
    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 328
    .restart local v4    # "cdbName":Ljava/lang/String;
    :cond_5
    const/4 v12, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected abstract addPreferences()Landroid/preference/PreferenceScreen;
.end method

.method protected abstract creatAddOnDictionaryPref()Landroid/preference/Preference;
.end method

.method protected abstract createFunctionBarPref()Landroid/preference/Preference;
.end method

.method protected abstract createInputModePref(Landroid/os/Bundle;)Landroid/preference/Preference;
.end method

.method public createMaxItemDlg()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 505
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    sget v2, Lcom/nuance/swype/input/R$string;->eight_items_max:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 506
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "max_content_msg":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/nuance/swype/input/R$string;->max_function_item_count_title:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->ok_button:I

    new-instance v3, Lcom/nuance/swype/input/settings/ChinesePrefs$11;

    invoke-direct {v3, p0}, Lcom/nuance/swype/input/settings/ChinesePrefs$11;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefs;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 518
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public createNetworkNotificationDialg()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->create(Landroid/content/Context;Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method abstract doCancelDialog(I)V
.end method

.method abstract doShowDialog(ILandroid/os/Bundle;)V
.end method

.method abstract doStartActivityForResult(Landroid/content/Intent;I)V
.end method

.method protected final findPreference(Ljava/lang/String;)Landroid/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->screen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNegativeButtonClick()Z
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x1

    return v0
.end method

.method public onPositiveButtonClick()Z
    .locals 1

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->showDownloadAddonDictionaries()V

    .line 531
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "prefScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    .line 423
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "key":Ljava/lang/String;
    const-string v3, "auto_import_frequent_contacts"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 425
    iget-object v3, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v2

    .line 427
    .local v2, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v2, :cond_0

    .line 428
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2    # "pref":Landroid/preference/Preference;
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 429
    .local v0, "checked":Z
    const-string v5, "auto_import_frequent_contacts"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    if-nez v0, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v5, v6, v3}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 433
    .end local v0    # "checked":Z
    .end local v2    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    :cond_0
    return v4

    .restart local v0    # "checked":Z
    .restart local v2    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    :cond_1
    move v3, v4

    .line 429
    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->rebuildSettings()V

    .line 90
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->started:Z

    .line 86
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->started:Z

    .line 94
    return-void
.end method

.method protected final rebuildSettings()V
    .locals 12

    .prologue
    .line 120
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->screen:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_0

    .line 121
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 123
    :cond_0
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v5

    .line 125
    .local v5, "inputMethods":Lcom/nuance/swype/input/InputMethods;
    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->currrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 127
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cdbList:Lcom/nuance/swype/input/CategoryDBList;

    if-eqz v9, :cond_1

    .line 128
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cdbList:Lcom/nuance/swype/input/CategoryDBList;

    .line 130
    :cond_1
    new-instance v9, Lcom/nuance/swype/input/CategoryDBList;

    iget-object v10, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Lcom/nuance/swype/input/CategoryDBList;-><init>(Landroid/content/Context;Z)V

    iput-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cdbList:Lcom/nuance/swype/input/CategoryDBList;

    .line 132
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->addPreferences()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->screen:Landroid/preference/PreferenceScreen;

    .line 133
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v10, "chinese_settings"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 137
    .local v2, "chineseCategory":Landroid/preference/PreferenceCategory;
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->currrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 138
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->currrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 140
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->currrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputMethods$Language;->getChineseInputModes()Ljava/util/List;

    move-result-object v7

    .line 141
    .local v7, "inputModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$InputMode;>;"
    if-eqz v7, :cond_8

    .line 142
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->currrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    .line 143
    .local v3, "currentInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 145
    .local v6, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    iget-object v9, v6, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v10, "stroke"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v6, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v10, "zhuyin_nine_keys"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v6, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v10, "zhuyin_qwerty"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v6, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v10, "pinyin_nine_keys"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v6, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v10, "doublepinyin"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v6, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v10, "cangjie_nine_keys"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v6, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v10, "cangjie_qwerty"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v6, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v10, "quick_cangjie_nine_keys"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v6, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v10, "quick_cangjie_qwerty"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v6, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v10, "handwriting_half_screen"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 155
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->currrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseTraditional()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v6, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v10, "pinyin_qwerty"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 160
    :cond_3
    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/UserPreferences;->isHandwritingEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 164
    :cond_4
    invoke-static {v6}, Lcom/nuance/swype/input/settings/InputPrefs;->createArgs(Lcom/nuance/swype/input/InputMethods$InputMode;)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/nuance/swype/input/settings/ChinesePrefs;->createInputModePref(Landroid/os/Bundle;)Landroid/preference/Preference;

    move-result-object v8

    .line 167
    .local v8, "pref":Landroid/preference/Preference;
    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$InputMode;->getEnabledPrefKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 168
    iget-object v9, v6, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v9}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeHandwriting(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 169
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/nuance/swype/input/R$string;->handwriting:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 173
    :cond_5
    :goto_1
    iget-object v9, v3, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v9}, Lcom/nuance/swype/input/InputMethods;->getChineseInputModeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v6, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v10}, Lcom/nuance/swype/input/InputMethods;->getChineseInputModeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 175
    sget v9, Lcom/nuance/swype/input/R$string;->current_use_input_mode:I

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(I)V

    .line 177
    :cond_6
    invoke-virtual {v2, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 170
    :cond_7
    iget-object v9, v6, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v9}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModePinyin(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 171
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/nuance/swype/input/R$string;->pinyin:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 181
    .end local v3    # "currentInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .end local v8    # "pref":Landroid/preference/Preference;
    :cond_8
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->createFunctionBarPref()Landroid/preference/Preference;

    move-result-object v8

    .line 182
    .restart local v8    # "pref":Landroid/preference/Preference;
    sget v9, Lcom/nuance/swype/input/R$string;->function_bar:I

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setTitle(I)V

    .line 183
    sget v9, Lcom/nuance/swype/input/R$string;->function_bar_summary:I

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(I)V

    .line 184
    invoke-virtual {v2, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 187
    new-instance v0, Landroid/preference/CheckBoxPreference;

    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-direct {v0, v9}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 189
    .local v0, "bilingCheckBox":Landroid/preference/CheckBoxPreference;
    const-string v9, "enable_chinese_bilingual"

    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 190
    sget v9, Lcom/nuance/swype/input/R$string;->enable_chinese_bilingual:I

    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 191
    sget v9, Lcom/nuance/swype/input/R$string;->enable_chinese_bilingual_summary:I

    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 192
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/UserPreferences;->getEnableChineseBilingual()Z

    move-result v9

    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 193
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 194
    new-instance v9, Lcom/nuance/swype/input/settings/ChinesePrefs$2;

    invoke-direct {v9, p0}, Lcom/nuance/swype/input/settings/ChinesePrefs$2;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefs;)V

    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 210
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 213
    .end local v0    # "bilingCheckBox":Landroid/preference/CheckBoxPreference;
    .end local v7    # "inputModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$InputMode;>;"
    .end local v8    # "pref":Landroid/preference/Preference;
    :cond_9
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v10, "addon_dictionaries_cat"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 215
    .local v1, "categorydbCategory":Landroid/preference/PreferenceCategory;
    if-eqz v1, :cond_b

    .line 216
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v9}, Lcom/nuance/swype/connect/Connect;->isLicensed()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/IMEApplication;->isLVLLicenseValid()Z

    move-result v9

    if-nez v9, :cond_c

    .line 217
    :cond_a
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 227
    :cond_b
    :goto_2
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->retrieveDictionaryNamesInBackground()V

    .line 228
    return-void

    .line 219
    :cond_c
    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 220
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->creatAddOnDictionaryPref()Landroid/preference/Preference;

    move-result-object v8

    .line 221
    .restart local v8    # "pref":Landroid/preference/Preference;
    sget v9, Lcom/nuance/swype/input/R$string;->download_addon_dictionaries:I

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setTitle(I)V

    .line 222
    const-string v9, "download_addon_dictionaries"

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v1, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method protected final removePreference(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/ChinesePrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    .line 112
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->removePreference(Landroid/preference/Preference;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract showDownloadAddonDictionaries()V
.end method

.method protected abstract showMaxCountdialog()V
.end method

.method protected abstract showNetworkNotificationDialog()V
.end method
