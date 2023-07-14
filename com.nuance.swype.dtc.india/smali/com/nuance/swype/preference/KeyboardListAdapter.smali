.class public final Lcom/nuance/swype/preference/KeyboardListAdapter;
.super Landroid/widget/BaseAdapter;
.source "KeyboardListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/preference/KeyboardListAdapter$Holder;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field public final curInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

.field private final inputModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$InputMode;",
            ">;"
        }
    .end annotation
.end field

.field private isJapaneseLanguage:Z

.field private isKoreanLanguage:Z

.field private japaneseLayoutEntryValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mJapaneseLayoutEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyboardLayouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$Layout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-boolean v1, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->isKoreanLanguage:Z

    .line 27
    iput-boolean v1, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->isJapaneseLanguage:Z

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->mJapaneseLayoutEntries:Ljava/util/List;

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->japaneseLayoutEntryValues:Ljava/util/List;

    .line 33
    iput-object p1, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->context:Landroid/content/Context;

    .line 34
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputModeNoHandwriting()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->curInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 35
    iget-object v1, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->curInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->getKeyboardLayouts()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->mKeyboardLayouts:Ljava/util/List;

    .line 36
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 37
    iput-boolean v2, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->isKoreanLanguage:Z

    .line 45
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayModes()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->inputModes:Ljava/util/List;

    .line 47
    iget-object v1, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->inputModes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 48
    iget-object v3, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->curInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v1, v3}, Lcom/nuance/swype/input/InputMethods$InputMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    :cond_2
    return-void

    .line 38
    :cond_3
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    iput-boolean v2, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->isJapaneseLanguage:Z

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$array;->entries_japanese_keyboard_portrait_options:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "mJapaneseLayouts":[Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->mJapaneseLayoutEntries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    iget-object v1, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->japaneseLayoutEntryValues:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$array;->entryValues_japanese_keyboard_portrait_options:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->isKoreanLanguage:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->mKeyboardLayouts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 60
    :goto_0
    return v0

    .line 57
    :cond_0
    iget-boolean v0, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->isJapaneseLanguage:Z

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->mJapaneseLayoutEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->inputModes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->isKoreanLanguage:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->mKeyboardLayouts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    .line 77
    :cond_0
    iget-boolean v0, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->isJapaneseLanguage:Z

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->mJapaneseLayoutEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->inputModes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 85
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    .line 97
    if-nez p2, :cond_0

    .line 98
    iget-object v6, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->context:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$layout;->language_item:I

    invoke-virtual {v6, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 100
    const v6, 0x1020014

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 101
    .local v4, "label":Landroid/widget/TextView;
    const v6, 0x1020019

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 102
    .local v0, "button":Landroid/widget/RadioButton;
    new-instance v6, Lcom/nuance/swype/preference/KeyboardListAdapter$Holder;

    invoke-direct {v6, v4, v0}, Lcom/nuance/swype/preference/KeyboardListAdapter$Holder;-><init>(Landroid/widget/TextView;Landroid/widget/Checkable;)V

    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
    .end local v0    # "button":Landroid/widget/RadioButton;
    .end local v4    # "label":Landroid/widget/TextView;
    :cond_0
    iget-boolean v6, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->isKoreanLanguage:Z

    if-eqz v6, :cond_1

    .line 105
    iget-object v6, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->mKeyboardLayouts:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/InputMethods$Layout;

    .line 106
    .local v5, "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/preference/KeyboardListAdapter$Holder;

    .line 107
    .local v2, "holder":Lcom/nuance/swype/preference/KeyboardListAdapter$Holder;
    iget-object v6, v2, Lcom/nuance/swype/preference/KeyboardListAdapter$Holder;->label:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Layout;->getDisplayLayoutName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v7, v2, Lcom/nuance/swype/preference/KeyboardListAdapter$Holder;->checkable:Landroid/widget/Checkable;

    iget-object v6, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->mKeyboardLayouts:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/InputMethods$Layout;

    .line 1093
    iget-object v8, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->curInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v8}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v8

    .line 108
    invoke-virtual {v6, v8}, Lcom/nuance/swype/input/InputMethods$Layout;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v7, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 130
    .end local v5    # "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    :goto_0
    return-object p2

    .line 110
    .end local v2    # "holder":Lcom/nuance/swype/preference/KeyboardListAdapter$Holder;
    :cond_1
    iget-boolean v6, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->isJapaneseLanguage:Z

    if-eqz v6, :cond_3

    .line 112
    iget-object v6, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->mJapaneseLayoutEntries:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 113
    .local v5, "layout":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/preference/KeyboardListAdapter$Holder;

    .line 114
    .restart local v2    # "holder":Lcom/nuance/swype/preference/KeyboardListAdapter$Holder;
    iget-object v6, v2, Lcom/nuance/swype/preference/KeyboardListAdapter$Holder;->label:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v6, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v6

    iget-object v7, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->curInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods$InputMode;->getPortaitLayoutOptionsPrefKey()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "0"

    invoke-virtual {v6, v7, v8}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "currentLayoutValue":Ljava/lang/String;
    iget-object v6, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->mJapaneseLayoutEntries:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->mJapaneseLayoutEntries:Ljava/util/List;

    iget-object v8, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->japaneseLayoutEntryValues:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 118
    iget-object v6, v2, Lcom/nuance/swype/preference/KeyboardListAdapter$Holder;->checkable:Landroid/widget/Checkable;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    .line 120
    :cond_2
    iget-object v6, v2, Lcom/nuance/swype/preference/KeyboardListAdapter$Holder;->checkable:Landroid/widget/Checkable;

    invoke-interface {v6, v9}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    .line 123
    .end local v1    # "currentLayoutValue":Ljava/lang/String;
    .end local v2    # "holder":Lcom/nuance/swype/preference/KeyboardListAdapter$Holder;
    .end local v5    # "layout":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->inputModes:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 124
    .local v3, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/preference/KeyboardListAdapter$Holder;

    .line 125
    .restart local v2    # "holder":Lcom/nuance/swype/preference/KeyboardListAdapter$Holder;
    iget-object v6, v2, Lcom/nuance/swype/preference/KeyboardListAdapter$Holder;->label:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$InputMode;->getDisplayInputMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v6, v2, Lcom/nuance/swype/preference/KeyboardListAdapter$Holder;->checkable:Landroid/widget/Checkable;

    iget-object v7, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->curInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v3, v7}, Lcom/nuance/swype/input/InputMethods$InputMode;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v6, v7}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0
.end method

.method public final isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method
