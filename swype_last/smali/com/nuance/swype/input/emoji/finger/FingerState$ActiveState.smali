.class abstract Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;
.super Lcom/nuance/swype/input/emoji/finger/FingerState$State;
.source "FingerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/finger/FingerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ActiveState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/emoji/finger/FingerState;)V
    .registers 3

    .prologue
    .line 366
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/emoji/finger/FingerState$State;-><init>(Lcom/nuance/swype/input/emoji/finger/FingerState;Lcom/nuance/swype/input/emoji/finger/FingerState$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/emoji/finger/FingerState;Lcom/nuance/swype/input/emoji/finger/FingerState$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;
    .param p2, "x1"    # Lcom/nuance/swype/input/emoji/finger/FingerState$1;

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;-><init>(Lcom/nuance/swype/input/emoji/finger/FingerState;)V

    return-void
.end method


# virtual methods
.method protected isDown()Z
    .registers 2

    .prologue
    .line 370
    const/4 v0, 0x1

    return v0
.end method

.method public onMove(Lcom/nuance/swype/input/emoji/finger/Fingerable;FFZ)V
    .registers 9
    .param p1, "objectUnderFinger"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "isHistorical"    # Z

    .prologue
    .line 377
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # invokes: Lcom/nuance/swype/input/emoji/finger/FingerState;->updateMovementData(FFZ)V
    invoke-static {v1, p2, p3, p4}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$1500(Lcom/nuance/swype/input/emoji/finger/FingerState;FFZ)V

    .line 378
    const/4 v0, 0x1

    .line 379
    .local v0, "notifyMove":Z
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->currentObject:Lcom/nuance/swype/input/emoji/finger/Fingerable;
    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$700(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/Fingerable;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->currentObject:Lcom/nuance/swype/input/emoji/finger/Fingerable;
    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$700(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/Fingerable;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9a

    .line 381
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onMove(): old: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->currentObject:Lcom/nuance/swype/input/emoji/finger/Fingerable;
    invoke-static {v2}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$700(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/Fingerable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; captured: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    .line 382
    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->isCaptured:Z
    invoke-static {v2}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$600(Lcom/nuance/swype/input/emoji/finger/FingerState;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;->slog(Ljava/lang/Object;)V

    .line 383
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # setter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->currentObject:Lcom/nuance/swype/input/emoji/finger/Fingerable;
    invoke-static {v1, p1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$702(Lcom/nuance/swype/input/emoji/finger/FingerState;Lcom/nuance/swype/input/emoji/finger/Fingerable;)Lcom/nuance/swype/input/emoji/finger/Fingerable;

    .line 384
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->isCaptured:Z
    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$600(Lcom/nuance/swype/input/emoji/finger/FingerState;)Z

    move-result v1

    if-nez v1, :cond_9a

    .line 386
    const-string/jumbo v1, "onMove(): escape current object"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;->slog(Ljava/lang/Object;)V

    .line 389
    if-eqz p1, :cond_9a

    .line 391
    const-string/jumbo v1, "onMove(): new object"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;->slog(Ljava/lang/Object;)V

    .line 392
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # setter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->currentObject:Lcom/nuance/swype/input/emoji/finger/Fingerable;
    invoke-static {v2, p1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$702(Lcom/nuance/swype/input/emoji/finger/FingerState;Lcom/nuance/swype/input/emoji/finger/Fingerable;)Lcom/nuance/swype/input/emoji/finger/Fingerable;

    move-result-object v2

    # setter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->downObject:Lcom/nuance/swype/input/emoji/finger/Fingerable;
    invoke-static {v1, v2}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$102(Lcom/nuance/swype/input/emoji/finger/FingerState;Lcom/nuance/swype/input/emoji/finger/Fingerable;)Lcom/nuance/swype/input/emoji/finger/Fingerable;

    .line 393
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->singlePressedState:Lcom/nuance/swype/input/emoji/finger/FingerState$State;
    invoke-static {v2}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$1400(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/emoji/finger/FingerState;->changeState(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)V

    .line 394
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->listener:Lcom/nuance/swype/input/emoji/finger/FingerStateListener;
    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$000(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v1

    if-eqz v1, :cond_99

    .line 395
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->listener:Lcom/nuance/swype/input/emoji/finger/FingerStateListener;
    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$000(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->downObject:Lcom/nuance/swype/input/emoji/finger/Fingerable;
    invoke-static {v2}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$100(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/Fingerable;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-interface {v1, v2, v3}, Lcom/nuance/swype/input/emoji/finger/FingerStateListener;->onFingerPress(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;)V

    .line 397
    :cond_99
    const/4 v0, 0x0

    .line 401
    :cond_9a
    if-eqz v0, :cond_b5

    .line 402
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->listener:Lcom/nuance/swype/input/emoji/finger/FingerStateListener;
    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$000(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v1

    if-eqz v1, :cond_b5

    .line 403
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->listener:Lcom/nuance/swype/input/emoji/finger/FingerStateListener;
    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$000(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->downObject:Lcom/nuance/swype/input/emoji/finger/Fingerable;
    invoke-static {v2}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$100(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/Fingerable;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-interface {v1, v2, v3}, Lcom/nuance/swype/input/emoji/finger/FingerStateListener;->onFingerMove(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;)V

    .line 406
    :cond_b5
    return-void
.end method

.method public onUp(Lcom/nuance/swype/input/emoji/finger/Fingerable;Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "itemUnderFinger"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 410
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # invokes: Lcom/nuance/swype/input/emoji/finger/FingerState;->updateMovementData(Landroid/view/MotionEvent;Z)V
    invoke-static {v0, p2, v3}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$1600(Lcom/nuance/swype/input/emoji/finger/FingerState;Landroid/view/MotionEvent;Z)V

    .line 411
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->listener:Lcom/nuance/swype/input/emoji/finger/FingerStateListener;
    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$000(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 412
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->listener:Lcom/nuance/swype/input/emoji/finger/FingerStateListener;
    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$000(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->downObject:Lcom/nuance/swype/input/emoji/finger/Fingerable;
    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$100(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/Fingerable;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/input/emoji/finger/FingerStateListener;->onFingerRelease(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;Z)V

    .line 414
    :cond_1f
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerState;->idleState:Lcom/nuance/swype/input/emoji/finger/FingerState$State;
    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$200(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->changeState(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)V

    .line 415
    return-void
.end method
