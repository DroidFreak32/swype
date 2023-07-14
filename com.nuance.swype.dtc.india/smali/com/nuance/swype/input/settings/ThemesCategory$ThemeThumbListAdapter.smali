.class Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThemesCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/ThemesCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThemeThumbListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private final categoryId:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private currentSku:Ljava/lang/String;

.field private defaultTextColors:Landroid/content/res/ColorStateList;

.field private hListView:Lcom/nuance/swype/input/settings/HorizontalListView;

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
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "categoryId"    # Ljava/lang/String;
    .param p4, "maxImageWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/ThemeManager$SwypeTheme;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 540
    .local p1, "themes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 541
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->themes:Ljava/util/List;

    .line 542
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->names:Ljava/util/List;

    .line 543
    iput-object p3, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->categoryId:Ljava/lang/String;

    .line 544
    iput-object p2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->context:Landroid/content/Context;

    .line 545
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 546
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

    .line 547
    .local v1, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    iget-object v3, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->names:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getDisplayName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 549
    .end local v1    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_0
    invoke-static {p2}, Lcom/nuance/swype/input/settings/ThemesCategory;->access$200(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->currentSku:Ljava/lang/String;

    .line 550
    return-void
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;

    .prologue
    .line 522
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->themes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 577
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->themes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 582
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
    .line 674
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->themes:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->themes:Ljava/util/List;

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
    .line 679
    invoke-static {}, Lcom/nuance/swype/input/settings/ThemesCategory;->access$1000()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 680
    invoke-static {}, Lcom/nuance/swype/input/settings/ThemesCategory;->access$900()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->thumbnail(Lcom/bumptech/glide/DrawableRequestBuilder;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 681
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPreloadRequestBuilder(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
    .locals 1

    .prologue
    .line 522
    check-cast p1, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->getPreloadRequestBuilder(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getThemes()Ljava/util/List;
    .locals 1
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
    .line 568
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->themes:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 608
    sget-object v2, Lcom/nuance/swype/input/settings/ThemesCategory;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "ThemeThumbListAdapter...categoryId: "

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->categoryId:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v16, "...getView...position: "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v16, "...convertView: "

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->themes:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 612
    .local v15, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    if-nez p2, :cond_1

    .line 613
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 614
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    .line 616
    .local v14, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v15}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->isConnectTheme()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 617
    sget v2, Lcom/nuance/swype/input/R$layout;->theme_category_preview_download:I

    const/4 v11, 0x0

    invoke-virtual {v14, v2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 618
    sget v2, Lcom/nuance/swype/input/R$id;->download_preview_logo:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/util/drawable/ImageViewWrapper;

    .line 619
    .local v3, "logo":Lcom/nuance/swype/util/drawable/ImageViewWrapper;
    sget v2, Lcom/nuance/swype/input/R$id;->theme_name_category:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 620
    .local v4, "name":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->defaultTextColors:Landroid/content/res/ColorStateList;

    if-nez v2, :cond_0

    .line 621
    invoke-virtual {v4}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->defaultTextColors:Landroid/content/res/ColorStateList;

    .line 623
    :cond_0
    sget v2, Lcom/nuance/swype/input/R$id;->logo_status_icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 624
    .local v5, "statusIcon":Landroid/widget/ImageView;
    sget v2, Lcom/nuance/swype/input/R$id;->theme_price:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 625
    .local v6, "priceView":Landroid/widget/TextView;
    sget v2, Lcom/nuance/swype/input/R$id;->progressbar_row:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 626
    .local v7, "progressRow":Landroid/widget/LinearLayout;
    sget v2, Lcom/nuance/swype/input/R$id;->progressbar_theme_download:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .line 627
    .local v8, "pBar":Landroid/widget/ProgressBar;
    sget v2, Lcom/nuance/swype/input/R$id;->cancel_theme_download:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 628
    .local v9, "cancel":Landroid/widget/ImageView;
    sget v2, Lcom/nuance/swype/input/R$id;->theme_category_no_data_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 629
    .local v10, "indetermineView":Landroid/view/View;
    new-instance v2, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;-><init>(Lcom/nuance/swype/util/drawable/ImageViewWrapper;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/view/View;Lcom/nuance/swype/input/settings/ThemesCategory$1;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 633
    .end local v3    # "logo":Lcom/nuance/swype/util/drawable/ImageViewWrapper;
    .end local v4    # "name":Landroid/widget/TextView;
    .end local v5    # "statusIcon":Landroid/widget/ImageView;
    .end local v6    # "priceView":Landroid/widget/TextView;
    .end local v7    # "progressRow":Landroid/widget/LinearLayout;
    .end local v8    # "pBar":Landroid/widget/ProgressBar;
    .end local v9    # "cancel":Landroid/widget/ImageView;
    .end local v10    # "indetermineView":Landroid/view/View;
    .end local v14    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    if-eqz p2, :cond_2

    .line 634
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;

    .line 635
    .local v13, "downloadableThemeStatus":Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;
    iget-object v2, v13, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->cancel:Landroid/widget/ImageView;

    new-instance v11, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$1;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v11, v0, v1, v15}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$1;-><init>(Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;ILcom/nuance/swype/input/ThemeManager$SwypeTheme;)V

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->names:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->access$500(Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;Ljava/lang/CharSequence;)V

    .line 653
    invoke-virtual {v15}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->access$600(Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;Ljava/lang/String;)V

    .line 654
    invoke-static {v13}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->access$700(Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;)V

    .line 655
    iget-object v2, v13, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->name:Landroid/widget/TextView;

    const/high16 v11, -0x1000000

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 656
    sget v2, Lcom/nuance/swype/input/R$drawable;->settings_theme_background:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    move-object v12, v15

    .line 658
    check-cast v12, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 659
    .local v12, "connectTheme":Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    iget-object v2, v13, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->downloadedLogo:Lcom/nuance/swype/util/drawable/ImageViewWrapper;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v16, Lcom/nuance/swype/input/R$dimen;->category_theme_column_width:I

    .line 660
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 659
    invoke-virtual {v2, v11}, Lcom/nuance/swype/util/drawable/ImageViewWrapper;->setWrapperImageWidth(I)V

    .line 661
    iget-object v2, v13, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->downloadedLogo:Lcom/nuance/swype/util/drawable/ImageViewWrapper;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v16, Lcom/nuance/swype/input/R$dimen;->category_theme_column_height:I

    .line 662
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 661
    invoke-virtual {v2, v11}, Lcom/nuance/swype/util/drawable/ImageViewWrapper;->setWrapperImageHeight(I)V

    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/android/util/ImageCache;->with(Landroid/content/Context;)Lcom/nuance/android/util/ImageCache;

    move-result-object v2

    invoke-virtual {v12}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v11

    sget v16, Lcom/nuance/swype/input/R$drawable;->custom_progressbar_indeterminate:I

    iget-object v0, v13, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->downloadedLogo:Lcom/nuance/swype/util/drawable/ImageViewWrapper;

    move-object/from16 v17, v0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v11, v0, v1}, Lcom/nuance/android/util/ImageCache;->loadImage(Ljava/lang/String;ILcom/nuance/swype/util/drawable/ImageViewWrapper;)V

    .line 666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->currentSku:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v13, v2, v12, v0, v11}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->access$800(Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;Landroid/content/Context;Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;Landroid/view/View;Ljava/lang/String;)V

    .line 669
    .end local v12    # "connectTheme":Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    .end local v13    # "downloadableThemeStatus":Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;
    :cond_2
    return-object p2
.end method

.method public setCurrentThemeSku(Ljava/lang/String;)V
    .locals 4
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 587
    invoke-static {p1}, Lcom/nuance/swype/util/StringUtils;->isApkCompletePath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 588
    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, "themePath":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 591
    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    aget-object p1, v1, v2

    .line 595
    .end local v1    # "themePath":[Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->currentSku:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 596
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->currentSku:Ljava/lang/String;

    .line 597
    .local v0, "old":Ljava/lang/String;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->currentSku:Ljava/lang/String;

    .line 598
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->updateThemeStatus(Ljava/lang/String;)V

    .line 603
    .end local v0    # "old":Ljava/lang/String;
    :goto_0
    return-void

    .line 600
    :cond_1
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->currentSku:Ljava/lang/String;

    .line 601
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->currentSku:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->updateThemeStatus(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setThemes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/ThemeManager$SwypeTheme;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 572
    .local p1, "themes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->themes:Ljava/util/List;

    .line 573
    return-void
.end method

.method sethListView(Lcom/nuance/swype/input/settings/HorizontalListView;)V
    .locals 2
    .param p1, "hListView"    # Lcom/nuance/swype/input/settings/HorizontalListView;

    .prologue
    .line 553
    if-nez p1, :cond_0

    .line 554
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->hListView:Lcom/nuance/swype/input/settings/HorizontalListView;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->hListView:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->removeAllViewsInLayout()V

    .line 556
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->hListView:Lcom/nuance/swype/input/settings/HorizontalListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 559
    :cond_0
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->hListView:Lcom/nuance/swype/input/settings/HorizontalListView;

    .line 560
    return-void
.end method

.method updateThemeStatus(Ljava/lang/String;)V
    .locals 8
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 777
    sget-object v5, Lcom/nuance/swype/input/settings/ThemesCategory;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "updateStatus: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    .line 779
    iget-object v5, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->hListView:Lcom/nuance/swype/input/settings/HorizontalListView;

    if-eqz v5, :cond_2

    .line 780
    iget-object v5, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->hListView:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/settings/HorizontalListView;->getLastVisiblePosition()I

    move-result v5

    iget-object v6, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->hListView:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/settings/HorizontalListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v4, v5, 0x1

    .line 781
    .local v4, "visibleViews":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 782
    iget-object v5, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->hListView:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-virtual {v5, v1}, Lcom/nuance/swype/input/settings/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 783
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 784
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;

    .line 785
    .local v0, "downloadableThemeStatus":Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;
    if-eqz v0, :cond_1

    .line 786
    invoke-static {v0}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->access$1100(Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 787
    iget-object v5, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->themes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 788
    .local v2, "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->access$1100(Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 789
    iget-object v5, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->context:Landroid/content/Context;

    check-cast v2, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .end local v2    # "item":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    iget-object v6, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->currentSku:Ljava/lang/String;

    invoke-static {v0, v5, v2, v3, v6}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;->access$800(Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;Landroid/content/Context;Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;Landroid/view/View;Ljava/lang/String;)V

    .line 781
    .end local v0    # "downloadableThemeStatus":Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$DownloadableThemeStatus;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 798
    .end local v1    # "i":I
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "visibleViews":I
    :cond_2
    return-void
.end method
