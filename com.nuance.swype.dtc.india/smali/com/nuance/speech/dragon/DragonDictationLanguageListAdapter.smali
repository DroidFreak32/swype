.class public Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DragonDictationLanguageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$Holder;,
        Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$DisplayInfoItem;
    }
.end annotation


# static fields
.field private static final displayLanguageCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$DisplayInfoItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checkItem:I

.field final context:Landroid/content/Context;

.field final currentLanguageName:Ljava/lang/String;

.field final displayItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$DisplayInfoItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$1;

    invoke-direct {v0}, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$1;-><init>()V

    sput-object v0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;->displayLanguageCompare:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "cxt"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;->context:Landroid/content/Context;

    .line 56
    iget-object v1, p0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getCurrentDictationLanguageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;->currentLanguageName:Ljava/lang/String;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;->displayItems:Ljava/util/List;

    .line 59
    iget-object v1, p0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getSpeechConfig()Lcom/nuance/speech/SpeechConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/speech/SpeechConfig;->getSpeechServerInfoList()Ljava/util/List;

    move-result-object v1

    .line 60
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;

    .line 61
    .local v0, "serverInfo":Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;
    iget-object v2, p0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;->displayItems:Ljava/util/List;

    new-instance v3, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$DisplayInfoItem;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->langName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->displayName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$DisplayInfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    .end local v0    # "serverInfo":Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;
    :cond_0
    iget-object v1, p0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;->displayItems:Ljava/util/List;

    sget-object v2, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;->displayLanguageCompare:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 68
    iget-object v1, p0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;->displayItems:Ljava/util/List;

    const/4 v2, 0x0

    new-instance v3, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$DisplayInfoItem;

    const-string/jumbo v4, "default.automatic"

    iget-object v5, p0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;->context:Landroid/content/Context;

    .line 69
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$string;->automatic:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$DisplayInfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 70
    return-void
.end method


# virtual methods
.method public getCheckItem()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;->checkItem:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;->displayItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;->displayItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$DisplayInfoItem;

    iget-object v0, v0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$DisplayInfoItem;->langName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 84
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 94
    if-nez p2, :cond_0

    .line 95
    iget-object v4, p0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$layout;->language_item:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 97
    const v4, 0x1020014

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 98
    .local v3, "label":Landroid/widget/TextView;
    const v4, 0x1020019

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 99
    .local v0, "button":Landroid/widget/RadioButton;
    new-instance v4, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$Holder;

    invoke-direct {v4, v3, v0}, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$Holder;-><init>(Landroid/widget/TextView;Landroid/widget/Checkable;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 102
    .end local v0    # "button":Landroid/widget/RadioButton;
    .end local v3    # "label":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$Holder;

    .line 103
    .local v1, "holder":Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$Holder;
    iget-object v5, v1, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$Holder;->label:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;->displayItems:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$DisplayInfoItem;

    iget-object v4, v4, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$DisplayInfoItem;->displayName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v5, p0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;->currentLanguageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;->displayItems:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$DisplayInfoItem;

    iget-object v4, v4, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$DisplayInfoItem;->langName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 105
    .local v2, "isChecked":Z
    if-eqz v2, :cond_1

    .line 106
    iput p1, p0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;->checkItem:I

    .line 108
    :cond_1
    iget-object v4, v1, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$Holder;->checkable:Landroid/widget/Checkable;

    invoke-interface {v4, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 109
    return-object p2
.end method
