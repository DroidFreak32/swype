.class public Lcom/nuance/swype/input/chinese/InputModeListAdapter;
.super Landroid/widget/BaseAdapter;
.source "InputModeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/chinese/InputModeListAdapter$Holder;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final curInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/InputModeListAdapter;->inputModes:Ljava/util/List;

    .line 27
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/InputModeListAdapter;->context:Landroid/content/Context;

    .line 28
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/InputModeListAdapter;->curInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 29
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$Language;->getAllInputModes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 30
    .local v0, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 31
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->setEnabled(Z)V

    .line 33
    :cond_1
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMultitapMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 37
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->isHandwritingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/InputModeListAdapter;->inputModes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    .end local v0    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_3
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/InputModeListAdapter;->inputModes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/InputModeListAdapter;->inputModes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 64
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 69
    if-nez p2, :cond_0

    .line 70
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/InputModeListAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$layout;->language_item:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 72
    const v4, 0x1020014

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 73
    .local v3, "label":Landroid/widget/TextView;
    const v4, 0x1020019

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 74
    .local v0, "button":Landroid/widget/RadioButton;
    new-instance v4, Lcom/nuance/swype/input/chinese/InputModeListAdapter$Holder;

    invoke-direct {v4, v3, v0}, Lcom/nuance/swype/input/chinese/InputModeListAdapter$Holder;-><init>(Landroid/widget/TextView;Landroid/widget/Checkable;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    .end local v0    # "button":Landroid/widget/RadioButton;
    .end local v3    # "label":Landroid/widget/TextView;
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/InputModeListAdapter;->inputModes:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 79
    .local v2, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/chinese/InputModeListAdapter$Holder;

    .line 80
    .local v1, "holder":Lcom/nuance/swype/input/chinese/InputModeListAdapter$Holder;
    iget-object v4, v1, Lcom/nuance/swype/input/chinese/InputModeListAdapter$Holder;->label:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getDisplayInputMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v4, v1, Lcom/nuance/swype/input/chinese/InputModeListAdapter$Holder;->checkable:Landroid/widget/Checkable;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/InputModeListAdapter;->curInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v5, v5, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    iget-object v6, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 83
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method
