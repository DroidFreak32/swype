.class Lcom/nuance/swype/input/IME$13;
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

    .prologue
    .line 3398
    iput-object p1, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3402
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 3535
    :pswitch_0
    iget-object v5, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 3536
    iget-object v5, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v5, v5, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v5, p1}, Lcom/nuance/swype/input/IMEHandlerManager;->handleMessage(Landroid/os/Message;)Z

    .line 3540
    :cond_0
    :goto_0
    return v4

    .line 3404
    :pswitch_1
    iget-object v6, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v6}, Lcom/nuance/swype/input/IME;->updateFullscreenMode()V

    .line 3405
    iget-object v6, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v6, v4}, Lcom/nuance/swype/input/IME;->switchInputView(Z)V

    :cond_1
    :goto_1
    move v4, v5

    .line 3540
    goto :goto_0

    .line 3408
    :pswitch_2
    iget-object v6, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v6, v4}, Lcom/nuance/swype/input/IME;->switchInputView(Z)V

    .line 3409
    iget-object v6, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v6, v4}, Lcom/nuance/swype/input/IME;->access$1002(Lcom/nuance/swype/input/IME;Z)Z

    goto :goto_1

    .line 3412
    :pswitch_3
    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->refreshInputViewLanguage()V

    goto :goto_1

    .line 3416
    :pswitch_4
    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->launchSettings()V

    goto :goto_1

    .line 3420
    :pswitch_5
    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3421
    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEHandlerManager;->getIMEInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEHandler;->switchToHandwritingModeCJK()V

    goto :goto_1

    .line 3423
    :cond_2
    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->toggleHwrAndKeyboardInputMode()V

    goto :goto_1

    .line 3435
    :pswitch_6
    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v6, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v6, v6, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v6, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v6, v6, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_4

    .line 3437
    :cond_3
    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IME;->access$200(Lcom/nuance/swype/input/IME;)Landroid/os/Handler;

    move-result-object v4

    const/16 v6, 0x6d

    const-wide/16 v8, 0x64

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 3439
    :cond_4
    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IME;->access$1100(Lcom/nuance/swype/input/IME;)V

    goto :goto_1

    .line 3444
    :pswitch_7
    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    iput-boolean v5, v4, Lcom/nuance/swype/input/IME;->recaptureWhenSwitching:Z

    .line 3445
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/nuance/swype/input/LangSwitchAction;

    .line 3446
    iget-object v6, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4, v6}, Lcom/nuance/swype/input/LangSwitchAction;->execute(Lcom/nuance/swype/input/IME;)V

    goto :goto_1

    .line 3449
    :pswitch_8
    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IME;->access$1200(Lcom/nuance/swype/input/IME;)V

    goto :goto_1

    .line 3453
    :pswitch_9
    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 3454
    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v4, v4, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEHandlerManager;->getIMEInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v6

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    invoke-virtual {v6, v4}, Lcom/nuance/swype/input/IMEHandler;->handleNewWordsDelayScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V

    goto/16 :goto_1

    .line 3458
    :cond_5
    iget-object v6, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    invoke-static {v6, v4}, Lcom/nuance/swype/input/IME;->access$1300(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V

    goto/16 :goto_1

    .line 3462
    :pswitch_a
    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3463
    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    sget-object v6, Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;->SMSCALLLOG:Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;

    invoke-virtual {v4, v6}, Lcom/nuance/swype/input/IMEApplication;->startSmsCalllogScraperService(Lcom/nuance/sns/sms/SMSCalllogScraper$TARGET;)V

    goto/16 :goto_1

    .line 3467
    :pswitch_b
    iget-object v6, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v6}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3468
    iget-object v6, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v6}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 3469
    .local v1, "inputview":Lcom/nuance/swype/input/InputView;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->isShown()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3470
    iget-object v6, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v6, v4}, Lcom/nuance/swype/input/IME;->setCandidatesViewShown(Z)V

    goto/16 :goto_1

    .line 3475
    .end local v1    # "inputview":Lcom/nuance/swype/input/InputView;
    :pswitch_c
    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3476
    iget-object v6, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/KeyEvent;

    invoke-virtual {v6, v7, v8, v4}, Lcom/nuance/swype/input/IME;->onKeyDownInner(IILandroid/view/KeyEvent;)V

    goto/16 :goto_1

    .line 3480
    :pswitch_d
    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3481
    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 3482
    .restart local v1    # "inputview":Lcom/nuance/swype/input/InputView;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->isShown()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3483
    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/IME;->setCandidatesViewShown(Z)V

    goto/16 :goto_1

    .line 3489
    .end local v1    # "inputview":Lcom/nuance/swype/input/InputView;
    :pswitch_e
    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3490
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 3495
    .local v3, "languageId":I
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    const-class v6, Lcom/nuance/swype/connect/LanguageUpdateWithTOS;

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3497
    .local v2, "intent":Landroid/content/Intent;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-ge v4, v6, :cond_6

    .line 3498
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3502
    :goto_2
    const-string v4, "language.id"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3503
    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4, v2}, Lcom/nuance/swype/input/IME;->startActivity(Landroid/content/Intent;)V

    .line 3504
    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->hideWindow()V

    goto/16 :goto_1

    .line 3500
    :cond_6
    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IME;->access$700(Lcom/nuance/swype/input/IME;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 3507
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "languageId":I
    :pswitch_f
    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3508
    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v6, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v6, v6, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-static {v4, v6}, Lcom/nuance/swype/input/IME;->access$1400(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/InputMethods$Language;)V

    goto/16 :goto_1

    .line 3515
    :pswitch_10
    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->releaseEmojiInputViewController()V

    .line 3516
    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 3517
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_1

    .line 3518
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->dismissPopupKeyboard()V

    .line 3519
    sget-object v4, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 3520
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->clearSuggestions()V

    .line 3521
    sget-object v4, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/InputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 3522
    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->setModeForInputContainerView()V

    .line 3523
    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/InputView;->handlePossibleActionAfterUniversalKeyboardResize(Z)V

    goto/16 :goto_1

    .line 3528
    .end local v0    # "inputView":Lcom/nuance/swype/input/InputView;
    :pswitch_11
    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IME;->access$1500(Lcom/nuance/swype/input/IME;)V

    goto/16 :goto_1

    .line 3531
    :pswitch_12
    iget-object v4, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->showEmojiInputView()V

    goto/16 :goto_1

    .line 3402
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
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method
