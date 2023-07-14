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
.field private currentView:Landroid/view/View;

.field private hideKeyboard:Z

.field private isCurrent:Z

.field private keyIsDown:Z

.field private keyboardIcon:Landroid/view/ViewGroup;

.field language:Lcom/nuance/swype/input/InputMethods$Language;

.field private listener:Lcom/nuance/swype/preference/LanguagePreference$LanguagePreferenceListener;

.field private summaryView:Landroid/widget/TextView;

.field public titleTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 31
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->titleTextSize:F

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->keyIsDown:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->currentView:Landroid/view/View;

    .line 43
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->titleTextSize:F

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->keyIsDown:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->currentView:Landroid/view/View;

    .line 39
    return-void
.end method

.method public static getDefaultTitleTextSize(Landroid/content/Context;)F
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 165
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 166
    .local v1, "pref":Landroid/preference/Preference;
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 167
    .local v0, "defTitleTextSize":F
    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 169
    invoke-virtual {v1}, Landroid/preference/Preference;->getLayoutResource()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 170
    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 171
    .local v2, "tv":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 172
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    .line 174
    :cond_0
    return v0
.end method


# virtual methods
.method getLanguageDisplayName(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;
    .locals 1
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 101
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 133
    sget v0, Lcom/nuance/swype/input/R$layout;->language_preference:I

    return v0
.end method

.method getSummaryResId()I
    .locals 1

    .prologue
    .line 137
    sget v0, Lcom/nuance/swype/input/R$string;->pref_current_language_summary:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 78
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->summaryView:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->summaryView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nuance/swype/preference/LanguagePreference;->getSummaryResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 81
    iget-object v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->language:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/preference/LanguagePreference;->setLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 82
    sget v0, Lcom/nuance/swype/input/R$id;->language_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->keyboardIcon:Landroid/view/ViewGroup;

    .line 85
    iget-object v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->keyboardIcon:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-boolean v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->isCurrent:Z

    invoke-virtual {p0, v0}, Lcom/nuance/swype/preference/LanguagePreference;->setCurrent(Z)V

    .line 87
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 146
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 148
    .local v0, "viewId":I
    const v1, 0x1020016

    if-eq v0, v1, :cond_0

    sget v1, Lcom/nuance/swype/input/R$id;->language_item:I

    if-ne v1, v0, :cond_2

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/preference/LanguagePreference;->listener:Lcom/nuance/swype/preference/LanguagePreference$LanguagePreferenceListener;

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/nuance/swype/preference/LanguagePreference;->listener:Lcom/nuance/swype/preference/LanguagePreference$LanguagePreferenceListener;

    iget-object v2, p0, Lcom/nuance/swype/preference/LanguagePreference;->language:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-interface {v1, v2}, Lcom/nuance/swype/preference/LanguagePreference$LanguagePreferenceListener;->onLanguageClicked(Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 158
    :cond_1
    :goto_0
    return-void

    .line 153
    :cond_2
    const v1, 0x1020018

    if-ne v0, v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/nuance/swype/preference/LanguagePreference;->listener:Lcom/nuance/swype/preference/LanguagePreference$LanguagePreferenceListener;

    if-eqz v1, :cond_1

    .line 155
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

    .line 56
    :cond_0
    sget v1, Lcom/nuance/swype/input/R$id;->language_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/nuance/swype/preference/LanguagePreference$1;

    invoke-direct {v2, p0}, Lcom/nuance/swype/preference/LanguagePreference$1;-><init>(Lcom/nuance/swype/preference/LanguagePreference;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 63
    const v1, 0x1020018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/nuance/swype/preference/LanguagePreference$2;

    invoke-direct {v2, p0}, Lcom/nuance/swype/preference/LanguagePreference$2;-><init>(Lcom/nuance/swype/preference/LanguagePreference;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 70
    iput-object v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->currentView:Landroid/view/View;

    .line 71
    return-object v0
.end method

.method final onKeyForFocusChanging(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v6, 0x15

    const/16 v5, 0x14

    const/16 v4, 0x13

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 182
    if-eq p2, v5, :cond_0

    if-eq p2, v4, :cond_0

    if-eq p2, v6, :cond_0

    const/16 v3, 0x16

    if-eq p2, v3, :cond_0

    .line 220
    :goto_0
    return v1

    .line 188
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 189
    iput-boolean v2, p0, Lcom/nuance/swype/preference/LanguagePreference;->keyIsDown:Z

    move v1, v2

    .line 190
    goto :goto_0

    .line 195
    :cond_1
    iget-boolean v3, p0, Lcom/nuance/swype/preference/LanguagePreference;->keyIsDown:Z

    if-nez v3, :cond_2

    move v1, v2

    .line 196
    goto :goto_0

    .line 198
    :cond_2
    iput-boolean v1, p0, Lcom/nuance/swype/preference/LanguagePreference;->keyIsDown:Z

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "nextView":Landroid/view/View;
    if-ne p2, v4, :cond_5

    .line 202
    const/16 v1, 0x21

    invoke-virtual {p1, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 216
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 217
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_4
    move v1, v2

    .line 220
    goto :goto_0

    .line 204
    :cond_5
    if-ne p2, v6, :cond_6

    .line 205
    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 207
    :cond_6
    const/16 v1, 0x16

    if-ne p2, v1, :cond_7

    .line 208
    const/16 v1, 0x42

    invoke-virtual {p1, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 212
    :cond_7
    if-ne p2, v5, :cond_3

    .line 213
    const/16 v1, 0x82

    invoke-virtual {p1, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method public final setCurrent(Z)V
    .locals 4
    .param p1, "isCurrent"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 109
    iput-boolean p1, p0, Lcom/nuance/swype/preference/LanguagePreference;->isCurrent:Z

    .line 110
    if-nez p1, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/nuance/swype/preference/LanguagePreference;->setEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->keyboardIcon:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 112
    iget-object v3, p0, Lcom/nuance/swype/preference/LanguagePreference;->keyboardIcon:Landroid/view/ViewGroup;

    iget-boolean v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->hideKeyboard:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_6

    :cond_0
    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->summaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->summaryView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nuance/swype/preference/LanguagePreference;->showSummary()Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->currentView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 119
    iget-object v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->currentView:Landroid/view/View;

    sget v2, Lcom/nuance/swype/input/R$id;->language_item:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 120
    iget-object v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->currentView:Landroid/view/View;

    const v2, 0x1020018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 122
    :cond_4
    return-void

    :cond_5
    move v0, v1

    .line 110
    goto :goto_0

    :cond_6
    move v0, v1

    .line 112
    goto :goto_1
.end method

.method public final setKeyboardVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 125
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->hideKeyboard:Z

    .line 126
    iget-object v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->keyboardIcon:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->keyboardIcon:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 129
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 125
    goto :goto_0

    .line 127
    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public setLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 1
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/nuance/swype/preference/LanguagePreference;->language:Lcom/nuance/swype/input/InputMethods$Language;

    .line 95
    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p0, p1}, Lcom/nuance/swype/preference/LanguagePreference;->getLanguageDisplayName(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/preference/LanguagePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    :cond_0
    return-void
.end method

.method public setLanguagePreferenceListener(Lcom/nuance/swype/preference/LanguagePreference$LanguagePreferenceListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/nuance/swype/preference/LanguagePreference$LanguagePreferenceListener;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/nuance/swype/preference/LanguagePreference;->listener:Lcom/nuance/swype/preference/LanguagePreference$LanguagePreferenceListener;

    .line 91
    return-void
.end method

.method showSummary()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/nuance/swype/preference/LanguagePreference;->isCurrent:Z

    return v0
.end method
