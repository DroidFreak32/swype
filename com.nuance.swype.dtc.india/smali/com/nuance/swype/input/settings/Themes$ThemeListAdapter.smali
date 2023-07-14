.class Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;
.super Landroid/widget/BaseAdapter;
.source "Themes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/Themes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThemeListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private currentName:Ljava/lang/String;

.field private defaultTextColors:Landroid/content/res/ColorStateList;

.field private delegate:Lcom/nuance/swype/input/settings/Themes;

.field private gridView:Landroid/widget/GridView;

.field private hasDownloadableThem:Z

.field private highlightColor:I

.field private final names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final previewImageHeight:I

.field private final previewImageWidth:I

.field private themes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/ThemeManager$SwypeTheme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/nuance/swype/input/settings/Themes;Landroid/content/Context;III)V
    .locals 1
    .param p2, "delegate"    # Lcom/nuance/swype/input/settings/Themes;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "previewImageWidth"    # I
    .param p5, "previewImageHeight"    # I
    .param p6, "source"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/ThemeManager$SwypeTheme;",
            ">;",
            "Lcom/nuance/swype/input/settings/Themes;",
            "Landroid/content/Context;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 469
    .local p1, "themes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 461
    const v0, -0xffff01

    iput v0, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->highlightColor:I

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->names:Ljava/util/List;

    .line 471
    iput-object p3, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->context:Landroid/content/Context;

    .line 472
    invoke-virtual {p0, p1, p3}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->setThemes(Ljava/util/List;Landroid/content/Context;)V

    .line 473
    iput p4, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->previewImageWidth:I

    .line 474
    iput p5, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->previewImageHeight:I

    .line 475
    iput-object p2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->delegate:Lcom/nuance/swype/input/settings/Themes;

    .line 476
    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;)Lcom/nuance/swype/input/settings/Themes;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->delegate:Lcom/nuance/swype/input/settings/Themes;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->themes:Ljava/util/List;

    return-object v0
.end method

