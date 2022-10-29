.class public Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;
.super Lcom/nuance/swype/input/IMEHandler;
.source "HardKeyIMEHandler.java"


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private mHardKeyboardManager:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-string/jumbo v0, "HardKeyIMEHandler"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/IME;)V
    .registers 2
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/nuance/swype/input/IMEHandler;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    .line 41
    return-void
.end method

.method private onHardKeyEvent(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 280
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_15

    .line 282
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/IME;->setHardKeyboardAttached(Z)V

    .line 285
    :cond_15
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mHardKeyboardManager:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    if-nez v2, :cond_2d

    .line 286
    new-instance v2, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    iget-object v3, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-direct {v2, v3}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mHardKeyboardManager:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    .line 287
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/InputView;->useKDBHardkey(Z)V

    move v0, v1

    .line 296
    :goto_2c
    return v0

    .line 291
    :cond_2d
    invoke-virtual {p0}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->isValidInputField()Z

    move-result v2

    if-nez v2, :cond_35

    move v0, v1

    .line 292
    goto :goto_2c

    .line 294
    :cond_35
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mHardKeyboardManager:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    invoke-virtual {v2, p1, p2}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 295
    .local v0, "res":Z
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/InputView;->useKDBHardkey(Z)V

    goto :goto_2c
.end method

.method private resendKeyEvent(ILandroid/view/KeyEvent;)V
    .registers 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v5, 0x75

    const/16 v4, 0x74

    .line 149
    iget-object v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_29

    .line 151
    iget-object v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 152
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_29

    .line 154
    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 155
    const-wide/16 v2, 0x32

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 156
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    const/4 v1, 0x0

    invoke-virtual {v0, v4, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 162
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_29
    return-void
.end method


# virtual methods
.method public cyclingKeyboardInput()V
    .registers 1

    .prologue
    .line 138
    return-void
.end method

.method public handleXT9LanguageCyclingKey()V
    .registers 1

    .prologue
    .line 78
    return-void
.end method

.method public isInputModeSupportedByHardKeyboard()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 308
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-nez v2, :cond_c

    .line 321
    :cond_b
    :goto_b
    return v1

    .line 311
    :cond_c
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    iget-object v0, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 314
    .local v0, "mode":Ljava/lang/String;
    const-string/jumbo v2, "stroke"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "handwriting_full_screen"

    .line 315
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "handwriting_half_screen"

    .line 316
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "handwriting"

    .line 317
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 321
    const/4 v1, 0x1

    goto :goto_b
.end method

.method public isLanguageSupportedByHardKeyboard()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 300
    iget-object v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-nez v1, :cond_c

    .line 304
    :cond_b
    :goto_b
    return v0

    :cond_c
    iget-object v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isLatinLanguage()Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_20
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public isValidInputField()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 325
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 326
    .local v0, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v2

    .line 327
    invoke-virtual {v2}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldTreatEditTextAsInvalidField()Z

    move-result v2

    if-nez v2, :cond_2b

    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldSkipInvalidFieldIdEditor()Z

    move-result v2

    if-eqz v2, :cond_24

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2b

    .line 328
    :cond_24
    if-eqz v0, :cond_2b

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v2, :cond_2b

    const/4 v1, 0x1

    .line 330
    :cond_2b
    return v1
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 84
    return-void
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .registers 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-nez v0, :cond_11

    .line 55
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    new-instance v1, Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-direct {v1, v2}, Lcom/nuance/swype/input/InputFieldInfo;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v1, v0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 58
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mHardKeyboardManager:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    .line 46
    return-void
.end method

.method public onFinishCandidatesView(Z)V
    .registers 2
    .param p1, "finishingInput"    # Z

    .prologue
    .line 96
    return-void
.end method

.method public onFinishInput()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_f

    .line 69
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->setImeInUse(Z)V

    .line 70
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->setCandidatesViewShown(Z)V

    .line 72
    :cond_f
    return-void
.end method

.method public onFinishInputView(Z)V
    .registers 4
    .param p1, "finishingInput"    # Z

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_a

    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->setImeInUse(Z)V

    .line 103
    :cond_a
    return-void
.end method

.method public onInitializeInterface()V
    .registers 1

    .prologue
    .line 50
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 165
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v2, :cond_1e

    .line 166
    invoke-virtual {p0}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->isValidInputField()Z

    move-result v2

    if-nez v2, :cond_20

    :cond_1e
    move v2, v4

    .line 229
    :goto_1f
    return v2

    .line 170
    :cond_20
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 171
    .local v0, "inputview":Lcom/nuance/swype/input/InputView;
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v1

    .line 173
    .local v1, "mInputMethods":Lcom/nuance/swype/input/InputMethods;
    if-nez v0, :cond_56

    .line 178
    invoke-virtual {p0}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->isLanguageSupportedByHardKeyboard()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 179
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 180
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getHardKeyIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;

    invoke-virtual {v2}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->isValidInputField()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 181
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->resendKeyEvent(ILandroid/view/KeyEvent;)V

    move v2, v3

    .line 182
    goto :goto_1f

    :cond_54
    move v2, v4

    .line 185
    goto :goto_1f

    .line 186
    :cond_56
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputMethods;->isInputLanguageCurrent(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_74

    .line 188
    invoke-virtual {p0}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->isLanguageSupportedByHardKeyboard()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 189
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/IME;->switchInputView(Z)V

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->resendKeyEvent(ILandroid/view/KeyEvent;)V

    move v2, v3

    .line 191
    goto :goto_1f

    .line 195
    :cond_74
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->isMiniKeyboardMode()Z

    move-result v2

    if-eqz v2, :cond_94

    .line 196
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/InputView;->switchKeyboardDockMode(Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 197
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->setModeForInputContainerView()V

    .line 198
    instance-of v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;

    if-eqz v2, :cond_94

    move-object v2, v0

    .line 199
    check-cast v2, Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->closeGridCandidatesView()V

    move-object v2, v0

    .line 200
    check-cast v2, Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleHardKeyResize()V

    .line 204
    :cond_94
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->isPopupKeyboardShowing()Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 205
    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/InputView;->miniKeyboardOnKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1f

    .line 208
    :cond_9f
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->isLangPopupMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 209
    const/16 v2, 0x14

    if-eq p1, v2, :cond_bd

    const/16 v2, 0x13

    if-eq p1, v2, :cond_bd

    const/16 v2, 0x42

    if-eq p1, v2, :cond_bd

    .line 211
    invoke-static {p2}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isAltPressed(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_c0

    const/16 v2, 0x3e

    if-ne p1, v2, :cond_c0

    :cond_bd
    move v2, v3

    .line 214
    goto/16 :goto_1f

    .line 216
    :cond_c0
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mHardKeyboardManager:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    if-eqz v2, :cond_cf

    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mHardKeyboardManager:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    iget-boolean v2, v2, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHardLangPopupMenuShownOnce:Z

    if-nez v2, :cond_cf

    .line 217
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->dismissLangPopupMenu()V

    .line 221
    :cond_cf
    const/16 v2, 0x9e

    if-eq p1, v2, :cond_db

    const/16 v2, 0x90

    if-lt p1, v2, :cond_e4

    const/16 v2, 0x99

    if-gt p1, v2, :cond_e4

    .line 224
    :cond_db
    invoke-static {p2}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isNumLockOn(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_e4

    move v2, v4

    .line 225
    goto/16 :goto_1f

    .line 228
    :cond_e4
    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/InputView;->useKDBHardkey(Z)V

    .line 229
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->onHardKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_1f
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v6, 0x42

    const/16 v5, 0x14

    const/16 v4, 0x13

    const/16 v3, 0x3e

    const/4 v1, 0x0

    .line 233
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v2, :cond_25

    .line 234
    invoke-virtual {p0}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->isValidInputField()Z

    move-result v2

    if-nez v2, :cond_26

    .line 276
    :cond_25
    :goto_25
    return v1

    .line 238
    :cond_26
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 240
    .local v0, "inputview":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_25

    .line 244
    invoke-virtual {p0}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->isLanguageSupportedByHardKeyboard()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {p0}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->isInputModeSupportedByHardKeyboard()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 248
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->isPopupKeyboardShowing()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 249
    const/16 v2, 0x15

    if-eq p1, v2, :cond_50

    const/16 v2, 0x16

    if-eq p1, v2, :cond_50

    if-eq p1, v4, :cond_50

    if-eq p1, v5, :cond_50

    if-eq p1, v6, :cond_50

    if-ne p1, v3, :cond_25

    .line 253
    :cond_50
    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/InputView;->miniKeyboardOnKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_25

    .line 255
    :cond_55
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->isLangPopupMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 256
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mHardKeyboardManager:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    if-eqz v2, :cond_6f

    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mHardKeyboardManager:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    iget-boolean v2, v2, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHardLangPopupMenuShownOnce:Z

    if-eqz v2, :cond_6f

    if-ne p1, v3, :cond_6f

    .line 258
    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mHardKeyboardManager:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    iput-boolean v1, v2, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHardLangPopupMenuShownOnce:Z

    .line 259
    const/4 v1, 0x1

    goto :goto_25

    .line 261
    :cond_6f
    if-eq p1, v5, :cond_87

    if-eq p1, v4, :cond_87

    if-eq p1, v6, :cond_87

    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mHardKeyboardManager:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mHardKeyboardManager:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    iget-boolean v2, v2, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHardLangPopupMenuShownOnce:Z

    if-nez v2, :cond_25

    .line 266
    invoke-static {p2}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->isAltPressed(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_25

    if-ne p1, v3, :cond_25

    .line 267
    :cond_87
    iget-object v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1, p1, p2}, Lcom/nuance/swype/input/IME;->onHardKeyLangPopupMenu(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_25

    .line 269
    :cond_8e
    const/16 v2, 0x3b

    if-eq p1, v2, :cond_96

    const/16 v2, 0x3c

    if-ne p1, v2, :cond_25

    .line 270
    :cond_96
    instance-of v2, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;

    if-eqz v2, :cond_25

    .line 271
    sget-object v2, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/InputView;->handleHardkeyShiftKey(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    goto :goto_25
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 6
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mHardKeyboardManager:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    if-nez v0, :cond_d

    .line 108
    new-instance v0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    iget-object v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mHardKeyboardManager:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    .line 112
    :cond_d
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-nez v0, :cond_20

    .line 134
    :cond_1f
    :goto_1f
    return-void

    .line 117
    :cond_20
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 119
    invoke-virtual {p0}, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->isValidInputField()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 120
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-nez v0, :cond_40

    .line 121
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    new-instance v1, Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v2, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-direct {v1, v2}, Lcom/nuance/swype/input/InputFieldInfo;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v1, v0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 124
    :cond_40
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    if-nez v0, :cond_50

    .line 125
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    .line 128
    :cond_50
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->setImeInUse(Z)V

    .line 129
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/IME;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 130
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->updateFullscreenMode()V

    goto :goto_1f

    .line 132
    :cond_61
    iget-object v0, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->setImeInUse(Z)V

    goto :goto_1f
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 3
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    .line 64
    return-void
.end method

.method public setIME(Lcom/nuance/swype/input/IME;)V
    .registers 2
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/nuance/swype/input/hardkey/HardKeyIMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    .line 146
    return-void
.end method

.method public toggleFullScreenHwr()V
    .registers 1

    .prologue
    .line 142
    return-void
.end method
