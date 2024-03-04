.class public Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;
.super Landroid/widget/BaseAdapter;
.source "Themes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/Themes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$Holder;
    }
.end annotation


# instance fields
.field private current:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

.field private defaultTextColors:Landroid/content/res/ColorStateList;

.field private highlightColor:I

.field private maxImageWidth:I

.field private names:Ljava/util/List;
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
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;I)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "maxImageWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/ThemeManager$SwypeTheme;",
            ">;",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "themes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 246
    const v3, -0xffff01

    iput v3, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->highlightColor:I

    .line 250
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->themes:Ljava/util/List;

    .line 251
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->names:Ljava/util/List;

    .line 253
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 254
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

    .line 255
    .local v2, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->names:Ljava/util/List;

    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getNameResId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    .end local v2    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_0
    iput p3, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->maxImageWidth:I

    .line 258
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->themes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentTheme()Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->current:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    return-object v0
.end method

.method public getHighlightColor()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->highlightColor:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->themes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 281
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 305
    if-nez p2, :cond_1

    .line 306
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 307
    sget v6, Lcom/nuance/swype/input/R$layout;->theme_keyboard_preview:I

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 308
    sget v4, Lcom/nuance/swype/input/R$id;->image_preview:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/widget/LoadingImageView;

    .line 309
    .local v1, "image":Lcom/nuance/swype/widget/LoadingImageView;
    sget v4, Lcom/nuance/swype/input/R$id;->theme_name:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 310
    .local v3, "name":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->defaultTextColors:Landroid/content/res/ColorStateList;

    if-nez v4, :cond_0

    .line 311
    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->defaultTextColors:Landroid/content/res/ColorStateList;

    .line 313
    :cond_0
    sget v4, Lcom/nuance/swype/input/R$id;->theme_lock_icon:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 314
    .local v2, "lockIcon":Landroid/widget/ImageView;
    new-instance v4, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$Holder;

    invoke-direct {v4, v1, v3, v2, v7}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$Holder;-><init>(Lcom/nuance/swype/widget/LoadingImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/nuance/swype/input/settings/Themes$1;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 317
    .end local v1    # "image":Lcom/nuance/swype/widget/LoadingImageView;
    .end local v2    # "lockIcon":Landroid/widget/ImageView;
    .end local v3    # "name":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$Holder;

    .line 318
    .local v0, "holder":Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$Holder;
    iget-object v6, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$Holder;->image:Lcom/nuance/swype/widget/LoadingImageView;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->themes:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v4}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getKeyboardPreviewResId()I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->themes:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v4}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getKeyboardPreviewResId()I

    move-result v4

    :goto_0
    iget v7, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->maxImageWidth:I

    invoke-virtual {v6, v4, v7, v8}, Lcom/nuance/swype/widget/LoadingImageView;->setImage(IIZ)V

    .line 322
    iget-object v6, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$Holder;->name:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->names:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    sget-boolean v4, Lcom/nuance/swype/input/ThemeManager;->isInAppPurchaseEnabled:Z

    if-eqz v4, :cond_2

    .line 325
    iget-object v6, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$Holder;->lockIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->themes:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-static {v4}, Lcom/nuance/swype/input/ThemeManager;->isThemeLocked(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 327
    sget v4, Lcom/nuance/swype/input/settings/ThemesCategory;->theme_color:I

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 328
    iget-object v4, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$Holder;->name:Landroid/widget/TextView;

    const/high16 v6, -0x1000000

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 331
    :cond_2
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->current:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->themes:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v4}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->current:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v6}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->themes:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v4}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getCurrentCategoryId()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->current:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v6}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getCurrentCategoryId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 334
    invoke-virtual {p2, v8}, Landroid/view/View;->setClickable(Z)V

    .line 335
    iget-object v4, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$Holder;->image:Lcom/nuance/swype/widget/LoadingImageView;

    iget v5, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->highlightColor:I

    invoke-virtual {v4, v5}, Lcom/nuance/swype/widget/LoadingImageView;->setBackgroundColor(I)V

    .line 336
    iget-object v4, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$Holder;->name:Landroid/widget/TextView;

    iget v5, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->highlightColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 345
    :cond_3
    :goto_2
    return-object p2

    .line 318
    :cond_4
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->themes:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v4}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getPreviewResId()I

    move-result v4

    goto/16 :goto_0

    .line 325
    :cond_5
    const/16 v4, 0x8

    goto :goto_1

    .line 339
    :cond_6
    invoke-virtual {p2, v5}, Landroid/view/View;->setClickable(Z)V

    .line 340
    iget-object v4, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$Holder;->image:Lcom/nuance/swype/widget/LoadingImageView;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/widget/LoadingImageView;->setBackgroundColor(I)V

    .line 341
    sget-boolean v4, Lcom/nuance/swype/input/ThemeManager;->isInAppPurchaseEnabled:Z

    if-nez v4, :cond_3

    .line 342
    iget-object v4, v0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter$Holder;->name:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->defaultTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2
.end method

.method public setCurrentTheme(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;)V
    .locals 0
    .param p1, "theme"    # Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->current:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 299
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->notifyDataSetChanged()V

    .line 300
    return-void
.end method

.method public setHighlightColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 289
    iput p1, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->highlightColor:I

    .line 290
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->notifyDataSetChanged()V

    .line 291
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
    .line 266
    .local p1, "themes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/ThemeManager$SwypeTheme;>;"
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->themes:Ljava/util/List;

    .line 267
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 268
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->names:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 269
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

    .line 270
    .local v2, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Themes$ThemeListAdapter;->names:Ljava/util/List;

    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getNameResId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 272
    .end local v2    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :cond_0
    return-void
.end method
