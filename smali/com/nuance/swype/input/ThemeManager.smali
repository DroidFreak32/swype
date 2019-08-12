.class public Lcom/nuance/swype/input/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;,
        Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;,
        Lcom/nuance/swype/input/ThemeManager$SwypeTheme;,
        Lcom/nuance/swype/input/ThemeManager$NotifyObserverDataChanged;
    }
.end annotation


# static fields
.field private static final CONFIG_PROPERTIES:Ljava/lang/String; = "config.properties"

.field private static final PROP_KEY_MENU:Ljava/lang/String; = "themes.prefs.menu"

.field public static final THEME_MLS_DELIMETER:Ljava/lang/String; = ","

.field public static final THEME_PREVIEW_ATTRIBUTE_BROWSING_TIME:Ljava/lang/String; = "browsing time"

.field public static final THEME_PREVIEW_ATTRIBUTE_ERRORS:Ljava/lang/String; = "errors"

.field public static final THEME_PREVIEW_ATTRIBUTE_PREIVEW_POINT:Ljava/lang/String; = "preview point"

.field public static final THEME_PREVIEW_ATTRIBUTE_PURCHASE:Ljava/lang/String; = "purchase"

.field public static final THEME_PREVIEW_ATTRIBUTE_THEME_NAME:Ljava/lang/String; = "theme name"

.field public static final THEME_PREVIEW_ATTRIBUTE_THEME_OPTIONS:Ljava/lang/String; = "theme options"

.field public static final THEME_PREVIEW_ATTRIBUTE_TRIAL_CONVERSION:Ljava/lang/String; = "trial conversion"

.field public static final THEME_PREVIEW_ATTRIBUTE_VERSION_TYPE:Ljava/lang/String; = "trial vs. paid"

.field public static final THEME_PREVIEW_EVENT:Ljava/lang/String; = "Theme Preview"

.field public static final THEME_PREVIEW_TRIAL_CONVERSION_EVENT:Ljava/lang/String; = "Trial Conversion"

.field public static categoryItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/swype/inapp/CategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field public static currentCategoryId:Ljava/lang/String;

.field private static defaultTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

.field public static isInAppApiSupported:Z

.field public static isInAppPurchaseEnabled:Z

.field public static isInAppServiceExisting:Z

.field public static isThemesLocked:Z

.field private static lastMlsStatus:Z

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;

.field public static mDownloadableThemeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;",
            ">;"
        }
    .end annotation
.end field

.field private static mPurchasedList:Lcom/nuance/swype/inapp/PurchasedList;

.field private static mThemePurchaser:Lcom/nuance/swype/inapp/ThemePurchaser;

