.class Lcom/nuance/swype/input/KeyboardViewEx$3;
.super Lcom/nuance/swype/input/KeyboardViewEx$KeyboardActionAdapter;
.source "KeyboardViewEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/KeyboardViewEx;->showPopupKeyboardHelper(Lcom/nuance/swype/input/KeyboardEx$Key;ILjava/lang/CharSequence;Lcom/nuance/swype/input/KeyboardEx$Key;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/KeyboardViewEx;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/KeyboardViewEx;)V
    .locals 0

    .prologue
    .line 3507
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardViewEx$3;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx$KeyboardActionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V
    .locals 9
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p5, "eventTime"    # J

    .prologue
    .line 3510
    iget-object v1, p0, Lcom/nuance/swype/input/KeyboardViewEx$3;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    const/4 v2, 0x0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/nuance/swype/input/KeyboardViewEx;->notifyKeyboardListenerOnKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    .line 3511
    const/16 v0, 0xfea

    if-eq p2, v0, :cond_0

    .line 3512
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$3;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ee

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3514
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$3;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_1

    .line 3515
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$3;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->dragLock(Z)V

    .line 3517
    :cond_1
    return-void
.end method

.method public onPress(I)V
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 3529
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$3;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 3530
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$3;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0, p1}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onPress(I)V

    .line 3532
    :cond_0
    return-void
.end method

.method public onRelease(I)V
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 3536
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$3;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 3537
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$3;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0, p1}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onRelease(I)V

    .line 3539
    :cond_0
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J

    .prologue
    .line 3520
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$3;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->notifyKeyboardListenerOnText(Ljava/lang/CharSequence;J)V

    .line 3521
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$3;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ee

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3522
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$3;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    .line 3523
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$3;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->dragLock(Z)V

    .line 3525
    :cond_0
    return-void
.end method

.method public onTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V
    .locals 1
    .param p1, "trace"    # Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    .prologue
    .line 3543
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$3;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 3544
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$3;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0, p1}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V

    .line 3546
    :cond_0
    return-void
.end method

.method public onWrite(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3550
    .local p1, "write":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$3;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v0, :cond_0

    .line 3551
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$3;->this$0:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardViewEx;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v0, p1}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onWrite(Ljava/util/List;)V

    .line 3553
    :cond_0
    return-void
.end method
