.class public Lcom/nuance/swype/input/KeyboardSwitcher;
.super Ljava/lang/Object;
.source "KeyboardSwitcher.java"


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field defaultKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

.field public ime:Lcom/nuance/swype/input/IME;

.field protected inputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

.field private isCycleToCapsLockSupported:Z

.field private lastKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

.field protected mImeOptions:I

.field public mInputView:Lcom/nuance/swype/input/InputView;

.field protected mKeyboardEntryLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

.field protected mKeyboardLayout:Lcom/nuance/swype/input/InputMethods$Layout;

.field protected mKeyboardLayoutId:I

.field protected mLanguageId:I

.field protected mLastDisplayWidth:I

.field private preCycleShiftState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

.field private shiftState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

.field private final xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "KeyboardSwitcher"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/KeyboardSwitcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;)V
    .locals 2
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;
    .param p2, "xt9coreinput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->lastKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 24
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->defaultKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->isCycleToCapsLockSupported:Z

    .line 35
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardEntryLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 37
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->shiftState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 230
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->preCycleShiftState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 42
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->ime:Lcom/nuance/swype/input/IME;

    .line 43
    iput-object p2, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    .line 44
    invoke-virtual {p1}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$bool;->enable_capslock_via_cycle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->isCycleToCapsLockSupported:Z

    .line 45
    return-void
.end method

.method private createKeyboard(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;I)Lcom/nuance/swype/input/XT9Keyboard;
    .locals 9
    .param p1, "keyboardLayer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .param p2, "modeId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 123
    if-eqz p1, :cond_0

    sget-object v5, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne p1, v5, :cond_1

    .line 125
    :cond_0
    sget-object v5, Lcom/nuance/swype/input/KeyboardSwitcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "createKeyboard(): illegal value for keyboardLayer: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 126
    sget-object p1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 128
    :cond_1
    sget-object v5, Lcom/nuance/swype/input/KeyboardSwitcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v2, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "createKeyboard(): method called : keyboardLayer: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 130
    sget-object v5, Lcom/nuance/swype/input/KeyboardSwitcher$1;->$SwitchMap$com$nuance$swype$input$KeyboardEx$KeyboardLayerType:[I

    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 149
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/swype/input/InputMethods$Layout;

    iget v1, v5, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutResID:I

    .line 153
    .local v1, "resId":I
    :goto_0
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/KeyboardManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/KeyboardManager;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v5, v6, v1, p2}, Lcom/nuance/swype/input/KeyboardManager;->setKeyboard(Lcom/nuance/input/swypecorelib/XT9CoreInput;II)Lcom/nuance/swype/input/XT9Keyboard;

    move-result-object v0

    .line 154
    .local v0, "keyboard":Lcom/nuance/swype/input/XT9Keyboard;
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mInputView:Lcom/nuance/swype/input/InputView;

    iget-object v5, v5, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isHindiLanguage()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mInputView:Lcom/nuance/swype/input/InputView;

    iget-object v5, v5, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isBilingualLanguage()Z

    move-result v5

    if-nez v5, :cond_2

    .line 155
    sget-object v5, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq p1, v5, :cond_3

    .line 156
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->setTransliterationToggleButtonOff()V

    .line 165
    :cond_2
    :goto_1
    sget-object v5, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_PHONE:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq p1, v5, :cond_4

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/UserPreferences;->getShowPressDownPreview()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 166
    .local v2, "showPreviewKey":Z
    :goto_2
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mInputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v4, v2}, Lcom/nuance/swype/input/InputView;->setPressDownPreviewEnabled(Z)V

    .line 167
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mInputView:Lcom/nuance/swype/input/InputView;

    iget-object v4, v4, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0, v4, p1}, Lcom/nuance/swype/input/XT9Keyboard;->updateABCLabel(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 168
    return-object v0

    .line 132
    .end local v0    # "keyboard":Lcom/nuance/swype/input/XT9Keyboard;
    .end local v1    # "resId":I
    .end local v2    # "showPreviewKey":Z
    :pswitch_0
    sget v1, Lcom/nuance/swype/input/R$xml;->kbd_phone:I

    .line 133
    .restart local v1    # "resId":I
    goto :goto_0

    .line 135
    .end local v1    # "resId":I
    :pswitch_1
    sget v1, Lcom/nuance/swype/input/R$xml;->kbd_edit:I

    .line 136
    .restart local v1    # "resId":I
    goto :goto_0

    .line 138
    .end local v1    # "resId":I
    :pswitch_2
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$integer;->symbols_keyboard_id:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 139
    .local v3, "symId":I
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->inputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v5, v3}, Lcom/nuance/swype/input/InputMethods$InputMode;->findLayout(I)Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v5

    .line 140
    iget v1, v5, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutResID:I

    .line 141
    .restart local v1    # "resId":I
    goto :goto_0

    .line 143
    .end local v1    # "resId":I
    .end local v3    # "symId":I
    :pswitch_3
    sget v1, Lcom/nuance/swype/input/R$xml;->kbd_num:I

    .line 144
    .restart local v1    # "resId":I
    goto :goto_0

    .line 146
    .end local v1    # "resId":I
    :pswitch_4
    sget v1, Lcom/nuance/swype/input/R$xml;->kbd_num_password:I

    .line 147
    .restart local v1    # "resId":I
    goto :goto_0

    .line 159
    .restart local v0    # "keyboard":Lcom/nuance/swype/input/XT9Keyboard;
    :cond_3
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->setTransliterationToggleButtonOn()V

    goto :goto_1

    :cond_4
    move v2, v4

    .line 165
    goto :goto_2

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getKeyboardModeId(Lcom/nuance/swype/input/InputFieldInfo;)I
    .locals 1
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;

    .prologue
    .line 390
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isEmailAddressField()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    const/4 v0, 0x2

    .line 397
    :goto_0
    return v0

    .line 392
    :cond_0
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isShortMessageField()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    const/4 v0, 0x4

    goto :goto_0

    .line 394
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNumericModeField()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    const/16 v0, 0x8

    goto :goto_0

    .line 397
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setKeyboard(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
    .locals 2
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;
    .param p2, "layer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    if-eq p2, v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardEntryLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->lastKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 377
    :cond_0
    iput-object p2, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardEntryLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 379
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mInputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 382
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 385
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->ime:Lcom/nuance/swype/input/IME;

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mInputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0, p1, v1}, Lcom/nuance/swype/input/IME;->refreshLanguageOnSpaceKey(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardViewEx;)V

    .line 386
    return-void
