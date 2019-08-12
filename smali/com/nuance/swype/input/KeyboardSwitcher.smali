.class public Lcom/nuance/swype/input/KeyboardSwitcher;
.super Ljava/lang/Object;
.source "KeyboardSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/KeyboardSwitcher$1;
    }
.end annotation


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field defaultKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

.field protected ime:Lcom/nuance/swype/input/IME;

.field protected inputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

.field private isCycleToCapsLockSupported:Z

.field private lastKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

.field protected mImeOptions:I

.field protected mInputView:Lcom/nuance/swype/input/InputView;

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
    const-string v0, "KeyboardSwitcher"

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
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->lastKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 24
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->defaultKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->isCycleToCapsLockSupported:Z

    .line 36
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardEntryLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 38
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->shiftState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 226
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->preCycleShiftState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 43
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->ime:Lcom/nuance/swype/input/IME;

    .line 44
    iput-object p2, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    .line 45
    invoke-virtual {p1}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$bool;->enable_capslock_via_cycle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->isCycleToCapsLockSupported:Z

    .line 46
    return-void
.end method

.method private createKeyboard(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;I)Lcom/nuance/swype/input/XT9Keyboard;
    .locals 7
    .param p1, "keyboardLayer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .param p2, "modeId"    # I

    .prologue
    .line 124
    if-eqz p1, :cond_0

    sget-object v4, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne p1, v4, :cond_1

    .line 126
    :cond_0
    sget-object v4, Lcom/nuance/swype/input/KeyboardSwitcher;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "createKeyboard(): illegal value for keyboardLayer: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 127
    sget-object p1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 130
    :cond_1
    sget-object v4, Lcom/nuance/swype/input/KeyboardSwitcher$1;->$SwitchMap$com$nuance$swype$input$KeyboardEx$KeyboardLayerType:[I

    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 149
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/swype/input/InputMethods$Layout;

    iget v1, v4, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutResID:I

    .line 153
    .local v1, "resId":I
    :goto_0
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/KeyboardManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/KeyboardManager;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v4, v5, v1, p2}, Lcom/nuance/swype/input/KeyboardManager;->setKeyboard(Lcom/nuance/input/swypecorelib/XT9CoreInput;II)Lcom/nuance/swype/input/XT9Keyboard;

    move-result-object v0

    .line 157
    .local v0, "keyboard":Lcom/nuance/swype/input/XT9Keyboard;
    sget-object v4, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_PHONE:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne p1, v4, :cond_2

    .line 158
    const/4 v2, 0x0

    .line 162
    .local v2, "showPreviewKey":Z
    :goto_1
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mInputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v4, v2}, Lcom/nuance/swype/input/InputView;->setPressDownPreviewEnabled(Z)V

    .line 163
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mInputView:Lcom/nuance/swype/input/InputView;

    iget-object v4, v4, Lcom/nuance/swype/input/InputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0, v4, p1}, Lcom/nuance/swype/input/XT9Keyboard;->updateABCLabel(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 164
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
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$integer;->symbols_keyboard_id:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 139
    .local v3, "symId":I
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->inputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v4, v3}, Lcom/nuance/swype/input/InputMethods$InputMode;->findLayout(I)Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v4

    .line 140
    iget v1, v4, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutResID:I

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

    .line 160
    .restart local v0    # "keyboard":Lcom/nuance/swype/input/XT9Keyboard;
    :cond_2
    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/UserPreferences;->getShowPressDownPreview()Z

    move-result v2

    .restart local v2    # "showPreviewKey":Z
    goto :goto_1

    .line 130
    nop

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
    .line 380
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isEmailAddressField()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    const/4 v0, 0x2

    .line 389
    :goto_0
    return v0

    .line 382
    :cond_0
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isURLField()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    const/16 v0, 0x10

    goto :goto_0

    .line 384
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isShortMessageField()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    const/4 v0, 0x4

    goto :goto_0

    .line 386
    :cond_2
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNumericModeField()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 387
    const/16 v0, 0x8

    goto :goto_0

    .line 389
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setKeyboard(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
    .locals 2
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;
    .param p2, "layer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    if-eq p2, v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardEntryLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->lastKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 367
    :cond_0
    iput-object p2, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardEntryLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 369
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mInputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 372
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 375
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->ime:Lcom/nuance/swype/input/IME;

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mInputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0, p1, v1}, Lcom/nuance/swype/input/IME;->refreshLanguageOnSpaceKey(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardViewEx;)V

    .line 376
    return-void