.field public static menuOrder:[Ljava/lang/String;

.field public static final mls_hotwords:[I

.field private static observer:Lcom/nuance/swype/input/ThemeManager$NotifyObserverDataChanged;

.field public static themeCategoryMap:Ljava/util/Map;
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

.field private static themeManagerContext:Landroid/content/Context;

.field public static themeMap:Ljava/util/Map;
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


# instance fields
.field protected themeCategory:Lcom/nuance/swype/input/settings/ThemesCategory;

.field private themeCategoryTitles:[Ljava/lang/String;

.field public themesCategory:Lcom/nuance/swype/input/settings/ThemesCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 50
    const-string v0, "ThemeManager"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 262
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/ThemeManager;->themeMap:Ljava/util/Map;

    .line 264
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    .line 266
    const-string v0, ""

    sput-object v0, Lcom/nuance/swype/input/ThemeManager;->currentCategoryId:Ljava/lang/String;

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/ThemeManager;->categoryItemList:Ljava/util/ArrayList;

    .line 279
    sput-boolean v3, Lcom/nuance/swype/input/ThemeManager;->isInAppServiceExisting:Z

    .line 280
    sput-boolean v3, Lcom/nuance/swype/input/ThemeManager;->isInAppApiSupported:Z

    .line 926
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
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    sput-object p1, Lcom/nuance/swype/input/ThemeManager;->themeManagerContext:Landroid/content/Context;

    .line 286
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->theme_category_titles:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryTitles:[Ljava/lang/String;

    .line 288
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/nuance/swype/input/ThemeManager;->themeManagerContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 44
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->notifyIapDataChanges()V

    return-void
.end method

.method static synthetic access$400()Lcom/nuance/swype/inapp/ThemePurchaser;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/nuance/swype/input/ThemeManager;->mThemePurchaser:Lcom/nuance/swype/inapp/ThemePurchaser;

    return-object v0
.end method

.method protected static addThemes(Landroid/content/Context;ILjava/util/Map;)V
    .locals 20
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
    .line 503
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 504
    .local v12, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .line 505
    .local v18, "resIds":[I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move-object/from16 v0, v18

    array-length v2, v0

    if-ge v15, v2, :cond_0

    .line 506
    const/4 v2, 0x0

    invoke-virtual {v12, v15, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    aput v2, v18, v15

    .line 505
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 508
    :cond_0
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 510
    const/4 v2, 0x7

    new-array v14, v2, [I

    const/4 v2, 0x0

    sget v3, Lcom/nuance/swype/input/R$attr;->themeId:I

    aput v3, v14, v2

    const/4 v2, 0x1

    sget v3, Lcom/nuance/swype/input/R$attr;->themeName:I

    aput v3, v14, v2

    const/4 v2, 0x2

    sget v3, Lcom/nuance/swype/input/R$attr;->themeLogoPreview:I

    aput v3, v14, v2

    const/4 v2, 0x3

    sget v3, Lcom/nuance/swype/input/R$attr;->themeKeyboardPreview:I

    aput v3, v14, v2

    const/4 v2, 0x4

    sget v3, Lcom/nuance/swype/input/R$attr;->themeIsLocked:I

    aput v3, v14, v2

    const/4 v2, 0x5

    sget v3, Lcom/nuance/swype/input/R$attr;->themeProductId:I

    aput v3, v14, v2

    const/4 v2, 0x6

    sget v3, Lcom/nuance/swype/input/R$attr;->themeCategoryId:I

    aput v3, v14, v2

    .line 517
    .local v14, "attrs":[I
    const/4 v15, 0x0

    :goto_1
    move-object/from16 v0, v18

    array-length v2, v0

    if-ge v15, v2, :cond_4

    .line 518
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v19, v18, v15

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v2, v14, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 519
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 520
    .local v4, "key":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 521
    .local v5, "nameResId":I
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 522
    .local v6, "logoPreviewResId":I
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 523
    .local v7, "keyboardPreviewResId":I
    sget-boolean v2, Lcom/nuance/swype/input/ThemeManager;->isThemesLocked:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 524
    .local v8, "isLocked":Z
    :goto_2
    const/4 v2, 0x5

    invoke-virtual {v12, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 525
    .local v9, "productId":Ljava/lang/String;
    const/4 v2, 0x6

    invoke-virtual {v12, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 526
    .local v10, "categoryIds":Ljava/lang/String;
    if-nez v8, :cond_3

    if-nez v10, :cond_3

    .line 527
    new-instance v2, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    aget v3, v18, v15

    const/4 v9, 0x0

    const-string v10, "no_category_id"

    .end local v9    # "productId":Ljava/lang/String;
    .end local v10    # "categoryIds":Ljava/lang/String;
    invoke-direct/range {v2 .. v10}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;-><init>(ILjava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    :cond_1
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 517
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 523
    .end local v8    # "isLocked":Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 529
    .restart local v8    # "isLocked":Z
    .restart local v9    # "productId":Ljava/lang/String;
    .restart local v10    # "categoryIds":Ljava/lang/String;
    :cond_3
    sget-boolean v2, Lcom/nuance/swype/input/ThemeManager;->isInAppPurchaseEnabled:Z

    if-eqz v2, :cond_1

    .line 530
    sget-object v2, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, " is downloadable. sku:"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 531
    const-string v2, ","

    invoke-virtual {v10, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 532
    .local v13, "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v17, v0

    .local v17, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    aget-object v11, v13, v16

    .line 533
    .local v11, "id":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v2, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;

    aget v3, v18, v15

    invoke-direct/range {v2 .. v11}, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;-><init>(ILjava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 541
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "nameResId":I
    .end local v6    # "logoPreviewResId":I
    .end local v7    # "keyboardPreviewResId":I
    .end local v8    # "isLocked":Z
    .end local v9    # "productId":Ljava/lang/String;
    .end local v10    # "categoryIds":Ljava/lang/String;
    .end local v11    # "id":Ljava/lang/String;
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v17    # "len$":I
    :cond_4
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;
    .locals 30
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 546
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 547
    .local v15, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    sget-object v23, Lcom/nuance/swype/input/ThemeManager;->themeMap:Ljava/util/Map;

    .line 548
    .local v23, "sortedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    sget v27, Lcom/nuance/swype/input/R$array;->theme_resids:I

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1, v15}, Lcom/nuance/swype/input/ThemeManager;->addThemes(Landroid/content/Context;ILjava/util/Map;)V

    .line 550
    invoke-static/range {p0 .. p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v26

    .line 551
    .local v26, "usrPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual/range {v26 .. v26}, Lcom/nuance/swype/input/UserPreferences;->getCurrentThemeId()Ljava/lang/String;

    move-result-object v4

    .line 552
    .local v4, "currThemeId":Ljava/lang/String;
    sget-boolean v27, Lcom/nuance/swype/input/ThemeManager;->isInAppPurchaseEnabled:Z

    if-eqz v27, :cond_14

    .line 555
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 556
    .local v20, "mlsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    sget v27, Lcom/nuance/swype/input/R$array;->theme_resids_mls:I

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/nuance/swype/input/ThemeManager;->addThemes(Landroid/content/Context;ILjava/util/Map;)V

    .line 559
    new-instance v19, Ljava/util/ArrayList;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 562
    .local v19, "mlsEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;>;"
    new-instance v27, Lcom/nuance/swype/input/ThemeManager$2;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/ThemeManager$2;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 571
    const/4 v12, 0x1

    .line 572
    .local v12, "isDefaultFreeTheme":Z
    if-eqz v4, :cond_2

    .line 573
    const/4 v5, 0x0

    .line 574
    .local v5, "currentItem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 575
    .local v8, "entryItem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 576
    move-object v5, v8

    .line 580
    .end local v8    # "entryItem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    :cond_1
    if-eqz v5, :cond_3

    .line 581
    const/4 v12, 0x0

    .line 582
    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 583
    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-interface {v0, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 589
    .end local v5    # "currentItem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 590
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v27

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 586
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    .restart local v5    # "currentItem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    :cond_3
    const/4 v12, 0x1

    goto :goto_0

    .line 592
    .end local v5    # "currentItem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    sget v28, Lcom/nuance/swype/input/R$array;->theme_category_ids:I

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 596
    .local v3, "arr$":[Ljava/lang/String;
    array-length v14, v3

    .local v14, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_2
    if-ge v10, v14, :cond_5

    aget-object v13, v3, v10

    .line 597
    .local v13, "key":Ljava/lang/String;
    sget-object v27, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    new-instance v28, Ljava/util/LinkedHashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 601
    .end local v13    # "key":Ljava/lang/String;
    :cond_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 602
    .local v25, "themeId":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 603
    .local v24, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    if-eqz v24, :cond_7

    .line 604
    invoke-virtual/range {v24 .. v24}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getCategoryIds()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_6

    .line 605
    sget-object v27, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-virtual/range {v24 .. v24}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getCurrentCategoryId()Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 608
    :cond_7
    sget-object v27, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Theme not found: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_3

    .line 613
    .end local v24    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .end local v25    # "themeId":Ljava/lang/String;
    :cond_8
    new-instance v22, Ljava/util/Properties;

    invoke-direct/range {v22 .. v22}, Ljava/util/Properties;-><init>()V

    .line 614
    .local v22, "props":Ljava/util/Properties;
    const/4 v11, 0x0

    .line 616
    .local v11, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v27

    const-string v28, "config.properties"

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 617
    if-eqz v11, :cond_9

    .line 618
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    :cond_9
    if-eqz v11, :cond_a

    .line 625
    :try_start_1
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 631
    :cond_a
    :goto_4
    const-string v27, "themes.prefs.menu"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 632
    .local v16, "menu":Ljava/lang/String;
    if-nez v16, :cond_c

    .line 633
    new-instance v27, Ljava/lang/IllegalStateException;

    const-string v28, "Missing theme list!"

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 620
    .end local v16    # "menu":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 621
    .local v9, "ex":Ljava/io/IOException;
    :try_start_2
    sget-object v27, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v28, "Failed to load config properties"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v9}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 623
    if-eqz v11, :cond_a

    .line 625
    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 628
    :catch_1
    move-exception v27

    goto :goto_4

    .line 623
    .end local v9    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v27

    if-eqz v11, :cond_b

    .line 625
    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 628
    :cond_b
    :goto_5
    throw v27

    .line 637
    .restart local v16    # "menu":Ljava/lang/String;
    :cond_c
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 639
    .local v18, "menuWithOem":Ljava/lang/StringBuilder;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    sput-object v27, Lcom/nuance/swype/input/ThemeManager;->menuOrder:[Ljava/lang/String;

    .line 643
    invoke-interface {v15}, Ljava/util/Map;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_d

    sget-object v27, Lcom/nuance/swype/input/ThemeManager;->menuOrder:[Ljava/lang/String;

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_d

    if-nez v4, :cond_d

    .line 644
    sget-object v27, Lcom/nuance/swype/input/ThemeManager;->menuOrder:[Ljava/lang/String;

    const/16 v28, 0x0

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 645
    sput-object v27, Lcom/nuance/swype/input/ThemeManager;->defaultTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    if-eqz v27, :cond_d

    .line 646
    sget-object v27, Lcom/nuance/swype/input/ThemeManager;->defaultTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual/range {v27 .. v27}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getId()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/nuance/swype/input/UserPreferences;->setCurrentThemeId(Ljava/lang/String;)V

    .line 649
    :cond_d
    if-eqz v4, :cond_10

    if-eqz v12, :cond_10

    .line 650
    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 651
    .local v6, "currentTheme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    sget-object v27, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    const-string v28, "no_category_id"

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    sget-object v3, Lcom/nuance/swype/input/ThemeManager;->menuOrder:[Ljava/lang/String;

    array-length v14, v3

    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_6
    if-ge v10, v14, :cond_13

    aget-object v17, v3, v10

    .line 654
    .local v17, "menuKey":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 655
    .restart local v24    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    if-eqz v24, :cond_f

    .line 656
    invoke-virtual/range {v24 .. v24}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->isLocked()Z

    move-result v27

    if-nez v27, :cond_e

    invoke-virtual/range {v24 .. v24}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getCategoryIds()Ljava/lang/String;

    move-result-object v27

    if-nez v27, :cond_e

    invoke-static/range {v24 .. v24}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->access$200(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)I

    move-result v27

    invoke-static {v6}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->access$200(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_e

    .line 659
    sget-object v27, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    const-string v28, "no_category_id"

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    :cond_e
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 662
    :cond_f
    sget-object v27, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Theme not found: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_7

    .line 667
    .end local v6    # "currentTheme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .end local v17    # "menuKey":Ljava/lang/String;
    .end local v24    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .local v10, "i$":Ljava/util/Iterator;
    :cond_10
    sget-object v3, Lcom/nuance/swype/input/ThemeManager;->menuOrder:[Ljava/lang/String;

    array-length v14, v3

    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_8
    if-ge v10, v14, :cond_13

    aget-object v17, v3, v10

    .line 668
    .restart local v17    # "menuKey":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 669
    .restart local v24    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    if-eqz v24, :cond_12

    .line 670
    invoke-virtual/range {v24 .. v24}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->isLocked()Z

    move-result v27

    if-nez v27, :cond_11

    invoke-virtual/range {v24 .. v24}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getCategoryIds()Ljava/lang/String;

    move-result-object v27

    if-nez v27, :cond_11

    .line 672
    sget-object v27, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    const-string v28, "no_category_id"

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    :cond_11
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 675
    :cond_12
    sget-object v27, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Theme not found: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_9

    .line 680
    .end local v17    # "menuKey":Ljava/lang/String;
    .end local v24    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_13
    sget-object v27, Lcom/nuance/swype/input/ThemeManager;->themeMap:Ljava/util/Map;

    move-object/from16 v0, v27

    invoke-interface {v0, v15}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 768
    .end local v12    # "isDefaultFreeTheme":Z
    .end local v19    # "mlsEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;>;"
    .end local v20    # "mlsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    :goto_a
    new-instance v27, Lcom/nuance/swype/input/ThemeManager;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/ThemeManager;-><init>(Landroid/content/Context;)V

    return-object v27

    .line 684
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v14    # "len$":I
    .end local v16    # "menu":Ljava/lang/String;
    .end local v18    # "menuWithOem":Ljava/lang/StringBuilder;
    .end local v22    # "props":Ljava/util/Properties;
    :cond_14
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 685
    .local v21, "oemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    sget v27, Lcom/nuance/swype/input/R$array;->theme_resids_oem:I

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/nuance/swype/input/ThemeManager;->addThemes(Landroid/content/Context;ILjava/util/Map;)V

    .line 686
    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 689
    sget-object v27, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    const-string v28, "no_category_id"

    new-instance v29, Ljava/util/LinkedHashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface/range {v27 .. v29}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    new-instance v22, Ljava/util/Properties;

    invoke-direct/range {v22 .. v22}, Ljava/util/Properties;-><init>()V

    .line 694
    .restart local v22    # "props":Ljava/util/Properties;
    const/4 v11, 0x0

    .line 696
    .restart local v11    # "in":Ljava/io/InputStream;
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v27

    const-string v28, "config.properties"

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 697
    if-eqz v11, :cond_15

    .line 698
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 703
    :cond_15
    if-eqz v11, :cond_16

    .line 705
    :try_start_6
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 711
    :cond_16
    :goto_b
    const-string v27, "themes.prefs.menu"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 712
    .restart local v16    # "menu":Ljava/lang/String;
    if-nez v16, :cond_18

    .line 713
    new-instance v27, Ljava/lang/IllegalStateException;

    const-string v28, "Missing theme list!"

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 700
    .end local v16    # "menu":Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 701
    .restart local v9    # "ex":Ljava/io/IOException;
    :try_start_7
    sget-object v27, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v28, "Failed to load config properties"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v9}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 703
    if-eqz v11, :cond_16

    .line 705
    :try_start_8
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_b

    .line 708
    :catch_3
    move-exception v27

    goto :goto_b

    .line 703
    .end local v9    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v27

    if-eqz v11, :cond_17

    .line 705
    :try_start_9
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 708
    :cond_17
    :goto_c
    throw v27

    .line 717
    .restart local v16    # "menu":Ljava/lang/String;
    :cond_18
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 718
    .restart local v18    # "menuWithOem":Ljava/lang/StringBuilder;
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_19

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 719
    .restart local v13    # "key":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    const-string v27, ","

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 722
    .end local v13    # "key":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    sput-object v27, Lcom/nuance/swype/input/ThemeManager;->menuOrder:[Ljava/lang/String;

    .line 726
    invoke-interface {v15}, Ljava/util/Map;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_1a

    sget-object v27, Lcom/nuance/swype/input/ThemeManager;->menuOrder:[Ljava/lang/String;

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_1a

    if-nez v4, :cond_1a

    .line 727
    sget-object v27, Lcom/nuance/swype/input/ThemeManager;->menuOrder:[Ljava/lang/String;

    const/16 v28, 0x0

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 728
    sput-object v27, Lcom/nuance/swype/input/ThemeManager;->defaultTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    if-eqz v27, :cond_1a

    .line 729
    sget-object v27, Lcom/nuance/swype/input/ThemeManager;->defaultTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual/range {v27 .. v27}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getId()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/nuance/swype/input/UserPreferences;->setCurrentThemeId(Ljava/lang/String;)V

    .line 732
    :cond_1a
    const/4 v6, 0x0

    .line 733
    .restart local v6    # "currentTheme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    if-eqz v4, :cond_1b

    .line 734
    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "currentTheme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    check-cast v6, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 736
    .restart local v6    # "currentTheme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_1b
    if-eqz v6, :cond_1e

    .line 737
    sget-object v27, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    const-string v28, "no_category_id"

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    sget-object v3, Lcom/nuance/swype/input/ThemeManager;->menuOrder:[Ljava/lang/String;

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v14, v3

    .restart local v14    # "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_e
    if-ge v10, v14, :cond_21

    aget-object v17, v3, v10

    .line 740
    .restart local v17    # "menuKey":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 741
    .restart local v24    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    if-eqz v24, :cond_1d

    .line 742
    invoke-virtual/range {v24 .. v24}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->isLocked()Z

    move-result v27

    if-nez v27, :cond_1c

    invoke-virtual/range {v24 .. v24}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getCategoryIds()Ljava/lang/String;

    move-result-object v27

    if-nez v27, :cond_1c

    invoke-static/range {v24 .. v24}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->access$200(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)I

    move-result v27

    invoke-static {v6}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->access$200(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1c

    .line 745
    sget-object v27, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    const-string v28, "no_category_id"

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    :cond_1c
    :goto_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    .line 748
    :cond_1d
    sget-object v27, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Theme not found: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_f

    .line 753
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v14    # "len$":I
    .end local v17    # "menuKey":Ljava/lang/String;
    .end local v24    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .local v10, "i$":Ljava/util/Iterator;
    :cond_1e
    sget-object v3, Lcom/nuance/swype/input/ThemeManager;->menuOrder:[Ljava/lang/String;

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v14, v3

    .restart local v14    # "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_10
    if-ge v10, v14, :cond_21

    aget-object v17, v3, v10

    .line 754
    .restart local v17    # "menuKey":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 755
    .restart local v24    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    if-eqz v24, :cond_20

    .line 756
    invoke-virtual/range {v24 .. v24}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->isLocked()Z

    move-result v27

    if-nez v27, :cond_1f

    invoke-virtual/range {v24 .. v24}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getCategoryIds()Ljava/lang/String;

    move-result-object v27

    if-nez v27, :cond_1f

    .line 758
    sget-object v27, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    const-string v28, "no_category_id"

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    :cond_1f
    :goto_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    .line 761
    :cond_20
    sget-object v27, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Theme not found: "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_11

    .line 765
    .end local v17    # "menuKey":Ljava/lang/String;
    .end local v24    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_21
    sget-object v27, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    const-string v28, "no_category_id"

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Map;

    sput-object v27, Lcom/nuance/swype/input/ThemeManager;->themeMap:Ljava/util/Map;

    goto/16 :goto_a

    .line 628
    .end local v6    # "currentTheme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .end local v16    # "menu":Ljava/lang/String;
    .end local v18    # "menuWithOem":Ljava/lang/StringBuilder;
    .end local v21    # "oemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    .local v10, "i$":Ljava/util/Iterator;
    .restart local v12    # "isDefaultFreeTheme":Z
    .restart local v19    # "mlsEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;>;"
    .restart local v20    # "mlsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    :catch_4
    move-exception v27

    goto/16 :goto_4

    :catch_5
    move-exception v28

    goto/16 :goto_5

    .line 708
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "isDefaultFreeTheme":Z
    .end local v14    # "len$":I
    .end local v19    # "mlsEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;>;"
    .end local v20    # "mlsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    .restart local v21    # "oemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    :catch_6
    move-exception v27

    goto/16 :goto_b

    :catch_7
    move-exception v28

    goto/16 :goto_c
.end method

.method public static createThemeManager(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 795
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$bool;->enable_in_app_purchasable_themes:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getDefaultBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/nuance/swype/input/ThemeManager;->isInAppPurchaseEnabled:Z

    .line 797
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$bool;->enable_lock_themes:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getDefaultBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/nuance/swype/input/ThemeManager;->isThemesLocked:Z

    .line 798
    invoke-static {p0}, Lcom/nuance/swype/input/ThemeManager;->createInstance(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v0

    return-object v0
.end method

.method public static createUpgradeGooglePlayDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 860
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/nuance/swype/input/R$string;->theme_upgrade_google_play_service_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->theme_upgrade_google_play_service_desc:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->dismiss_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private static fetchThemeDetailsFromStore(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 355
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->getDownloadableSkus()Ljava/util/List;

    move-result-object v0

    .line 356
    .local v0, "skus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/nuance/swype/input/ThemeManager;->mThemePurchaser:Lcom/nuance/swype/inapp/ThemePurchaser;

    new-instance v2, Lcom/nuance/swype/input/ThemeManager$1;

    invoke-direct {v2}, Lcom/nuance/swype/input/ThemeManager$1;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/nuance/swype/inapp/ThemePurchaser;->queryItems(Ljava/util/List;Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V

    .line 371
    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeManager()Lcom/nuance/swype/input/ThemeManager;

    move-result-object v0

    return-object v0
.end method

.method private static getDownloadableSkus()Ljava/util/List;
    .locals 5
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
    .line 388
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v1, "skuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lcom/nuance/swype/input/ThemeManager;->themeMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 390
    .local v3, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->isLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 391
    check-cast v2, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;

    .line 392
    .local v2, "t":Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;
    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 395
    .end local v2    # "t":Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;
    .end local v3    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_1
    return-object v1
.end method

.method public static getPurchasedList(Landroid/content/Context;)Lcom/nuance/swype/inapp/PurchasedList;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 330
    sget-object v0, Lcom/nuance/swype/input/ThemeManager;->mPurchasedList:Lcom/nuance/swype/inapp/PurchasedList;

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Lcom/nuance/swype/inapp/PurchasedList;

    invoke-direct {v0, p0}, Lcom/nuance/swype/inapp/PurchasedList;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nuance/swype/input/ThemeManager;->mPurchasedList:Lcom/nuance/swype/inapp/PurchasedList;

    .line 333
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/ThemeManager;->mPurchasedList:Lcom/nuance/swype/inapp/PurchasedList;

    return-object v0
.end method

.method private getSwypeTheme(Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .prologue
    .line 497
    sget-object v1, Lcom/nuance/swype/input/ThemeManager;->themeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 498
    .local v0, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    if-eqz v0, :cond_0

    .end local v0    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :goto_0
    return-object v0

    .restart local v0    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public static getThemePurchaser(Landroid/content/Context;)Lcom/nuance/swype/inapp/ThemePurchaser;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 340
    sget-object v0, Lcom/nuance/swype/input/ThemeManager;->mThemePurchaser:Lcom/nuance/swype/inapp/ThemePurchaser;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Lcom/nuance/swype/inapp/ThemePurchaser;

    invoke-direct {v0, p0}, Lcom/nuance/swype/inapp/ThemePurchaser;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nuance/swype/input/ThemeManager;->mThemePurchaser:Lcom/nuance/swype/inapp/ThemePurchaser;

    .line 343
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/ThemeManager;->mThemePurchaser:Lcom/nuance/swype/inapp/ThemePurchaser;

    return-object v0
.end method

.method public static initializeInAppPurchase(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 296
    sget-boolean v5, Lcom/nuance/swype/input/ThemeManager;->isInAppPurchaseEnabled:Z

    if-eqz v5, :cond_6

    .line 297
    sget-object v5, Lcom/nuance/swype/input/ThemeManager;->mPurchasedList:Lcom/nuance/swype/inapp/PurchasedList;

    if-nez v5, :cond_0

    .line 298
    new-instance v5, Lcom/nuance/swype/inapp/PurchasedList;

    invoke-direct {v5, p0}, Lcom/nuance/swype/inapp/PurchasedList;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/nuance/swype/input/ThemeManager;->mPurchasedList:Lcom/nuance/swype/inapp/PurchasedList;

    .line 300
    :cond_0
    sget-object v5, Lcom/nuance/swype/input/ThemeManager;->mThemePurchaser:Lcom/nuance/swype/inapp/ThemePurchaser;

    if-nez v5, :cond_1

    .line 301
    new-instance v5, Lcom/nuance/swype/inapp/ThemePurchaser;

    invoke-direct {v5, p0}, Lcom/nuance/swype/inapp/ThemePurchaser;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/nuance/swype/input/ThemeManager;->mThemePurchaser:Lcom/nuance/swype/inapp/ThemePurchaser;

    .line 303
    :cond_1
    sget-object v5, Lcom/nuance/swype/input/ThemeManager;->mDownloadableThemeMap:Ljava/util/Map;

    if-nez v5, :cond_2

    .line 305
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/nuance/swype/input/ThemeManager;->mDownloadableThemeMap:Ljava/util/Map;

    .line 307
    :cond_2
    sget-object v5, Lcom/nuance/swype/input/ThemeManager;->mDownloadableThemeMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 308
    sget-object v5, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 309
    .local v2, "key":Ljava/lang/String;
    const-string v5, "no_category_id"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 310
    sget-object v5, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 311
    .local v4, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v4}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->isLocked()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v3, v4

    .line 312
    check-cast v3, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;

    .line 313
    .local v3, "t":Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;
    sget-object v5, Lcom/nuance/swype/input/ThemeManager;->mDownloadableThemeMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;->getSku()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 319
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "t":Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;
    .end local v4    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_5
    sget-object v5, Lcom/nuance/swype/input/ThemeManager;->mDownloadableThemeMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_6

    sget-boolean v5, Lcom/nuance/swype/input/ThemeManager;->isInAppServiceExisting:Z

    if-eqz v5, :cond_6

    sget-boolean v5, Lcom/nuance/swype/input/ThemeManager;->isInAppApiSupported:Z

    if-eqz v5, :cond_6

    .line 321
    invoke-static {p0}, Lcom/nuance/swype/input/ThemeManager;->fetchThemeDetailsFromStore(Landroid/content/Context;)V

    .line 324
    :cond_6
    return-void
.end method

.method public static isBillingServiceAvailabeOnDevice(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 350
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
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

.method public static isIapFullySupported()Z
    .locals 1

    .prologue
    .line 867
    sget-boolean v0, Lcom/nuance/swype/input/ThemeManager;->isInAppPurchaseEnabled:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/nuance/swype/input/ThemeManager;->isInAppApiSupported:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/nuance/swype/input/ThemeManager;->isInAppServiceExisting:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isThemeLocked(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)Z
    .locals 2
    .param p0, "theme"    # Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .prologue
    .line 871
    invoke-virtual {p0}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->isLocked()Z

    move-result v0

    .line 872
    .local v0, "locked":Z
    if-eqz v0, :cond_0

    .line 874
    check-cast p0, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;

    .line 875
    .end local p0    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {p0}, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;->hasPurchased()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 877
    :cond_0
    :goto_0
    return v0

    .line 875
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static notifyIapDataChanges()V
    .locals 1

    .prologue
    .line 378
    sget-object v0, Lcom/nuance/swype/input/ThemeManager;->observer:Lcom/nuance/swype/input/ThemeManager$NotifyObserverDataChanged;

    if-eqz v0, :cond_0

    .line 379
    sget-object v0, Lcom/nuance/swype/input/ThemeManager;->observer:Lcom/nuance/swype/input/ThemeManager$NotifyObserverDataChanged;

    invoke-interface {v0}, Lcom/nuance/swype/input/ThemeManager$NotifyObserverDataChanged;->onDataChanged()Z

    .line 381
    :cond_0
    return-void
.end method

.method public static reConnectGoogleStoreService(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 808
    invoke-static {p0}, Lcom/nuance/swype/input/ThemeManager;->isBillingServiceAvailabeOnDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 810
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nuance/swype/input/ThemeManager;->isInAppServiceExisting:Z

    .line 814
    :goto_0
    sget-boolean v0, Lcom/nuance/swype/input/ThemeManager;->isInAppPurchaseEnabled:Z

    if-eqz v0, :cond_3

    .line 815
    sget-object v0, Lcom/nuance/swype/input/ThemeManager;->mPurchasedList:Lcom/nuance/swype/inapp/PurchasedList;

    if-nez v0, :cond_0

    .line 816
    new-instance v0, Lcom/nuance/swype/inapp/PurchasedList;

    invoke-direct {v0, p0}, Lcom/nuance/swype/inapp/PurchasedList;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nuance/swype/input/ThemeManager;->mPurchasedList:Lcom/nuance/swype/inapp/PurchasedList;

    .line 818
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/ThemeManager;->mThemePurchaser:Lcom/nuance/swype/inapp/ThemePurchaser;

    if-nez v0, :cond_1

    .line 819
    new-instance v0, Lcom/nuance/swype/inapp/ThemePurchaser;

    invoke-direct {v0, p0}, Lcom/nuance/swype/inapp/ThemePurchaser;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nuance/swype/input/ThemeManager;->mThemePurchaser:Lcom/nuance/swype/inapp/ThemePurchaser;

    .line 821
    :cond_1
    sget-object v0, Lcom/nuance/swype/input/ThemeManager;->mDownloadableThemeMap:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 823
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/ThemeManager;->mDownloadableThemeMap:Ljava/util/Map;

    .line 826
    :cond_2
    sget-object v0, Lcom/nuance/swype/input/ThemeManager;->mThemePurchaser:Lcom/nuance/swype/inapp/ThemePurchaser;

    new-instance v1, Lcom/nuance/swype/input/ThemeManager$3;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/ThemeManager$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/nuance/swype/inapp/ThemePurchaser;->setupInAppBillingService(Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;)V

    .line 854
    sget-object v0, Lcom/nuance/swype/input/ThemeManager;->mPurchasedList:Lcom/nuance/swype/inapp/PurchasedList;

    invoke-virtual {v0}, Lcom/nuance/swype/inapp/PurchasedList;->loadAll()V

    .line 857
    :cond_3
    return-void

    .line 812
    :cond_4
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nuance/swype/input/ThemeManager;->isInAppServiceExisting:Z

    goto :goto_0
.end method

.method public static recordThemePreviewData(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p0, "info"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 913
    invoke-static {p1}, Lcom/nuance/android/compat/LocalyticsCompat;->isLocalyticsClassExistingAndContributionaAllowed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 914
    invoke-static {p1}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->getSwypePreferenceAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/nuance/android/compat/LocalyticsCompat;->createLocalyticsSession(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/swype/stats/LocalyticsUtils;

    .line 916
    invoke-static {}, Lcom/nuance/android/compat/LocalyticsCompat;->open()V

    .line 917
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 918
    .local v0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "trial conversion"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    const-string v1, "Trial Conversion"

    invoke-static {v1, v0}, Lcom/nuance/android/compat/LocalyticsCompat;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 921
    .end local v0    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static setIapObserver(Lcom/nuance/swype/input/ThemeManager$NotifyObserverDataChanged;)V
    .locals 0
    .param p0, "obj"    # Lcom/nuance/swype/input/ThemeManager$NotifyObserverDataChanged;

    .prologue
    .line 374
    sput-object p0, Lcom/nuance/swype/input/ThemeManager;->observer:Lcom/nuance/swype/input/ThemeManager$NotifyObserverDataChanged;

    .line 375
    return-void
.end method


# virtual methods
.method public getCurrentCategoryThemes(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/ThemeManager$SwypeTheme;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    new-instance v1, Ljava/util/ArrayList;

    sget-object v0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    sget-object v2, Lcom/nuance/swype/input/ThemeManager;->currentCategoryId:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 443
    return-object v1
.end method

.method public getCurrentThemesCategory()Lcom/nuance/swype/input/settings/ThemesCategory;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->themesCategory:Lcom/nuance/swype/input/settings/ThemesCategory;

    return-object v0
.end method

.method public getDefaultSwypeTheme()Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .locals 1

    .prologue
    .line 481
    sget-object v0, Lcom/nuance/swype/input/ThemeManager;->defaultTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    return-object v0
.end method

.method public getSwypeTheme(Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/nuance/swype/input/ThemeManager;->getDefaultSwypeTheme()Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/ThemeManager;->getSwypeTheme(Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v0

    return-object v0
.end method

.method public getSwypeThemeCount()I
    .locals 1

    .prologue
    .line 401
    sget-object v0, Lcom/nuance/swype/input/ThemeManager;->themeMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 402
    sget-object v0, Lcom/nuance/swype/input/ThemeManager;->themeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 404
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
    .line 474
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/nuance/swype/input/ThemeManager;->themeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getThemeCategoryItemList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10
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
    .line 411
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isIapFullySupported()Z

    move-result v3

    sget-boolean v4, Lcom/nuance/swype/input/ThemeManager;->lastMlsStatus:Z

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/nuance/swype/input/ThemeManager;->categoryItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 412
    sget-object v3, Lcom/nuance/swype/input/ThemeManager;->categoryItemList:Ljava/util/ArrayList;

    .line 430
    :goto_0
    return-object v3

    .line 414
    :cond_0
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isIapFullySupported()Z

    move-result v3

    sput-boolean v3, Lcom/nuance/swype/input/ThemeManager;->lastMlsStatus:Z

    .line 416
    sget-object v3, Lcom/nuance/swype/input/ThemeManager;->categoryItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 418
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isIapFullySupported()Z

    move-result v3

    if-nez v3, :cond_2

    .line 419
    sget-object v4, Lcom/nuance/swype/input/ThemeManager;->categoryItemList:Ljava/util/ArrayList;

    new-instance v5, Lcom/nuance/swype/inapp/CategoryItem;

    iget-object v3, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryTitles:[Ljava/lang/String;

    iget-object v6, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryTitles:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v3, v6

    const-string v7, "no_category_id"

    new-instance v8, Ljava/util/ArrayList;

    sget-object v3, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    const-string v9, "no_category_id"

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v5, v6, v7, v8}, Lcom/nuance/swype/inapp/CategoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    :cond_1
    sget-object v3, Lcom/nuance/swype/input/ThemeManager;->categoryItemList:Ljava/util/ArrayList;

    goto :goto_0

    .line 423
    :cond_2
    const/4 v1, 0x0

    .line 424
    .local v1, "index":I
    sget-object v3, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 425
    .local v2, "key":Ljava/lang/String;
    sget-object v4, Lcom/nuance/swype/input/ThemeManager;->categoryItemList:Ljava/util/ArrayList;

    new-instance v5, Lcom/nuance/swype/inapp/CategoryItem;

    iget-object v3, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategoryTitles:[Ljava/lang/String;

    aget-object v6, v3, v1

    new-instance v7, Ljava/util/ArrayList;

    sget-object v3, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v5, v6, v2, v7}, Lcom/nuance/swype/inapp/CategoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    add-int/lit8 v1, v1, 0x1

    .line 428
    goto :goto_1
.end method

.method public getThemeForSku(Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;
    .locals 1
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 881
    sget-object v0, Lcom/nuance/swype/input/ThemeManager;->mDownloadableThemeMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 882
    const/4 v0, 0x0

    .line 884
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nuance/swype/input/ThemeManager;->mDownloadableThemeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;

    goto :goto_0
.end method

.method public importMls(Landroid/content/Context;I)V
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "leftNum"    # I

    .prologue
    .line 951
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 952
    .local v2, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getNewWordsBucketFactory()Lcom/nuance/swype/input/udb/NewWordsBucketFactory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->getMlsThemeWordsBucketInstance()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v0

    .line 954
    .local v0, "bucket":Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 955
    .local v5, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 956
    .local v6, "resource":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v7, Lcom/nuance/swype/input/ThemeManager;->mls_hotwords:[I

    array-length v7, v7

    if-ge v1, v7, :cond_2

    .line 957
    sget-object v7, Lcom/nuance/swype/input/ThemeManager;->mls_hotwords:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 958
    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 959
    .local v4, "nameArray":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v7, v4

    if-ge v3, v7, :cond_1

    .line 960
    aget-object v7, v4, v3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 961
    aget-object v7, v4, v3

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 959
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 956
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 965
    .end local v3    # "j":I
    .end local v4    # "nameArray":[Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->add(Ljava/util/Set;)V

    .line 966
    if-lez p2, :cond_3

    .line 967
    :goto_2
    invoke-virtual {v0}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->size()I

    move-result v7

    if-le v7, p2, :cond_3

    .line 968
    invoke-virtual {v0}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->remove()Ljava/lang/String;

    goto :goto_2

    .line 971
    :cond_3
    sget-object v7, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v8, "import MLS hot words:"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 972
    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/IMEApplication;->notifyNewWordsForScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V

    .line 973
    return-void
.end method

.method public importMlsHotwords(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 935
    invoke-static {p1}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    .line 936
    .local v0, "lan":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 948
    :cond_0
    :goto_0
    return-void

    .line 939
    :cond_1
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 940
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 943
    invoke-static {p1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getMlsHotWordsImported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 944
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Lcom/nuance/swype/input/ThemeManager;->importMls(Landroid/content/Context;I)V

    .line 946
    invoke-static {p1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->setMlsHotWordsImported()V

    goto :goto_0
.end method

.method public onPurchaseFinished(ILjava/lang/String;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "themeId"    # Ljava/lang/String;

    .prologue
    .line 989
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategory:Lcom/nuance/swype/input/settings/ThemesCategory;

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategory:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/settings/ThemesCategory;->onPurchaseFinished(ILjava/lang/String;)V

    .line 992
    :cond_0
    return-void
.end method

.method public setCurrentCategoryId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 434
    sput-object p1, Lcom/nuance/swype/input/ThemeManager;->currentCategoryId:Ljava/lang/String;

    .line 435
    return-void
.end method

.method public setCurrentThemesCategory(Lcom/nuance/swype/input/settings/ThemesCategory;)V
    .locals 0
    .param p1, "themesCategory"    # Lcom/nuance/swype/input/settings/ThemesCategory;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/nuance/swype/input/ThemeManager;->themesCategory:Lcom/nuance/swype/input/settings/ThemesCategory;

    .line 459
    return-void
.end method

.method public setThemesCategory(Lcom/nuance/swype/input/settings/ThemesCategory;)V
    .locals 0
    .param p1, "themeCategory"    # Lcom/nuance/swype/input/settings/ThemesCategory;

    .prologue
    .line 976
    iput-object p1, p0, Lcom/nuance/swype/input/ThemeManager;->themeCategory:Lcom/nuance/swype/input/settings/ThemesCategory;

    .line 977
    return-void
.end method

.method public showNotAvailableDialogForGoogleTrail(Landroid/content/Context;Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;)Landroid/app/Dialog;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;

    .prologue
    .line 888
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->swype_label:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->theme_buy_swype_desc:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->license_buy_now:I

    new-instance v2, Lcom/nuance/swype/input/ThemeManager$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/nuance/swype/input/ThemeManager$5;-><init>(Lcom/nuance/swype/input/ThemeManager;Landroid/content/Context;Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->label_back:I

    new-instance v2, Lcom/nuance/swype/input/ThemeManager$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/nuance/swype/input/ThemeManager$4;-><init>(Lcom/nuance/swype/input/ThemeManager;Landroid/content/Context;Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public updateCurrentThemesCategory(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)V
    .locals 1
    .param p1, "theme"    # Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .prologue
    .line 465
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->themesCategory:Lcom/nuance/swype/input/settings/ThemesCategory;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager;->themesCategory:Lcom/nuance/swype/input/settings/ThemesCategory;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/settings/ThemesCategory;->updateCurrentTheme(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)V

    .line 468
    :cond_0
    return-void
.end method

.method public updateThemesOrderIfOem(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)V
    .locals 10
    .param p1, "currentTheme"    # Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .prologue
    .line 772
    sget-boolean v7, Lcom/nuance/swype/input/ThemeManager;->isInAppPurchaseEnabled:Z

    if-nez v7, :cond_3

    if-eqz p1, :cond_3

    sget-object v7, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    if-eqz v7, :cond_3

    .line 773
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 774
    .local v5, "newMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    invoke-static {p1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->access$300(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    sget-object v7, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    const-string v8, "no_category_id"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 776
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    sget-object v0, Lcom/nuance/swype/input/ThemeManager;->menuOrder:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 777
    .local v4, "menuKey":Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 778
    .local v6, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    if-eqz v6, :cond_1

    .line 779
    invoke-virtual {v6}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->isLocked()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getCategoryIds()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-static {p1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->access$200(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)I

    move-result v7

    invoke-static {v6}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->access$200(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 782
    invoke-virtual {v5, v4, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 785
    :cond_1
    sget-object v7, Lcom/nuance/swype/input/ThemeManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Theme not found: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_1

    .line 788
    .end local v4    # "menuKey":Ljava/lang/String;
    .end local v6    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_2
    sget-object v7, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 789
    sget-object v7, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    const-string v8, "no_category_id"

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    sget-object v7, Lcom/nuance/swype/input/ThemeManager;->themeCategoryMap:Ljava/util/Map;

    const-string v8, "no_category_id"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    sput-object v7, Lcom/nuance/swype/input/ThemeManager;->themeMap:Ljava/util/Map;

    .line 792
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    .end local v5    # "newMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    :cond_3
    return-void
.end method
