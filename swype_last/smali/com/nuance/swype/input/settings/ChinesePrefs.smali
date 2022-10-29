.class public abstract Lcom/nuance/swype/input/settings/ChinesePrefs;
.super Lcom/nuance/swype/preference/DialogPrefs;
.source "ChinesePrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;


# static fields
.field static final ACTIVATION_DIALOG:I = 0x5

.field static final ADDON_DIALOG:I = 0x1

.field private static final CATEGORY_DB_CAT:Ljava/lang/String; = "addon_dictionaries_cat"

.field public static final CHINESE_PREFS_XML:I

.field protected static final CHINESE_SETTINGS_CAT:Ljava/lang/String; = "chinese_settings"

.field static final CONNECTION_DIALOG:I = 0x2

.field protected static final DOWNLOAD_ADDON_DICTIONARIES_KEY:Ljava/lang/String; = "download_addon_dictionaries"

.field private static final MAX_CatDB_COUNT:I = 0x8

.field static final NO_NETWORK_DIALOG:I = 0x3

.field static final PRIVACY_DIALOG:I = 0x4

.field public static final REQUEST_CHINESE_CLOUD_INPUT:I = 0x1

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field activationDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

.field protected final activity:Landroid/app/Activity;

.field addonDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

.field private cDBDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cDBNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field public cloudDialog:Landroid/app/Dialog;

.field private final connect:Lcom/nuance/swype/connect/Connect;

.field private final connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

.field connectionDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

.field private currrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

.field private isNetworkForCloud:Z

.field private mCloudItem:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCloudKeyItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field noNetworkDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

.field privacyDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

.field private screen:Landroid/preference/PreferenceScreen;

