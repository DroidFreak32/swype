.class final Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;
.super Ljava/lang/Object;
.source "KeyboardTouchEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyPressAndHoldTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker$PressHoldKey;
    }
.end annotation


# instance fields
.field private pressHoldKeys:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker$PressHoldKey;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;)V
    .registers 3

    .prologue
    .line 626
    iput-object p1, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->this$0:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->pressHoldKeys:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;
    .param p2, "x1"    # Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$1;

    .prologue
    .line 626
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;-><init>(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;I)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;
    .param p1, "x1"    # I

    .prologue
    .line 626
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->endPressHoldTracker(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;I)Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker$PressHoldKey;
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;
    .param p1, "x1"    # I

    .prologue
    .line 626
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->getPressHoldKey(I)Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker$PressHoldKey;

    move-result-object v0

    return-object v0
.end method

.method private endPressHoldTracker(I)V
    .registers 3
    .param p1, "pointerId"    # I

    .prologue
    .line 647
    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    .line 648
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->pressHoldKeys:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 652
    :goto_8
    return-void

    .line 650
    :cond_9
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->pressHoldKeys:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_8
.end method

.method private getPressHoldKey(I)Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker$PressHoldKey;
    .registers 4
    .param p1, "pointerId"    # I

    .prologue
    .line 655
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->pressHoldKeys:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker$PressHoldKey;

    return-object v0
.end method


