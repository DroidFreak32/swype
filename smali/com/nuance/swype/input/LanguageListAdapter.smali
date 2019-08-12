.class public Lcom/nuance/swype/input/LanguageListAdapter;
.super Landroid/widget/BaseAdapter;
.source "LanguageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/LanguageListAdapter$Holder;
    }
.end annotation


# instance fields
.field private checkItem:I

.field private final currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

.field private final languages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final showNoneOption:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "currentLanguage"    # Lcom/nuance/swype/input/InputMethods$Language;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ">;",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "languages":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nuance/swype/input/LanguageListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/nuance/swype/input/InputMethods$Language;Z)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/nuance/swype/input/InputMethods$Language;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "currentLanguage"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p4, "showNoneOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ">;",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "languages":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/nuance/swype/input/LanguageListAdapter;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/nuance/swype/input/LanguageListAdapter;->languages:Ljava/util/List;

    .line 32
    iput-object p3, p0, Lcom/nuance/swype/input/LanguageListAdapter;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 33
    iput-boolean p4, p0, Lcom/nuance/swype/input/LanguageListAdapter;->showNoneOption:Z

    .line 34
    invoke-direct {p0}, Lcom/nuance/swype/input/LanguageListAdapter;->init()V

    .line 35
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 38
    iget-object v1, p0, Lcom/nuance/swype/input/LanguageListAdapter;->languages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$Language;

    .line 39
    iget-object v2, p0, Lcom/nuance/swype/input/LanguageListAdapter;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputMethods$Language;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    iget v1, p0, Lcom/nuance/swype/input/LanguageListAdapter;->checkItem:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nuance/swype/input/LanguageListAdapter;->checkItem:I

    goto :goto_0

    .line 44
    :cond_0
    iget-boolean v1, p0, Lcom/nuance/swype/input/LanguageListAdapter;->showNoneOption:Z

    if-eqz v1, :cond_1

    .line 47
    iget v1, p0, Lcom/nuance/swype/input/LanguageListAdapter;->checkItem:I

    iget-object v2, p0, Lcom/nuance/swype/input/LanguageListAdapter;->languages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 48
    iget v1, p0, Lcom/nuance/swype/input/LanguageListAdapter;->checkItem:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nuance/swype/input/LanguageListAdapter;->checkItem:I

    .line 53
    :cond_1
    :goto_1
    return-void

    .line 50
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/nuance/swype/input/LanguageListAdapter;->checkItem:I

    goto :goto_1
.end method


# virtual methods
.method public addLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 1
    .param p1, "lang"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 88
    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/nuance/swype/input/LanguageListAdapter;->languages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p0}, Lcom/nuance/swype/input/LanguageListAdapter;->notifyDataSetChanged()V

    .line 92
    :cond_0
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public getCheckItem()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/nuance/swype/input/LanguageListAdapter;->checkItem:I

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 56
    iget-object v1, p0, Lcom/nuance/swype/input/LanguageListAdapter;->languages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 57
    .local v0, "count":I
    iget-boolean v1, p0, Lcom/nuance/swype/input/LanguageListAdapter;->showNoneOption:Z

    if-eqz v1, :cond_0

    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 60
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/nuance/swype/input/LanguageListAdapter;->showNoneOption:Z

    if-eqz v0, :cond_1

    .line 75
    if-nez p1, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    .line 78
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/LanguageListAdapter;->languages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
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
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 99
    if-nez p2, :cond_0

    .line 100
    iget-object v6, p0, Lcom/nuance/swype/input/LanguageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$layout;->language_item:I

    invoke-virtual {v6, v7, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 102
    const v6, 0x1020014

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 103
    .local v3, "label":Landroid/widget/TextView;
    const v6, 0x1020019

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 104
    .local v0, "button":Landroid/widget/RadioButton;
    new-instance v6, Lcom/nuance/swype/input/LanguageListAdapter$Holder;

    invoke-direct {v6, v3, v0}, Lcom/nuance/swype/input/LanguageListAdapter$Holder;-><init>(Landroid/widget/TextView;Landroid/widget/Checkable;)V

    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 107
    .end local v0    # "button":Landroid/widget/RadioButton;
    .end local v3    # "label":Landroid/widget/TextView;
    :cond_0
    const/4 v3, 0x0

    .line 108
    .local v3, "label":Ljava/lang/String;
    const/4 v1, 0x0

    .line 109
    .local v1, "checked":Z
    iget-boolean v6, p0, Lcom/nuance/swype/input/LanguageListAdapter;->showNoneOption:Z

    if-eqz v6, :cond_1

    .line 110
    if-nez p1, :cond_4

    .line 111
    iget-object v6, p0, Lcom/nuance/swype/input/LanguageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$string;->label_none:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 112
    iget-object v6, p0, Lcom/nuance/swype/input/LanguageListAdapter;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-nez v6, :cond_3

    const/4 v1, 0x1

    .line 117
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    .line 118
    iget-object v5, p0, Lcom/nuance/swype/input/LanguageListAdapter;->languages:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/InputMethods$Language;

    .line 119
    .local v4, "language":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 120
    iget-object v5, p0, Lcom/nuance/swype/input/LanguageListAdapter;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/InputMethods$Language;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 123
    .end local v4    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/LanguageListAdapter$Holder;

    .line 124
    .local v2, "holder":Lcom/nuance/swype/input/LanguageListAdapter$Holder;
    iget-object v5, v2, Lcom/nuance/swype/input/LanguageListAdapter$Holder;->label:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v5, v2, Lcom/nuance/swype/input/LanguageListAdapter$Holder;->checkable:Landroid/widget/Checkable;

    invoke-interface {v5, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 126
    return-object p2

    .end local v2    # "holder":Lcom/nuance/swype/input/LanguageListAdapter$Holder;
    :cond_3
    move v1, v5

    .line 112
    goto :goto_0

    .line 114
    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method