.field private started:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-string/jumbo v0, "Chinese"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/settings/ChinesePrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 53
    sget v0, Lcom/nuance/swype/input/R$xml;->chinesepreferences:I

    sput v0, Lcom/nuance/swype/input/settings/ChinesePrefs;->CHINESE_PREFS_XML:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/nuance/swype/preference/DialogPrefs;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->mCloudItem:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->mCloudKeyItem:Ljava/util/List;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->started:Z

    .line 546
    new-instance v0, Lcom/nuance/swype/input/settings/ChinesePrefs$9;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/ChinesePrefs$9;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->addonDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    .line 553
    new-instance v0, Lcom/nuance/swype/input/settings/ChinesePrefs$10;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/ChinesePrefs$10;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->connectionDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    .line 560
    new-instance v0, Lcom/nuance/swype/input/settings/ChinesePrefs$11;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/ChinesePrefs$11;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->privacyDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    .line 567
    new-instance v0, Lcom/nuance/swype/input/settings/ChinesePrefs$12;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/ChinesePrefs$12;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activationDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    .line 574
    new-instance v0, Lcom/nuance/swype/input/settings/ChinesePrefs$13;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/ChinesePrefs$13;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->noNetworkDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    .line 84
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    .line 85
    invoke-static {p1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->connect:Lcom/nuance/swype/connect/Connect;

    .line 87
    new-instance v0, Lcom/nuance/swype/input/settings/ChinesePrefs$1;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/settings/ChinesePrefs$1;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefs;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    .line 94
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->mCloudItem:Ljava/util/Map;

    const-string/jumbo v1, "chinese_cloud_wifi_only"

    .line 95
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->chinese_cloud_wifi_only:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->mCloudItem:Ljava/util/Map;

    const-string/jumbo v1, "chinese_cloud_all"

    .line 97
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->chinese_cloud_all:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->mCloudItem:Ljava/util/Map;

    const-string/jumbo v1, "chinese_cloud_diabled"

    .line 99
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->chinese_cloud_disabled:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->mCloudKeyItem:Ljava/util/List;

    const-string/jumbo v1, "chinese_cloud_wifi_only"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->mCloudKeyItem:Ljava/util/List;

    const-string/jumbo v1, "chinese_cloud_all"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->mCloudKeyItem:Ljava/util/List;

    const-string/jumbo v1, "chinese_cloud_diabled"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->addonDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/settings/ChinesePrefs;->registerDialog(ILcom/nuance/swype/preference/DialogPrefs$DialogCreator;)V

    .line 106
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->privacyDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/settings/ChinesePrefs;->registerDialog(ILcom/nuance/swype/preference/DialogPrefs$DialogCreator;)V

    .line 107
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->connectionDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/settings/ChinesePrefs;->registerDialog(ILcom/nuance/swype/preference/DialogPrefs$DialogCreator;)V

    .line 108
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->noNetworkDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/settings/ChinesePrefs;->registerDialog(ILcom/nuance/swype/preference/DialogPrefs$DialogCreator;)V

    .line 109
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activationDialog:Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/settings/ChinesePrefs;->registerDialog(ILcom/nuance/swype/preference/DialogPrefs$DialogCreator;)V

    .line 110
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->CHINESE_PREFERENCES:Lcom/nuance/swype/usagedata/UsageData$Screen;

    invoke-static {v0}, Lcom/nuance/swype/usagedata/UsageData;->recordScreenVisited(Lcom/nuance/swype/usagedata/UsageData$Screen;)V

    .line 111
    return-void
.end method

.method static synthetic access$002(Lcom/nuance/swype/input/settings/ChinesePrefs;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->isNetworkForCloud:Z

    return p1
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/ChinesePrefs;IZZLandroid/os/Bundle;)Z
    .registers 6
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/settings/ChinesePrefs;->showLegalRequirements(IZZLandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/nuance/swype/input/settings/ChinesePrefs;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/ChinesePrefs;->getNameForDictionary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/swype/input/settings/ChinesePrefs;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/ChinesePrefs;->getCategoryNameForDictionary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nuance/swype/input/settings/ChinesePrefs;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/settings/ChinesePrefs;->updateCDBInWorkerThread(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/nuance/swype/input/settings/ChinesePrefs;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/settings/ChinesePrefs;->updateCategoryDBCheckBoxes(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/nuance/swype/input/settings/ChinesePrefs;)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->getSelectedCatDBCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/nuance/swype/input/settings/ChinesePrefs;)Lcom/nuance/swype/preference/ConnectionAwarePreferences;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/settings/ChinesePrefs;IZLandroid/os/Bundle;)Z
    .registers 5
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/settings/ChinesePrefs;->showCUDRequirements(IZLandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/settings/ChinesePrefs;)Landroid/preference/PreferenceScreen;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->screen:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/settings/ChinesePrefs;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->mCloudItem:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/settings/ChinesePrefs;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cdbs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/nuance/swype/input/settings/ChinesePrefs;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cdbs:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/settings/ChinesePrefs;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cDBNames:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/nuance/swype/input/settings/ChinesePrefs;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cDBNames:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/settings/ChinesePrefs;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cDBDescriptions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/nuance/swype/input/settings/ChinesePrefs;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cDBDescriptions:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/settings/ChinesePrefs;)Lcom/nuance/swype/input/CategoryDBList;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cdbList:Lcom/nuance/swype/input/CategoryDBList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/settings/ChinesePrefs;)Lcom/nuance/swype/input/InputMethods$Language;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->currrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    return-object v0
.end method

