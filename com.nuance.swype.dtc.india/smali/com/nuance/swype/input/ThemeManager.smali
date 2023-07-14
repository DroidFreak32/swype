.class public Lcom/nuance/swype/input/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/ThemeManager$SwypeThemeWeightComparator;,
        Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;,
        Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;,
        Lcom/nuance/swype/input/ThemeManager$SwypeTheme;,
        Lcom/nuance/swype/input/ThemeManager$NotifyObserverDataChanged;
    }
.end annotation


# static fields
.field private static final CONFIG_PROPERTIES:Ljava/lang/String; = "config.properties"

.field public static final MY_THEMES:Ljava/lang/String; = "my_themes"

.field public static final NO_PRICE:Ljava/lang/String; = "  "

.field private static final PROP_KEY_MENU:Ljava/lang/String; = "themes.prefs.menu"

.field public static final STR_NO_CATEGORY_ID:Ljava/lang/String; = "no_category_id"

.field public static final STR_NO_CATEGORY_ID_DLT:Ljava/lang/String; = "no_category_id_DLT"

.field public static final SWYPE_CLASSIC_CATEGORY_ID:Ljava/lang/String; = "swype_classics"

.field public static final THEME_MLS_DELIMETER:Ljava/lang/String; = ","

.field private static isDownloadableThemesEnabled:Z

.field private static isInAppApiSupported:Z

.field private static isInAppServiceExisting:Z

.field public static isThemesLocked:Z

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static final mls_hotwords:[I

.field private static observer:Lcom/nuance/swype/input/ThemeManager$NotifyObserverDataChanged;


# instance fields
.field private categoryItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/swype/inapp/CategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private currentCategoryId:Ljava/lang/String;

.field private currentTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

.field private final dataManager:Lcom/nuance/swype/util/storage/ThemeDataManager;

.field defaultTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

.field private mEmbeddedSkuList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mThemePurchaser:Lcom/nuance/swype/inapp/ThemePurchaser;

.field private menuOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private myEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/ThemeManager$SwypeTheme;",
            ">;"
        }
    .end annotation
.end field

.field private swypeThemeWeightComparator:Lcom/nuance/swype/input/ThemeManager$SwypeThemeWeightComparator;

.field protected themeCategory:Lcom/nuance/swype/input/settings/ThemesCategory;

.field private themeCategoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/input/ThemeManager$SwypeTheme;",
            ">;>;"
        }
    .end annotation
.end field

.field private themeManagerContext:Landroid/content/Context;

