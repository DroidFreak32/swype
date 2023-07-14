.class Lcom/nuance/swype/input/chinese/ChineseIMEHandler$2;
.super Ljava/lang/Object;
.source "ChineseIMEHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->showInputModeMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

.field final synthetic val$modeAdapter:Lcom/nuance/swype/input/chinese/InputModeListAdapter;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;Lcom/nuance/swype/input/chinese/InputModeListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    iput-object p2, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler$2;->val$modeAdapter:Lcom/nuance/swype/input/chinese/InputModeListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    const/16 v7, 0x65

    const/4 v6, 0x1

    .line 183
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 184
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler$2;->val$modeAdapter:Lcom/nuance/swype/input/chinese/InputModeListAdapter;

    invoke-virtual {v2, p2}, Lcom/nuance/swype/input/chinese/InputModeListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 185
    .local v1, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->access$000(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    .line 186
    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->access$100(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    .line 187
    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->access$200(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    if-eq v1, v2, :cond_3

    .line 190
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->access$300(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    .line 191
    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->access$500(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->access$400(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;

    move-result-object v3

    iget-object v3, v3, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->access$700(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->access$600(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;

    move-result-object v3

    iget-object v3, v3, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 195
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->access$800(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getKeyboardBackgroundManager()Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->setReloadRequiredFromResources(Z)V

    .line 196
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->access$900(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 197
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    if-eqz v0, :cond_4

    const-string/jumbo v2, "handwriting_full_screen"

    iget-object v3, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "fullscreen.enabled."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    .line 199
    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->access$1000(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;

    move-result-object v3

    iget-object v3, v3, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-virtual {v0, v2, v6}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 204
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 205
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->access$1200(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 206
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->access$1300(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 207
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->access$1400(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 210
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->access$1500(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;

    move-result-object v2

    iput-boolean v6, v2, Lcom/nuance/swype/input/IME;->mWantToast:Z

    .line 212
    .end local v0    # "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    :cond_3
    return-void

    .line 200
    .restart local v0    # "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    :cond_4
    if-eqz v0, :cond_1

    const-string/jumbo v2, "handwriting_half_screen"

    iget-object v3, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "fullscreen.enabled."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseIMEHandler$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseIMEHandler;

    .line 202
    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseIMEHandler;->access$1100(Lcom/nuance/swype/input/chinese/ChineseIMEHandler;)Lcom/nuance/swype/input/IME;

    move-result-object v3

    iget-object v3, v3, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 201
    invoke-virtual {v0, v2, v3}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method
