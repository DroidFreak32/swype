.class Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;
.super Ljava/lang/Object;
.source "DefaultChineseFunctionBarHandler.java"

# interfaces
.implements Lcom/nuance/swype/input/FunctionBarListView$OnFunctionBarListener;


# instance fields
.field private ime:Lcom/nuance/swype/input/IME;

.field private iv:Lcom/nuance/swype/input/InputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/InputView;)V
    .locals 0
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;
    .param p2, "iv"    # Lcom/nuance/swype/input/InputView;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    .line 23
    iput-object p2, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->iv:Lcom/nuance/swype/input/InputView;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->launchAddOnDictionary()V

    return-void
.end method

.method private launchAddOnDictionary()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->iv:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->handleClose()V

    .line 125
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->requestHideSelf(I)V

    .line 126
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showAddonDictionaries()V

    .line 127
    return-void
.end method

.method private showAddOnDictionary()V
    .locals 3

    .prologue
    .line 95
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->shouldShowNetworkAgreementDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    new-instance v2, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler$1;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler$1;-><init>(Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;)V

    invoke-static {v1, v2}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->create(Landroid/content/Context;Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 113
    .local v0, "cndlg":Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/IME;->attachDialog(Landroid/app/Dialog;)V

    .line 114
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 121
    .end local v0    # "cndlg":Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->launchAddOnDictionary()V

    goto :goto_0
.end method


# virtual methods
.method public selectFunctionBarFunction(I)V
    .locals 2
    .param p1, "itemId"    # I

    .prologue
    const/4 v1, 0x0

    .line 28
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 37
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->iv:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->handleClose()V

    .line 38
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->requestHideSelf(I)V

    .line 39
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showSettings()V

    goto :goto_0

    .line 34
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->showLanguageMenu()V

    goto :goto_0

    .line 42
    :pswitch_3
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEHandler;->showInputModeMenu()V

    goto :goto_0

    .line 45
    :pswitch_4
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->iv:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getKeyboardSwitcher()Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->iv:Lcom/nuance/swype/input/InputView;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    goto :goto_0

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->iv:Lcom/nuance/swype/input/InputView;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_EDIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    goto :goto_0

    .line 52
    :pswitch_5
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->iv:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getKeyboardSwitcher()Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isNumMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->iv:Lcom/nuance/swype/input/InputView;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    goto :goto_0

    .line 55
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->iv:Lcom/nuance/swype/input/InputView;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_NUM:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    goto :goto_0

    .line 59
    :pswitch_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->switchHWOnKeyboard()V

    goto :goto_0

    .line 62
    :pswitch_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->switchHWOnKeyboard()V

    goto :goto_0

    .line 66
    :pswitch_8
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->iv:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->handleClose()V

    .line 67
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->requestHideSelf(I)V

    goto :goto_0

    .line 70
    :pswitch_9
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto/16 :goto_0

    .line 73
    :pswitch_a
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->iv:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->handleClose()V

    .line 74
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->requestHideSelf(I)V

    .line 75
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showThemes()V

    goto/16 :goto_0

    .line 78
    :pswitch_b
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isLVLLicenseValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->showAddOnDictionary()V

    goto/16 :goto_0

    .line 84
    :pswitch_c
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->iv:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->handleClose()V

    .line 85
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->requestHideSelf(I)V

    .line 86
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showChineseSettings()V

    goto/16 :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method protected switchHWOnKeyboard()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method
