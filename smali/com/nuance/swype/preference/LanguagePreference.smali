.class public Lcom/nuance/swype/preference/LanguagePreference;
.super Landroid/preference/Preference;
.source "LanguagePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/preference/LanguagePreference$LanguagePreferenceListener;
    }
.end annotation


# instance fields
.field private hideKeyboard:Z

.field private isCurrent:Z

.field private keyboardIcon:Landroid/view/ViewGroup;

.field language:Lcom/nuance/swype/input/InputMethods$Language;

.field private listener:Lcom/nuance/swype/preference/LanguagePreference$LanguagePreferenceListener;

.field private summaryView:Landroid/widget/TextView;

.field protected titleTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 30
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->titleTextSize:F

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->titleTextSize:F

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 30
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->titleTextSize:F

    .line 42
    iput-object p2, p0, Lcom/nuance/swype/preference/LanguagePreference;->language:Lcom/nuance/swype/input/InputMethods$Language;

    .line 43
    return-void
.end method

.method public static getDefaultTitleTextSize(Landroid/content/Context;)F
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 142
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 143
    .local v1, "pref":Landroid/preference/Preference;
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 144
    .local v0, "defTitleTextSize":F
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 146
    invoke-virtual {v1}, Landroid/preference/Preference;->getLayoutResource()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 147
    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 148
    .local v2, "tv":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 149
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    .line 151
    :cond_0
    return v0
.end method


# virtual methods
.method public getLanguageDisplayName(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;
    .locals 1
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 110
    sget v0, Lcom/nuance/swype/input/R$layout;->language_preference:I

    return v0
.end method

.method protected getSummaryResId()I
    .locals 1

    .prologue
    .line 114
    sget v0, Lcom/nuance/swype/input/R$string;->pref_current_language_summary:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 60
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->summaryView:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->summaryView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nuance/swype/preference/LanguagePreference;->getSummaryResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 63
    iget-object v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->language:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/preference/LanguagePreference;->setLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 64
    sget v0, Lcom/nuance/swype/input/R$id;->language_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->keyboardIcon:Landroid/view/ViewGroup;

    .line 67
    iget-object v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->keyboardIcon:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-boolean v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->isCurrent:Z

    invoke-virtual {p0, v0}, Lcom/nuance/swype/preference/LanguagePreference;->setCurrent(Z)V

    .line 69
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 123
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 125
    .local v0, "viewId":I
    const v1, 0x1020016

    if-eq v0, v1, :cond_0

    sget v1, Lcom/nuance/swype/input/R$id;->language_item:I

    if-ne v1, v0, :cond_2

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/preference/LanguagePreference;->listener:Lcom/nuance/swype/preference/LanguagePreference$LanguagePreferenceListener;

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/nuance/swype/preference/LanguagePreference;->listener:Lcom/nuance/swype/preference/LanguagePreference$LanguagePreferenceListener;

    iget-object v2, p0, Lcom/nuance/swype/preference/LanguagePreference;->language:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-interface {v1, v2}, Lcom/nuance/swype/preference/LanguagePreference$LanguagePreferenceListener;->onLanguageClicked(Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 135
    :cond_1
    :goto_0
    return-void

    .line 130
    :cond_2
    const v1, 0x1020018

    if-ne v0, v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/nuance/swype/preference/LanguagePreference;->listener:Lcom/nuance/swype/preference/LanguagePreference$LanguagePreferenceListener;

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/nuance/swype/preference/LanguagePreference;->listener:Lcom/nuance/swype/preference/LanguagePreference$LanguagePreferenceListener;

    iget-object v2, p0, Lcom/nuance/swype/preference/LanguagePreference;->language:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-interface {v1, v2}, Lcom/nuance/swype/preference/LanguagePreference$LanguagePreferenceListener;->onKeyboardClicked(Lcom/nuance/swype/input/InputMethods$Language;)V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/nuance/swype/preference/LanguagePreference;->getLayoutResource()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/preference/LanguagePreference;->setLayoutResource(I)V

    .line 48
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "view":Landroid/view/View;
    iget v1, p0, Lcom/nuance/swype/preference/LanguagePreference;->titleTextSize:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 51
    const/4 v2, 0x0

    iget v3, p0, Lcom/nuance/swype/preference/LanguagePreference;->titleTextSize:F

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 53
    :cond_0
    return-object v0
.end method

.method public final setCurrent(Z)V
    .locals 4
    .param p1, "isCurrent"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 91
    iput-boolean p1, p0, Lcom/nuance/swype/preference/LanguagePreference;->isCurrent:Z

    .line 92
    if-nez p1, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/nuance/swype/preference/LanguagePreference;->setEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->keyboardIcon:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 94
    iget-object v3, p0, Lcom/nuance/swype/preference/LanguagePreference;->keyboardIcon:Landroid/view/ViewGroup;

    iget-boolean v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->hideKeyboard:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_4

    :cond_0
    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->summaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->summaryView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nuance/swype/preference/LanguagePreference;->showSummary()Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 92
    goto :goto_0

    :cond_4
    move v0, v1

    .line 94
    goto :goto_1

    :cond_5
    move v1, v2

    .line 97
    goto :goto_2
.end method

.method public final setKeyboardVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 102
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->hideKeyboard:Z

    .line 103
    iget-object v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->keyboardIcon:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->keyboardIcon:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 106
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 102
    goto :goto_0

    .line 104
    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public setLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 1
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/nuance/swype/preference/LanguagePreference;->language:Lcom/nuance/swype/input/InputMethods$Language;

    .line 77
    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0, p1}, Lcom/nuance/swype/preference/LanguagePreference;->getLanguageDisplayName(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/preference/LanguagePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    :cond_0
    return-void
.end method

.method public setLanguagePreferenceListener(Lcom/nuance/swype/preference/LanguagePreference$LanguagePreferenceListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/nuance/swype/preference/LanguagePreference$LanguagePreferenceListener;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/nuance/swype/preference/LanguagePreference;->listener:Lcom/nuance/swype/preference/LanguagePreference$LanguagePreferenceListener;

    .line 73
    return-void
.end method

.method public final setTitleTextSize(F)V
    .locals 0
    .param p1, "_textSize"    # F

    .prologue
    .line 155
    iput p1, p0, Lcom/nuance/swype/preference/LanguagePreference;->titleTextSize:F

    .line 156
    return-void
.end method

.method protected showSummary()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->isCurrent:Z

    return v0
.end method
