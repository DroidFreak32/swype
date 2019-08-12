.class Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ThemesCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/ThemesCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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

.field private final themesCategory:Ljava/lang/ref/WeakReference;
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
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .param p4, "themesCategory"    # Lcom/nuance/swype/input/settings/ThemesCategory;
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
    .line 260
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/inapp/CategoryItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 261
    iput p2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->resource:I

    .line 262
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->themesCategory:Ljava/lang/ref/WeakReference;

    .line 263
    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->themesCategory:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 269
    if-nez p2, :cond_2

    .line 270
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iget v7, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->resource:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 271
    .local v5, "rowView":Landroid/view/View;
    sget-boolean v6, Lcom/nuance/swype/input/ThemeManager;->isInAppPurchaseEnabled:Z

    if-eqz v6, :cond_0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-ge v6, v7, :cond_0

    .line 272
    sget v6, Lcom/nuance/swype/input/R$id;->theme_category_item_lineLayout:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 273
    sget v7, Lcom/nuance/swype/input/settings/ThemesCategory;->theme_color:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 279
    :cond_0
    :goto_0
    sget v6, Lcom/nuance/swype/input/R$id;->theme_category_title:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 280
    .local v1, "categoryTitle":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/inapp/CategoryItem;

    iget-object v6, v6, Lcom/nuance/swype/inapp/CategoryItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    sget v6, Lcom/nuance/swype/input/R$id;->theme_more_view_btn:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 282
    .local v4, "more":Landroid/widget/Button;
    sget-boolean v6, Lcom/nuance/swype/input/ThemeManager;->isInAppPurchaseEnabled:Z

    if-eqz v6, :cond_1

    .line 283
    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 284
    const/high16 v6, -0x1000000

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 286
    :cond_1
    new-instance v6, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter$1;

    invoke-direct {v6, p0, p1}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter$1;-><init>(Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;I)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    sget v6, Lcom/nuance/swype/input/R$id;->theme_horizontal_listview:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/settings/HorizontalListView;

    .line 295
    .local v2, "hListView":Lcom/nuance/swype/input/settings/HorizontalListView;
    new-instance v3, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/inapp/CategoryItem;

    iget-object v7, v6, Lcom/nuance/swype/inapp/CategoryItem;->themes:Ljava/util/List;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/inapp/CategoryItem;

    iget-object v6, v6, Lcom/nuance/swype/inapp/CategoryItem;->categoryId:Ljava/lang/String;

    invoke-static {}, Lcom/nuance/swype/input/settings/ThemesCategory;->access$300()I

    move-result v9

    invoke-direct {v3, v7, v8, v6, v9}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;-><init>(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;I)V

    .line 298
    .local v3, "horListAdapter":Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;
    invoke-static {}, Lcom/nuance/swype/input/settings/ThemesCategory;->access$400()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/inapp/CategoryItem;

    iget-object v6, v6, Lcom/nuance/swype/inapp/CategoryItem;->categoryId:Ljava/lang/String;

    invoke-virtual {v7, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-static {}, Lcom/nuance/swype/input/settings/ThemesCategory;->access$500()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->setHighlightColor(I)V

    .line 300
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getCurrentTheme()Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->setCurrentTheme(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)V

    .line 301
    iget-object v6, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeCategoryAdapter;->themesCategory:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/ThemesCategory;

    .line 302
    .local v0, "category":Lcom/nuance/swype/input/settings/ThemesCategory;
    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 303
    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/settings/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 304
    return-object v5

    .line 276
    .end local v0    # "category":Lcom/nuance/swype/input/settings/ThemesCategory;
    .end local v1    # "categoryTitle":Landroid/widget/TextView;
    .end local v2    # "hListView":Lcom/nuance/swype/input/settings/HorizontalListView;
    .end local v3    # "horListAdapter":Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;
    .end local v4    # "more":Landroid/widget/Button;
    .end local v5    # "rowView":Landroid/view/View;
    :cond_2
    move-object v5, p2

    .restart local v5    # "rowView":Landroid/view/View;
    goto/16 :goto_0
.end method