.end method


# virtual methods
.method public clearCacheTableKeyboards()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/KeyboardManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/KeyboardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardManager;->evictAll()V

    .line 115
    return-void
.end method

.method public createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;
    .locals 1
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p2, "inputMode"    # Lcom/nuance/swype/input/InputMethods$InputMode;

    .prologue
    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;Z)Lcom/nuance/swype/input/XT9Keyboard;

    move-result-object v0

    return-object v0
.end method

.method public createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;Z)Lcom/nuance/swype/input/XT9Keyboard;
    .locals 6
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p2, "inputMode"    # Lcom/nuance/swype/input/InputMethods$InputMode;
    .param p3, "enableAutoLayerSelect"    # Z

    .prologue
    .line 95
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 97
    .local v0, "keyboardLayer":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    if-eqz p3, :cond_0

    .line 99
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_PHONE:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 107
    :cond_0
    :goto_0
    sget-object v1, Lcom/nuance/swype/input/KeyboardSwitcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "createKeyboardForTextInput(): method called : keyboardLayer: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 108
    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->defaultKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 110
    invoke-virtual {p0, v0, p1, p2}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    move-result-object v1

    return-object v1

    .line 101
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNumberPasswordField()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_NUM_PW:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNumericModeField()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_NUM:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    goto :goto_0
.end method

