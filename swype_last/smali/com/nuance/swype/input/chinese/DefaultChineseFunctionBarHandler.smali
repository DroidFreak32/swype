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
    .registers 3
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
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->launchAddOnDictionary()V

    return-void
.end method

.method private launchAddOnDictionary()V
    .registers 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->iv:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->handleClose()V

    .line 130
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->requestHideSelf(I)V

    .line 131
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showAddonDictionaries()V

    .line 132
    return-void
.end method

.method private showAddOnDictionary()V
    .registers 4

    .prologue
    .line 100
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 101
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->shouldShowNetworkAgreementDialog()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 103
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    new-instance v2, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler$1;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler$1;-><init>(Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;)V

    invoke-static {v1, v2}, Lcom/nuance/swype/input/ChinaNetworkNotificationDialog;->create(Landroid/content/Context;Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 118
    .local v0, "cndlg":Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/IME;->attachDialog(Landroid/app/Dialog;)V

    .line 119
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 126
    .end local v0    # "cndlg":Landroid/app/AlertDialog;
    :goto_2d
    return-void

    .line 124
    :cond_2e
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->launchAddOnDictionary()V

    goto :goto_2d
.end method


# virtual methods
.method public selectFunctionBarFunction(I)V
    .registers 4
    .param p1, "itemId"    # I

    .prologue
    const/4 v1, 0x0

    .line 28
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v0

    if-nez v0, :cond_12

    .line 96
    :cond_11
    :goto_11
    return-void

    .line 32
    :cond_12
    packed-switch p1, :pswitch_data_d8

    :pswitch_15
    goto :goto_11

    .line 37
    :pswitch_16
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->iv:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->handleClose()V

    .line 38
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->requestHideSelf(I)V

    .line 39
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showSettingsPrefs()V

    goto :goto_11

    .line 34
    :pswitch_2a
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->showLanguageMenu()V

    goto :goto_11

    .line 42
    :pswitch_30
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEHandler;->showInputModeMenu()V

    goto :goto_11

    .line 45
    :pswitch_3e
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->iv:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getKeyboardSwitcher()Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 46
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->iv:Lcom/nuance/swype/input/InputView;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    goto :goto_11

    .line 48
    :cond_52
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->iv:Lcom/nuance/swype/input/InputView;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_EDIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    goto :goto_11

    .line 52
    :pswitch_5a
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->iv:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getKeyboardSwitcher()Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isNumMode()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 53
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->iv:Lcom/nuance/swype/input/InputView;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    goto :goto_11

    .line 55
    :cond_6e
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->iv:Lcom/nuance/swype/input/InputView;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_NUM:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    goto :goto_11

    .line 59
    :pswitch_76
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->switchHWOnKeyboard()V

    goto :goto_11

    .line 62
    :pswitch_7a
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->switchHWOnKeyboard()V

    goto :goto_11

    .line 66
    :pswitch_7e
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->iv:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->handleClose()V

    .line 67
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->requestHideSelf(I)V

    goto :goto_11

    .line 70
    :pswitch_89
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto/16 :goto_11

    .line 73
    :pswitch_99
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

    goto/16 :goto_11

    .line 78
    :pswitch_ae
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 79
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->showAddOnDictionary()V

    goto/16 :goto_11

    .line 84
    :pswitch_bb
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

    goto/16 :goto_11

    .line 89
    :pswitch_d0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->iv:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->handleEmotionKey()V

    goto/16 :goto_11

    .line 32
    nop

    :pswitch_data_d8
    .packed-switch 0x65
        :pswitch_16
        :pswitch_15
        :pswitch_2a
        :pswitch_30
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_5a
        :pswitch_3e
        :pswitch_99
        :pswitch_ae
        :pswitch_bb
        :pswitch_7a
        :pswitch_7e
        :pswitch_89
        :pswitch_76
        :pswitch_d0
    .end packed-switch
.end method

.method protected switchHWOnKeyboard()V
    .registers 1

    .prologue
    .line 141
    return-void
.end method
