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
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentInputMode"    # Lcom/nuance/swype/input/InputMethods$InputMode;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;->mActionOnKeyboard:Ljava/util/List;

    .line 27
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;->context:Landroid/content/Context;

    .line 28
    invoke-static {p1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 29
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    const/4 v2, 0x0

    .line 30
    .local v2, "hwrOn":Z
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v1

    .line 32
    .local v1, "corelib":Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isWriteChineseBuildEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 33
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isTraceBuildEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 34
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getHandwritingOnKeyboardKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 41
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isWriteChineseBuildEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 42
    iget-object v6, p2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;->isPhoneticQwerty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 43
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isTraceBuildEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 44
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getHandwritingOnKeyboardKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 58
    :cond_1
    :goto_1
    const/4 v3, 0x0

    .line 59
    .local v3, "traceOn":Z
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isTraceBuildEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 60
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getTraceOnKeyboardKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 68
    :cond_2
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isWriteChineseBuildEnabled()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isTraceBuildEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    iget-object v6, p2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;->isPhoneticQwerty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 72
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;->mActionOnKeyboard:Ljava/util/List;

    new-instance v7, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;

    sget v8, Lcom/nuance/swype/input/R$string;->action_on_keyboard_off:I

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-nez v2, :cond_a

    if-nez v3, :cond_a

    :goto_2
    invoke-direct {v7, v8, v4}, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_4
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isWriteChineseBuildEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 78
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;->mActionOnKeyboard:Ljava/util/List;

    new-instance v5, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;

    sget v6, Lcom/nuance/swype/input/R$string;->handwriting_on_chinese_keyboard:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_5
    iget-object v4, p2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;->isPhoneticQwerty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 84
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isTraceBuildEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 86
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;->mActionOnKeyboard:Ljava/util/List;

    new-instance v5, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;

    sget v6, Lcom/nuance/swype/input/R$string;->trace_on_chinese_keyboard:I

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_6
    return-void

    .line 37
    .end local v3    # "traceOn":Z
    :cond_7
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getHandwritingOnKeyboardKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto/16 :goto_0

    .line 48
    :cond_8
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getHandwritingOnKeyboardKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_1

    .line 53
    :cond_9
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getHandwritingOnKeyboardKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto/16 :goto_1

    .restart local v3    # "traceOn":Z
    :cond_a
    move v4, v5

    .line 72
    goto :goto_2
.end method

.method private isPhoneticQwerty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 93
    const-string v0, "pinyin_qwerty"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "doublepinyin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "zhuyin_qwerty"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;->mActionOnKeyboard:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;->mActionOnKeyboard:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;->getItem(I)Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 107
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 111
    if-nez p2, :cond_0

    .line 112
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$layout;->action_on_keyboard_item:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 116
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;->mActionOnKeyboard:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;

    .line 117
    .local v0, "actionItem":Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;
    const v3, 0x1020014

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 118
    .local v2, "label":Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 119
    iget-object v3, v0, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;->actionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_1
    const v3, 0x1020019

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 123
    .local v1, "button":Landroid/widget/RadioButton;
    if-eqz v1, :cond_2

    .line 124
    iget-boolean v3, v0, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;->isChecked:Z

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 127
    :cond_2
    return-object p2
.end method
