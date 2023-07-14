.class public Lcom/nuance/swype/input/keyboard/TimerHandler;
.super Lcom/nuance/swype/input/keyboard/WeakReferenceHandlerWrapper;
.source "TimerHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;,
        Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;,
        Lcom/nuance/swype/input/keyboard/TimerHandler$Callbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nuance/swype/input/keyboard/WeakReferenceHandlerWrapper",
        "<",
        "Lcom/nuance/swype/input/keyboard/TimerHandler$Callbacks;",
        ">;"
    }
.end annotation


# static fields
.field private static final MSG_LONG_PRESS_KEY:I = 0x1

.field private static final MSG_MULTITAP_TIMER_TIMEOUT:I = 0x4

.field private static final MSG_QUICK_KEY_PRESS_TIMER_TIMEOUT:I = 0x3

.field private static final MSG_REPEAT_KEY:I = 0x2

.field private static final MSG_TOUCH_TIMER_TIMEOUT:I = 0x5


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/keyboard/TimerHandler$Callbacks;)V
    .locals 0
    .param p1, "ownerInstance"    # Lcom/nuance/swype/input/keyboard/TimerHandler$Callbacks;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/keyboard/WeakReferenceHandlerWrapper;-><init>(Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method private obtainKeyTimerMessageParam(IILcom/nuance/input/swypecorelib/KeyType;)Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;
    .locals 1
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nuance/swype/input/keyboard/TimerHandler;->obtainKeyTimerMessageParam(IILcom/nuance/input/swypecorelib/KeyType;Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;)Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;

    move-result-object v0

    return-object v0
.end method

.method private obtainKeyTimerMessageParam(IILcom/nuance/input/swypecorelib/KeyType;Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;)Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;
    .locals 6
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;
    .param p4, "repeatKeyRate"    # Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;

    .prologue
    .line 123
    new-instance v0, Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;-><init>(IILcom/nuance/input/swypecorelib/KeyType;Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;Lcom/nuance/swype/input/keyboard/TimerHandler$1;)V

    return-object v0
.end method


# virtual methods
.method public cancelLongPressKeyTimer()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/keyboard/TimerHandler;->removeMessages(I)V

    .line 71
    return-void
.end method

.method public cancelMultiTapTimerTimeOut()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/keyboard/TimerHandler;->removeMessages(I)V

    .line 106
    return-void
.end method

.method public cancelQuickKeyPressTimerTimeOut()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/keyboard/TimerHandler;->removeMessages(I)V

    .line 89
    return-void
.end method

.method public cancelRepeatKeyTimer()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/keyboard/TimerHandler;->removeMessages(I)V

    .line 80
    return-void
.end method

.method public cancelTouchTimerTimeOut()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/keyboard/TimerHandler;->removeMessages(I)V

    .line 115
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/nuance/swype/input/keyboard/TimerHandler;->getOwnerInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/keyboard/TimerHandler$Callbacks;

    .line 32
    .local v0, "callbacks":Lcom/nuance/swype/input/keyboard/TimerHandler$Callbacks;
    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 36
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 38
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;

    .line 39
    .local v1, "param":Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;
    iget v2, v1, Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;->pointerId:I

    iget v3, v1, Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;->keyIndex:I

    iget-object v4, v1, Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;->keyType:Lcom/nuance/input/swypecorelib/KeyType;

    invoke-interface {v0, v2, v3, v4}, Lcom/nuance/swype/input/keyboard/TimerHandler$Callbacks;->longPressKey(IILcom/nuance/input/swypecorelib/KeyType;)V

    goto :goto_0

    .line 44
    .end local v1    # "param":Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;

    .line 45
    .restart local v1    # "param":Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;
    iget v2, v1, Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;->pointerId:I

    iget v3, v1, Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;->keyIndex:I

    iget-object v4, v1, Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;->keyType:Lcom/nuance/input/swypecorelib/KeyType;

    iget-object v5, v1, Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;->repeatKeyRate:Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/nuance/swype/input/keyboard/TimerHandler$Callbacks;->repeatedKey(IILcom/nuance/input/swypecorelib/KeyType;Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;)V

    goto :goto_0

    .line 50
    .end local v1    # "param":Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;

    .line 51
    .restart local v1    # "param":Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;
    iget v2, v1, Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;->pointerId:I

    iget v3, v1, Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;->keyIndex:I

    iget-object v4, v1, Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;->keyType:Lcom/nuance/input/swypecorelib/KeyType;

    invoke-interface {v0, v2, v3, v4}, Lcom/nuance/swype/input/keyboard/TimerHandler$Callbacks;->quickPressKeyTimeOut(IILcom/nuance/input/swypecorelib/KeyType;)V

    goto :goto_0

    .line 56
    .end local v1    # "param":Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;
    :pswitch_3
    invoke-interface {v0}, Lcom/nuance/swype/input/keyboard/TimerHandler$Callbacks;->multiTapTimerTimeOut()V

    goto :goto_0

    .line 60
    :pswitch_4
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/nuance/swype/input/keyboard/TimerHandler$Callbacks;->touchTimerTimeOut(I)V

    goto :goto_0

    .line 36
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