.end method


# virtual methods
.method public clearCacheTableKeyboards()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->ime:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/KeyboardManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/KeyboardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardManager;->evictAll()V

    .line 116
    return-void
.end method

.method public createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;
    .locals 1
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p2, "inputMode"    # Lcom/nuance/swype/input/InputMethods$InputMode;

    .prologue
    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;Z)Lcom/nuance/swype/input/XT9Keyboard;

    move-result-object v0

    return-object v0
.end method

.method public createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;Z)Lcom/nuance/swype/input/XT9Keyboard;
    .locals 2
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p2, "inputMode"    # Lcom/nuance/swype/input/InputMethods$InputMode;
    .param p3, "enableAutoLayerSelect"    # Z

    .prologue
    .line 96
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 98
    .local v0, "keyboardLayer":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    if-eqz p3, :cond_0

    .line 100
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_PHONE:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 109
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->defaultKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 111
    invoke-virtual {p0, v0, p1, p2}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    move-result-object v1

    return-object v1

    .line 102
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNumberPasswordField()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_NUM_PW:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNumericModeField()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_NUM:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    goto :goto_0
.end method

.method public createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;
    .locals 4
    .param p1, "keyboardLayer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .param p2, "fieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p3, "inputMode"    # Lcom/nuance/swype/input/InputMethods$InputMode;

    .prologue
    .line 55
    iput-object p3, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->inputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 56
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputFieldInfo;->getImeOptions()I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mImeOptions:I

    .line 57
    invoke-virtual {p3}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/swype/input/InputMethods$Layout;

    .line 58
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/swype/input/InputMethods$Layout;

    iget v1, v1, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    iput v1, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardLayoutId:I

    .line 60
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/KeyboardSwitcher;->getKeyboardModeId(Lcom/nuance/swype/input/InputFieldInfo;)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboard(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;I)Lcom/nuance/swype/input/XT9Keyboard;

    move-result-object v0

    .line 61
    .local v0, "keyboard":Lcom/nuance/swype/input/XT9Keyboard;
    invoke-direct {p0, v0, p1}, Lcom/nuance/swype/input/KeyboardSwitcher;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 62
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->ime:Lcom/nuance/swype/input/IME;

    iget v2, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mImeOptions:I

    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/nuance/swype/input/XT9Keyboard;->setImeOptions(Landroid/content/Context;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;ILcom/nuance/swype/input/InputFieldInfo;)V

    .line 64
    return-object v0
.end method

.method public currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardEntryLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    return-object v0
.end method

.method public currentLanguageSupportsCapitalization()Z
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mInputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->currentLanguageSupportsCapitalization()Z

    move-result v0

    return v0
.end method

.method public cycleShiftState()V
    .locals 5

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "hasLock":Z
    iget-boolean v3, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->isCycleToCapsLockSupported:Z

    if-eqz v3, :cond_1

    .line 236
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mInputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v3

    .line 237
    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->getShiftKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 238
    iget-boolean v3, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->lockable:Z

    if-eqz v3, :cond_0

    .line 239
    const/4 v0, 0x1

    .line 245
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->preCycleShiftState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 246
    sget-object v2, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 247
    .local v2, "newShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    sget-object v3, Lcom/nuance/swype/input/KeyboardSwitcher$1;->$SwitchMap$com$nuance$input$swypecorelib$Shift$ShiftState:[I

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->preCycleShiftState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 259
    :goto_0
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 260
    return-void

    .line 249
    :pswitch_0
    sget-object v2, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 250
    goto :goto_0

    .line 252
    :pswitch_1
    if-eqz v0, :cond_2

    sget-object v2, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 253
    :goto_1
    goto :goto_0

    .line 252
    :cond_2
    sget-object v2, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    goto :goto_1

    .line 255
    :pswitch_2
    sget-object v2, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    goto :goto_0

    .line 247
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
    .line 344
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->inputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->shiftState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    return-object v0
.end method

.method public getDefaultLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->defaultKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    return-object v0
.end method

