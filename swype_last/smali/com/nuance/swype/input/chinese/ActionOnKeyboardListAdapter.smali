.class public Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActionOnKeyboardListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field public mActionOnKeyboard:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swype/input/InputMethods$InputMode;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentInputMode"    # Lcom/nuance/swype/input/InputMethods$InputMode;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;->mActionOnKeyboard:Ljava/util/List;

    .line 29
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;->context:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 31
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    const/4 v2, 0x0

    .line 32
    .local v2, "hwrOn":Z
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v1

    .line 34
    .local v1, "corelib":Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isWriteChineseBuildEnabled()Z

    move-result v6

    if-eqz v6, :cond_33

    .line 35
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isTraceBuildEnabled()Z

    move-result v6

    if-eqz v6, :cond_bb

    .line 37
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getHandwritingOnKeyboardKey()Ljava/lang/String;

    move-result-object v6

    .line 36
    invoke-virtual {v0, v6, v5}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 43
    :cond_33
    :goto_33
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isWriteChineseBuildEnabled()Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 44
    iget-object v6, p2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;->isPhoneticQwerty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ce

    .line 45
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isTraceBuildEnabled()Z

    move-result v6

    if-eqz v6, :cond_c5

    .line 47
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getHandwritingOnKeyboardKey()Ljava/lang/String;

    move-result-object v6

    .line 46
    invoke-virtual {v0, v6, v5}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 60
    :cond_4f
    :goto_4f
    const/4 v3, 0x0

    .line 61
    .local v3, "traceOn":Z
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isTraceBuildEnabled()Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 62
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getTraceOnKeyboardKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 70
    :cond_5e
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isWriteChineseBuildEnabled()Z

    move-result v6

    if-nez v6, :cond_6a

    .line 71
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isTraceBuildEnabled()Z

    move-result v6

    if-eqz v6, :cond_86

    :cond_6a
    iget-object v6, p2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 72
    invoke-direct {p0, v6}, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;->isPhoneticQwerty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_86

    .line 74
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;->mActionOnKeyboard:Ljava/util/List;

    new-instance v7, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;

    sget v8, Lcom/nuance/swype/input/R$string;->action_on_keyboard_off:I

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-nez v2, :cond_d8

    if-nez v3, :cond_d8

    :goto_80
    invoke-direct {v7, v8, v4}, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_86
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isWriteChineseBuildEnabled()Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 80
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;->mActionOnKeyboard:Ljava/util/List;

    new-instance v5, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;

    sget v6, Lcom/nuance/swype/input/R$string;->handwriting_on_chinese_keyboard:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_9c
    iget-object v4, p2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;->isPhoneticQwerty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 86
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isTraceBuildEnabled()Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 88
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;->mActionOnKeyboard:Ljava/util/List;

    new-instance v5, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;

    sget v6, Lcom/nuance/swype/input/R$string;->trace_on_chinese_keyboard:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_ba
    return-void

    .line 40
    .end local v3    # "traceOn":Z
    :cond_bb
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getHandwritingOnKeyboardKey()Ljava/lang/String;

    move-result-object v6

    .line 39
    invoke-virtual {v0, v6, v4}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto/16 :goto_33

    .line 51
    :cond_c5
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getHandwritingOnKeyboardKey()Ljava/lang/String;

    move-result-object v6

    .line 50
    invoke-virtual {v0, v6, v4}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_4f

    .line 56
    :cond_ce
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getHandwritingOnKeyboardKey()Ljava/lang/String;

    move-result-object v6

    .line 55
    invoke-virtual {v0, v6, v4}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto/16 :goto_4f

    .restart local v3    # "traceOn":Z
    :cond_d8
    move v4, v5

    .line 74
    goto :goto_80
.end method

.method private isPhoneticQwerty(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string/jumbo v0, "pinyin_qwerty"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "doublepinyin"

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "zhuyin_qwerty"

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1b
    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;->mActionOnKeyboard:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;->mActionOnKeyboard:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;->getItem(I)Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 109
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 114
    if-nez p2, :cond_f

    .line 115
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$layout;->action_on_keyboard_item:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 119
    :cond_f
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;->mActionOnKeyboard:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;

    .line 120
    .local v0, "actionItem":Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;
    const v3, 0x1020014

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 121
    .local v2, "label":Landroid/widget/TextView;
    if-eqz v2, :cond_27

    .line 122
    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;->actionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :cond_27
    const v3, 0x1020019

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 126
    .local v1, "button":Landroid/widget/RadioButton;
    if-eqz v1, :cond_37

    .line 127
    iget-boolean v3, v0, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;->isChecked:Z

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 130
    :cond_37
    return-object p2
.end method