.method private hasDownloadableTheme()Z
    .locals 4

    .prologue
    .line 622
    const/4 v0, 0x0

    .line 623
    .local v0, "hasDownloadable":Z
    iget-object v1, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->themes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 624
    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSource()Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    move-result-object v1

    sget-object v3, Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;->CONNECT:Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    if-ne v1, v3, :cond_0

    .line 625
    const/4 v0, 0x1

    .line 629
    :cond_1
    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->themes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHighlightColor()I
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->highlightColor:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 565
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->themes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 570
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPreloadItems(I)Ljava/util/List;
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/ThemeManager$SwypeTheme;",
            ">;"
        }
    .end annotation

    .prologue
    .line 718
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->themes:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->themes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPreloadRequestBuilder(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 2
    .param p1, "item"    # Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .prologue
    .line 723
    invoke-static {}, Lcom/nuance/swype/input/settings/Themes;->access$500()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 724
    invoke-static {}, Lcom/nuance/swype/input/settings/Themes;->access$400()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->thumbnail(Lcom/bumptech/glide/DrawableRequestBuilder;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 725
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPreloadRequestBuilder(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 453
    check-cast p1, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->getPreloadRequestBuilder(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method getTheme(Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .locals 4
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 508
    const/4 v1, 0x0

    .line 509
    .local v1, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->themes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 510
    .local v0, "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 511
    move-object v1, v0

    .line 515
    .end local v0    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_1
    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 635
    sget-object v4, Lcom/nuance/swype/input/settings/Themes;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v13, 0x6

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v19, "getView...position: "

    aput-object v19, v13, v14

    const/4 v14, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v13, v14

    const/4 v14, 0x2

    const-string/jumbo v19, "...convertView: "

    aput-object v19, v13, v14

    const/4 v14, 0x3

    aput-object p2, v13, v14

    const/4 v14, 0x4

    const-string/jumbo v19, "...parent: "

    aput-object v19, v13, v14

    const/4 v14, 0x5

    aput-object p3, v13, v14

    invoke-interface {v4, v13}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 637
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v16

    .line 638
    .local v16, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->themes:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 640
    .local v18, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    if-nez p2, :cond_1

    .line 641
    sget v4, Lcom/nuance/swype/input/R$layout;->theme_keyboard_preview_download:I

    const/4 v13, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 642
    sget v4, Lcom/nuance/swype/input/R$id;->theme_grid_preview:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/widget/directional/DirectionalRelativeLayout;

    .line 643
    .local v5, "themeTile":Lcom/nuance/swype/widget/directional/DirectionalRelativeLayout;
    sget v4, Lcom/nuance/swype/input/R$id;->download_image_preview:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/util/drawable/ImageViewWrapper;

    .line 644
    .local v6, "image":Lcom/nuance/swype/util/drawable/ImageViewWrapper;
    sget v4, Lcom/nuance/swype/input/R$id;->theme_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 646
    .local v7, "name":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->defaultTextColors:Landroid/content/res/ColorStateList;

    if-nez v4, :cond_0

    .line 647
    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->defaultTextColors:Landroid/content/res/ColorStateList;

    .line 649
    :cond_0
    sget v4, Lcom/nuance/swype/input/R$id;->theme_status_icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 650
    .local v8, "statusIcon":Landroid/widget/ImageView;
    sget v4, Lcom/nuance/swype/input/R$id;->theme_grid_price:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 651
    .local v9, "priceView":Landroid/widget/TextView;
    sget v4, Lcom/nuance/swype/input/R$id;->progressbar_grid_row:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 652
    .local v10, "progressRow":Landroid/widget/LinearLayout;
    sget v4, Lcom/nuance/swype/input/R$id;->progressbar_grid_download:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ProgressBar;

    .line 653
    .local v11, "pBar":Landroid/widget/ProgressBar;
    sget v4, Lcom/nuance/swype/input/R$id;->cancel_grid_download:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 655
    .local v12, "cancel":Landroid/widget/ImageView;
    new-instance v4, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->defaultTextColors:Landroid/content/res/ColorStateList;

    const/4 v14, 0x0

    invoke-direct/range {v4 .. v14}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;-><init>(Lcom/nuance/swype/widget/directional/DirectionalRelativeLayout;Lcom/nuance/swype/util/drawable/ImageViewWrapper;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/content/res/ColorStateList;Lcom/nuance/swype/input/settings/Themes$1;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 658
    .end local v5    # "themeTile":Lcom/nuance/swype/widget/directional/DirectionalRelativeLayout;
    .end local v6    # "image":Lcom/nuance/swype/util/drawable/ImageViewWrapper;
    .end local v7    # "name":Landroid/widget/TextView;
    .end local v8    # "statusIcon":Landroid/widget/ImageView;
    .end local v9    # "priceView":Landroid/widget/TextView;
    .end local v10    # "progressRow":Landroid/widget/LinearLayout;
    .end local v11    # "pBar":Landroid/widget/ProgressBar;
    .end local v12    # "cancel":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;

    .line 659
    .local v17, "myThemeStatus":Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->downloadImage:Lcom/nuance/swype/util/drawable/ImageViewWrapper;

    if-eqz v4, :cond_2

    .line 660
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->downloadImage:Lcom/nuance/swype/util/drawable/ImageViewWrapper;

    new-instance v13, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v18

    move/from16 v3, p1

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$1;-><init>(Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;Landroid/view/ViewGroup;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;I)V

    invoke-virtual {v4, v13}, Lcom/nuance/swype/util/drawable/ImageViewWrapper;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 667
    :cond_2
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->tile:Lcom/nuance/swype/widget/directional/DirectionalRelativeLayout;

    if-eqz v4, :cond_3

    .line 668
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->tile:Lcom/nuance/swype/widget/directional/DirectionalRelativeLayout;

    new-instance v13, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v18

    move/from16 v3, p1

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$2;-><init>(Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;Landroid/view/ViewGroup;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;I)V

    invoke-virtual {v4, v13}, Lcom/nuance/swype/widget/directional/DirectionalRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 675
    :cond_3
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->cancel:Landroid/widget/ImageView;

    new-instance v13, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-direct {v13, v0, v1, v2}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$3;-><init>(Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;Landroid/view/ViewGroup;I)V

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 691
    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->setSku(Ljava/lang/String;)V

    .line 692
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->names:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->setThemeName(Ljava/lang/String;)V

    .line 693
    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->initProgressBar()V

    .line 694
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->hasDownloadableThem:Z

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->setHasDownloadableThem(Z)V

    .line 696
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->downloadImage:Lcom/nuance/swype/util/drawable/ImageViewWrapper;

    if-eqz v4, :cond_4

    .line 697
    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSource()Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    move-result-object v4

    sget-object v13, Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;->CONNECT:Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    if-ne v4, v13, :cond_5

    move-object/from16 v15, v18

    .line 698
    check-cast v15, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 699
    .local v15, "connectTheme":Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->downloadImage:Lcom/nuance/swype/util/drawable/ImageViewWrapper;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->previewImageWidth:I

    invoke-virtual {v4, v13}, Lcom/nuance/swype/util/drawable/ImageViewWrapper;->setWrapperImageWidth(I)V

    .line 700
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->downloadImage:Lcom/nuance/swype/util/drawable/ImageViewWrapper;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->previewImageHeight:I

    invoke-virtual {v4, v13}, Lcom/nuance/swype/util/drawable/ImageViewWrapper;->setWrapperImageHeight(I)V

    .line 701
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/android/util/ImageCache;->with(Landroid/content/Context;)Lcom/nuance/android/util/ImageCache;

    move-result-object v4

    invoke-virtual {v15}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v13

    sget v14, Lcom/nuance/swype/input/R$drawable;->custom_progressbar_indeterminate:I

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->downloadImage:Lcom/nuance/swype/util/drawable/ImageViewWrapper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v13, v14, v0}, Lcom/nuance/android/util/ImageCache;->loadImage(Ljava/lang/String;ILcom/nuance/swype/util/drawable/ImageViewWrapper;)V

    .line 708
    .end local v15    # "connectTheme":Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    :goto_0
    move-object/from16 v0, v17

    iget-object v13, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->downloadImage:Lcom/nuance/swype/util/drawable/ImageViewWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->names:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v13, v4}, Lcom/nuance/swype/util/drawable/ImageViewWrapper;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 711
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->currentName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v4, v1, v2, v13}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->updateStatus(Landroid/content/Context;Landroid/view/View;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;Z)V

    .line 713
    return-object p2

    .line 704
    :cond_5
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->downloadImage:Lcom/nuance/swype/util/drawable/ImageViewWrapper;

    sget v13, Lcom/nuance/swype/input/R$id;->drawable_downloader:I

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Lcom/nuance/swype/util/drawable/ImageViewWrapper;->setTag(ILjava/lang/Object;)V

    .line 705
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/android/util/ImageCache;->with(Landroid/content/Context;)Lcom/nuance/android/util/ImageCache;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getPreviewResId()I

    .line 706
    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getPreviewResId()I

    move-result v13

    sget v14, Lcom/nuance/swype/input/R$drawable;->custom_progressbar_indeterminate:I

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->downloadImage:Lcom/nuance/swype/util/drawable/ImageViewWrapper;

    move-object/from16 v19, v0

    .line 705
    move-object/from16 v0, v19

    invoke-virtual {v4, v13, v14, v0}, Lcom/nuance/android/util/ImageCache;->loadImage(IILcom/nuance/swype/util/drawable/ImageViewWrapper;)V

    goto :goto_0
.end method

.method public setCurrentTheme(Ljava/lang/String;)V
    .locals 4
    .param p1, "themeName"    # Ljava/lang/String;

    .prologue
    .line 583
    if-nez p1, :cond_0

    .line 600
    :goto_0
    return-void

    .line 586
    :cond_0
    const-string/jumbo v2, ".apk"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 587
    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 588
    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, "themePath":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 591
    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    aget-object p1, v1, v2

    .line 596
    .end local v1    # "themePath":[Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->currentName:Ljava/lang/String;

    .line 597
    .local v0, "old":Ljava/lang/String;
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->currentName:Ljava/lang/String;

    .line 598
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->currentName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->updateThemeStatus(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->updateThemeStatus(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setDelegate(Lcom/nuance/swype/input/settings/Themes;)V
    .locals 0
    .param p1, "delegate"    # Lcom/nuance/swype/input/settings/Themes;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->delegate:Lcom/nuance/swype/input/settings/Themes;

    .line 505
    return-void
.end method

.method setGridView(Landroid/widget/GridView;)V
    .locals 2
    .param p1, "gridView"    # Landroid/widget/GridView;

    .prologue
    .line 495
    if-nez p1, :cond_0

    .line 496
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->gridView:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->gridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 500
    :cond_0
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->gridView:Landroid/widget/GridView;

    .line 501
    return-void
.end method

.method public setHighlightColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 578
    iput p1, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->highlightColor:I

    .line 579
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->notifyDataSetChanged()V

    .line 580
    return-void
.end method

.method public setThemes(Ljava/util/List;Landroid/content/Context;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/ThemeManager$SwypeTheme;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 484
    .local p1, "themes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->themes:Ljava/util/List;

    .line 485
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->names:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 486
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 487
    .local v0, "res":Landroid/content/res/Resources;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 488
    .local v1, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->names:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getDisplayName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 490
    .end local v1    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->hasDownloadableTheme()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->hasDownloadableThem:Z

    .line 491
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->notifyDataSetChanged()V

    .line 492
    return-void
.end method

.method public updateBundleStatusInThemesAdapter(Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;)V
    .locals 5
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    .prologue
    const/4 v4, 0x1

    .line 519
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->themes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .local v0, "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    move-object v1, v0

    .line 521
    check-cast v1, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 522
    .local v1, "theme":Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_PURCHASED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    if-ne p2, v2, :cond_1

    .line 523
    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    .line 1206
    iget-boolean v2, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    .line 523
    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    .line 1214
    iget-boolean v2, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isFree:Z

    .line 523
    if-nez v2, :cond_0

    .line 526
    check-cast v0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .end local v0    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    .line 2202
    iput-boolean v4, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    goto :goto_0

    .line 527
    .restart local v0    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_1
    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALLING:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    if-ne p2, v2, :cond_0

    move-object v2, v0

    .line 528
    check-cast v2, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalling(Z)V

    .line 529
    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->updateThemeStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 532
    .end local v0    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .end local v1    # "theme":Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    :cond_2
    return-void
.end method

.method public updateStatusInThemesAdapter(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;Z)Z
    .locals 6
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;
    .param p4, "forceUpdateBundleSkus"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 536
    const/4 v1, 0x0

    .line 537
    .local v1, "updateStatusDone":Z
    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->themes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 538
    .local v0, "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    if-nez p4, :cond_1

    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 539
    :cond_1
    instance-of v2, v0, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    if-eqz v2, :cond_0

    .line 540
    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALLED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    if-ne p3, v2, :cond_4

    move-object v2, v0

    .line 541
    check-cast v2, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalled(Z)V

    .line 552
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->updateThemeStatus(Ljava/lang/String;)V

    .line 553
    const/4 v1, 0x1

    .line 554
    if-nez p4, :cond_0

    .line 560
    .end local v0    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_3
    return v1

    .line 542
    .restart local v0    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_4
    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_PURCHASED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    if-ne p3, v2, :cond_5

    move-object v2, v0

    .line 543
    check-cast v2, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    .line 3202
    iput-boolean v5, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    goto :goto_0

    .line 544
    :cond_5
    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALLING:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    if-ne p3, v2, :cond_6

    move-object v2, v0

    .line 545
    check-cast v2, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalling(Z)V

    goto :goto_0

    .line 546
    :cond_6
    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_INSTALL_CANCELED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    if-ne p3, v2, :cond_7

    move-object v2, v0

    .line 547
    check-cast v2, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalling(Z)V

    move-object v2, v0

    .line 548
    check-cast v2, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalled(Z)V

    goto :goto_0

    .line 549
    :cond_7
    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;->THEME_UNINSTALLED:Lcom/nuance/swype/inapp/CatalogManager$ThemeStatusChange;

    if-ne p3, v2, :cond_2

    move-object v2, v0

    .line 550
    check-cast v2, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/nuance/swype/util/storage/ThemeItemSeed;->setInstalled(Z)V

    goto :goto_0
.end method

.method updateThemeStatus(Ljava/lang/String;)V
    .locals 7
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 603
    iget-object v5, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->gridView:Landroid/widget/GridView;

    if-eqz v5, :cond_0

    .line 604
    iget-object v5, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->gridView:Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v5

    iget-object v6, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->gridView:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v4, v5, 0x1

    .line 605
    .local v4, "visibleViews":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 606
    iget-object v5, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->gridView:Landroid/widget/GridView;

    invoke-virtual {v5, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 607
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 608
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;

    .line 609
    .local v1, "myThemeStatus":Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;
    if-eqz v1, :cond_1

    .line 610
    iget-object v5, v1, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->sku:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->getTheme(Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v2

    .line 611
    .local v2, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    if-eqz v2, :cond_1

    iget-object v5, v1, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->sku:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 612
    iget-object v5, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->currentName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v1, v5, v3, v2, v6}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;->updateStatus(Landroid/content/Context;Landroid/view/View;Lcom/nuance/swype/input/ThemeManager$SwypeTheme;Z)V

    .line 619
    .end local v0    # "i":I
    .end local v1    # "myThemeStatus":Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$MyThemeStatus;
    .end local v2    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "visibleViews":I
    :cond_0
    return-void

    .line 605
    .restart local v0    # "i":I
    .restart local v3    # "view":Landroid/view/View;
    .restart local v4    # "visibleViews":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
