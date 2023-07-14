.class public Lcom/nuance/swype/input/WordListViewContainer;
.super Landroid/widget/LinearLayout;
.source "WordListViewContainer.java"


# instance fields
.field toggle:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method private getToggleButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nuance/swype/input/WordListViewContainer;->toggle:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 54
    sget v0, Lcom/nuance/swype/input/R$id;->toggle:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/WordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nuance/swype/input/WordListViewContainer;->toggle:Landroid/widget/ImageButton;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/WordListViewContainer;->toggle:Landroid/widget/ImageButton;

    return-object v0
.end method


# virtual methods
.method public hideTransliterationToggleButton()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/nuance/swype/input/WordListViewContainer;->getToggleButton()Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/WordListViewContainer;->toggle:Landroid/widget/ImageButton;

    .line 76
    iget-object v0, p0, Lcom/nuance/swype/input/WordListViewContainer;->toggle:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 77
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 1023
    sget-boolean v0, Lcom/nuance/swype/util/AdsUtil;->sAdsSupported:Z

    .line 24
    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/nuance/swype/input/WordListViewContainer;->setupAdsView()V

    .line 27
    :cond_0
    return-void
.end method

.method public setupAdsView()V
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/nuance/swype/input/WordListViewContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getBillboardManager()Lcom/nuance/swype/input/ads/BillboardManager;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/nuance/swype/input/ads/BillboardManager;->getBillboard()Lcom/nuance/swype/input/ads/Billboard;

    move-result-object v1

    .line 32
    sget v0, Lcom/nuance/swype/input/R$id;->billboard:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/WordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/ads/Billboard;->setup(Landroid/view/ViewGroup;)V

    .line 33
    return-void
.end method

.method public showTransliterationToggleButton(Lcom/nuance/swype/input/IME;)V
    .locals 4
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/nuance/swype/input/WordListViewContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 61
    .local v0, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-direct {p0}, Lcom/nuance/swype/input/WordListViewContainer;->getToggleButton()Landroid/widget/ImageButton;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/WordListViewContainer;->toggle:Landroid/widget/ImageButton;

    .line 62
    iget-object v2, p0, Lcom/nuance/swype/input/WordListViewContainer;->toggle:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 63
    sget v2, Lcom/nuance/swype/input/R$attr;->candidateOther:I

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedColor(I)I

    move-result v1

    .line 64
    .local v1, "toggleButtonColor":I
    iget-object v2, p0, Lcom/nuance/swype/input/WordListViewContainer;->toggle:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 65
    iget-object v2, p1, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v3, "hindiTransliteration"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/nuance/swype/input/WordListViewContainer;->toggle:Landroid/widget/ImageButton;

    sget v3, Lcom/nuance/swype/input/R$drawable;->wcl_icon_translit_hindiqwerty_black:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 67
    iget-object v2, p0, Lcom/nuance/swype/input/WordListViewContainer;->toggle:Landroid/widget/ImageButton;

    sget v3, Lcom/nuance/swype/input/R$attr;->iconTranslitHiQwerty:I

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/WordListViewContainer;->toggle:Landroid/widget/ImageButton;

    sget v3, Lcom/nuance/swype/input/R$drawable;->wcl_icon_translit_hindi_black:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 71
    iget-object v2, p0, Lcom/nuance/swype/input/WordListViewContainer;->toggle:Landroid/widget/ImageButton;

    sget v3, Lcom/nuance/swype/input/R$attr;->iconTranslitHiHindi:I

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public updateView()V
    .locals 3

    .prologue
    .line 2023
    sget-boolean v1, Lcom/nuance/swype/util/AdsUtil;->sAdsSupported:Z

    .line 37
    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/nuance/swype/input/WordListViewContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getBillboardManager()Lcom/nuance/swype/input/ads/BillboardManager;

    move-result-object v0

    .line 39
    .local v0, "bm":Lcom/nuance/swype/input/ads/BillboardManager;
    invoke-virtual {v0}, Lcom/nuance/swype/input/ads/BillboardManager;->canShowBillboard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    invoke-virtual {v0}, Lcom/nuance/swype/input/ads/BillboardManager;->showView()V

    .line 41
    invoke-virtual {v0}, Lcom/nuance/swype/input/ads/BillboardManager;->getBillboard()Lcom/nuance/swype/input/ads/Billboard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/ads/Billboard;->loadNewAd()V

    .line 47
    .end local v0    # "bm":Lcom/nuance/swype/input/ads/BillboardManager;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/WordListViewContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->isEmojiChoiceListEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 48
    sget v1, Lcom/nuance/swype/input/R$id;->emojilist_holder:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/WordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :cond_1
    return-void

    .line 43
    .restart local v0    # "bm":Lcom/nuance/swype/input/ads/BillboardManager;
    :cond_2
    invoke-virtual {v0}, Lcom/nuance/swype/input/ads/BillboardManager;->hide()V

    goto :goto_0
.end method