.method public createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;
    .locals 4
    .param p1, "keyboardLayer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .param p2, "fieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p3, "inputMode"    # Lcom/nuance/swype/input/InputMethods$InputMode;

    .prologue
    .line 54
    iput-object p3, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->inputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 55
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputFieldInfo;->getImeOptions()I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mImeOptions:I

    .line 56
    invoke-virtual {p3}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/swype/input/InputMethods$Layout;

    .line 57
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/swype/input/InputMethods$Layout;

    iget v1, v1, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    iput v1, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardLayoutId:I

    .line 59
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/KeyboardSwitcher;->getKeyboardModeId(Lcom/nuance/swype/input/InputFieldInfo;)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboard(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;I)Lcom/nuance/swype/input/XT9Keyboard;

    move-result-object v0

    .line 60
    .local v0, "keyboard":Lcom/nuance/swype/input/XT9Keyboard;
    invoke-direct {p0, v0, p1}, Lcom/nuance/swype/input/KeyboardSwitcher;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 61
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->ime:Lcom/nuance/swype/input/IME;

    iget v2, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mImeOptions:I

    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/nuance/swype/input/XT9Keyboard;->setImeOptions(Landroid/content/Context;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;ILcom/nuance/swype/input/InputFieldInfo;)V

    .line 63
    return-object v0
.end method

.method public currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardEntryLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    return-object v0
.end method

.method public currentLanguageSupportsCapitalization()Z
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mInputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->currentLanguageSupportsCapitalization()Z

    move-result v0

    return v0
.end method

.method public cycleShiftState()V
    .locals 4

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "hasLock":Z
    iget-boolean v2, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->isCycleToCapsLockSupported:Z

    if-eqz v2, :cond_1

    .line 240
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mInputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    .line 241
    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->getShiftKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 242
    iget-boolean v2, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->lockable:Z

    if-eqz v2, :cond_0

    .line 243
    const/4 v0, 0x1

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->preCycleShiftState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 250
    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 251
    .local v1, "newShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    sget-object v2, Lcom/nuance/swype/input/KeyboardSwitcher$1;->$SwitchMap$com$nuance$input$swypecorelib$Shift$ShiftState:[I

    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->preCycleShiftState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 263
    :goto_0
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 265
    return-void

    .line 253
    :pswitch_0
    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 254
    goto :goto_0

    .line 256
    :pswitch_1
    if-eqz v0, :cond_2

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 257
    :goto_1
    goto :goto_0

    .line 256
    :cond_2
    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    goto :goto_1

    .line 259
    :pswitch_2
    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCurrentInputMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->inputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->shiftState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    return-object v0
.end method

.method public getDefaultLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->defaultKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    return-object v0
.end method

.method public isAlphabetMode()Z
    .locals 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEditMode()Z
    .locals 2

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_EDIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeypadInput()Z
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/swype/input/InputMethods$Layout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/swype/input/InputMethods$Layout;

    iget v0, v0, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    const/16 v1, 0x600

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/swype/input/InputMethods$Layout;

    iget v0, v0, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    const/16 v1, 0x700

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/swype/input/InputMethods$Layout;

    iget v0, v0, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    const/16 v1, 0x710

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/swype/input/InputMethods$Layout;

    iget v0, v0, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    const/16 v1, 0x720

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumMode()Z
    .locals 2

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_NUM:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v0, v1, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_NUM_PW:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoneMode()Z
    .locals 2

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_PHONE:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShifted()Z
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->shiftState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->shiftState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSymbolMode()Z
    .locals 2

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetLayerState()V
    .locals 1

    .prologue
    .line 364
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardEntryLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 365
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->defaultKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 366
    return-void
.end method

.method public returnToDefaultLayer()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->defaultKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardEntryLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->defaultKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mInputView:Lcom/nuance/swype/input/InputView;

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->defaultKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 75
    :cond_0
    return-void
.end method

.method public setInputView(Lcom/nuance/swype/input/InputView;)V
    .locals 0
    .param p1, "inputView"    # Lcom/nuance/swype/input/InputView;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mInputView:Lcom/nuance/swype/input/InputView;

    .line 49
    return-void
.end method

