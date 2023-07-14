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
    .param p1, "this$0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 2772
    iput-object p1, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHardLangSelected(Ljava/lang/String;)V
    .locals 4
    .param p1, "languageId"    # Ljava/lang/String;

    .prologue
    .line 2808
    iget-object v2, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    .line 2809
    .local v1, "language":Lcom/nuance/swype/input/InputMethods$Language;
    iget-object v2, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/InputMethods;->setCurrentLanguage(Ljava/lang/String;)V

    .line 2810
    iget-object v2, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/nuance/swype/input/IME;->mWantToast:Z

    .line 2813
    iget-object v2, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 2814
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    .line 2815
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 2817
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/IME;->switchHardInputView(Z)V

    .line 2821
    iget-object v2, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/nuance/swype/connect/Connect;->setCurrentLanguage(Lcom/nuance/swype/input/InputMethods$Language;I)V

    .line 2823
    return-void
.end method

.method public onLanguageSelected(Ljava/lang/String;)V
    .locals 7
    .param p1, "languageId"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x64

    const/4 v3, 0x1

    .line 2781
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2804
    :goto_0
    return-void

    .line 2785
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getKeyboardBackgroundManager()Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->setReloadRequiredFromResources(Z)V

    .line 2787
    iget-object v2, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    .line 2788
    .local v1, "language":Lcom/nuance/swype/input/InputMethods$Language;
    iget-object v2, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/InputMethods;->setCurrentLanguage(Ljava/lang/String;)V

    .line 2789
    iget-object v2, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    iput-boolean v3, v2, Lcom/nuance/swype/input/IME;->mWantToast:Z

    .line 2792
    iget-object v2, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 2793
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_1

    .line 2794
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 2796
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IME;->access$300(Lcom/nuance/swype/input/IME;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2797
    iget-object v2, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IME;->access$300(Lcom/nuance/swype/input/IME;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2798
    iget-object v2, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    iput-boolean v3, v2, Lcom/nuance/swype/input/IME;->recaptureWhenSwitching:Z

    .line 2802
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
    .line 2775
    iget-object v0, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->close()V

    .line 2776
    iget-object v0, p0, Lcom/nuance/swype/input/IME$6;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showLanguages()V

    .line 2777
    return-void
.end method