.method public isMultiTapTimerTimeOutActive()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/keyboard/TimerHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public isQuickKeyPressTimerTimeOutActive()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/keyboard/TimerHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public startLongPressKeyTimer(IILcom/nuance/input/swypecorelib/KeyType;I)V
    .locals 4
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;
    .param p4, "delay"    # I

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/nuance/swype/input/keyboard/TimerHandler;->cancelLongPressKeyTimer()V

    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/keyboard/TimerHandler;->obtainKeyTimerMessageParam(IILcom/nuance/input/swypecorelib/KeyType;)Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/keyboard/TimerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p4

    invoke-virtual {p0, v0, v2, v3}, Lcom/nuance/swype/input/keyboard/TimerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 67
    return-void
.end method

.method public startMultiTapTimerTimeOut(I)V
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/nuance/swype/input/keyboard/TimerHandler;->cancelMultiTapTimerTimeOut()V

    .line 97
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/keyboard/TimerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/nuance/swype/input/keyboard/TimerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 98
    return-void
.end method

.method public startQuickKeyPressTimerTimeOut(IILcom/nuance/input/swypecorelib/KeyType;I)V
    .locals 4
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;
    .param p4, "timeout"    # I

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/nuance/swype/input/keyboard/TimerHandler;->cancelQuickKeyPressTimerTimeOut()V

    .line 84
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/keyboard/TimerHandler;->obtainKeyTimerMessageParam(IILcom/nuance/input/swypecorelib/KeyType;)Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/keyboard/TimerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p4

    invoke-virtual {p0, v0, v2, v3}, Lcom/nuance/swype/input/keyboard/TimerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 85
    return-void
.end method

.method public startRepeatKeyTimer(IILcom/nuance/input/swypecorelib/KeyType;Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;I)V
    .locals 4
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;
    .param p4, "repeatKeyRate"    # Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;
    .param p5, "delay"    # I

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/nuance/swype/input/keyboard/TimerHandler;->cancelRepeatKeyTimer()V

    .line 75
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/keyboard/TimerHandler;->obtainKeyTimerMessageParam(IILcom/nuance/input/swypecorelib/KeyType;Lcom/nuance/swype/input/keyboard/TimerHandler$RepeatKeyRate;)Lcom/nuance/swype/input/keyboard/TimerHandler$KeyTimerMessageParam;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/keyboard/TimerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p5

    invoke-virtual {p0, v0, v2, v3}, Lcom/nuance/swype/input/keyboard/TimerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 76
    return-void
.end method

.method public startTouchTimerTimeOut(I)V
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/nuance/swype/input/keyboard/TimerHandler;->cancelTouchTimerTimeOut()V

    .line 110
    const/4 v0, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/keyboard/TimerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/nuance/swype/input/keyboard/TimerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 111
    return-void
.end method