.method public setKeyboardEntryLayerType(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
    .locals 0
    .param p1, "type"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardEntryLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 351
    return-void
.end method

.method public setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .locals 1
    .param p1, "state"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;Z)Z

    move-result v0

    return v0
.end method

.method public setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;Z)Z
    .locals 7
    .param p1, "state"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .param p2, "overrideKeyLockableFlag"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 176
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->shiftState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-eq v4, p1, :cond_1

    move v0, v2

    .line 177
    .local v0, "changed":Z
    :goto_0
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->shiftState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 178
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mInputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    .line 179
    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->getShiftKeys()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 181
    .local v1, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iput-boolean v3, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->on:Z

    .line 182
    iput-boolean v3, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->locked:Z

    .line 183
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->shiftState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    sget-object v6, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v5, v6, :cond_2

    .line 184
    iget-boolean v5, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->sticky:Z

    if-eqz v5, :cond_0

    .line 185
    iput-boolean v2, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->on:Z

    goto :goto_1

    .end local v0    # "changed":Z
    .end local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_1
    move v0, v3

    .line 176
    goto :goto_0

    .line 187
    .restart local v0    # "changed":Z
    .restart local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_2
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->shiftState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    sget-object v6, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v5, v6, :cond_0

    .line 188
    iget-boolean v5, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->lockable:Z

    if-nez v5, :cond_3

    if-eqz p2, :cond_0

    .line 189
    :cond_3
    iput-boolean v2, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->locked:Z

    goto :goto_1

    .line 193
    .end local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_4
    return v0
.end method

.method public supportsAlphaMode()Z
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardEntryLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_PHONE:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardEntryLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v0, v1, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isNumMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toggleCapsLock(Z)Z
    .locals 3
    .param p1, "isDoubleTap"    # Z

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v1

    .line 212
    sget-object v2, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v1, v2, :cond_0

    .line 213
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 225
    .local v0, "currentShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 226
    const/4 v1, 0x1

    return v1

    .line 215
    .end local v0    # "currentShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    :cond_0
    if-eqz p1, :cond_2

    .line 218
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->preCycleShiftState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    sget-object v2, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v1, v2, :cond_1

    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .restart local v0    # "currentShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    :goto_1
    goto :goto_0

    .end local v0    # "currentShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    :cond_1
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    goto :goto_1

    .line 222
    :cond_2
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .restart local v0    # "currentShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    goto :goto_0
.end method

.method public toggleLastKeyboard()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->lastKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mInputView:Lcom/nuance/swype/input/InputView;

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->lastKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 304
    :cond_0
    return-void
.end method

.method public toggleSymbolKeyboard()V
    .locals 5

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne v2, v3, :cond_0

    .line 288
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->lastKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 293
    .local v1, "keyboardLayer":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    :goto_0
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mInputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->getModeId()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboard(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;I)Lcom/nuance/swype/input/XT9Keyboard;

    move-result-object v0

    .line 294
    .local v0, "current":Lcom/nuance/swype/input/XT9Keyboard;
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->ime:Lcom/nuance/swype/input/IME;

    iget v3, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mImeOptions:I

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/nuance/swype/input/XT9Keyboard;->setImeOptions(Landroid/content/Context;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;ILcom/nuance/swype/input/InputFieldInfo;)V

    .line 296
    sget-object v2, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 297
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 298
    return-void

    .line 290
    .end local v0    # "current":Lcom/nuance/swype/input/XT9Keyboard;
    .end local v1    # "keyboardLayer":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    :cond_0
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .restart local v1    # "keyboardLayer":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    goto :goto_0
.end method

.method public updateShiftStateToggle()V
    .locals 3

    .prologue
    .line 268
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 269
    .local v0, "newShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    sget-object v1, Lcom/nuance/swype/input/KeyboardSwitcher$1;->$SwitchMap$com$nuance$input$swypecorelib$Shift$ShiftState:[I

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 280
    :goto_0
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 281
    return-void

    .line 271
    :pswitch_1
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 272
    goto :goto_0

    .line 274
    :pswitch_2
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