.field private themeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/input/ThemeManager$SwypeTheme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 69
    const-string/jumbo v0, "ThemeManager"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 353
    sput-boolean v3, Lcom/nuance/swype/input/ThemeManager;->isInAppServiceExisting:Z

    .line 354
    sput-boolean v3, Lcom/nuance/swype/input/ThemeManager;->isInAppApiSupported:Z

    .line 1564
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/nuance/swype/input/R$string;->msl_hotwords_1:I

    aput v2, v0, v1

    sget v1, Lcom/nuance/swype/input/R$string;->msl_hotwords_2:I

    aput v1, v0, v3

    sput-object v0, Lcom/nuance/swype/input/ThemeManager;->mls_hotwords:[I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->myEntries:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->mEmbeddedSkuList:Ljava/util/Set;

    .line 334
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->themeMap:Ljava/util/Map;

    .line 338
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    .line 343
    const-string/jumbo v0, "no_category_id"

    iput-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->currentCategoryId:Ljava/lang/String;

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->categoryItemList:Ljava/util/ArrayList;

    .line 1667
    new-instance v0, Lcom/nuance/swype/input/ThemeManager$SwypeThemeWeightComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/ThemeManager$SwypeThemeWeightComparator;-><init>(Lcom/nuance/swype/input/ThemeManager;Lcom/nuance/swype/input/ThemeManager$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->swypeThemeWeightComparator:Lcom/nuance/swype/input/ThemeManager$SwypeThemeWeightComparator;

    .line 382
    iput-object p1, p0, Lcom/nuance/swype/input/ThemeManager;->themeManagerContext:Landroid/content/Context;

    .line 384
    invoke-static {}, Lcom/nuance/swype/util/storage/ThemeDataManager;->getInstance()Lcom/nuance/swype/util/storage/ThemeDataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->dataManager:Lcom/nuance/swype/util/storage/ThemeDataManager;

    .line 385
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 63
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->notifyIapDataChanges()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/ThemeManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/ThemeManager;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->themeManagerContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/ThemeManager;)Lcom/nuance/swype/inapp/ThemePurchaser;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/ThemeManager;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->mThemePurchaser:Lcom/nuance/swype/inapp/ThemePurchaser;

    return-object v0
.end method

.method private addOwnedThemeToMyTheme(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p1, "categoryKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/ThemeManager$SwypeTheme;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 840
    .local p2, "myTheme":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p2, :cond_1

    .line 871
    :cond_0
    return-void

    .line 844
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 845
    iget-object v3, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 846
    .local v1, "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->isConnectTheme()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    .line 847
    check-cast v3, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    .line 11206
    .local v2, "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    iget-boolean v3, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    .line 848
    if-nez v3, :cond_3

    .line 11225
    iget-boolean v3, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isInstalled:Z

    .line 848
    if-eqz v3, :cond_2

    .line 849
    :cond_3
    sget-object v3, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "purchased or free downloaded themes sku:"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, " categoryid:"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 850
    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getCurrentCategoryLabel()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 849
    invoke-interface {v3, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 12206
    iget-boolean v3, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    .line 851
    if-eqz v3, :cond_4

    .line 13132
    iget v3, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->type:I

    .line 852
    sget-object v5, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->BUNDLE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    invoke-virtual {v5}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->ordinal()I

    move-result v5

    if-eq v3, v5, :cond_2

    .line 856
    :cond_4
    const/4 v0, 0x0

    .line 857
    .local v0, "hasAdded":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 858
    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 859
    const/4 v0, 0x1

    .line 863
    :cond_6
    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemeInEmbeddedList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 864
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected static addThemes(Landroid/content/Context;ILjava/util/Map;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/input/ThemeManager$SwypeTheme;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1196
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 1197
    .local v11, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    new-array v14, v1, [I

    .line 1198
    .local v14, "resIds":[I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    array-length v1, v14

    if-ge v13, v1, :cond_0

    .line 1199
    const/4 v1, 0x0

    invoke-virtual {v11, v13, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    aput v1, v14, v13

    .line 1198
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1201
    :cond_0
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 1203
    const/4 v1, 0x6

    new-array v12, v1, [I

    const/4 v1, 0x0

    sget v2, Lcom/nuance/swype/input/R$attr;->themeProductId:I

    aput v2, v12, v1

    const/4 v1, 0x1

    sget v2, Lcom/nuance/swype/input/R$attr;->themeName:I

    aput v2, v12, v1

    const/4 v1, 0x2

    sget v2, Lcom/nuance/swype/input/R$attr;->themeLogoPreview:I

    aput v2, v12, v1

    const/4 v1, 0x3

    sget v2, Lcom/nuance/swype/input/R$attr;->themeKeyboardPreview:I

    aput v2, v12, v1

    const/4 v1, 0x4

    sget v2, Lcom/nuance/swype/input/R$attr;->themeIsLocked:I

    aput v2, v12, v1

    const/4 v1, 0x5

    sget v2, Lcom/nuance/swype/input/R$attr;->themeCategoryId:I

    aput v2, v12, v1

    .line 1209
    .local v12, "attrs":[I
    const/4 v13, 0x0

    :goto_1
    array-length v1, v14

    if-ge v13, v1, :cond_2

    .line 1210
    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v5, v14, v13

    invoke-virtual {p0, v1, v12, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 1211
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1212
    .local v4, "key":Ljava/lang/String;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 1213
    .local v3, "nameResId":I
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 1214
    .local v6, "previewResId":I
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 1215
    .local v7, "keyboardPreviewResId":I
    const/4 v1, 0x5

    invoke-virtual {v11, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1216
    if-nez v1, :cond_1

    .line 1217
    new-instance v1, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    aget v2, v14, v13

    const/4 v5, 0x0

    const-string/jumbo v8, "no_category_id"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;-><init>(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/util/List;I)V

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    :cond_1
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 1209
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1231
    .end local v3    # "nameResId":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "previewResId":I
    .end local v7    # "keyboardPreviewResId":I
    :cond_2
    return-void
.end method

.method public static createGoogleAccountLoginFailedDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1481
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/nuance/swype/input/R$string;->theme_upgrade_google_play_service_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->login_failed:I

    .line 1482
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->dismiss_button:I

    const/4 v2, 0x0

    .line 1483
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1484
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;
    .locals 28
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1236
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1237
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    sget v21, Lcom/nuance/swype/input/R$array;->theme_resids:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1, v9}, Lcom/nuance/swype/input/ThemeManager;->addThemes(Landroid/content/Context;ILjava/util/Map;)V

    .line 1242
    invoke-static/range {p0 .. p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v20

    .line 1243
    .local v20, "usrPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual/range {v20 .. v20}, Lcom/nuance/swype/input/UserPreferences;->getCurrentThemeId()Ljava/lang/String;

    move-result-object v3

    .line 1246
    .local v3, "currThemeId":Ljava/lang/String;
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1247
    .local v13, "oemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    sget v21, Lcom/nuance/swype/input/R$array;->theme_resids_oem:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1, v13}, Lcom/nuance/swype/input/ThemeManager;->addThemes(Landroid/content/Context;ILjava/util/Map;)V

    .line 1248
    invoke-interface {v9, v13}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1250
    new-instance v18, Ljava/util/LinkedHashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1253
    .local v18, "themeCategoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;>;"
    const-string/jumbo v21, "no_category_id"

    new-instance v22, Ljava/util/LinkedHashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    new-instance v14, Ljava/util/Properties;

    invoke-direct {v14}, Ljava/util/Properties;-><init>()V

    .line 1258
    .local v14, "props":Ljava/util/Properties;
    const/4 v7, 0x0

    .line 1260
    .local v7, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v21

    const-string/jumbo v22, "config.properties"

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 1261
    if-eqz v7, :cond_0

    .line 1262
    invoke-virtual {v14, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1267
    :cond_0
    if-eqz v7, :cond_1

    .line 1269
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1275
    :cond_1
    :goto_0
    const-string/jumbo v21, "themes.prefs.menu"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1276
    .local v10, "menu":Ljava/lang/String;
    if-nez v10, :cond_3

    .line 1278
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "menu":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 1282
    .restart local v10    # "menu":Ljava/lang/String;
    :cond_2
    sget-object v21, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v22, "Missing theme list!"

    invoke-interface/range {v21 .. v22}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 1285
    :cond_3
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1288
    .local v12, "menuOrder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1289
    .local v8, "key":Ljava/lang/String;
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1264
    .end local v8    # "key":Ljava/lang/String;
    .end local v10    # "menu":Ljava/lang/String;
    .end local v12    # "menuOrder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    .line 1265
    .local v6, "ex":Ljava/io/IOException;
    :try_start_2
    sget-object v21, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v22, "Failed to load config properties"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v6}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1267
    if-eqz v7, :cond_1

    .line 1269
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1272
    :catch_1
    move-exception v21

    goto :goto_0

    .line 1267
    .end local v6    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v21

    if-eqz v7, :cond_4

    .line 1269
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1272
    :cond_4
    :goto_2
    throw v21

    .line 1291
    .restart local v10    # "menu":Ljava/lang/String;
    .restart local v12    # "menuOrder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 1292
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    const/16 v21, 0x0

    :goto_3
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    aget-object v11, v22, v21

    .line 1293
    .local v11, "menuKey":Ljava/lang/String;
    sget-object v24, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string/jumbo v27, "menu key:"

    aput-object v27, v25, v26

    const/16 v26, 0x1

    aput-object v11, v25, v26

    invoke-interface/range {v24 .. v25}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1294
    const-string/jumbo v24, "-"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 1295
    const-string/jumbo v24, "-"

    const-string/jumbo v25, "_"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 1296
    .local v16, "temKey":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1292
    .end local v16    # "temKey":Ljava/lang/String;
    :goto_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 1298
    :cond_6
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1302
    .end local v11    # "menuKey":Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    .line 1303
    .local v4, "currentTheme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    if-eqz v3, :cond_8

    .line 1304
    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "currentTheme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    check-cast v4, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 1307
    .restart local v4    # "currentTheme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_8
    const/4 v5, 0x0

    .line 1309
    .local v5, "defaultTheme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    if-eqz v4, :cond_b

    .line 1310
    move-object v5, v4

    .line 1311
    invoke-virtual {v5}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/nuance/swype/input/UserPreferences;->setCurrentThemeId(Ljava/lang/String;)V

    .line 1313
    const-string/jumbo v21, "no_category_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 1318
    .local v15, "res":Landroid/content/res/Resources;
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_9
    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_e

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1319
    .restart local v11    # "menuKey":Ljava/lang/String;
    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 1320
    .local v17, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    if-eqz v17, :cond_a

    .line 1321
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getDisplayName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v4, v15}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getDisplayName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_9

    .line 1323
    const-string/jumbo v21, "no_category_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1326
    :cond_a
    sget-object v21, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "Theme not found: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_5

    .line 1330
    .end local v11    # "menuKey":Ljava/lang/String;
    .end local v15    # "res":Landroid/content/res/Resources;
    .end local v17    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_b
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_c

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v21

    if-lez v21, :cond_c

    if-nez v3, :cond_c

    .line 1331
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "defaultTheme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    check-cast v5, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 1332
    .restart local v5    # "defaultTheme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    if-eqz v5, :cond_c

    .line 1333
    invoke-virtual {v5}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/nuance/swype/input/UserPreferences;->setCurrentThemeId(Ljava/lang/String;)V

    .line 1337
    :cond_c
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_e

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1338
    .restart local v11    # "menuKey":Ljava/lang/String;
    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 1339
    .restart local v17    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    if-eqz v17, :cond_d

    .line 1341
    const-string/jumbo v21, "no_category_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1343
    :cond_d
    sget-object v21, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "Theme not found: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_6

    .line 1348
    .end local v11    # "menuKey":Ljava/lang/String;
    .end local v17    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_e
    new-instance v19, Lcom/nuance/swype/input/ThemeManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/ThemeManager;-><init>(Landroid/content/Context;)V

    .line 1349
    .local v19, "themeManager":Lcom/nuance/swype/input/ThemeManager;
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    .line 1350
    const-string/jumbo v21, "no_category_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/nuance/swype/input/ThemeManager;->themeMap:Ljava/util/Map;

    .line 1351
    move-object/from16 v0, v19

    iput-object v12, v0, Lcom/nuance/swype/input/ThemeManager;->menuOrder:Ljava/util/List;

    .line 1352
    move-object/from16 v0, v19

    iput-object v5, v0, Lcom/nuance/swype/input/ThemeManager;->defaultTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 28043
    invoke-static {}, Lcom/nuance/swype/util/storage/ThemeData;->getCache()Ljava/util/HashMap;

    move-result-object v21

    .line 1353
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->clear()V

    .line 1354
    move-object/from16 v0, v19

    invoke-direct {v0, v12}, Lcom/nuance/swype/input/ThemeManager;->setEmbeddedThemeList(Ljava/util/List;)V

    .line 1355
    return-object v19

    .line 1272
    .end local v4    # "currentTheme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .end local v5    # "defaultTheme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .end local v10    # "menu":Ljava/lang/String;
    .end local v12    # "menuOrder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "themeManager":Lcom/nuance/swype/input/ThemeManager;
    :catch_2
    move-exception v21

    goto/16 :goto_0

    :catch_3
    move-exception v22

    goto/16 :goto_2
.end method

.method public static createThemeManager(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1381
    invoke-static {p0}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->isDownloadableThemesEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/nuance/swype/input/ThemeManager;->setIsDownloadableThemesEnabled(Z)V

    .line 1382
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$bool;->enable_lock_themes:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getDefaultBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/nuance/swype/input/ThemeManager;->isThemesLocked:Z

    .line 1383
    invoke-static {p0}, Lcom/nuance/swype/input/ThemeManager;->createInstance(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v0

    return-object v0
.end method

.method public static createUpgradeGooglePlayDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1474
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/nuance/swype/input/R$string;->theme_upgrade_google_play_service_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->theme_upgrade_google_play_service_desc:I

    .line 1475
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->dismiss_button:I

    const/4 v2, 0x0

    .line 1476
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1477
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private fetchThemeDetailsFromStore(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 431
    invoke-static {}, Lcom/nuance/swype/measure/UsecaseStopwatch;->getInstance()Lcom/nuance/swype/measure/UsecaseStopwatch;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/measure/Usecases;->GET_PRICE:Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/measure/UsecaseStopwatch;->start(Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;)V

    .line 433
    invoke-direct {p0}, Lcom/nuance/swype/input/ThemeManager;->getDownloadableSkus()Ljava/util/List;

    move-result-object v1

    .line 435
    .local v1, "skus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "requested skus count:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 436
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 439
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v0

    .line 440
    .local v0, "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {v0}, Lcom/nuance/swype/inapp/CatalogManager;->triggerShowingFreeCategories()V

    .line 463
    .end local v0    # "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/ThemeManager;->mThemePurchaser:Lcom/nuance/swype/inapp/ThemePurchaser;

    new-instance v3, Lcom/nuance/swype/input/ThemeManager$1;

    invoke-direct {v3, p0}, Lcom/nuance/swype/input/ThemeManager$1;-><init>(Lcom/nuance/swype/input/ThemeManager;)V

    invoke-virtual {v2, v1, v3}, Lcom/nuance/swype/inapp/ThemePurchaser;->queryItems(Ljava/util/List;Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V

    goto :goto_0
.end method

.method public static from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeManager()Lcom/nuance/swype/input/ThemeManager;

    move-result-object v0

    return-object v0
.end method

.method private getDownloadableSkus()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 487
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v1, "skuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 499
    iget-object v3, p0, Lcom/nuance/swype/input/ThemeManager;->themeManagerContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v0

    .line 500
    .local v0, "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    if-eqz v0, :cond_1

    .line 501
    invoke-static {}, Lcom/nuance/swype/measure/UsecaseStopwatch;->getInstance()Lcom/nuance/swype/measure/UsecaseStopwatch;

    move-result-object v3

    sget-object v4, Lcom/nuance/swype/measure/Usecases;->GET_SKUS_FOR_DOWNLOAD:Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/measure/UsecaseStopwatch;->start(Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;)V

    .line 502
    invoke-virtual {v0}, Lcom/nuance/swype/inapp/CatalogManager;->getSKUforPurchase()Ljava/util/List;

    move-result-object v2

    .line 503
    .local v2, "skus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 504
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 505
    sget-object v3, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "getDownloadableSkus"

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 506
    invoke-static {v2}, Lcom/nuance/swype/input/ThemeManager;->logSkuList(Ljava/util/List;)V

    .line 509
    :cond_0
    invoke-static {}, Lcom/nuance/swype/measure/UsecaseStopwatch;->getInstance()Lcom/nuance/swype/measure/UsecaseStopwatch;

    move-result-object v3

    sget-object v4, Lcom/nuance/swype/measure/Usecases;->GET_SKUS_FOR_DOWNLOAD:Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/measure/UsecaseStopwatch;->stop(Lcom/nuance/swype/measure/UsecaseStopwatch$Usecase;)V

    .line 511
    .end local v2    # "skus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-object v1
.end method

.method private getDownloadedSwypeTheme(Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .locals 10
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 1150
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->themeManagerContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 1151
    if-eqz v0, :cond_0

    .line 1153
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    new-instance v0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    sget v1, Lcom/nuance/swype/input/R$style;->Swype:I

    sget v5, Lcom/nuance/swype/input/R$drawable;->thumbnail_test:I

    sget v6, Lcom/nuance/swype/input/R$drawable;->theme_preview_test:I

    const-string/jumbo v7, "no_category_id"

    move-object v3, p1

    move-object v4, p1

    move v9, v2

    invoke-direct/range {v0 .. v9}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;-><init>(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/util/List;I)V

    .line 1159
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v8

    goto :goto_0
.end method

.method private getThemePaidType(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)Ljava/lang/String;
    .locals 2
    .param p1, "theme"    # Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .prologue
    .line 1548
    invoke-virtual {p1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSource()Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;->CONNECT:Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    if-ne v0, v1, :cond_1

    .line 1549
    check-cast p1, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .end local p1    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {p1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v0

    .line 28214
    iget-boolean v0, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isFree:Z

    .line 1550
    if-eqz v0, :cond_0

    .line 1551
    const-string/jumbo v0, "free"

    .line 1558
    :goto_0
    return-object v0

    .line 1554
    :cond_0
    const-string/jumbo v0, "paid"

    goto :goto_0

    .line 1558
    .restart local p1    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_1
    const-string/jumbo v0, "free"

    goto :goto_0
.end method

.method private hasNewEntriesAddedToMyThemes()Z
    .locals 16

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 883
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    monitor-enter v10

    .line 884
    :try_start_0
    invoke-static {}, Lcom/nuance/swype/input/InputMethods;->isLocaleChanged()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 885
    monitor-exit v10

    move v7, v8

    .line 908
    :goto_0
    return v7

    .line 887
    :cond_0
    const/4 v3, 0x0

    .line 14043
    .local v3, "counter":I
    invoke-static {}, Lcom/nuance/swype/util/storage/ThemeData;->getCache()Ljava/util/HashMap;

    move-result-object v1

    .line 889
    .local v1, "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/util/storage/ThemeItemSeed;>;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 890
    .local v6, "skus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 891
    .local v2, "category":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 892
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 893
    .local v4, "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v4}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->isConnectTheme()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 894
    move-object v0, v4

    check-cast v0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v5

    .line 14206
    .local v5, "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    iget-boolean v7, v5, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    .line 895
    if-nez v7, :cond_3

    .line 14225
    iget-boolean v7, v5, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isInstalled:Z

    .line 895
    if-eqz v7, :cond_2

    .line 896
    :cond_3
    sget-object v7, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v15, "hasNewEntriesAddedToMyThemes purchased or free downloaded themes sku:"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 897
    invoke-virtual {v4}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-string/jumbo v15, " categoryid:"

    aput-object v15, v13, v14

    const/4 v14, 0x3

    invoke-virtual {v4}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getCurrentCategoryLabel()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 896
    invoke-interface {v7, v13}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 15162
    iget-object v7, v5, Lcom/nuance/swype/util/storage/ThemeItemSeed;->sku:Ljava/lang/String;

    .line 898
    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 16162
    iget-object v7, v5, Lcom/nuance/swype/util/storage/ThemeItemSeed;->sku:Ljava/lang/String;

    .line 899
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 900
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 907
    .end local v2    # "category":Ljava/lang/String;
    .end local v4    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .end local v5    # "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    const-string/jumbo v11, "no_category_id"

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    add-int/2addr v3, v7

    .line 908
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/swype/input/ThemeManager;->myEntries:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eq v7, v3, :cond_5

    move v7, v8

    :goto_2
    monitor-exit v10

    goto/16 :goto_0

    .line 909
    .end local v1    # "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/util/storage/ThemeItemSeed;>;>;"
    .end local v3    # "counter":I
    .end local v6    # "skus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v7

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v1    # "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/util/storage/ThemeItemSeed;>;>;"
    .restart local v3    # "counter":I
    .restart local v6    # "skus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    move v7, v9

    .line 908
    goto :goto_2
.end method

.method public static isBillingServiceAvailabeOnDevice(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 426
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .local v0, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isDownloadableThemeInEmbeddedList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 879
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->mEmbeddedSkuList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDownloadableThemesEnabled()Z
    .locals 1

    .prologue
    .line 358
    sget-boolean v0, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled:Z

    return v0
.end method

.method public static isIapFullySupported()Z
    .locals 1

    .prologue
    .line 1488
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isInAppApiSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isInAppServiceExisting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInAppApiSupported()Z
    .locals 1

    .prologue
    .line 374
    sget-boolean v0, Lcom/nuance/swype/input/ThemeManager;->isInAppApiSupported:Z

    return v0
.end method

.method public static isInAppServiceExisting()Z
    .locals 1

    .prologue
    .line 366
    sget-boolean v0, Lcom/nuance/swype/input/ThemeManager;->isInAppServiceExisting:Z

    return v0
.end method

.method private static logSkuList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "skus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 466
    sget-object v1, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "Getting details for the following skus from Google Play: "

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 467
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 468
    .local v0, "sku":Ljava/lang/String;
    sget-object v2, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0

    .line 470
    .end local v0    # "sku":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static notifyIapDataChanges()V
    .locals 1

    .prologue
    .line 477
    sget-object v0, Lcom/nuance/swype/input/ThemeManager;->observer:Lcom/nuance/swype/input/ThemeManager$NotifyObserverDataChanged;

    if-eqz v0, :cond_0

    .line 478
    sget-object v0, Lcom/nuance/swype/input/ThemeManager;->observer:Lcom/nuance/swype/input/ThemeManager$NotifyObserverDataChanged;

    invoke-interface {v0}, Lcom/nuance/swype/input/ThemeManager$NotifyObserverDataChanged;->onDataChanged()Z

    .line 480
    :cond_0
    return-void
.end method

.method public static recordThemePreviewData(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p0, "info"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1518
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1519
    .local v0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "Trial Conversion"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$Event;->THEME_PREVIEW_TRIAL_CONVERSION:Lcom/nuance/swype/usagedata/UsageData$Event;

    invoke-static {v1, v0}, Lcom/nuance/swype/usagedata/UsageData;->recordEvent(Lcom/nuance/swype/usagedata/UsageData$Event;Ljava/util/Map;)V

    .line 1521
    return-void
.end method

.method protected static scanSideloadedThemes(Landroid/content/Context;Ljava/util/Map;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/input/ThemeManager$SwypeTheme;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    const/4 v2, 0x0

    .line 1165
    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1192
    :cond_0
    return-void

    .line 1170
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1171
    new-instance v10, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Download//themes/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1172
    .local v10, "dir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1173
    new-instance v0, Lcom/nuance/swype/input/ThemeManager$2;

    invoke-direct {v0}, Lcom/nuance/swype/input/ThemeManager$2;-><init>()V

    invoke-virtual {v10, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v11

    .line 1178
    .local v11, "dirFiles":[Ljava/io/File;
    if-eqz v11, :cond_0

    array-length v0, v11

    if-lez v0, :cond_0

    .line 1179
    const/4 v12, 0x0

    .local v12, "ii":I
    :goto_0
    array-length v0, v11

    if-ge v12, v0, :cond_0

    .line 1180
    aget-object v0, v11, v12

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1181
    .local v3, "apkName":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1182
    new-instance v0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    sget v1, Lcom/nuance/swype/input/R$style;->Swype:I

    sget v5, Lcom/nuance/swype/input/R$drawable;->thumbnail_test:I

    sget v6, Lcom/nuance/swype/input/R$drawable;->theme_preview_test:I

    const-string/jumbo v7, "no_category_id"

    const/4 v8, 0x0

    move-object v4, v3

    move v9, v2

    invoke-direct/range {v0 .. v9}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;-><init>(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/util/List;I)V

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0
.end method

.method private setEmbeddedThemeList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 874
    .local p1, "embeddedSkuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->mEmbeddedSkuList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 875
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->mEmbeddedSkuList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 876
    return-void
.end method

.method public static setIapObserver(Lcom/nuance/swype/input/ThemeManager$NotifyObserverDataChanged;)V
    .locals 0
    .param p0, "obj"    # Lcom/nuance/swype/input/ThemeManager$NotifyObserverDataChanged;

    .prologue
    .line 473
    sput-object p0, Lcom/nuance/swype/input/ThemeManager;->observer:Lcom/nuance/swype/input/ThemeManager$NotifyObserverDataChanged;

    .line 474
    return-void
.end method

.method public static setIsDownloadableThemesEnabled(Z)V
    .locals 0
    .param p0, "isDownloadableThemesEnabled"    # Z

    .prologue
    .line 362
    sput-boolean p0, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled:Z

    .line 363
    return-void
.end method

.method public static setIsInAppApiSupported(Z)V
    .locals 0
    .param p0, "isInAppApiSupported"    # Z

    .prologue
    .line 378
    sput-boolean p0, Lcom/nuance/swype/input/ThemeManager;->isInAppApiSupported:Z

    .line 379
    return-void
.end method

.method public static setIsInAppServiceExisting(Z)V
    .locals 0
    .param p0, "isInAppServiceExisting"    # Z

    .prologue
    .line 370
    sput-boolean p0, Lcom/nuance/swype/input/ThemeManager;->isInAppServiceExisting:Z

    .line 371
    return-void
.end method

.method public static setUpdateNotificationAllowed(Z)V
    .locals 0
    .param p0, "allow"    # Z

    .prologue
    .line 1642
    return-void
.end method

.method private syncPurchasedOrInstalledList()V
    .locals 15

    .prologue
    .line 665
    iget-object v10, p0, Lcom/nuance/swype/input/ThemeManager;->themeManagerContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v0

    .line 666
    .local v0, "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    if-eqz v0, :cond_4

    .line 4766
    iget-object v6, v0, Lcom/nuance/swype/inapp/CatalogManager;->purchasedMap:Ljava/util/Map;

    .line 669
    .local v6, "purchasedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v6, :cond_4

    .line 670
    iget-object v10, p0, Lcom/nuance/swype/input/ThemeManager;->themeManagerContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/swype/connect/Connect;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v3

    .line 671
    .local v3, "cs":Lcom/nuance/swypeconnect/ac/ACCatalogService;
    invoke-interface {v3}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->getCatalogItemCategories()Ljava/util/List;

    move-result-object v10

    .line 674
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 675
    .local v1, "category":Ljava/lang/String;
    invoke-interface {v3, v1}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->getCategoryKeyForCategoryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 676
    .local v2, "categoryKey":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/nuance/swype/inapp/CatalogManager;->getThemesForCategory(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 678
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 679
    .local v9, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v9}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v2, v12}, Lcom/nuance/swype/inapp/CatalogManager;->getThemeSeed(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v7

    .line 682
    .local v7, "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    if-eqz v7, :cond_1

    .line 5214
    iget-boolean v12, v7, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isFree:Z

    .line 682
    if-nez v12, :cond_1

    .line 5235
    iget-boolean v12, v7, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isInstalling:Z

    .line 682
    if-nez v12, :cond_1

    .line 6225
    iget-boolean v12, v7, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isInstalled:Z

    .line 682
    if-nez v12, :cond_1

    .line 685
    invoke-virtual {v9}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_NOSTATE:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    invoke-virtual {p0, v12, v13}, Lcom/nuance/swype/input/ThemeManager;->updateThemeStatus(Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V

    goto :goto_0

    .line 689
    .end local v1    # "category":Ljava/lang/String;
    .end local v2    # "categoryKey":Ljava/lang/String;
    .end local v7    # "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    .end local v9    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_2
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 690
    .local v8, "sku":Ljava/lang/String;
    sget-object v11, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "syncPurchasedListOrInstalledList theme sku:"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v8, v12, v13

    const/4 v13, 0x2

    const-string/jumbo v14, " is purchased"

    aput-object v14, v12, v13

    invoke-interface {v11, v12}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 691
    sget-object v11, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_PURCHASED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    invoke-virtual {p0, v8, v11}, Lcom/nuance/swype/input/ThemeManager;->updateThemeStatus(Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V

    .line 692
    sget-object v11, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_PURCHASED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .line 7031
    invoke-static {v8, v11}, Lcom/nuance/swype/util/storage/ThemeData;->update(Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)Z

    goto :goto_1

    .line 7823
    .end local v8    # "sku":Ljava/lang/String;
    :cond_3
    iget-object v4, v0, Lcom/nuance/swype/inapp/CatalogManager;->mInstalledList:Lcom/nuance/swype/inapp/InstalledList;

    .line 696
    .local v4, "installedList":Lcom/nuance/swype/inapp/InstalledList;
    if-eqz v4, :cond_4

    .line 8048
    iget-object v10, v4, Lcom/nuance/swype/inapp/InstalledList;->mInstalledMap:Ljava/util/Map;

    .line 697
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 698
    .local v5, "installedSku":Ljava/lang/String;
    sget-object v11, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "syncPurchasedListOrInstalledList theme sku:"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v5, v12, v13

    const/4 v13, 0x2

    const-string/jumbo v14, " is installed"

    aput-object v14, v12, v13

    invoke-interface {v11, v12}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 699
    sget-object v11, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALLED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    invoke-virtual {p0, v5, v11}, Lcom/nuance/swype/input/ThemeManager;->updateThemeStatus(Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V

    .line 700
    sget-object v11, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALLED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .line 9031
    invoke-static {v5, v11}, Lcom/nuance/swype/util/storage/ThemeData;->update(Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)Z

    goto :goto_2

    .line 706
    .end local v3    # "cs":Lcom/nuance/swypeconnect/ac/ACCatalogService;
    .end local v4    # "installedList":Lcom/nuance/swype/inapp/InstalledList;
    .end local v5    # "installedSku":Ljava/lang/String;
    .end local v6    # "purchasedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_4
    return-void
.end method

.method private syncToCategoryItemList(Landroid/content/Context;)V
    .locals 17
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 541
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 543
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/ThemeManager;->categoryItemList:Ljava/util/ArrayList;

    new-instance v12, Lcom/nuance/swype/inapp/CategoryItem;

    const-string/jumbo v13, "Swype"

    const-string/jumbo v14, "no_category_id"

    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    const-string/jumbo v16, "no_category_id"

    .line 544
    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-direct {v15, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v12, v13, v14, v15}, Lcom/nuance/swype/inapp/CategoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 543
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    :cond_0
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->notifyIapDataChanges()V

    .line 600
    sget-object v10, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "categoryItemList size:"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/ThemeManager;->categoryItemList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-interface {v10, v11}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 602
    return-void

    .line 547
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    const-string/jumbo v11, "no_category_id"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedHashMap;

    .line 548
    .local v5, "embeddedMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/swype/input/ThemeManager;->categoryItemList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 549
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/swype/connect/Connect;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v4

    .line 550
    .local v4, "cs":Lcom/nuance/swypeconnect/ac/ACCatalogService;
    invoke-interface {v4}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->getCatalogItemCategories()Ljava/util/List;

    move-result-object v10

    .line 551
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 552
    .local v1, "category":Ljava/lang/String;
    invoke-interface {v4, v1}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->getCategoryKeyForCategoryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 554
    .local v2, "categoryKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/LinkedHashMap;

    .line 555
    .local v9, "themesMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    if-eqz v9, :cond_2

    .line 559
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v8, "themes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 561
    .local v3, "classicThemes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    const-string/jumbo v10, "swype_classics"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 562
    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 563
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 564
    .local v7, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    sget-object v12, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v15, "swype classic theme sku:"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v7}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-interface {v12, v13}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 565
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v7}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 566
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 569
    .end local v7    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 570
    sget-object v10, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "all embedded themes existed locally"

    aput-object v14, v12, v13

    invoke-interface {v10, v12}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 575
    :cond_5
    move-object v8, v3

    .line 593
    :cond_6
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 594
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/swype/input/ThemeManager;->swypeThemeWeightComparator:Lcom/nuance/swype/input/ThemeManager$SwypeThemeWeightComparator;

    invoke-static {v8, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 595
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/swype/input/ThemeManager;->categoryItemList:Ljava/util/ArrayList;

    new-instance v12, Lcom/nuance/swype/inapp/CategoryItem;

    invoke-direct {v12, v1, v2, v8}, Lcom/nuance/swype/inapp/CategoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 579
    :cond_7
    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_8
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 580
    .restart local v7    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v7}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->isConnectTheme()Z

    move-result v10

    if-eqz v10, :cond_8

    move-object v10, v7

    .line 581
    check-cast v10, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v10}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v6

    .line 582
    .local v6, "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    invoke-static {}, Lcom/nuance/swype/service/impl/AccountUtil;->isGoogleAccountMissing()Z

    move-result v10

    if-nez v10, :cond_c

    invoke-static {}, Lcom/nuance/swype/service/impl/AccountUtil;->isGoogleAccountSignedIn()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 2214
    iget-boolean v10, v6, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isFree:Z

    .line 583
    if-nez v10, :cond_a

    .line 2250
    iget-boolean v10, v6, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchasable:Z

    .line 583
    if-nez v10, :cond_a

    .line 2254
    iget-object v10, v6, Lcom/nuance/swype/util/storage/ThemeItemSeed;->price:Ljava/lang/String;

    if-eqz v10, :cond_9

    iget-object v10, v6, Lcom/nuance/swype/util/storage/ThemeItemSeed;->price:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_b

    :cond_9
    const/4 v10, 0x1

    .line 583
    :goto_3
    if-nez v10, :cond_8

    .line 584
    :cond_a
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2254
    :cond_b
    const/4 v10, 0x0

    goto :goto_3

    .line 587
    :cond_c
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method public addConnectedThemesToMap()Z
    .locals 14

    .prologue
    .line 608
    iget-object v9, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    monitor-enter v9

    .line 3043
    :try_start_0
    invoke-static {}, Lcom/nuance/swype/util/storage/ThemeData;->getCache()Ljava/util/HashMap;

    move-result-object v0

    .line 615
    .local v0, "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/util/storage/ThemeItemSeed;>;>;"
    const/4 v7, 0x0

    .line 616
    .local v7, "totalCount":I
    iget-object v8, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 617
    .local v2, "category":Ljava/lang/String;
    const-string/jumbo v8, "no_category_id"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 618
    iget-object v8, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_0

    .line 622
    .end local v2    # "category":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/ThemeManager;->syncPurchasedOrInstalledList()V

    .line 624
    invoke-static {}, Lcom/nuance/swype/input/InputMethods;->isLocaleChanged()Z

    move-result v8

    if-nez v8, :cond_2

    .line 3047
    invoke-static {}, Lcom/nuance/swype/util/storage/ThemeData;->getTotalCacheCount()I

    move-result v8

    .line 624
    if-eq v8, v7, :cond_7

    .line 626
    :cond_2
    sget-object v8, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "addConnectedThemesToMap re-cache"

    aput-object v12, v10, v11

    invoke-interface {v8, v10}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 632
    iget-object v8, p0, Lcom/nuance/swype/input/ThemeManager;->themeManagerContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v8

    .line 633
    invoke-virtual {v8}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v1

    .line 634
    .local v1, "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    if-eqz v1, :cond_5

    .line 635
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 636
    .local v3, "categoryKey":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/nuance/swype/inapp/CatalogManager;->getThemesForCategory(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 637
    .local v6, "themes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 638
    sget-object v10, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "add category:"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v3, v11, v12

    invoke-interface {v10, v11}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 641
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 642
    .local v4, "connectThemesMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 643
    .local v5, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v5}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 656
    .end local v0    # "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/util/storage/ThemeItemSeed;>;>;"
    .end local v1    # "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    .end local v3    # "categoryKey":Ljava/lang/String;
    .end local v4    # "connectThemesMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    .end local v5    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .end local v6    # "themes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    .end local v7    # "totalCount":I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 646
    .restart local v0    # "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/util/storage/ThemeItemSeed;>;>;"
    .restart local v1    # "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    .restart local v3    # "categoryKey":Ljava/lang/String;
    .restart local v4    # "connectThemesMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    .restart local v6    # "themes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    .restart local v7    # "totalCount":I
    :cond_4
    :try_start_1
    iget-object v10, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 650
    .end local v3    # "categoryKey":Ljava/lang/String;
    .end local v4    # "connectThemesMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    .end local v6    # "themes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    :cond_5
    iget-object v8, p0, Lcom/nuance/swype/input/ThemeManager;->themeManagerContext:Landroid/content/Context;

    invoke-direct {p0, v8}, Lcom/nuance/swype/input/ThemeManager;->syncToCategoryItemList(Landroid/content/Context;)V

    .line 4047
    invoke-static {}, Lcom/nuance/swype/util/storage/ThemeData;->getTotalCacheCount()I

    move-result v8

    .line 652
    if-eq v8, v7, :cond_6

    const/4 v8, 0x1

    :goto_3
    monitor-exit v9

    .line 655
    .end local v1    # "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    :goto_4
    return v8

    .line 652
    .restart local v1    # "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    .line 655
    .end local v1    # "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    :cond_7
    const/4 v8, 0x0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method public clearCache()V
    .locals 4

    .prologue
    .line 388
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->categoryItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2043
    invoke-static {}, Lcom/nuance/swype/util/storage/ThemeData;->getCache()Ljava/util/HashMap;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 390
    iget-object v1, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    monitor-enter v1

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 392
    iget-object v2, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    const-string/jumbo v3, "no_category_id"

    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->themeMap:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBundleOfTheme(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "themeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1068
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1069
    .local v0, "bundle":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    .line 1070
    iget-object v4, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1071
    .local v1, "category":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 1072
    .local v3, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->isConnectTheme()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    .line 1073
    check-cast v4, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v4}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    .line 26132
    .local v2, "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    iget v4, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->type:I

    .line 1074
    sget-object v7, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->BUNDLE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    invoke-virtual {v7}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->ordinal()I

    move-result v7

    if-ne v4, v7, :cond_1

    .line 27100
    iget-object v4, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->skuList:Ljava/util/List;

    .line 1075
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1076
    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1083
    .end local v1    # "category":Ljava/lang/String;
    .end local v2    # "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    .end local v3    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_2
    return-object v0
.end method

.method public getBundleThemes(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "bundleSku"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/ThemeManager$SwypeTheme;",
            ">;"
        }
    .end annotation

    .prologue
    .line 709
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    monitor-enter v13

    .line 712
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/LinkedHashMap;

    .line 713
    .local v10, "themeMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .local v1, "bundle":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    if-nez v10, :cond_0

    .line 715
    monitor-exit v13

    .line 751
    :goto_0
    return-object v1

    .line 717
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 718
    .local v2, "bundleTheme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    move-object v0, v2

    check-cast v0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v12

    .line 9136
    iget-object v3, v12, Lcom/nuance/swype/util/storage/ThemeItemSeed;->themeCategories:Ljava/util/List;

    .line 719
    .local v3, "categoryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_1

    .line 720
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "categoryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 721
    .restart local v3    # "categoryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getCurrentCategoryLabel()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    :cond_1
    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSkuList()Ljava/util/List;

    move-result-object v8

    .line 725
    .local v8, "skuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/swype/input/ThemeManager;->themeManagerContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v12

    invoke-virtual {v12}, Lcom/nuance/swype/connect/Connect;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v4

    .line 726
    .local v4, "cs":Lcom/nuance/swypeconnect/ac/ACCatalogService;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 727
    .local v7, "sku":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 728
    .local v5, "item":Ljava/lang/String;
    invoke-interface {v4, v5}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->getCategoryKeyForCategoryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 729
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/LinkedHashMap;

    .line 730
    .local v11, "themes":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    if-eqz v11, :cond_3

    .line 733
    invoke-virtual {v11, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 734
    .local v9, "subTheme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    if-eqz v9, :cond_4

    .line 735
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 752
    .end local v1    # "bundle":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    .end local v2    # "bundleTheme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .end local v3    # "categoryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "cs":Lcom/nuance/swypeconnect/ac/ACCatalogService;
    .end local v5    # "item":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "sku":Ljava/lang/String;
    .end local v8    # "skuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "subTheme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .end local v10    # "themeMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    .end local v11    # "themes":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 739
    .restart local v1    # "bundle":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    .restart local v2    # "bundleTheme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .restart local v3    # "categoryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "cs":Lcom/nuance/swypeconnect/ac/ACCatalogService;
    .restart local v5    # "item":Ljava/lang/String;
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v7    # "sku":Ljava/lang/String;
    .restart local v8    # "skuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "subTheme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .restart local v10    # "themeMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    .restart local v11    # "themes":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    const-string/jumbo v16, "no_category_id_DLT"

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "themes":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    check-cast v11, Ljava/util/LinkedHashMap;

    .line 740
    .restart local v11    # "themes":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    if-eqz v11, :cond_3

    .line 743
    invoke-virtual {v11, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "subTheme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    check-cast v9, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 744
    .restart local v9    # "subTheme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    if-eqz v9, :cond_3

    .line 745
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 751
    .end local v5    # "item":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "sku":Ljava/lang/String;
    .end local v9    # "subTheme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .end local v11    # "themes":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    :cond_5
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public getCategoryThemes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "categoryId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/ThemeManager$SwypeTheme;",
            ">;"
        }
    .end annotation

    .prologue
    .line 768
    iget-object v9, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    monitor-enter v9

    .line 769
    if-nez p2, :cond_0

    .line 770
    :try_start_0
    iget-object p2, p0, Lcom/nuance/swype/input/ThemeManager;->currentCategoryId:Ljava/lang/String;

    .line 773
    :cond_0
    const-string/jumbo v8, "my_themes"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 10043
    invoke-static {}, Lcom/nuance/swype/util/storage/ThemeData;->getCache()Ljava/util/HashMap;

    move-result-object v0

    .line 791
    .local v0, "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/util/storage/ThemeItemSeed;>;>;"
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v1

    .line 792
    .local v1, "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v1}, Lcom/nuance/swype/inapp/CatalogManager;->hasStoredSkuList()Z

    move-result v8

    if-nez v8, :cond_3

    .line 793
    const-string/jumbo p2, "no_category_id"

    .line 820
    .end local v0    # "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/util/storage/ThemeItemSeed;>;>;"
    .end local v1    # "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    :cond_1
    iget-object v8, p0, Lcom/nuance/swype/input/ThemeManager;->categoryItemList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 821
    iget-object v8, p0, Lcom/nuance/swype/input/ThemeManager;->categoryItemList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/inapp/CategoryItem;

    .line 11024
    .local v7, "item":Lcom/nuance/swype/inapp/CategoryItem;
    iget-object v10, v7, Lcom/nuance/swype/inapp/CategoryItem;->categoryId:Ljava/lang/String;

    .line 822
    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 11032
    iget-object v6, v7, Lcom/nuance/swype/inapp/CategoryItem;->themes:Ljava/util/List;

    .line 823
    monitor-exit v9

    .line 834
    .end local v7    # "item":Lcom/nuance/swype/inapp/CategoryItem;
    :goto_0
    return-object v6

    .line 799
    .restart local v0    # "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/util/storage/ThemeItemSeed;>;>;"
    .restart local v1    # "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/ThemeManager;->hasNewEntriesAddedToMyThemes()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 800
    iget-object v8, p0, Lcom/nuance/swype/input/ThemeManager;->myEntries:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 801
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/connect/Connect;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v4

    .line 802
    .local v4, "cs":Lcom/nuance/swypeconnect/ac/ACCatalogService;
    if-eqz v4, :cond_4

    .line 803
    invoke-interface {v4}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->getCatalogItemCategories()Ljava/util/List;

    move-result-object v8

    .line 804
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 806
    .local v2, "category":Ljava/lang/String;
    invoke-interface {v4, v2}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->getCategoryKeyForCategoryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 807
    .local v3, "categoryKey":Ljava/lang/String;
    iget-object v10, p0, Lcom/nuance/swype/input/ThemeManager;->myEntries:Ljava/util/List;

    invoke-direct {p0, v3, v10}, Lcom/nuance/swype/input/ThemeManager;->addOwnedThemeToMyTheme(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 835
    .end local v0    # "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/util/storage/ThemeItemSeed;>;>;"
    .end local v1    # "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    .end local v2    # "category":Ljava/lang/String;
    .end local v3    # "categoryKey":Ljava/lang/String;
    .end local v4    # "cs":Lcom/nuance/swypeconnect/ac/ACCatalogService;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 811
    .restart local v0    # "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/util/storage/ThemeItemSeed;>;>;"
    .restart local v1    # "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    .restart local v4    # "cs":Lcom/nuance/swypeconnect/ac/ACCatalogService;
    :cond_4
    :try_start_1
    const-string/jumbo v8, "no_category_id_DLT"

    iget-object v10, p0, Lcom/nuance/swype/input/ThemeManager;->myEntries:Ljava/util/List;

    invoke-direct {p0, v8, v10}, Lcom/nuance/swype/input/ThemeManager;->addOwnedThemeToMyTheme(Ljava/lang/String;Ljava/util/List;)V

    .line 813
    new-instance v5, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    const-string/jumbo v10, "no_category_id"

    .line 814
    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 815
    .local v5, "embeddedEntries":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    iget-object v8, p0, Lcom/nuance/swype/input/ThemeManager;->myEntries:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 817
    .end local v4    # "cs":Lcom/nuance/swypeconnect/ac/ACCatalogService;
    .end local v5    # "embeddedEntries":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    :cond_5
    iget-object v6, p0, Lcom/nuance/swype/input/ThemeManager;->myEntries:Ljava/util/List;

    monitor-exit v9

    goto :goto_0

    .line 828
    .end local v0    # "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/util/storage/ThemeItemSeed;>;>;"
    .end local v1    # "catalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 829
    .local v6, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    iget-object v8, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v8, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 830
    iget-object v8, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v8, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 833
    :cond_7
    iget-object v8, p0, Lcom/nuance/swype/input/ThemeManager;->swypeThemeWeightComparator:Lcom/nuance/swype/input/ThemeManager$SwypeThemeWeightComparator;

    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 834
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public getCategoryThemes(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/input/ThemeManager$SwypeTheme;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 762
    iget-object v1, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    monitor-enter v1

    .line 763
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    monitor-exit v1

    return-object v0

    .line 764
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSwypeTheme(Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .locals 11
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1107
    iget-object v4, p0, Lcom/nuance/swype/input/ThemeManager;->currentTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/input/ThemeManager;->currentTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v4}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1108
    sget-object v4, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v10, [Ljava/lang/Object;

    const-string/jumbo v6, "find current theme, sku:"

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/nuance/swype/input/ThemeManager;->currentTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v6}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1109
    iget-object v4, p0, Lcom/nuance/swype/input/ThemeManager;->currentTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 1146
    :goto_0
    return-object v4

    .line 1111
    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1113
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/ThemeManager;->getDownloadedSwypeTheme(Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v0

    .line 1114
    .local v0, "downloadedTheme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    if-eqz v0, :cond_5

    .line 1115
    sget-object v4, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v9, [Ljava/lang/Object;

    const-string/jumbo v6, "returning downloaded theme"

    aput-object v6, v5, v8

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1116
    iput-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->currentTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 1117
    iget-object v4, p0, Lcom/nuance/swype/input/ThemeManager;->currentTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    goto :goto_0

    .line 1120
    .end local v0    # "downloadedTheme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_1
    iget-object v5, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    monitor-enter v5

    .line 1121
    :try_start_0
    iget-object v4, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1122
    .local v1, "item":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 1123
    .local v3, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1124
    iput-object v3, p0, Lcom/nuance/swype/input/ThemeManager;->currentTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 1125
    sget-object v4, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "find macthed theme, sku:"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/nuance/swype/input/ThemeManager;->currentTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v8}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1126
    iget-object v4, p0, Lcom/nuance/swype/input/ThemeManager;->currentTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    monitor-exit v5

    goto :goto_0

    .line 1130
    .end local v1    # "item":Ljava/lang/String;
    .end local v3    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_4
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1134
    :cond_5
    iget-object v4, p0, Lcom/nuance/swype/input/ThemeManager;->defaultTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    if-nez v4, :cond_6

    .line 1135
    invoke-virtual {p0}, Lcom/nuance/swype/input/ThemeManager;->getSwypeThemes()Ljava/util/List;

    move-result-object v2

    .line 1136
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1138
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    iput-object v4, p0, Lcom/nuance/swype/input/ThemeManager;->defaultTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 1139
    iget-object v4, p0, Lcom/nuance/swype/input/ThemeManager;->themeManagerContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/ThemeManager;->defaultTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v5}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/UserPreferences;->setCurrentThemeId(Ljava/lang/String;)V

    .line 1144
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/nuance/swype/input/ThemeManager;->defaultTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    iput-object v4, p0, Lcom/nuance/swype/input/ThemeManager;->currentTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 1145
    sget-object v5, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v10, [Ljava/lang/Object;

    const-string/jumbo v4, "getting default theme sku:"

    aput-object v4, v6, v8

    iget-object v4, p0, Lcom/nuance/swype/input/ThemeManager;->currentTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/nuance/swype/input/ThemeManager;->currentTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v4}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v4

    :goto_2
    aput-object v4, v6, v9

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1146
    iget-object v4, p0, Lcom/nuance/swype/input/ThemeManager;->currentTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    goto/16 :goto_0

    .line 1141
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    :cond_7
    sget-object v4, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v9, [Ljava/lang/Object;

    const-string/jumbo v6, "default theme is null"

    aput-object v6, v5, v8

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_1

    .line 1145
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    :cond_8
    const-string/jumbo v4, ""

    goto :goto_2
.end method

.method public getSwypeTheme(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .locals 5
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "sku"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1087
    iget-object v1, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    if-nez v1, :cond_0

    move-object v0, v2

    .line 1100
    :goto_0
    return-object v0

    .line 1090
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    monitor-enter v3

    .line 1091
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    .line 1092
    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/ThemeManager;->getSwypeTheme(Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v0

    monitor-exit v3

    goto :goto_0

    .line 1101
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1094
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 1095
    .local v0, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1096
    monitor-exit v3

    goto :goto_0

    .line 1100
    .end local v0    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0
.end method

.method public getSwypeThemeCount()I
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->themeMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->themeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 520
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSwypeThemes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/ThemeManager$SwypeTheme;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1064
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/swype/input/ThemeManager;->themeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getThemeCategoryItemList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/swype/inapp/CategoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 534
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->categoryItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 535
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/ThemeManager;->syncToCategoryItemList(Landroid/content/Context;)V

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->categoryItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getThemeDataManager()Lcom/nuance/swype/util/storage/ThemeDataManager;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->dataManager:Lcom/nuance/swype/util/storage/ThemeDataManager;

    return-object v0
.end method

.method public getThemePurchaser(Landroid/content/Context;)Lcom/nuance/swype/inapp/ThemePurchaser;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->mThemePurchaser:Lcom/nuance/swype/inapp/ThemePurchaser;

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Lcom/nuance/swype/inapp/ThemePurchaser;

    invoke-direct {v0, p1}, Lcom/nuance/swype/inapp/ThemePurchaser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->mThemePurchaser:Lcom/nuance/swype/inapp/ThemePurchaser;

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->mThemePurchaser:Lcom/nuance/swype/inapp/ThemePurchaser;

    return-object v0
.end method

.method public hasFreeThemes()Z
    .locals 6

    .prologue
    .line 1012
    iget-object v2, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1013
    .local v0, "category":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 1014
    .local v1, "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSource()Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    move-result-object v4

    sget-object v5, Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;->CONNECT:Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    if-ne v4, v5, :cond_1

    .line 1015
    check-cast v1, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .end local v1    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v4

    .line 21214
    iget-boolean v4, v4, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isFree:Z

    .line 1015
    if-eqz v4, :cond_1

    .line 1016
    const/4 v2, 0x1

    .line 1021
    .end local v0    # "category":Ljava/lang/String;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasNoPriceThemes()Z
    .locals 7

    .prologue
    .line 1040
    iget-object v3, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1041
    .local v0, "category":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 1042
    .local v1, "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->isConnectTheme()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1043
    check-cast v1, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .end local v1    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    .line 24194
    .local v2, "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    iget-object v5, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->price:Ljava/lang/String;

    .line 1044
    if-eqz v5, :cond_1

    .line 25194
    iget-object v5, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->price:Ljava/lang/String;

    .line 1044
    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1045
    const/4 v3, 0x1

    .line 1051
    .end local v0    # "category":Ljava/lang/String;
    .end local v2    # "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hasPricedThemes()Z
    .locals 7

    .prologue
    .line 1025
    iget-object v3, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1026
    .local v0, "category":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 1027
    .local v1, "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->isConnectTheme()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1028
    check-cast v1, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .end local v1    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    .line 22194
    .local v2, "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    iget-object v5, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->price:Ljava/lang/String;

    .line 1029
    if-eqz v5, :cond_1

    .line 23194
    iget-object v5, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->price:Ljava/lang/String;

    .line 1029
    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1030
    const/4 v3, 0x1

    .line 1036
    .end local v0    # "category":Ljava/lang/String;
    .end local v2    # "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public importMls(Landroid/content/Context;I)V
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "leftNum"    # I

    .prologue
    .line 1589
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 1590
    .local v2, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getNewWordsBucketFactory()Lcom/nuance/swype/input/udb/NewWordsBucketFactory;

    move-result-object v7

    .line 1591
    invoke-virtual {v7}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->getMlsThemeWordsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v0

    .line 1592
    .local v0, "bucket":Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1593
    .local v5, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1594
    .local v6, "resource":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v7, Lcom/nuance/swype/input/ThemeManager;->mls_hotwords:[I

    array-length v7, v7

    if-ge v1, v7, :cond_2

    .line 1595
    sget-object v7, Lcom/nuance/swype/input/ThemeManager;->mls_hotwords:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1596
    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1597
    .local v4, "nameArray":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v7, v4

    if-ge v3, v7, :cond_1

    .line 1598
    aget-object v7, v4, v3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1599
    aget-object v7, v4, v3

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1597
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1594
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1603
    .end local v3    # "j":I
    .end local v4    # "nameArray":[Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->add(Ljava/util/Set;)V

    .line 1604
    if-lez p2, :cond_3

    .line 1605
    :goto_2
    invoke-virtual {v0}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->size()I

    move-result v7

    if-le v7, p2, :cond_3

    .line 1606
    invoke-virtual {v0}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->remove()Ljava/lang/String;

    goto :goto_2

    .line 1609
    :cond_3
    sget-object v7, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "import MLS hot words:"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1610
    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/IMEApplication;->notifyNewWordsForScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V

    .line 1611
    return-void
.end method

.method public importMlsHotwords(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1573
    invoke-static {p1}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    .line 1574
    .local v0, "lan":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1586
    :cond_0
    :goto_0
    return-void

    .line 1577
    :cond_1
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 1578
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1581
    invoke-static {p1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getMlsHotWordsImported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1582
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Lcom/nuance/swype/input/ThemeManager;->importMls(Landroid/content/Context;I)V

    .line 1584
    invoke-static {p1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->setMlsHotWordsImported()V

    goto :goto_0
.end method

.method public initializeInAppPurchase(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 400
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->mThemePurchaser:Lcom/nuance/swype/inapp/ThemePurchaser;

    if-nez v0, :cond_0

    .line 402
    new-instance v0, Lcom/nuance/swype/inapp/ThemePurchaser;

    invoke-direct {v0, p1}, Lcom/nuance/swype/inapp/ThemePurchaser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->mThemePurchaser:Lcom/nuance/swype/inapp/ThemePurchaser;

    .line 405
    :cond_0
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isInAppServiceExisting()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isInAppApiSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/ThemeManager;->fetchThemeDetailsFromStore(Landroid/content/Context;)V

    .line 410
    :cond_1
    return-void
.end method

.method public onPurchaseFinished(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "categoryId"    # Ljava/lang/String;

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategory:Lcom/nuance/swype/input/settings/ThemesCategory;

    if-eqz v0, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategory:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/input/settings/ThemesCategory;->onPurchaseFinished(ILjava/lang/String;Ljava/lang/String;)V

    .line 1632
    :cond_0
    return-void
.end method

.method public onThemeChanged(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 7
    .param p1, "fromThemeSku"    # Ljava/lang/String;
    .param p2, "toThemeSku"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    .line 1524
    sget-object v1, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Theme changed from: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1525
    invoke-static {p3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 1526
    .local v0, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v0, :cond_0

    .line 1527
    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getKeyboardBackgroundManager()Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->setReloadRequiredFromResources(Z)V

    .line 1530
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/ThemeManager;->recordThemeChanged(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1531
    return-void
.end method

.method public recordThemeChanged(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .param p1, "fromThemeSku"    # Ljava/lang/String;
    .param p2, "toThemeSku"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1533
    invoke-static {p1}, Lcom/nuance/swype/util/StringUtils;->isApkCompletePath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1534
    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1535
    .local v0, "themePath":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 1537
    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    aget-object p1, v0, v2

    .line 1541
    .end local v0    # "themePath":[Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1542
    .local v1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "Theme Changed"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "From: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    const-string/jumbo v2, "Theme Type"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "From: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/ThemeManager;->getSwypeTheme(Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/ThemeManager;->getThemePaidType(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/ThemeManager;->getSwypeTheme(Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/ThemeManager;->getThemePaidType(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1544
    sget-object v2, Lcom/nuance/swype/usagedata/UsageData$Event;->STORE_THEME_CHANGED:Lcom/nuance/swype/usagedata/UsageData$Event;

    invoke-static {v2, v1}, Lcom/nuance/swype/usagedata/UsageData;->recordEvent(Lcom/nuance/swype/usagedata/UsageData$Event;Ljava/util/Map;)V

    .line 1545
    return-void
.end method

.method public refetchPurchaseInfoFromGoogleStore(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1392
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1395
    invoke-static {p1}, Lcom/nuance/swype/input/ThemeManager;->isBillingServiceAvailabeOnDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1397
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/nuance/swype/input/ThemeManager;->setIsInAppServiceExisting(Z)V

    .line 1402
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->mThemePurchaser:Lcom/nuance/swype/inapp/ThemePurchaser;

    if-nez v0, :cond_0

    .line 1403
    new-instance v0, Lcom/nuance/swype/inapp/ThemePurchaser;

    invoke-direct {v0, p1}, Lcom/nuance/swype/inapp/ThemePurchaser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->mThemePurchaser:Lcom/nuance/swype/inapp/ThemePurchaser;

    .line 1406
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->mThemePurchaser:Lcom/nuance/swype/inapp/ThemePurchaser;

    new-instance v1, Lcom/nuance/swype/input/ThemeManager$3;

    invoke-direct {v1, p0, p1}, Lcom/nuance/swype/input/ThemeManager$3;-><init>(Lcom/nuance/swype/input/ThemeManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/nuance/swype/inapp/ThemePurchaser;->setupInAppBillingService(Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V

    .line 1471
    :cond_1
    return-void

    .line 1399
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nuance/swype/input/ThemeManager;->setIsInAppServiceExisting(Z)V

    goto :goto_0
.end method

.method public setCurrentCategoryId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 756
    iput-object p1, p0, Lcom/nuance/swype/input/ThemeManager;->currentCategoryId:Ljava/lang/String;

    .line 757
    return-void
.end method

.method public setCurrentThemesCategory(Lcom/nuance/swype/input/settings/ThemesCategory;)V
    .locals 0
    .param p1, "themesCategory"    # Lcom/nuance/swype/input/settings/ThemesCategory;

    .prologue
    .line 1058
    return-void
.end method

.method public setThemeManagerContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1670
    iput-object p1, p0, Lcom/nuance/swype/input/ThemeManager;->themeManagerContext:Landroid/content/Context;

    .line 1671
    return-void
.end method

.method public setThemesCategory(Lcom/nuance/swype/input/settings/ThemesCategory;)V
    .locals 0
    .param p1, "themeCategory"    # Lcom/nuance/swype/input/settings/ThemesCategory;

    .prologue
    .line 1614
    iput-object p1, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategory:Lcom/nuance/swype/input/settings/ThemesCategory;

    .line 1615
    return-void
.end method

.method public showNotAvailableDialogForGoogleTrial(Landroid/content/Context;Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;)Landroid/app/Dialog;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;

    .prologue
    .line 1492
    sget v1, Lcom/nuance/swype/input/R$string;->url_android_market_dtc_details:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1493
    .local v0, "appStoreUrl":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    .line 1494
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->swype_label:I

    .line 1495
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->theme_buy_swype_desc:I

    .line 1496
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->license_buy_now:I

    new-instance v3, Lcom/nuance/swype/input/ThemeManager$5;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/nuance/swype/input/ThemeManager$5;-><init>(Lcom/nuance/swype/input/ThemeManager;Ljava/lang/String;Landroid/content/Context;Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;)V

    .line 1497
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->label_back:I

    new-instance v3, Lcom/nuance/swype/input/ThemeManager$4;

    invoke-direct {v3, p0, p1, p2}, Lcom/nuance/swype/input/ThemeManager$4;-><init>(Lcom/nuance/swype/input/ThemeManager;Landroid/content/Context;Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;)V

    .line 1507
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1514
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public updateBundleThemeStatus(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V
    .locals 14
    .param p1, "categoryKey"    # Ljava/lang/String;
    .param p2, "bundleSku"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .prologue
    .line 943
    iget-object v10, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    monitor-enter v10

    .line 944
    :try_start_0
    iget-object v9, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/LinkedHashMap;

    .line 945
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 946
    .local v1, "bundleTheme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSkuList()Ljava/util/List;

    move-result-object v7

    .line 947
    .local v7, "skuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v1

    check-cast v0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v9

    .line 17136
    iget-object v2, v9, Lcom/nuance/swype/util/storage/ThemeItemSeed;->themeCategories:Ljava/util/List;

    .line 949
    .local v2, "categoryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 950
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "categoryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 951
    .restart local v2    # "categoryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getCurrentCategoryLabel()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    :cond_0
    iget-object v9, p0, Lcom/nuance/swype/input/ThemeManager;->themeManagerContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/connect/Connect;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v3

    .line 954
    .local v3, "cs":Lcom/nuance/swypeconnect/ac/ACCatalogService;
    if-eqz v7, :cond_4

    .line 955
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 956
    .local v6, "sku":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 957
    .local v4, "item":Ljava/lang/String;
    invoke-interface {v3, v4}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->getCategoryKeyForCategoryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 958
    .local v5, "key":Ljava/lang/String;
    iget-object v9, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/LinkedHashMap;

    .line 959
    invoke-virtual {v9, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 960
    .local v8, "theme":Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    if-eqz v8, :cond_2

    .line 961
    sget-object v9, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_PURCHASED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    move-object/from16 v0, p3

    if-ne v0, v9, :cond_3

    .line 962
    invoke-virtual {v8}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v9

    .line 17214
    iget-boolean v9, v9, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isFree:Z

    .line 962
    if-nez v9, :cond_3

    .line 963
    invoke-virtual {v8}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v9

    .line 18206
    iget-boolean v9, v9, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    .line 963
    if-nez v9, :cond_3

    .line 964
    invoke-virtual {v8}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v9

    .line 19202
    const/4 v13, 0x1

    iput-boolean v13, v9, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    .line 966
    :cond_3
    sget-object v9, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALLED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    move-object/from16 v0, p3

    if-ne v0, v9, :cond_2

    if-eqz v6, :cond_2

    .line 967
    invoke-virtual {v8}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getSku()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 968
    invoke-virtual {v8}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v9

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalled(Z)V

    goto :goto_0

    .line 975
    .end local v1    # "bundleTheme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .end local v2    # "categoryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "cs":Lcom/nuance/swypeconnect/ac/ACCatalogService;
    .end local v4    # "item":Ljava/lang/String;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "sku":Ljava/lang/String;
    .end local v7    # "skuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "theme":Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .restart local v1    # "bundleTheme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .restart local v2    # "categoryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "cs":Lcom/nuance/swypeconnect/ac/ACCatalogService;
    .restart local v7    # "skuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public updateThemeStatus(Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V
    .locals 8
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .prologue
    .line 979
    iget-object v4, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    monitor-enter v4

    .line 980
    :try_start_0
    iget-object v3, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 981
    .local v1, "category":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 982
    .local v2, "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 983
    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->isConnectTheme()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 984
    sget-object v3, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALLED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    if-ne p2, v3, :cond_2

    .line 985
    check-cast v2, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .end local v2    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v3

    const/4 v7, 0x1

    .line 986
    invoke-virtual {v3, v7}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalled(Z)V

    goto :goto_0

    .line 1008
    .end local v1    # "category":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 987
    .restart local v1    # "category":Ljava/lang/String;
    .restart local v2    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_2
    :try_start_1
    sget-object v3, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_PURCHASED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    if-ne p2, v3, :cond_3

    .line 988
    check-cast v2, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .end local v2    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v3

    .line 20202
    const/4 v7, 0x1

    iput-boolean v7, v3, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    goto :goto_0

    .line 990
    .restart local v2    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_3
    sget-object v3, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALL_CANCELED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    if-ne p2, v3, :cond_4

    .line 991
    move-object v0, v2

    check-cast v0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v3

    const/4 v7, 0x0

    .line 992
    invoke-virtual {v3, v7}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalled(Z)V

    .line 993
    check-cast v2, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .end local v2    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v3

    const/4 v7, 0x0

    .line 994
    invoke-virtual {v3, v7}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalling(Z)V

    goto :goto_0

    .line 995
    .restart local v2    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_4
    sget-object v3, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_UNINSTALLED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    if-ne p2, v3, :cond_1

    .line 996
    move-object v0, v2

    check-cast v0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v3

    const/4 v7, 0x0

    .line 997
    invoke-virtual {v3, v7}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalled(Z)V

    .line 998
    move-object v0, v2

    check-cast v0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v3

    const/4 v7, 0x0

    .line 999
    invoke-virtual {v3, v7}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalling(Z)V

    .line 1000
    move-object v0, v2

    check-cast v0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v3

    .line 20214
    iget-boolean v3, v3, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isFree:Z

    .line 1000
    if-eqz v3, :cond_1

    .line 1001
    iget-object v3, p0, Lcom/nuance/swype/input/ThemeManager;->myEntries:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1008
    .end local v1    # "category":Ljava/lang/String;
    .end local v2    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_5
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public updateThemeStatus(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V
    .locals 10
    .param p1, "categoryKey"    # Ljava/lang/String;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 913
    iget-object v5, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    monitor-enter v5

    .line 914
    :try_start_0
    iget-object v2, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 915
    iget-object v2, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 916
    .local v0, "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 917
    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->isConnectTheme()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 918
    check-cast v0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .end local v0    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v1

    .line 919
    .local v1, "themeSeed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALLED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    if-ne p3, v2, :cond_2

    .line 920
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalled(Z)V

    .line 935
    .end local v1    # "themeSeed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    :cond_1
    :goto_1
    sget-object v2, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "updateThemeStatus sku:"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, " type:"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {p3}, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->ordinal()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v2, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0

    .line 939
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 921
    .restart local v1    # "themeSeed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    :cond_2
    :try_start_1
    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_PURCHASED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    if-ne p3, v2, :cond_3

    .line 16202
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    goto :goto_1

    .line 923
    :cond_3
    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALL_CANCELED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    if-ne p3, v2, :cond_4

    .line 924
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalled(Z)V

    .line 925
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalling(Z)V

    goto :goto_1

    .line 926
    :cond_4
    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_UNINSTALLED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    if-ne p3, v2, :cond_5

    .line 927
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalled(Z)V

    .line 928
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalling(Z)V

    goto :goto_1

    .line 929
    :cond_5
    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_NOSTATE:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    if-ne p3, v2, :cond_1

    .line 930
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalled(Z)V

    .line 931
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalling(Z)V

    .line 16214
    iget-boolean v2, v1, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isFree:Z

    .line 932
    if-nez v2, :cond_6

    move v2, v3

    .line 16246
    :goto_2
    iput-boolean v2, v1, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchasable:Z

    goto :goto_1

    :cond_6
    move v2, v4

    .line 932
    goto :goto_2

    .line 939
    .end local v1    # "themeSeed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    :cond_7
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public updateThemesOrderIfOem(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;Landroid/content/res/Resources;)V
    .locals 10
    .param p1, "currentTheme"    # Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 1359
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p1, :cond_3

    iget-object v4, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    if-eqz v4, :cond_3

    .line 1360
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1361
    .local v2, "newMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    iget-object v4, p1, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->mSku:Ljava/lang/String;

    invoke-virtual {v2, v4, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    iget-object v4, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    const-string/jumbo v5, "no_category_id"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1363
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    iget-object v4, p0, Lcom/nuance/swype/input/ThemeManager;->menuOrder:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1364
    .local v1, "menuKey":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 1365
    .local v3, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    if-eqz v3, :cond_1

    .line 1366
    invoke-virtual {v3, p2}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getDisplayName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, p2}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getDisplayName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1368
    invoke-virtual {v2, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1371
    :cond_1
    sget-object v5, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Theme not found: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0

    .line 1374
    .end local v1    # "menuKey":Ljava/lang/String;
    .end local v3    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_2
    iget-object v4, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 1375
    iget-object v4, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    const-string/jumbo v5, "no_category_id"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    iget-object v4, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    const-string/jumbo v5, "no_category_id"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    iput-object v4, p0, Lcom/nuance/swype/input/ThemeManager;->themeMap:Ljava/util/Map;

    .line 1378
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    .end local v2    # "newMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    :cond_3
    return-void
.end method
