.class public Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;
.super Lcom/nuance/swype/input/KeyboardSwitcher;
.source "ChineseKeyboardSwitcher.java"


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;)V
    .locals 0
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;
    .param p2, "xt9coreInput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/KeyboardSwitcher;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    .line 19
    return-void
.end method


# virtual methods
.method public createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;
    .locals 3
    .param p1, "keyboardLayer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .param p2, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p3, "inputMode"    # Lcom/nuance/swype/input/InputMethods$InputMode;

    .prologue
    .line 31
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    move-result-object v0

    .line 32
    .local v0, "keyboard":Lcom/nuance/swype/input/XT9Keyboard;
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->mInputView:Lcom/nuance/swype/input/InputView;

    instance-of v1, v1, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->mInputView:Lcom/nuance/swype/input/InputView;

    check-cast v1, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->showHWFrameAndCharacterList()V

    .line 35
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->ime:Lcom/nuance/swype/input/IME;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->mInputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v1, v0, v2}, Lcom/nuance/swype/input/IME;->refreshLanguageOnSpaceKey(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardViewEx;)V

    .line 38
    :cond_0
    return-object v0
.end method

.method public isMixedInput()Z
    .locals 2

    .prologue
    .line 22
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->ime:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    iget-object v0, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 23
    .local v0, "mode":Ljava/lang/String;
    const-string v1, "pinyin_qwerty"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "zhuyin_qwerty"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "doublepinyin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
