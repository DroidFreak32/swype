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
.field private checkItem:I

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
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->context:Landroid/content/Context;

    .line 27
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->curInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 28
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayModes()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->inputModes:Ljava/util/List;

    .line 30
    iget-object v1, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->inputModes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 31
    iget-object v2, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->curInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    iget v1, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->checkItem:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->checkItem:I

    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->inputModes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getCurrentMode()Lcom/nuance/swype/input/InputMethods$InputMode;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->curInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    return-object v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->inputModes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 57
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 69
    if-nez p2, :cond_0

    .line 70
    iget-object v4, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->context:Landroid/content/Context;

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
    new-instance v4, Lcom/nuance/swype/preference/KeyboardListAdapter$Holder;

    invoke-direct {v4, v3, v0}, Lcom/nuance/swype/preference/KeyboardListAdapter$Holder;-><init>(Landroid/widget/TextView;Landroid/widget/Checkable;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    .end local v0    # "button":Landroid/widget/RadioButton;
    .end local v3    # "label":Landroid/widget/TextView;
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->inputModes:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 79
    .local v2, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/preference/KeyboardListAdapter$Holder;

    .line 80
    .local v1, "holder":Lcom/nuance/swype/preference/KeyboardListAdapter$Holder;
    iget-object v4, v1, Lcom/nuance/swype/preference/KeyboardListAdapter$Holder;->label:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getDisplayInputMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v4, v1, Lcom/nuance/swype/preference/KeyboardListAdapter$Holder;->checkable:Landroid/widget/Checkable;

    iget-object v5, p0, Lcom/nuance/swype/preference/KeyboardListAdapter;->curInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v2, v5}, Lcom/nuance/swype/input/InputMethods$InputMode;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 82
    return-object p2
.end method

.method public final isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method
