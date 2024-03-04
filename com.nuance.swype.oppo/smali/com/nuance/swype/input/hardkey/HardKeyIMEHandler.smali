.class public Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;
.super Lcom/nuance/swype/input/IMEHandler;
.source "HardKeyIMEHandler.java"


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private mHardKeyboardManager:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "HardKeyIMEHandler"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/IME;)V
    .locals 0
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/nuance/swype/input/IMEHandler;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    .line 40
    return-void
.end method

.method private onHardKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 272
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/IME;->setHardKeyboardAttached(Z)V

    .line 277
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mHardKeyboardManager:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    if-nez v2, :cond_1

    .line 278
    new-instance v2, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    iget-object v3, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-direct {v2, v3}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mHardKeyboardManager:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    .line 279
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mHardKeyboardManager:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    if-nez v2, :cond_1

    .line 280
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/InputView;->useKDBHardkey(Z)V

    move v0, v1

    .line 290
    :goto_0
    return v0

    .line 285
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->isValidInputField()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 286
    goto :goto_0

    .line 288
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mHardKeyboardManager:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    invoke-virtual {v2, p1, p2}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 289
    .local v0, "res":Z
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/InputView;->useKDBHardkey(Z)V

    goto :goto_0
.end method

.method private resendKeyEvent(ILandroid/view/KeyEvent;)V
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v5, 0x75

    const/16 v4, 0x74

    .line 147
    iget-object v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 150
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 153
    const-wide/16 v2, 0x32

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 154
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 155
    const/4 v1, 0x0

    invoke-virtual {v0, v4, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 160
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method


# virtual methods
.method public cyclingKeyboardInput()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public handleXT9LanguageCyclingKey()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public isInputModeSupportedByHardKeyboard()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 302
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-nez v2, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v1

    .line 305
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    iget-object v0, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 308
    .local v0, "mode":Ljava/lang/String;
    const-string v2, "stroke"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "handwriting_full_screen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "handwriting_half_screen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "handwriting"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 315
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isLanguageSupportedByHardKeyboard()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 294
    iget-object v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-nez v1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isLatinLanguage()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isValidInputField()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 319
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 320
    .local v0, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldTreatEditTextAsInvalidField()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldSkipInvalidFieldIdEditor()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 322
    :cond_0
    if-eqz v0, :cond_1

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 324
    :cond_1
    return v1
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    new-instance v1, Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-direct {v1, v2}, Lcom/nuance/swype/input/InputFieldInfo;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v1, v0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 57
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mHardKeyboardManager:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    .line 45
    return-void
.end method

.method public onFinishCandidatesView(Z)V
    .locals 0
    .param p1, "finishingInput"    # Z

    .prologue
    .line 95
    return-void
.end method

.method public onFinishInput()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->setImeInUse(Z)V

    .line 69
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->setCandidatesViewShown(Z)V

    .line 71
    :cond_0
    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 2
    .param p1, "finishingInput"    # Z

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->setImeInUse(Z)V

    .line 102
    :cond_0
    return-void
.end method

.method public onInitializeInterface()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 163
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->isValidInputField()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v4

    .line 227
    :goto_0
    return v2

    .line 168
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 169
    .local v0, "inputview":Lcom/nuance/swype/input/InputView;
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v1

    .line 171
    .local v1, "mInputMethods":Lcom/nuance/swype/input/InputMethods;
    if-nez v0, :cond_3

    .line 176
    invoke-virtual {p0}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->isLanguageSupportedByHardKeyboard()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 178
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getHardKeyIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;

    invoke-virtual {v2}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->isValidInputField()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->resendKeyEvent(ILandroid/view/KeyEvent;)V

    move v2, v3

    .line 180
    goto :goto_0

    :cond_2
    move v2, v4

    .line 183
    goto :goto_0

    .line 184
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputMethods;->isInputLanguageCurrent(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 186
    invoke-virtual {p0}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->isLanguageSupportedByHardKeyboard()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 187
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/IME;->switchInputView(Z)V

    .line 188
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->resendKeyEvent(ILandroid/view/KeyEvent;)V

    move v2, v3

    .line 189
    goto :goto_0

    .line 193
    :cond_4
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->isMiniKeyboardMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 194
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/InputView;->switchKeyboardDockMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 195
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->setModeForInputContainerView()V

    .line 196
    instance-of v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;

    if-eqz v2, :cond_5

    move-object v2, v0

    .line 197
    check-cast v2, Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->closeGridCandidatesView()V

    move-object v2, v0

    .line 198
    check-cast v2, Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleHardKeyResize()V

    .line 202
    :cond_5
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->isPopupKeyboardShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 203
    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/InputView;->miniKeyboardOnKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 206
    :cond_6
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->isLangPopupMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 207
    const/16 v2, 0x14

    if-eq p1, v2, :cond_7

    const/16 v2, 0x13

    if-eq p1, v2, :cond_7

    const/16 v2, 0x42

    if-eq p1, v2, :cond_7

    invoke-static {p2}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isAltPressed(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_8

    const/16 v2, 0x3e

    if-ne p1, v2, :cond_8

    :cond_7
    move v2, v3

    .line 212
    goto/16 :goto_0

    .line 214
    :cond_8
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mHardKeyboardManager:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mHardKeyboardManager:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    iget-boolean v2, v2, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHardLangPopupMenuShownOnce:Z

    if-nez v2, :cond_9

    .line 215
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->dismissLangPopupMenu()V

    .line 219
    :cond_9
    const/16 v2, 0x9e

    if-eq p1, v2, :cond_a

    const/16 v2, 0x90

    if-lt p1, v2, :cond_b

    const/16 v2, 0x99

    if-gt p1, v2, :cond_b

    :cond_a
    invoke-static {p2}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isNumLockOn(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_b

    move v2, v4

    .line 223
    goto/16 :goto_0

    .line 226
    :cond_b
    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/InputView;->useKDBHardkey(Z)V

    .line 227
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->onHardKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v6, 0x14

    const/16 v5, 0x13

    const/4 v2, 0x1

    const/16 v4, 0x3e

    const/4 v1, 0x0

    .line 231
    iget-object v3, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v3, v3, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v3, v3, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v3, v3, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->isValidInputField()Z

    move-result v3

    if-nez v3, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v1

    .line 236
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 238
    .local v0, "inputview":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->isLanguageSupportedByHardKeyboard()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->isInputModeSupportedByHardKeyboard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->isPopupKeyboardShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 247
    const/16 v1, 0x15

    if-eq p1, v1, :cond_2

    const/16 v1, 0x16

    if-eq p1, v1, :cond_2

    if-eq p1, v5, :cond_2

    if-eq p1, v6, :cond_2

    const/16 v1, 0x42

    if-eq p1, v1, :cond_2

    if-ne p1, v4, :cond_6

    .line 251
    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/InputView;->miniKeyboardOnKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 253
    :cond_3
    iget-object v3, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->isLangPopupMenuShowing()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 254
    iget-object v3, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mHardKeyboardManager:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mHardKeyboardManager:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    iget-boolean v3, v3, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHardLangPopupMenuShownOnce:Z

    if-eqz v3, :cond_4

    if-ne p1, v4, :cond_4

    .line 256
    iget-object v3, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mHardKeyboardManager:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    iput-boolean v1, v3, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHardLangPopupMenuShownOnce:Z

    move v1, v2

    .line 257
    goto :goto_0

    .line 259
    :cond_4
    if-eq p1, v6, :cond_5

    if-eq p1, v5, :cond_5

    const/16 v1, 0x42

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mHardKeyboardManager:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    iget-boolean v1, v1, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHardLangPopupMenuShownOnce:Z

    if-nez v1, :cond_6

    invoke-static {p2}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isAltPressed(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_6

    if-ne p1, v4, :cond_6

    .line 264
    :cond_5
    iget-object v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1, p1, p2}, Lcom/nuance/swype/input/IME;->onHardKeyLangPopupMenu(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :cond_6
    move v1, v2

    .line 268
    goto :goto_0
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 3
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    .line 106
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mHardKeyboardManager:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    iget-object v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mHardKeyboardManager:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    if-nez v0, :cond_1

    .line 132
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 117
    invoke-virtual {p0}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->isValidInputField()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 118
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-nez v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    new-instance v1, Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-direct {v1, v2}, Lcom/nuance/swype/input/InputFieldInfo;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v1, v0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    if-nez v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->setImeInUse(Z)V

    .line 127
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/IME;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 128
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->updateFullscreenMode()V

    goto :goto_0

    .line 130
    :cond_4
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->setImeInUse(Z)V

    goto :goto_0
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    .line 63
    return-void
.end method

.method public setIME(Lcom/nuance/swype/input/IME;)V
    .locals 0
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    .line 144
    return-void
.end method

.method public toggleFullScreenHwr()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method
