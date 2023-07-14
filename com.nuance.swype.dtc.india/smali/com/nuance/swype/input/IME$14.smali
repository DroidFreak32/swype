.class Lcom/nuance/swype/input/IME$14;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/IME;
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
    .line 3704
    iput-object p1, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3708
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 3833
    :pswitch_0
    iget-object v6, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 3834
    iget-object v6, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v6, v6, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v6, p1}, Lcom/nuance/swype/input/IMEHandlerManager;->handleMessage(Landroid/os/Message;)Z

    .line 3838
    :cond_0
    :goto_0
    return v5

    .line 3710
    :pswitch_1
    iget-object v7, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v7}, Lcom/nuance/swype/input/IME;->updateFullscreenMode()V

    .line 3711
    iget-object v7, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v7, v5}, Lcom/nuance/swype/input/IME;->switchInputView(Z)V

    .line 3712
    iget-object v5, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputView;->updateCandidatesView()V

    :cond_1
    :goto_1
    move v5, v6

    .line 3838
    goto :goto_0

    .line 3715
    :pswitch_2
    iget-object v7, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v7, v5}, Lcom/nuance/swype/input/IME;->switchInputView(Z)V

    .line 3716
    iget-object v7, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v7, v5}, Lcom/nuance/swype/input/IME;->access$1002(Lcom/nuance/swype/input/IME;Z)Z

    goto :goto_1

    .line 3719
    :pswitch_3
    iget-object v5, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->refreshInputViewLanguage()V

    goto :goto_1

    .line 3723
    :pswitch_4
    iget-object v5, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->launchSettings()V

    goto :goto_1

    .line 3727
    :pswitch_5
    iget-object v5, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 3728
    iget-object v5, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v5, v5, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEHandlerManager;->getIMEInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEHandler;->switchToHandwritingModeCJK()V

    goto :goto_1

    .line 3730
    :cond_2
    iget-object v5, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->toggleHwrAndKeyboardInputMode()V

    goto :goto_1

    .line 3742
    :pswitch_6
    iget-object v5, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v5, v5, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v7, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v7, v7, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v5, v5, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v7, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v7, v7, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    .line 3743
    invoke-virtual {v5, v7}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_4

    .line 3744
    :cond_3
    iget-object v5, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IME;->access$300(Lcom/nuance/swype/input/IME;)Landroid/os/Handler;

    move-result-object v5

    const/16 v7, 0x6d

    const-wide/16 v8, 0x64

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 3746
    :cond_4
    iget-object v5, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IME;->access$1100(Lcom/nuance/swype/input/IME;)V

    goto :goto_1

    .line 3751
    :pswitch_7
    iget-object v5, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    iput-boolean v6, v5, Lcom/nuance/swype/input/IME;->recaptureWhenSwitching:Z

    .line 3752
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/nuance/swype/input/LangSwitchAction;

    check-cast v5, Lcom/nuance/swype/input/LangSwitchAction;

    .line 3753
    iget-object v7, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5, v7}, Lcom/nuance/swype/input/LangSwitchAction;->execute(Lcom/nuance/swype/input/IME;)V

    goto :goto_1

    .line 3757
    :pswitch_8
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/drawable/Drawable;

    move-object v0, v5

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 3758
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v3

    .line 3759
    .local v3, "iv":Lcom/nuance/swype/input/InputView;
    if-eqz v3, :cond_1

    .line 3760
    invoke-virtual {v3, v0}, Lcom/nuance/swype/input/InputView;->updateKeyboardBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 3765
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v3    # "iv":Lcom/nuance/swype/input/InputView;
    :pswitch_9
    iget-object v5, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IME;->access$1200(Lcom/nuance/swype/input/IME;)V

    goto/16 :goto_1

    .line 3769
    :pswitch_a
    iget-object v5, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getRunningState()I

    move-result v5

    .line 3772
    sget v7, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->RUNNING_STATE_BACKGROUND_HIBERNATE:I

    if-eq v5, v7, :cond_1

    .line 3773
    iget-object v5, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 3774
    iget-object v5, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v5, v5, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEHandlerManager;->getIMEInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v7

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    invoke-virtual {v7, v5}, Lcom/nuance/swype/input/IMEHandler;->handleNewWordsDelayScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V

    goto/16 :goto_1

    .line 3778
    :cond_5
    iget-object v7, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    invoke-static {v7, v5}, Lcom/nuance/swype/input/IME;->access$1300(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V

    goto/16 :goto_1

    .line 3783
    :pswitch_b
    iget-object v7, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v7}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3784
    iget-object v7, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v7}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 3785
    .local v1, "inputview":Lcom/nuance/swype/input/InputView;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->isShown()Z

    move-result v7

    if-nez v7, :cond_1

    .line 3786
    iget-object v7, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v7, v5}, Lcom/nuance/swype/input/IME;->setCandidatesViewShown(Z)V

    goto/16 :goto_1

    .line 3791
    .end local v1    # "inputview":Lcom/nuance/swype/input/InputView;
    :pswitch_c
    iget-object v5, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3792
    iget-object v7, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/view/KeyEvent;

    invoke-virtual {v7, v8, v9, v5}, Lcom/nuance/swype/input/IME;->onKeyDownInner(IILandroid/view/KeyEvent;)V

    goto/16 :goto_1

    .line 3796
    :pswitch_d
    iget-object v5, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3797
    iget-object v5, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 3798
    .restart local v1    # "inputview":Lcom/nuance/swype/input/InputView;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->isShown()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3799
    iget-object v5, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/IME;->setCandidatesViewShown(Z)V

    goto/16 :goto_1

    .line 3805
    .end local v1    # "inputview":Lcom/nuance/swype/input/InputView;
    :pswitch_e
    iget-object v5, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3809
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 3811
    .local v4, "languageId":I
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    const-class v7, Lcom/nuance/swype/connect/LanguageUpdateWithTOS;

    invoke-direct {v2, v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3813
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IME;->access$700(Lcom/nuance/swype/input/IME;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3814
    const-string/jumbo v5, "language.id"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3815
    iget-object v5, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5, v2}, Lcom/nuance/swype/input/IME;->startActivity(Landroid/content/Intent;)V

    .line 3816
    iget-object v5, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->hideWindow()V

    goto/16 :goto_1

    .line 3819
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "languageId":I
    :pswitch_f
    iget-object v5, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3820
    iget-object v5, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v7, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v7, v7, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-static {v5, v7}, Lcom/nuance/swype/input/IME;->access$1400(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/InputMethods$Language;)V

    goto/16 :goto_1

    .line 3825
    :pswitch_10
    iget-object v5, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v5, v5, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3828
    iget-object v5, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/OemLdbWordsManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/OemLdbWordsManager;

    move-result-object v7

    .line 3829
    iget-object v5, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputView;->getXT9CoreInput()Lcom/nuance/input/swypecorelib/XT9CoreInput;

    move-result-object v5

    check-cast v5, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-object v8, p0, Lcom/nuance/swype/input/IME$14;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v8, v8, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 3830
    invoke-virtual {v8}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v8

    .line 3829
    invoke-virtual {v7, v5, v8}, Lcom/nuance/swype/input/OemLdbWordsManager;->AddOemLdbWordsForAlpha(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;I)V

    goto/16 :goto_1

    .line 3708
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_10
    .end packed-switch
.end method