.method public isAlphabetMode()Z
    .locals 2

    .prologue
    .line 305
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
    .line 309
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
    .line 300
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/swype/input/InputMethods$Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardLayout:Lcom/nuance/swype/input/InputMethods$Layout;

    iget v0, v0, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    const/16 v1, 0x600

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumMode()Z
    .locals 2

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_NUM:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v0, v1, :cond_0

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
    .line 322
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
    .line 197
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
    .line 318
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
    .line 354
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardEntryLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 355
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->defaultKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 356
    return-void
.end method

.method public returnToDefaultLayer()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->defaultKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardEntryLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->defaultKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mInputView:Lcom/nuance/swype/input/InputView;

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->defaultKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 76
    :cond_0
    return-void
.end method

.method public setInputView(Lcom/nuance/swype/input/InputView;)V
    .locals 0
    .param p1, "inputView"    # Lcom/nuance/swype/input/InputView;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mInputView:Lcom/nuance/swype/input/InputView;

    .line 50
    return-void
.end method

.method public setKeyboardEntryLayerType(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
    .locals 0
    .param p1, "type"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardEntryLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 341
    return-void
.end method

.method public setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .locals 1
    .param p1, "state"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 168
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
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 172
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->shiftState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-eq v5, p1, :cond_1

    move v0, v3

    .line 173
    .local v0, "changed":Z
    :goto_0
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->shiftState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 174
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mInputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v5

    .line 175
    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardEx;->getShiftKeys()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 177
    .local v2, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iput-boolean v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->on:Z

    .line 178
    iput-boolean v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->locked:Z

    .line 179
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->shiftState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    sget-object v6, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v5, v6, :cond_2

    .line 180
    iget-boolean v5, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->sticky:Z

    if-eqz v5, :cond_0

    .line 181
    iput-boolean v3, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->on:Z

    goto :goto_1

    .end local v0    # "changed":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_1
    move v0, v4

    .line 172
    goto :goto_0

    .line 183
    .restart local v0    # "changed":Z
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_2
    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->shiftState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    sget-object v6, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v5, v6, :cond_0

    .line 184
    iget-boolean v5, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->lockable:Z

    if-nez v5, :cond_3

    if-eqz p2, :cond_0

    .line 185
    :cond_3
    iput-boolean v3, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->locked:Z

    goto :goto_1

    .line 189
    .end local v2    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_4
    return v0
.end method

.method public supportsAlphaMode()Z
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardEntryLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_PHONE:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mKeyboardEntryLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v0, v1, :cond_0

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
    .line 206
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v1

    .line 208
    sget-object v2, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v1, v2, :cond_0

    .line 209
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 221
    .local v0, "currentShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 222
    const/4 v1, 0x1

    return v1

    .line 211
    .end local v0    # "currentShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    :cond_0
    if-eqz p1, :cond_2

    .line 214
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

    .line 218
    :cond_2
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .restart local v0    # "currentShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    goto :goto_0
.end method

.method public toggleLastKeyboard()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->lastKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mInputView:Lcom/nuance/swype/input/InputView;

    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->lastKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 297
    :cond_0
    return-void
.end method

.method public toggleSymbolKeyboard()V
    .locals 5

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne v2, v3, :cond_0

    .line 281
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->lastKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 286
    .local v1, "keyboardLayer":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    :goto_0
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mInputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->getModeId()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboard(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;I)Lcom/nuance/swype/input/XT9Keyboard;

    move-result-object v0

    .line 287
    .local v0, "current":Lcom/nuance/swype/input/XT9Keyboard;
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->ime:Lcom/nuance/swype/input/IME;

    iget v3, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->mImeOptions:I

    iget-object v4, p0, Lcom/nuance/swype/input/KeyboardSwitcher;->ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/nuance/swype/input/XT9Keyboard;->setImeOptions(Landroid/content/Context;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;ILcom/nuance/swype/input/InputFieldInfo;)V

    .line 289
    sget-object v2, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 290
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 291
    return-void

    .line 283
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
    .line 263
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 264
    .local v0, "newShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    sget-object v1, Lcom/nuance/swype/input/KeyboardSwitcher$1;->$SwitchMap$com$nuance$input$swypecorelib$Shift$ShiftState:[I

    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 273
    :goto_0
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 274
    return-void

    .line 266
    :pswitch_1
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 267
    goto :goto_0

    .line 269
    :pswitch_2
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