.method private getCategoryNameForDictionary(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "dictKey"    # Ljava/lang/String;

    .prologue
    .line 616
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect;->getChineseDictionaryDownloadService()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    move-result-object v0

    .line 617
    .local v0, "chineseService":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    if-eqz v0, :cond_7f

    .line 618
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getDownloadedDictionaries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .line 619
    .local v1, "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 620
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getCategory()Ljava/lang/String;

    move-result-object v2

    .line 637
    .end local v1    # "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    :goto_2a
    return-object v2

    .line 625
    :cond_2b
    sget-object v2, Lcom/nuance/swype/input/settings/ChinesePrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "Dictionary key not found in downloaded!"

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 626
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getUpdatableDictionaries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .line 627
    .restart local v1    # "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 628
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getCategory()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a

    .line 631
    .end local v1    # "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    :cond_5c
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_64
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .line 632
    .restart local v1    # "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 633
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getCategory()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a

    .line 637
    .end local v1    # "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    :cond_7f
    const/4 v2, 0x0

    goto :goto_2a
.end method

.method private getNameForDictionary(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "dictKey"    # Ljava/lang/String;

    .prologue
    .line 591
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect;->getChineseDictionaryDownloadService()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    move-result-object v0

    .line 592
    .local v0, "chineseService":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    if-eqz v0, :cond_7f

    .line 593
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getDownloadedDictionaries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .line 594
    .local v1, "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 595
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getName()Ljava/lang/String;

    move-result-object v2

    .line 612
    .end local v1    # "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    :goto_2a
    return-object v2

    .line 600
    :cond_2b
    sget-object v2, Lcom/nuance/swype/input/settings/ChinesePrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "Dictionary key not found in downloaded!"

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 601
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getUpdatableDictionaries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .line 602
    .restart local v1    # "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 603
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a

    .line 606
    .end local v1    # "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    :cond_5c
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_64
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .line 607
    .restart local v1    # "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 608
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a

    .line 612
    .end local v1    # "d":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    :cond_7f
    const/4 v2, 0x0

    goto :goto_2a
.end method

.method private getSelectedCatDBCount()I
    .registers 7

    .prologue
    .line 641
    const/4 v3, 0x0

    .line 642
    .local v3, "count":I
    iget-object v4, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cdbs:Ljava/util/List;

    if-nez v4, :cond_11

    .line 643
    iget-object v4, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cdbList:Lcom/nuance/swype/input/CategoryDBList;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->currrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v5, v5, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/CategoryDBList;->getShowableCDBs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cdbs:Ljava/util/List;

    .line 645
    :cond_11
    iget-object v4, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cdbs:Ljava/util/List;

    if-eqz v4, :cond_45

    iget-object v4, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cdbs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_45

    .line 646
    iget-object v4, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 647
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    iget-object v4, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cdbs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_29
    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 648
    .local v1, "cdb":Ljava/lang/String;
    iget-object v5, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cdbList:Lcom/nuance/swype/input/CategoryDBList;

    invoke-virtual {v5, v1}, Lcom/nuance/swype/input/CategoryDBList;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 649
    .local v2, "cdbName":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 650
    if-eqz v5, :cond_29

    .line 651
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 655
    .end local v0    # "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    .end local v1    # "cdb":Ljava/lang/String;
    .end local v2    # "cdbName":Ljava/lang/String;
    :cond_45
    return v3
.end method

.method private retrieveDictionaryNamesInBackground()V
    .registers 4

    .prologue
    .line 398
    new-instance v0, Lcom/nuance/swype/input/settings/ChinesePrefs$6;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/ChinesePrefs$6;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefs;)V

    .line 438
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 439
    .local v1, "t":Ljava/lang/Thread;
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 440
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 441
    return-void
.end method

.method private showCUDRequirements(IZLandroid/os/Bundle;)Z
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "optInRequired"    # Z
    .param p3, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 386
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-static {v1, p2, p3}, Lcom/nuance/swype/connect/ConnectLegal;->getLegalCUDActivitiesStartIntent(Landroid/content/Context;ZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 387
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_d

    .line 388
    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/settings/ChinesePrefs;->doStartActivityForResult(Landroid/content/Intent;I)V

    .line 389
    const/4 v1, 0x1

    .line 391
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private showLegalRequirements(IZZLandroid/os/Bundle;)Z
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "tosRequired"    # Z
    .param p3, "optInRequired"    # Z
    .param p4, "resultData"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 372
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->isUserUnlockFinished()Z

    move-result v2

    if-nez v2, :cond_e

    .line 381
    :cond_d
    :goto_d
    return v1

    .line 375
    :cond_e
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-static {v2, p2, p3, p4}, Lcom/nuance/swype/connect/ConnectLegal;->getLegalActivitiesStartIntent(Landroid/content/Context;ZZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 377
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_d

    .line 378
    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/settings/ChinesePrefs;->doStartActivityForResult(Landroid/content/Intent;I)V

    .line 379
    const/4 v1, 0x1

    goto :goto_d
.end method

.method private updateCDBInWorkerThread(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 6
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
    .line 445
    .local p1, "cdbs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "descriptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/nuance/swype/input/settings/ChinesePrefs$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/nuance/swype/input/settings/ChinesePrefs$7;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefs;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 451
    return-void
.end method

.method private updateCategoryDBCheckBoxes(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 18
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
    .line 457
    .local p1, "cdbs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "descriptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v11, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->started:Z

    if-eqz v11, :cond_12

    if-eqz p1, :cond_12

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_12

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    if-gtz v11, :cond_13

    .line 521
    :cond_12
    return-void

    .line 461
    :cond_13
    iget-object v11, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-static {v11}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    .line 462
    .local v1, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    iget-object v11, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v12, "addon_dictionaries_cat"

    .line 463
    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 464
    .local v2, "categorydbCategory":Landroid/preference/PreferenceCategory;
    if-eqz v2, :cond_12

    .line 465
    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 466
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->creatAddOnDictionaryPref()Landroid/preference/Preference;

    move-result-object v10

    .line 467
    .local v10, "pref":Landroid/preference/Preference;
    sget v11, Lcom/nuance/swype/input/R$string;->download_addon_dictionaries:I

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setTitle(I)V

    .line 468
    const-string/jumbo v11, "download_addon_dictionaries"

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v2, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 473
    const/4 v7, 0x0

    .line 474
    .local v7, "index":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_40
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 475
    .local v3, "cdb":Ljava/lang/String;
    iget-object v11, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cdbList:Lcom/nuance/swype/input/CategoryDBList;

    invoke-virtual {v11, v3}, Lcom/nuance/swype/input/CategoryDBList;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 476
    .local v4, "cdbName":Ljava/lang/String;
    if-eqz v4, :cond_58

    .line 477
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 480
    :cond_58
    new-instance v5, Landroid/preference/CheckBoxPreference;

    iget-object v11, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-direct {v5, v11}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 481
    .local v5, "cdbPreference":Landroid/preference/CheckBoxPreference;
    const/4 v11, 0x0

    invoke-virtual {v1, v4, v11}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 482
    .local v8, "isChecked":Z
    iget-object v11, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-static {v11}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v11

    invoke-virtual {v11, v4, v8}, Lcom/nuance/swype/input/UserPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 484
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 486
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 488
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v5, v9}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 489
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 490
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 491
    .local v6, "description":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    .line 493
    if-eqz v6, :cond_b0

    iget-object v11, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    sget v13, Lcom/nuance/swype/input/R$string;->sports_entertainment:I

    .line 494
    invoke-virtual {v11, v13}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b0

    const/4 v11, 0x1

    .line 495
    :goto_9d
    if-nez v11, :cond_a4

    .line 496
    if-eqz v6, :cond_b2

    .end local v6    # "description":Ljava/lang/String;
    :goto_a1
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 498
    :cond_a4
    new-instance v11, Lcom/nuance/swype/input/settings/ChinesePrefs$8;

    invoke-direct {v11, p0, v5}, Lcom/nuance/swype/input/settings/ChinesePrefs$8;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefs;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v5, v11}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 517
    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_40

    .line 494
    .restart local v6    # "description":Ljava/lang/String;
    :cond_b0
    const/4 v11, 0x0

    goto :goto_9d

    :cond_b2
    move-object v6, v4

    .line 496
    goto :goto_a1
.end method


# virtual methods
.method protected abstract addPreferences()Landroid/preference/PreferenceScreen;
.end method

.method protected abstract creatAddOnDictionaryPref()Landroid/preference/Preference;
.end method

.method protected abstract createClouldNetWorkPref()Landroid/preference/Preference;
.end method

.method protected createConnectDialog()Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    invoke-virtual {v0}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->getConnectDialog()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected abstract createFunctionBarPref()Landroid/preference/Preference;
.end method

.method protected abstract createInputModePref(Landroid/os/Bundle;)Landroid/preference/Preference;
.end method

.method public createMaxItemDlg()Landroid/app/Dialog;
    .registers 6

    .prologue
    .line 659
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    sget v2, Lcom/nuance/swype/input/R$string;->eight_items_max:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 660
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, "maxContentMsg":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/nuance/swype/input/R$string;->max_function_item_count_title:I

    .line 662
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    .line 663
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 664
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->ok_button:I

    new-instance v3, Lcom/nuance/swype/input/settings/ChinesePrefs$14;

    invoke-direct {v3, p0}, Lcom/nuance/swype/input/settings/ChinesePrefs$14;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefs;)V

    .line 665
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 672
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public createNetworkNotificationDialg()Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->create(Landroid/content/Context;Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public dismissDialog()V
    .registers 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cloudDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_9

    .line 706
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cloudDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 708
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->cancelAllActiveDialogs()V

    .line 709
    return-void
.end method

.method abstract doCancelDialog(I)V
.end method

.method abstract doShowDialog(ILandroid/os/Bundle;)V
.end method

.method abstract doStartActivityForResult(Landroid/content/Intent;I)V
.end method

.method protected final findPreference(Ljava/lang/String;)Landroid/preference/Preference;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->screen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 355
    packed-switch p1, :pswitch_data_22

    .line 365
    sget-object v0, Lcom/nuance/swype/input/settings/ChinesePrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Not REQUEST_CHINESE_CLOUD_INPUT do nothing"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 367
    :cond_11
    :goto_11
    return-void

    .line 357
    :pswitch_12
    const/4 v0, -0x1

    if-ne p2, v0, :cond_11

    .line 358
    const-string/jumbo v0, "result_data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_11

    .line 360
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->showCloudNetworkOpt()V

    goto :goto_11

    .line 355
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_12
    .end packed-switch
.end method

.method public onNegativeButtonClick()Z
    .registers 2

    .prologue
    .line 680
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->isNetworkForCloud:Z

    .line 681
    const/4 v0, 0x1

    return v0
.end method

.method public onPositiveButtonClick()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 685
    iget-boolean v3, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->isNetworkForCloud:Z

    if-eqz v3, :cond_19

    .line 686
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 688
    .local v0, "requestData":Landroid/os/Bundle;
    invoke-direct {p0, v2, v2, v2, v0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->showLegalRequirements(IZZLandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 697
    .end local v0    # "requestData":Landroid/os/Bundle;
    :goto_11
    return v1

    .line 692
    .restart local v0    # "requestData":Landroid/os/Bundle;
    :cond_12
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->showCloudNetworkOpt()V

    .line 693
    iput-boolean v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->isNetworkForCloud:Z

    move v1, v2

    .line 694
    goto :goto_11

    .line 696
    .end local v0    # "requestData":Landroid/os/Bundle;
    :cond_19
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->showDownloadAddonDictionaries()V

    move v1, v2

    .line 697
    goto :goto_11
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 4
    .param p1, "prefScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 586
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    .line 587
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->rebuildSettings()V

    .line 119
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->started:Z

    .line 115
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->started:Z

    .line 123
    return-void
.end method

.method protected final rebuildSettings()V
    .registers 13

    .prologue
    .line 141
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->screen:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_9

    .line 142
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 144
    :cond_9
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v5

    .line 146
    .local v5, "inputMethods":Lcom/nuance/swype/input/InputMethods;
    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->currrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 148
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cdbList:Lcom/nuance/swype/input/CategoryDBList;

    if-eqz v9, :cond_1c

    .line 149
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cdbList:Lcom/nuance/swype/input/CategoryDBList;

    .line 151
    :cond_1c
    new-instance v9, Lcom/nuance/swype/input/CategoryDBList;

    iget-object v10, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Lcom/nuance/swype/input/CategoryDBList;-><init>(Landroid/content/Context;Z)V

    iput-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cdbList:Lcom/nuance/swype/input/CategoryDBList;

    .line 153
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->addPreferences()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->screen:Landroid/preference/PreferenceScreen;

    .line 154
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v10, "chinese_settings"

    .line 155
    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 158
    .local v2, "chineseCategory":Landroid/preference/PreferenceCategory;
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->currrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v9

    if-eqz v9, :cond_1ac

    .line 159
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->currrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 161
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->currrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputMethods$Language;->getChineseInputModes()Ljava/util/List;

    move-result-object v7

    .line 162
    .local v7, "inputModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$InputMode;>;"
    if-eqz v7, :cond_138

    .line 163
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->currrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    .line 164
    .local v3, "currentInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_63
    :goto_63
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_138

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 166
    .local v6, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    iget-object v10, v6, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v11, "stroke"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_63

    iget-object v10, v6, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v11, "zhuyin_nine_keys"

    .line 167
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_63

    iget-object v10, v6, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v11, "zhuyin_qwerty"

    .line 168
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_63

    iget-object v10, v6, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v11, "pinyin_nine_keys"

    .line 169
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_63

    iget-object v10, v6, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v11, "doublepinyin"

    .line 170
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_63

    iget-object v10, v6, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v11, "cangjie_nine_keys"

    .line 171
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_63

    iget-object v10, v6, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v11, "cangjie_qwerty"

    .line 173
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_63

    iget-object v10, v6, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v11, "quick_cangjie_nine_keys"

    .line 174
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_63

    iget-object v10, v6, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v11, "quick_cangjie_qwerty"

    .line 176
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_63

    iget-object v10, v6, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v11, "handwriting_half_screen"

    .line 178
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_63

    .line 183
    iget-object v10, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->currrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v10}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseTraditional()Z

    move-result v10

    if-eqz v10, :cond_f0

    iget-object v10, v6, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v11, "pinyin_qwerty"

    .line 184
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_63

    .line 188
    :cond_f0
    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v10

    if-nez v10, :cond_63

    .line 191
    invoke-static {v6}, Lcom/nuance/swype/input/settings/InputPrefs;->createArgs(Lcom/nuance/swype/input/InputMethods$InputMode;)Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/nuance/swype/input/settings/ChinesePrefs;->createInputModePref(Landroid/os/Bundle;)Landroid/preference/Preference;

    move-result-object v8

    .line 192
    .local v8, "pref":Landroid/preference/Preference;
    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$InputMode;->getEnabledPrefKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 193
    iget-object v10, v6, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v10}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModePinyin(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11c

    .line 194
    iget-object v10, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/nuance/swype/input/R$string;->pinyin:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 196
    :cond_11c
    iget-object v10, v3, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v10}, Lcom/nuance/swype/input/InputMethods;->getChineseInputModeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v6, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 197
    invoke-static {v11}, Lcom/nuance/swype/input/InputMethods;->getChineseInputModeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 196
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_133

    .line 198
    sget v10, Lcom/nuance/swype/input/R$string;->current_use_input_mode:I

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setSummary(I)V

    .line 200
    :cond_133
    invoke-virtual {v2, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_63

    .line 204
    .end local v3    # "currentInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .end local v6    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .end local v8    # "pref":Landroid/preference/Preference;
    :cond_138
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->createFunctionBarPref()Landroid/preference/Preference;

    move-result-object v8

    .line 205
    .restart local v8    # "pref":Landroid/preference/Preference;
    sget v9, Lcom/nuance/swype/input/R$string;->function_bar:I

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setTitle(I)V

    .line 206
    sget v9, Lcom/nuance/swype/input/R$string;->function_bar_summary:I

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(I)V

    .line 207
    invoke-virtual {v2, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 210
    new-instance v0, Landroid/preference/CheckBoxPreference;

    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-direct {v0, v9}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 212
    .local v0, "bilingCheckBox":Landroid/preference/CheckBoxPreference;
    const-string/jumbo v9, "enable_chinese_bilingual"

    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 213
    sget v9, Lcom/nuance/swype/input/R$string;->enable_chinese_bilingual:I

    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 214
    sget v9, Lcom/nuance/swype/input/R$string;->enable_chinese_bilingual_summary:I

    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 215
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/UserPreferences;->getEnableChineseBilingual()Z

    move-result v9

    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 216
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 217
    new-instance v9, Lcom/nuance/swype/input/settings/ChinesePrefs$2;

    invoke-direct {v9, p0}, Lcom/nuance/swype/input/settings/ChinesePrefs$2;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefs;)V

    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 233
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v9}, Lcom/nuance/swype/connect/Connect;->isLicensed()Z

    move-result v9

    if-eqz v9, :cond_1a9

    .line 234
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->createClouldNetWorkPref()Landroid/preference/Preference;

    move-result-object v8

    .line 235
    sget v9, Lcom/nuance/swype/input/R$string;->chinese_cloud_input:I

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setTitle(I)V

    .line 236
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->mCloudItem:Ljava/util/Map;

    iget-object v10, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    .line 237
    invoke-static {v10}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/swype/input/AppPreferences;->getChineseCloudNetworkOption()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    .line 236
    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 238
    new-instance v9, Lcom/nuance/swype/input/settings/ChinesePrefs$3;

    invoke-direct {v9, p0}, Lcom/nuance/swype/input/settings/ChinesePrefs$3;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefs;)V

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 267
    invoke-virtual {v2, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 269
    :cond_1a9
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->isNetworkForCloud:Z

    .line 272
    .end local v0    # "bilingCheckBox":Landroid/preference/CheckBoxPreference;
    .end local v7    # "inputModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$InputMode;>;"
    .end local v8    # "pref":Landroid/preference/Preference;
    :cond_1ac
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v10, "addon_dictionaries_cat"

    .line 273
    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 274
    .local v1, "categorydbCategory":Landroid/preference/PreferenceCategory;
    if-eqz v1, :cond_1d2

    .line 275
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-static {v9}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v4

    .line 276
    .local v4, "info":Lcom/nuance/swype/input/BuildInfo;
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v9}, Lcom/nuance/swype/connect/Connect;->isLicensed()Z

    move-result v9

    if-eqz v9, :cond_1cd

    invoke-virtual {v4}, Lcom/nuance/swype/input/BuildInfo;->isConnectEnabled()Z

    move-result v9

    if-nez v9, :cond_1d6

    .line 277
    :cond_1cd
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 287
    .end local v4    # "info":Lcom/nuance/swype/input/BuildInfo;
    :cond_1d2
    :goto_1d2
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->retrieveDictionaryNamesInBackground()V

    .line 288
    return-void

    .line 279
    .restart local v4    # "info":Lcom/nuance/swype/input/BuildInfo;
    :cond_1d6
    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 280
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->creatAddOnDictionaryPref()Landroid/preference/Preference;

    move-result-object v8

    .line 281
    .restart local v8    # "pref":Landroid/preference/Preference;
    sget v9, Lcom/nuance/swype/input/R$string;->download_addon_dictionaries:I

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setTitle(I)V

    .line 282
    const-string/jumbo v9, "download_addon_dictionaries"

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v1, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1d2
.end method

.method public showCloudNetworkOpt()V
    .registers 7

    .prologue
    .line 291
    iget-object v3, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->screen:Landroid/preference/PreferenceScreen;

    if-nez v3, :cond_7

    .line 292
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ChinesePrefs;->rebuildSettings()V

    .line 294
    :cond_7
    iget-object v3, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/AppPreferences;->getChineseCloudNetworkOption()Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, "currentKey":Ljava/lang/String;
    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 297
    :cond_19
    const-string/jumbo v2, "chinese_cloud_wifi_only"

    .line 298
    iget-object v3, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v3

    const-string/jumbo v4, "chinese_cloud_wifi_only"

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/AppPreferences;->setChineseCloudNetworkOption(Ljava/lang/String;)V

    .line 301
    iget-object v3, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v4, "cloud_input"

    .line 302
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 303
    iget-object v3, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->mCloudItem:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 306
    :cond_3c
    new-instance v1, Lcom/nuance/swype/input/CloudNetworkAdapter;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->mCloudItem:Ljava/util/Map;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->mCloudKeyItem:Ljava/util/List;

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/nuance/swype/input/CloudNetworkAdapter;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 309
    .local v1, "cloudNetworkAdapter":Lcom/nuance/swype/input/CloudNetworkAdapter;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 311
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 312
    sget v3, Lcom/nuance/swype/input/R$string;->ok_button:I

    new-instance v4, Lcom/nuance/swype/input/settings/ChinesePrefs$4;

    invoke-direct {v4, p0}, Lcom/nuance/swype/input/settings/ChinesePrefs$4;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefs;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 326
    new-instance v3, Lcom/nuance/swype/input/settings/ChinesePrefs$5;

    invoke-direct {v3, p0, v1}, Lcom/nuance/swype/input/settings/ChinesePrefs$5;-><init>(Lcom/nuance/swype/input/settings/ChinesePrefs;Lcom/nuance/swype/input/CloudNetworkAdapter;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 348
    iget-object v3, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->activity:Landroid/app/Activity;

    sget v4, Lcom/nuance/swype/input/R$string;->chinese_cloud_input:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 350
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cloudDialog:Landroid/app/Dialog;

    .line 351
    iget-object v3, p0, Lcom/nuance/swype/input/settings/ChinesePrefs;->cloudDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 352
    return-void
.end method

.method protected abstract showConnectDialog()V
.end method

.method protected abstract showDownloadAddonDictionaries()V
.end method

.method protected abstract showMaxCountdialog()V
.end method

.method protected abstract showNetworkNotificationDialog()V
.end method