# virtual methods
.method public final handleTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x1

    .line 659
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 660
    .local v7, "pointerIndex":I
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 661
    .local v1, "pointerId":I
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->getPressHoldKey(I)Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker$PressHoldKey;

    move-result-object v8

    .line 664
    .local v8, "pressHoldKey":Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker$PressHoldKey;
    if-eqz v8, :cond_10a

    .line 666
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_118

    :cond_16
    :goto_16
    :pswitch_16
    move v0, v12

    .line 714
    :goto_17
    return v0

    .line 670
    :pswitch_18
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->this$0:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    # getter for: Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timerHandler:Lcom/nuance/swype/input/keyboard/TimerHandler;
    invoke-static {v0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->access$400(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;)Lcom/nuance/swype/input/keyboard/TimerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/keyboard/TimerHandler;->cancelRepeatKeyTimer()V

    .line 671
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->this$0:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    # getter for: Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->coreInput:Lcom/nuance/input/swypecorelib/XT9CoreInput;
    invoke-static {v0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->access$500(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;)Lcom/nuance/input/swypecorelib/XT9CoreInput;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->touchCancel(I)Z

    .line 672
    iget v0, v8, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker$PressHoldKey;->repeatCount:I

    if-nez v0, :cond_3f

    .line 673
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->this$0:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    # getter for: Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->touchKeyActionHandler:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;
    invoke-static {v0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->access$600(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;)Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;

    move-result-object v0

    iget v2, v8, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker$PressHoldKey;->keyIndex:I

    iget-object v3, v8, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker$PressHoldKey;->keyType:Lcom/nuance/input/swypecorelib/KeyType;

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;->touchHeldEnded(IILcom/nuance/input/swypecorelib/KeyType;)V

    .line 677
    :goto_3b
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->endPressHoldTracker(I)V

    goto :goto_16

    .line 675
    :cond_3f
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->this$0:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    # getter for: Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->touchKeyActionHandler:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;
    invoke-static {v0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->access$600(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;)Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;

    move-result-object v0

    iget v2, v8, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker$PressHoldKey;->keyIndex:I

    iget-object v3, v8, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker$PressHoldKey;->keyType:Lcom/nuance/input/swypecorelib/KeyType;

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;->touchHelpRepeatEnded(IILcom/nuance/input/swypecorelib/KeyType;)V

    goto :goto_3b

    .line 682
    :pswitch_4d
    iget v0, v8, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker$PressHoldKey;->repeatCount:I

    if-nez v0, :cond_16

    .line 683
    new-instance v10, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-direct {v10}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;-><init>()V

    .line 684
    .local v10, "xcoords":Lcom/nuance/swype/input/keyboard/ResizableFloatArray;
    new-instance v11, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-direct {v11}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;-><init>()V

    .line 685
    .local v11, "ycoords":Lcom/nuance/swype/input/keyboard/ResizableFloatArray;
    new-instance v9, Lcom/nuance/swype/input/keyboard/ResizableIntArray;

    invoke-direct {v9}, Lcom/nuance/swype/input/keyboard/ResizableIntArray;-><init>()V

    .line 687
    .local v9, "times":Lcom/nuance/swype/input/keyboard/ResizableIntArray;
    const/4 v6, 0x0

    .local v6, "h":I
    :goto_61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-ge v6, v0, :cond_85

    .line 688
    invoke-virtual {p1, v7, v6}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v0

    invoke-virtual {v10, v0}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->add(F)V

    .line 689
    invoke-virtual {p1, v7, v6}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v0

    invoke-virtual {v11, v0}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->add(F)V

    .line 690
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->this$0:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v2

    # invokes: Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->normalizeEventTime(J)I
    invoke-static {v0, v2, v3}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->access$700(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;J)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->add(I)V

    .line 687
    add-int/lit8 v6, v6, 0x1

    goto :goto_61

    .line 693
    :cond_85
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {v10, v0}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->add(F)V

    .line 694
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {v11, v0}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->add(F)V

    .line 695
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->this$0:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    # invokes: Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->normalizeEventTime(J)I
    invoke-static {v0, v2, v3}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->access$700(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;J)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->add(I)V

    .line 696
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->this$0:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    # getter for: Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->xCoordArray:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->access$800(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-virtual {v0, v10}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->add(Lcom/nuance/swype/input/keyboard/ResizableFloatArray;)V

    .line 697
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->this$0:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    # getter for: Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->yCoordArray:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->access$900(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-virtual {v0, v11}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->add(Lcom/nuance/swype/input/keyboard/ResizableFloatArray;)V

    .line 698
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->this$0:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    # getter for: Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timersArray:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->access$1000(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/keyboard/ResizableIntArray;

    invoke-virtual {v0, v9}, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->add(Lcom/nuance/swype/input/keyboard/ResizableIntArray;)V

    .line 700
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->this$0:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    # getter for: Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->touchKeyActionHandler:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;
    invoke-static {v0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->access$600(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;)Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;

    move-result-object v0

    iget v2, v8, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker$PressHoldKey;->keyIndex:I

    iget-object v3, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->this$0:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    # getter for: Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->xCoordArray:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->access$800(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-virtual {v3}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->getRawArray()[F

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->this$0:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    .line 701
    # getter for: Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->yCoordArray:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->access$900(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;

    invoke-virtual {v4}, Lcom/nuance/swype/input/keyboard/ResizableFloatArray;->getRawArray()[F

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->this$0:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    # getter for: Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->timersArray:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->access$1000(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/keyboard/ResizableIntArray;

    invoke-virtual {v5}, Lcom/nuance/swype/input/keyboard/ResizableIntArray;->getRawArray()[I

    move-result-object v5

    .line 700
    invoke-interface/range {v0 .. v5}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;->touchHeldMove(II[F[F[I)V

    goto/16 :goto_16

    .line 714
    .end local v6    # "h":I
    .end local v9    # "times":Lcom/nuance/swype/input/keyboard/ResizableIntArray;
    .end local v10    # "xcoords":Lcom/nuance/swype/input/keyboard/ResizableFloatArray;
    .end local v11    # "ycoords":Lcom/nuance/swype/input/keyboard/ResizableFloatArray;
    :cond_10a
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->pressHoldKeys:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_115

    move v0, v12

    goto/16 :goto_17

    :cond_115
    const/4 v0, 0x0

    goto/16 :goto_17

    .line 666
    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_18
        :pswitch_4d
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_18
        :pswitch_4d
        :pswitch_16
        :pswitch_16
        :pswitch_18
    .end packed-switch
.end method

.method public final startPressHoldTracker(IILcom/nuance/input/swypecorelib/KeyType;I)V
    .registers 7
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;
    .param p4, "repeatCount"    # I

    .prologue
    .line 643
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;->pressHoldKeys:Landroid/util/SparseArray;

    new-instance v1, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker$PressHoldKey;

    invoke-direct {v1, p0, p2, p4, p3}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker$PressHoldKey;-><init>(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$KeyPressAndHoldTracker;IILcom/nuance/input/swypecorelib/KeyType;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 644
    return-void
.end method
