.class public Lcom/nuance/swype/preference/CurrentLanguagePreference;
.super Lcom/nuance/swype/preference/LanguagePreference;
.source "CurrentLanguagePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/preference/CurrentLanguagePreference$CurrentLanguagePreferenceListener;
    }
.end annotation


# instance fields
.field private additionalLanguageName:Landroid/widget/TextView;

.field private listener:Lcom/nuance/swype/preference/CurrentLanguagePreference$CurrentLanguagePreferenceListener;

.field private showAdditionalLanguage:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/nuance/swype/preference/LanguagePreference;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/preference/LanguagePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method


# virtual methods
.method public final getLanguageDisplayName(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;
    .locals 2
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 152
    instance-of v1, p1, Lcom/nuance/swype/input/BilingualLanguage;

    if-eqz v1, :cond_0

    .line 153
    check-cast p1, Lcom/nuance/swype/input/BilingualLanguage;

    .line 154
    .end local p1    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {p1}, Lcom/nuance/swype/input/BilingualLanguage;->getFirstLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "firstLangName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 156
    .end local v0    # "firstLangName":Ljava/lang/String;
    .restart local p1    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_0
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "firstLangName":Ljava/lang/String;
    goto :goto_0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 110
    sget v0, Lcom/nuance/swype/input/R$layout;->current_language_preference:I

    return v0
.end method

.method protected final getSummaryResId()I
    .locals 1

    .prologue
    .line 115
    sget v0, Lcom/nuance/swype/input/R$string;->pref_change_language_summary:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/nuance/swype/preference/LanguagePreference;->onBindView(Landroid/view/View;)V

    .line 81
    sget v0, Lcom/nuance/swype/input/R$id;->language_preference_additional_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nuance/swype/preference/CurrentLanguagePreference;->additionalLanguageName:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/nuance/swype/preference/CurrentLanguagePreference;->additionalLanguageName:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget v0, p0, Lcom/nuance/swype/preference/CurrentLanguagePreference;->titleTextSize:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/nuance/swype/preference/CurrentLanguagePreference;->additionalLanguageName:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/nuance/swype/preference/CurrentLanguagePreference;->titleTextSize:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2105
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->language:Lcom/nuance/swype/input/InputMethods$Language;

    .line 86
    invoke-virtual {p0, v0}, Lcom/nuance/swype/preference/CurrentLanguagePreference;->setLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 87
    iget-boolean v0, p0, Lcom/nuance/swype/preference/CurrentLanguagePreference;->showAdditionalLanguage:Z

    invoke-virtual {p0, v0}, Lcom/nuance/swype/preference/CurrentLanguagePreference;->setAdditionalLanguageVisible(Z)V

    .line 88
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/nuance/swype/preference/LanguagePreference;->onClick(Landroid/view/View;)V

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/nuance/swype/input/R$id;->language_preference_additional_name:I

    if-ne v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/nuance/swype/preference/CurrentLanguagePreference;->listener:Lcom/nuance/swype/preference/CurrentLanguagePreference$CurrentLanguagePreferenceListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/nuance/swype/preference/CurrentLanguagePreference;->listener:Lcom/nuance/swype/preference/CurrentLanguagePreference$CurrentLanguagePreferenceListener;

    .line 3105
    iget-object v1, p0, Lcom/nuance/swype/preference/LanguagePreference;->language:Lcom/nuance/swype/input/InputMethods$Language;

    .line 95
    invoke-interface {v0, v1}, Lcom/nuance/swype/preference/CurrentLanguagePreference$CurrentLanguagePreferenceListener;->onAdditionalLanguageClicked(Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 98
    :cond_0
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/nuance/swype/preference/LanguagePreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1105
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/nuance/swype/preference/LanguagePreference;->language:Lcom/nuance/swype/input/InputMethods$Language;

    .line 41
    invoke-virtual {p0, v3}, Lcom/nuance/swype/preference/CurrentLanguagePreference;->setLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 42
    iget-boolean v3, p0, Lcom/nuance/swype/preference/CurrentLanguagePreference;->showAdditionalLanguage:Z

    invoke-virtual {p0, v3}, Lcom/nuance/swype/preference/CurrentLanguagePreference;->setAdditionalLanguageVisible(Z)V

    .line 44
    sget v3, Lcom/nuance/swype/input/R$id;->language_preference_additional_name:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "itemView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    .line 48
    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/nuance/swype/preference/CurrentLanguagePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x41800000    # 16.0f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 49
    .local v1, "startPadding":I
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 49
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 54
    new-instance v3, Lcom/nuance/swype/preference/CurrentLanguagePreference$1;

    invoke-direct {v3, p0}, Lcom/nuance/swype/preference/CurrentLanguagePreference$1;-><init>(Lcom/nuance/swype/preference/CurrentLanguagePreference;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 61
    sget v3, Lcom/nuance/swype/input/R$id;->language_item:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/nuance/swype/preference/CurrentLanguagePreference$2;

    invoke-direct {v4, p0}, Lcom/nuance/swype/preference/CurrentLanguagePreference$2;-><init>(Lcom/nuance/swype/preference/CurrentLanguagePreference;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 68
    const v3, 0x1020018

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/nuance/swype/preference/CurrentLanguagePreference$3;

    invoke-direct {v4, p0}, Lcom/nuance/swype/preference/CurrentLanguagePreference$3;-><init>(Lcom/nuance/swype/preference/CurrentLanguagePreference;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 75
    return-object v2
.end method

.method public final setAdditionalLanguageVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/nuance/swype/preference/CurrentLanguagePreference;->showAdditionalLanguage:Z

    .line 144
    iget-object v0, p0, Lcom/nuance/swype/preference/CurrentLanguagePreference;->additionalLanguageName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 145
    iget-object v1, p0, Lcom/nuance/swype/preference/CurrentLanguagePreference;->additionalLanguageName:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    :cond_0
    return-void

    .line 145
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final setLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 5
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/nuance/swype/preference/LanguagePreference;->setLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 130
    instance-of v2, p1, Lcom/nuance/swype/input/BilingualLanguage;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 131
    check-cast v1, Lcom/nuance/swype/input/BilingualLanguage;

    .line 132
    .local v1, "biLang":Lcom/nuance/swype/input/BilingualLanguage;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "+ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/nuance/swype/input/BilingualLanguage;->getSecondLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .end local v1    # "biLang":Lcom/nuance/swype/input/BilingualLanguage;
    .local v0, "additionalLang":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/nuance/swype/preference/CurrentLanguagePreference;->additionalLanguageName:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/nuance/swype/preference/CurrentLanguagePreference;->additionalLanguageName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :cond_0
    return-void

    .line 134
    .end local v0    # "additionalLang":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "+ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/swype/preference/CurrentLanguagePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->pref_bilingual_type_in_two_lang:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "additionalLang":Ljava/lang/String;
    goto :goto_0
.end method

.method public final setLanguagePreferenceListener(Lcom/nuance/swype/preference/LanguagePreference$LanguagePreferenceListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/nuance/swype/preference/LanguagePreference$LanguagePreferenceListener;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/nuance/swype/preference/LanguagePreference;->setLanguagePreferenceListener(Lcom/nuance/swype/preference/LanguagePreference$LanguagePreferenceListener;)V

    .line 103
    instance-of v0, p1, Lcom/nuance/swype/preference/CurrentLanguagePreference$CurrentLanguagePreferenceListener;

    if-eqz v0, :cond_0

    .line 104
    check-cast p1, Lcom/nuance/swype/preference/CurrentLanguagePreference$CurrentLanguagePreferenceListener;

    .end local p1    # "listener":Lcom/nuance/swype/preference/LanguagePreference$LanguagePreferenceListener;
    iput-object p1, p0, Lcom/nuance/swype/preference/CurrentLanguagePreference;->listener:Lcom/nuance/swype/preference/CurrentLanguagePreference$CurrentLanguagePreferenceListener;

    .line 106
    :cond_0
    return-void
.end method

.method protected final showSummary()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method
