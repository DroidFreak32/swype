.class Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ThemesCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/ThemesCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThemeCategoryAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/nuance/swype/inapp/CategoryItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final resource:I

.field private final themeThumbListAdapterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final themeThumbnailColumnWidth:I

.field private final themesCategoryWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/swype/input/settings/ThemesCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/nuance/swype/input/settings/ThemesCategory;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .param p4, "themesCategoryWeakReference"    # Lcom/nuance/swype/input/settings/ThemesCategory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/swype/inapp/CategoryItem;",
            ">;",
            "Lcom/nuance/swype/input/settings/ThemesCategory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 372
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/inapp/CategoryItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 368
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->themeThumbListAdapterMap:Ljava/util/HashMap;

    .line 373
    iput p2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->resource:I

    .line 374
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->themesCategoryWeakReference:Ljava/lang/ref/WeakReference;

    .line 375
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$dimen;->category_theme_column_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->themeThumbnailColumnWidth:I

    .line 376
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;)Ljava/lang/ref/WeakReference;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->themesCategoryWeakReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method applyCurrentTheme(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "oldSku"    # Ljava/lang/String;

    .prologue
    .line 398
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->themeThumbListAdapterMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 399
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;>;"
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->themeThumbListAdapterMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;

    .line 400
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->setCurrentThemeSku(Ljava/lang/String;)V

    goto :goto_a

    .line 403
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;>;"
    :cond_27
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->themeThumbListAdapterMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_31
    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 404
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;>;"
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->themeThumbListAdapterMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->getThemes()Ljava/util/List;

    move-result-object v2

    .line 405
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 406
    .local v1, "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_71

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 407
    :cond_71
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->themeThumbListAdapterMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;

    .line 408
    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->setCurrentThemeSku(Ljava/lang/String;)V

    goto :goto_31

    .line 413
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;>;"
    .end local v1    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_81
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 472
    sget-object v7, Lcom/nuance/swype/input/settings/ThemesCategory;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "ThemeCategoryAdapter...getView...position: "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "...convertView: "

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object p2, v8, v9

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 473
    if-nez p2, :cond_a3

    .line 474
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    iget v8, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->resource:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 480
    .local v5, "rowView":Landroid/view/View;
    :goto_2f
    sget v7, Lcom/nuance/swype/input/R$id;->theme_category_title:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 481
    .local v1, "categoryTitle":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/inapp/CategoryItem;

    .line 3020
    iget-object v7, v7, Lcom/nuance/swype/inapp/CategoryItem;->title:Ljava/lang/String;

    .line 481
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    sget v7, Lcom/nuance/swype/input/R$id;->theme_more_view_btn:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 483
    .local v4, "more":Landroid/widget/Button;
    const-string/jumbo v7, "#FF9000"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 484
    const/high16 v7, -0x1000000

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 485
    new-instance v7, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter$1;

    invoke-direct {v7, p0, p1}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter$1;-><init>(Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;I)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    sget v7, Lcom/nuance/swype/input/R$id;->theme_horizontal_listview:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/settings/HorizontalListView;

    .line 497
    .local v2, "hListView":Lcom/nuance/swype/input/settings/HorizontalListView;
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/inapp/CategoryItem;

    .line 3032
    iget-object v6, v7, Lcom/nuance/swype/inapp/CategoryItem;->themes:Ljava/util/List;

    .line 498
    .local v6, "themeList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    new-instance v3, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 499
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/inapp/CategoryItem;

    .line 4024
    iget-object v7, v7, Lcom/nuance/swype/inapp/CategoryItem;->categoryId:Ljava/lang/String;

    .line 499
    iget v9, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->themeThumbnailColumnWidth:I

    invoke-direct {v3, v6, v8, v7, v9}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;-><init>(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;I)V

    .line 500
    .local v3, "horListAdapter":Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;
    invoke-virtual {v3, v2}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->sethListView(Lcom/nuance/swype/input/settings/HorizontalListView;)V

    .line 501
    iget-object v8, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->themeThumbListAdapterMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/inapp/CategoryItem;

    .line 5024
    iget-object v7, v7, Lcom/nuance/swype/inapp/CategoryItem;->categoryId:Ljava/lang/String;

    .line 501
    invoke-virtual {v8, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget-object v7, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->themesCategoryWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/ThemesCategory;

    .line 504
    .local v0, "category":Lcom/nuance/swype/input/settings/ThemesCategory;
    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 505
    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/settings/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 506
    return-object v5

    .line 477
    .end local v0    # "category":Lcom/nuance/swype/input/settings/ThemesCategory;
    .end local v1    # "categoryTitle":Landroid/widget/TextView;
    .end local v2    # "hListView":Lcom/nuance/swype/input/settings/HorizontalListView;
    .end local v3    # "horListAdapter":Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;
    .end local v4    # "more":Landroid/widget/Button;
    .end local v5    # "rowView":Landroid/view/View;
    .end local v6    # "themeList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    :cond_a3
    move-object v5, p2

    .restart local v5    # "rowView":Landroid/view/View;
    goto :goto_2f
.end method

.method public notifyThumbListAdapter(Ljava/lang/String;)V
    .registers 4
    .param p1, "categoryId"    # Ljava/lang/String;

    .prologue
    .line 463
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->themeThumbListAdapterMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;

    .line 464
    .local v0, "adapter":Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;
    if-eqz v0, :cond_d

    .line 465
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->notifyDataSetChanged()V

    .line 467
    :cond_d
    return-void
.end method

.method onDestroy()V
    .registers 5

    .prologue
    .line 379
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->themeThumbListAdapterMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 380
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;>;"
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->themeThumbListAdapterMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;

    .line 381
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->sethListView(Lcom/nuance/swype/input/settings/HorizontalListView;)V

    goto :goto_a

    .line 383
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;>;"
    :cond_27
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->themesCategoryWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 384
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->themeThumbListAdapterMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 385
    return-void
.end method

.method updateAllThumbListAdapter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "oldSku"    # Ljava/lang/String;

    .prologue
    .line 388
    if-nez p1, :cond_2a

    if-nez p2, :cond_2a

    .line 390
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->themeThumbListAdapterMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 391
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;>;"
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->themeThumbListAdapterMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;

    .line 392
    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->notifyDataSetChanged()V

    goto :goto_e

    .line 395
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;>;"
    :cond_2a
    return-void
.end method

.method updateStatusInThemesAdapter(Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V
    .registers 9
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .prologue
    const/4 v5, 0x1

    .line 438
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->themeThumbListAdapterMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 439
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;>;"
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->themeThumbListAdapterMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->getThemes()Ljava/util/List;

    move-result-object v2

    .line 440
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 441
    .local v1, "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 442
    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALLED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    if-ne p2, v2, :cond_4f

    .line 443
    check-cast v1, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .end local v1    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    .line 444
    invoke-virtual {v2, v5}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalled(Z)V

    goto :goto_b

    .line 445
    .restart local v1    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_4f
    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_PURCHASED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    if-ne p2, v2, :cond_b

    .line 446
    check-cast v1, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .end local v1    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    .line 2202
    iput-boolean v5, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    goto :goto_b

    .line 453
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;>;"
    :cond_5c
    return-void
.end method

.method updateStatusInThemesAdapter(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V
    .registers 9
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 415
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->themeThumbListAdapterMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7f

    .line 416
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->themeThumbListAdapterMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->getThemes()Ljava/util/List;

    move-result-object v1

    .line 417
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 418
    .local v0, "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 419
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALLED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    if-ne p3, v1, :cond_3e

    .line 420
    check-cast v0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .end local v0    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalled(Z)V

    goto :goto_1a

    .line 421
    .restart local v0    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_3e
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_PURCHASED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    if-ne p3, v1, :cond_4b

    .line 422
    check-cast v0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .end local v0    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v1

    .line 1202
    iput-boolean v4, v1, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    goto :goto_1a

    .line 423
    .restart local v0    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_4b
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALLING:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    if-ne p3, v1, :cond_59

    .line 424
    check-cast v0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .end local v0    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalling(Z)V

    goto :goto_1a

    .line 425
    .restart local v0    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_59
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_UNINSTALLED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    if-ne p3, v1, :cond_67

    .line 426
    check-cast v0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .end local v0    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalled(Z)V

    goto :goto_1a

    .line 427
    .restart local v0    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_67
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALL_CANCELED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    if-ne p3, v1, :cond_1a

    move-object v1, v0

    .line 428
    check-cast v1, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalling(Z)V

    .line 429
    check-cast v0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .end local v0    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalled(Z)V

    goto :goto_1a

    .line 435
    :cond_7f
    return-void
.end method

.method updateThemeThumbListAdapter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "categoryId"    # Ljava/lang/String;

    .prologue
    .line 456
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->themeThumbListAdapterMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;

    .line 457
    .local v0, "adapter":Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;
    if-eqz v0, :cond_d

    .line 458
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->updateThemeStatus(Ljava/lang/String;)V

    .line 460
    :cond_d
    return-void
.end method
