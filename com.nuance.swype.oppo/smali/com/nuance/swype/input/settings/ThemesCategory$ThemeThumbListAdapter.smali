.class public Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThemesCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/ThemesCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeThumbListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$Holder;
    }
.end annotation


# instance fields
.field private final categoryId:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private current:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

.field private defaultTextColors:Landroid/content/res/ColorStateList;

.field private highlightColor:I

.field private final maxImageWidth:I

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
    .line 321
    .local p1, "themes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 316
    const v3, -0xffff01

    iput v3, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->highlightColor:I

    .line 322
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->themes:Ljava/util/List;

    .line 323
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->names:Ljava/util/List;

    .line 324
    iput-object p3, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->categoryId:Ljava/lang/String;

    .line 325
    iput-object p2, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->context:Landroid/content/Context;

    .line 326
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 327
    .local v1, "res":Landroid/content/res/Resources;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 328
    .local v2, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    iget-object v3, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->names:Ljava/util/List;

    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getNameResId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 330
    .end local v2    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_0
    iput p4, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->maxImageWidth:I

    .line 331
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->themes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentTheme()Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->current:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    return-object v0
.end method

.method public getHighlightColor()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->highlightColor:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 348
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->themes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 353
    int-to-long v0, p1

    return-wide v0
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
    .line 339
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->themes:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 377
    if-nez p2, :cond_1

    .line 378
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 379
    sget v5, Lcom/nuance/swype/input/R$layout;->theme_category_preview:I

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 380
    sget v4, Lcom/nuance/swype/input/R$id;->image_preview_category:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/widget/LoadingImageView;

    .line 381
    .local v1, "image":Lcom/nuance/swype/widget/LoadingImageView;
    sget v4, Lcom/nuance/swype/input/R$id;->theme_name_category:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 382
    .local v3, "name":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->defaultTextColors:Landroid/content/res/ColorStateList;

    if-nez v4, :cond_0

    .line 383
    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->defaultTextColors:Landroid/content/res/ColorStateList;

    .line 385
    :cond_0
    sget v4, Lcom/nuance/swype/input/R$id;->theme_lock:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 387
    .local v2, "lockIcon":Landroid/widget/ImageView;
    new-instance v4, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$Holder;

    invoke-direct {v4, v1, v3, v2, v6}, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$Holder;-><init>(Lcom/nuance/swype/widget/LoadingImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/nuance/swype/input/settings/ThemesCategory$1;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 390
    .end local v1    # "image":Lcom/nuance/swype/widget/LoadingImageView;
    .end local v2    # "lockIcon":Landroid/widget/ImageView;
    .end local v3    # "name":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$Holder;

    .line 391
    .local v0, "holder":Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$Holder;
    iget-object v5, v0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$Holder;->image:Lcom/nuance/swype/widget/LoadingImageView;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->themes:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v4}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getPreviewResId()I

    move-result v4

    iget v6, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->maxImageWidth:I

    invoke-virtual {v5, v4, v6, v7}, Lcom/nuance/swype/widget/LoadingImageView;->setImage(IIZ)V

    .line 392
    iget-object v5, v0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$Holder;->name:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->names:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    sget-boolean v4, Lcom/nuance/swype/input/ThemeManager;->isInAppPurchaseEnabled:Z

    if-eqz v4, :cond_2

    .line 396
    iget-object v4, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->themes:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-static {v4}, Lcom/nuance/swype/input/ThemeManager;->isThemeLocked(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 397
    iget-object v4, v0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$Holder;->lockIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 402
    :goto_0
    sget v4, Lcom/nuance/swype/input/R$drawable;->theme_background:I

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 403
    iget-object v4, v0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$Holder;->name:Landroid/widget/TextView;

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 406
    :cond_2
    iget-object v4, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->current:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->themes:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v4}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->current:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v5}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->themes:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v4}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getCurrentCategoryId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->current:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v5}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getCurrentCategoryId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 412
    invoke-virtual {p2, v7}, Landroid/view/View;->setClickable(Z)V

    .line 413
    iget-object v4, v0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$Holder;->image:Lcom/nuance/swype/widget/LoadingImageView;

    iget v5, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->highlightColor:I

    invoke-virtual {v4, v5}, Lcom/nuance/swype/widget/LoadingImageView;->setBackgroundColor(I)V

    .line 414
    iget-object v4, v0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$Holder;->name:Landroid/widget/TextView;

    iget v5, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->highlightColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 416
    sget-boolean v4, Lcom/nuance/swype/input/ThemeManager;->isInAppPurchaseEnabled:Z

    if-eqz v4, :cond_3

    .line 417
    iget-object v4, v0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$Holder;->name:Landroid/widget/TextView;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 418
    sget v4, Lcom/nuance/swype/input/R$drawable;->theme_background_current:I

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 428
    :cond_3
    :goto_1
    return-object p2

    .line 399
    :cond_4
    iget-object v4, v0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$Holder;->lockIcon:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 422
    :cond_5
    invoke-virtual {p2, v7}, Landroid/view/View;->setClickable(Z)V

    .line 423
    iget-object v4, v0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$Holder;->image:Lcom/nuance/swype/widget/LoadingImageView;

    invoke-virtual {v4, v7}, Lcom/nuance/swype/widget/LoadingImageView;->setBackgroundColor(I)V

    .line 424
    sget-boolean v4, Lcom/nuance/swype/input/ThemeManager;->isInAppPurchaseEnabled:Z

    if-nez v4, :cond_3

    .line 425
    iget-object v4, v0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter$Holder;->name:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->defaultTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method

.method public setCurrentTheme(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)V
    .locals 0
    .param p1, "theme"    # Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->current:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 372
    return-void
.end method

.method public setHighlightColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 361
    iput p1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->highlightColor:I

    .line 363
    return-void
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
    .line 343
    .local p1, "themes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesCategory$ThemeThumbListAdapter;->themes:Ljava/util/List;

    .line 344
    return-void
.end method
