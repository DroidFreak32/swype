.class public Lcom/nuance/speech/DictationLanguageListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DictationLanguageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/speech/DictationLanguageListAdapter$Holder;,
        Lcom/nuance/speech/DictationLanguageListAdapter$Builder;,
        Lcom/nuance/speech/DictationLanguageListAdapter$DisplayInfoItem;
    }
.end annotation


# static fields
.field private static final displayLanguageCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/nuance/speech/DictationLanguageListAdapter$DisplayInfoItem;",
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
            "Lcom/nuance/speech/DictationLanguageListAdapter$DisplayInfoItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/nuance/speech/DictationLanguageListAdapter$1;

    invoke-direct {v0}, Lcom/nuance/speech/DictationLanguageListAdapter$1;-><init>()V

    sput-object v0, Lcom/nuance/speech/DictationLanguageListAdapter;->displayLanguageCompare:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/speech/DictationLanguageListAdapter$DisplayInfoItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/speech/DictationLanguageListAdapter$DisplayInfoItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/nuance/speech/DictationLanguageListAdapter;->context:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/nuance/speech/DictationLanguageListAdapter;->displayItems:Ljava/util/List;

    .line 72
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getCurrentDictationLanguageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/speech/DictationLanguageListAdapter;->currentLanguageName:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/nuance/speech/DictationLanguageListAdapter;->displayItems:Ljava/util/List;

    sget-object v1, Lcom/nuance/speech/DictationLanguageListAdapter;->displayLanguageCompare:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 79
    iget-object v0, p0, Lcom/nuance/speech/DictationLanguageListAdapter;->displayItems:Ljava/util/List;

    const/4 v1, 0x0

    new-instance v2, Lcom/nuance/speech/DictationLanguageListAdapter$DisplayInfoItem;

    const-string/jumbo v3, "default.automatic"

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->automatic:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/nuance/speech/DictationLanguageListAdapter$DisplayInfoItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/nuance/speech/DictationLanguageListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Lcom/nuance/speech/DictationLanguageListAdapter$1;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/nuance/speech/DictationLanguageListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getCheckItem()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/nuance/speech/DictationLanguageListAdapter;->checkItem:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nuance/speech/DictationLanguageListAdapter;->displayItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nuance/speech/DictationLanguageListAdapter;->displayItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/speech/DictationLanguageListAdapter$DisplayInfoItem;

    iget-object v0, v0, Lcom/nuance/speech/DictationLanguageListAdapter$DisplayInfoItem;->langName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 95
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 104
    if-nez p2, :cond_0

    .line 105
    iget-object v4, p0, Lcom/nuance/speech/DictationLanguageListAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$layout;->language_item:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 107
    const v4, 0x1020014

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 108
    .local v3, "label":Landroid/widget/TextView;
    const v4, 0x1020019

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 109
    .local v0, "button":Landroid/widget/RadioButton;
    new-instance v4, Lcom/nuance/speech/DictationLanguageListAdapter$Holder;

    invoke-direct {v4, v3, v0}, Lcom/nuance/speech/DictationLanguageListAdapter$Holder;-><init>(Landroid/widget/TextView;Landroid/widget/Checkable;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 112
    .end local v0    # "button":Landroid/widget/RadioButton;
    .end local v3    # "label":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/speech/DictationLanguageListAdapter$Holder;

    .line 113
    .local v1, "holder":Lcom/nuance/speech/DictationLanguageListAdapter$Holder;
    iget-object v5, v1, Lcom/nuance/speech/DictationLanguageListAdapter$Holder;->label:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/nuance/speech/DictationLanguageListAdapter;->displayItems:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/speech/DictationLanguageListAdapter$DisplayInfoItem;

    iget-object v4, v4, Lcom/nuance/speech/DictationLanguageListAdapter$DisplayInfoItem;->displayName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v5, p0, Lcom/nuance/speech/DictationLanguageListAdapter;->currentLanguageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/speech/DictationLanguageListAdapter;->displayItems:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/speech/DictationLanguageListAdapter$DisplayInfoItem;

    iget-object v4, v4, Lcom/nuance/speech/DictationLanguageListAdapter$DisplayInfoItem;->langName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 115
    .local v2, "isChecked":Z
    if-eqz v2, :cond_1

    .line 116
    iput p1, p0, Lcom/nuance/speech/DictationLanguageListAdapter;->checkItem:I

    .line 118
    :cond_1
    iget-object v4, v1, Lcom/nuance/speech/DictationLanguageListAdapter$Holder;->checkable:Landroid/widget/Checkable;

    invoke-interface {v4, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 119
    return-object p2
.end method
