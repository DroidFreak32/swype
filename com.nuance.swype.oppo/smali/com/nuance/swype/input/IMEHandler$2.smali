.class Lcom/nuance/swype/input/IMEHandler$2;
.super Ljava/lang/Object;
.source "IMEHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/IMEHandler;->showActionOnKeyboardOption()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/IMEHandler;

.field final synthetic val$listAdapter:Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/IMEHandler;Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/nuance/swype/input/IMEHandler$2;->this$0:Lcom/nuance/swype/input/IMEHandler;

    iput-object p2, p0, Lcom/nuance/swype/input/IMEHandler$2;->val$listAdapter:Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 160
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 161
    iget-object v6, p0, Lcom/nuance/swype/input/IMEHandler$2;->val$listAdapter:Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;

    invoke-virtual {v6, p2}, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter;->getItem(I)Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;

    move-result-object v6

    .line 162
    iget-object v5, v6, Lcom/nuance/swype/input/chinese/ActionOnKeyboardListAdapter$ActionItem;->actionName:Ljava/lang/String;

    .line 164
    .local v5, "str":Ljava/lang/String;
    iget-object v6, p0, Lcom/nuance/swype/input/IMEHandler$2;->this$0:Lcom/nuance/swype/input/IMEHandler;

    iget-object v6, v6, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v6, v6, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v4

    .line 165
    .local v4, "im":Lcom/nuance/swype/input/InputMethods$InputMode;
    iget-object v6, p0, Lcom/nuance/swype/input/IMEHandler$2;->this$0:Lcom/nuance/swype/input/IMEHandler;

    iget-object v6, v6, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v6}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 166
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    iget-object v6, p0, Lcom/nuance/swype/input/IMEHandler$2;->this$0:Lcom/nuance/swype/input/IMEHandler;

    iget-object v6, v6, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v6}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$string;->action_on_keyboard_off:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "cvOff":Ljava/lang/String;
    iget-object v6, p0, Lcom/nuance/swype/input/IMEHandler$2;->this$0:Lcom/nuance/swype/input/IMEHandler;

    iget-object v6, v6, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v6}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$string;->handwriting_on_chinese_keyboard:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "cvHwr":Ljava/lang/String;
    iget-object v6, p0, Lcom/nuance/swype/input/IMEHandler$2;->this$0:Lcom/nuance/swype/input/IMEHandler;

    iget-object v6, v6, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v6}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$string;->trace_on_chinese_keyboard:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "cvTrace":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 171
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$InputMode;->getHandwritingOnKeyboardKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v8}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 172
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$InputMode;->getTraceOnKeyboardKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v8}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 180
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/nuance/swype/input/IMEHandler$2;->this$0:Lcom/nuance/swype/input/IMEHandler;

    iget-object v6, v6, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v6, v6, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v7, p0, Lcom/nuance/swype/input/IMEHandler$2;->this$0:Lcom/nuance/swype/input/IMEHandler;

    iget-object v7, v7, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v7, v7, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 181
    iget-object v6, p0, Lcom/nuance/swype/input/IMEHandler$2;->this$0:Lcom/nuance/swype/input/IMEHandler;

    iget-object v6, v6, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v6, v6, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v7, p0, Lcom/nuance/swype/input/IMEHandler$2;->this$0:Lcom/nuance/swype/input/IMEHandler;

    iget-object v7, v7, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v7, v7, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v6

    iget-object v7, p0, Lcom/nuance/swype/input/IMEHandler$2;->this$0:Lcom/nuance/swype/input/IMEHandler;

    iget-object v7, v7, Lcom/nuance/swype/input/IMEHandler;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v7, v7, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v6, v7, v8}, Lcom/nuance/swype/input/InputView;->startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V

    .line 183
    return-void

    .line 173
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 174
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$InputMode;->getHandwritingOnKeyboardKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v9}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 175
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$InputMode;->getTraceOnKeyboardKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v8}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 176
    :cond_2
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 177
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$InputMode;->getHandwritingOnKeyboardKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v8}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 178
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$InputMode;->getTraceOnKeyboardKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v9}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method
