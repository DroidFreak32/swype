.class Lcom/nuance/swype/input/IME$6;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Lcom/nuance/swype/widget/PopupLanguageList$PopupLanguageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/IME;->showLanguagePopupMenu(Lcom/nuance/swype/input/KeyboardEx$Key;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/IME;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/IME;)V
    .locals 0

    .prologue
    .line 2539
    iput-object p1, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHardLangSelected(Ljava/lang/String;)V
    .locals 5
    .param p1, "languageId"    # Ljava/lang/String;

    .prologue
    .line 2573
    iget-object v3, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v3, v3, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {v3, p1}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    .line 2574
    .local v2, "language":Lcom/nuance/swype/input/InputMethods$Language;
    iget-object v3, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v3, v3, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {v3, p1}, Lcom/nuance/swype/input/InputMethods;->setCurrentLanguage(Ljava/lang/String;)V

    .line 2575
    iget-object v3, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/nuance/swype/input/IME;->mWantToast:Z

    .line 2578
    iget-object v3, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 2579
    .local v1, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v1, :cond_0

    .line 2580
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 2583
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 2585
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2586
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/IME;->switchHardInputView(Z)V

    .line 2591
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v3}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lcom/nuance/swype/connect/Connect;->setCurrentLanguage(Lcom/nuance/swype/input/InputMethods$Language;I)V

    .line 2593
    return-void
.end method

.method public onLanguageSelected(Ljava/lang/String;)V
    .locals 7
    .param p1, "languageId"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x64

    const/4 v3, 0x1

    .line 2548
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2569
    :goto_0
    return-void

    .line 2552
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    .line 2553
    .local v1, "language":Lcom/nuance/swype/input/InputMethods$Language;
    iget-object v2, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/InputMethods;->setCurrentLanguage(Ljava/lang/String;)V

    .line 2554
    iget-object v2, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    iput-boolean v3, v2, Lcom/nuance/swype/input/IME;->mWantToast:Z

    .line 2557
    iget-object v2, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 2558
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_1

    .line 2559
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 2561
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IME;->access$200(Lcom/nuance/swype/input/IME;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2562
    iget-object v2, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IME;->access$200(Lcom/nuance/swype/input/IME;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2563
    iget-object v2, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    iput-boolean v3, v2, Lcom/nuance/swype/input/IME;->recaptureWhenSwitching:Z

    .line 2567
    iget-object v2, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/nuance/swype/connect/Connect;->setCurrentLanguage(Lcom/nuance/swype/input/InputMethods$Language;I)V

    goto :goto_0
.end method

.method public onMoreLanguages()V
    .locals 1

    .prologue
    .line 2542
    iget-object v0, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->close()V

    .line 2543
    iget-object v0, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showLanguages()V

    .line 2544
    return-void
.end method
