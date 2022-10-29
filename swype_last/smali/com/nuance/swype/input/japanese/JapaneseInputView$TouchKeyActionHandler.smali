.class Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;
.super Ljava/lang/Object;
.source "JapaneseInputView.java"

# interfaces
.implements Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/japanese/JapaneseInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchKeyActionHandler"
.end annotation


# instance fields
.field final functionKey:[C

.field private final keyIndices:Landroid/util/SparseIntArray;

.field final synthetic this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

.field private touchCanceled:Z


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V
    .registers 3

    .prologue
    .line 4532
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4535
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->keyIndices:Landroid/util/SparseIntArray;

    .line 4536
    const/4 v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->functionKey:[C

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/japanese/JapaneseInputView;Lcom/nuance/swype/input/japanese/JapaneseInputView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;
    .param p2, "x1"    # Lcom/nuance/swype/input/japanese/JapaneseInputView$1;

    .prologue
    .line 4532
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;-><init>(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V

    return-void
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;

    .prologue
    .line 4532
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->processStoredTouch()Z

    move-result v0

    return v0
.end method

.method private handleTouchActionFlickr(II[F[FZ)Z
    .registers 20
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "xcoords"    # [F
    .param p4, "ycoords"    # [F
    .param p5, "canBeTraced"    # Z

    .prologue
    .line 4548
    const/4 v4, 0x0

    .line 4550
    .local v4, "handled":Z
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # getter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadFlickrInputSupported:Z
    invoke-static {v7}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$2400(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Z

    move-result v7

    if-eqz v7, :cond_13b

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v7}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isValidFlickerIndex()Z

    move-result v7

    if-eqz v7, :cond_13b

    if-nez p1, :cond_13b

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .line 4551
    invoke-virtual {v7}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadInput()Z

    move-result v7

    if-eqz v7, :cond_13b

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v7}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isTraceInputEnabled()Z

    move-result v7

    if-nez v7, :cond_2f

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # getter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseNavPopup:Landroid/widget/PopupWindow;
    invoke-static {v7}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$2500(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Landroid/widget/PopupWindow;

    move-result-object v7

    .line 4552
    invoke-virtual {v7}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_13b

    .line 4554
    :cond_2f
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v7}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v7

    const/4 v8, 0x0

    aget v8, p3, v8

    float-to-int v8, v8

    const/4 v9, 0x0

    aget v9, p4, v9

    float-to-int v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/nuance/swype/input/KeyboardEx;->getNearestKeys(II)[I

    move-result-object v5

    .line 4555
    .local v5, "keys":[I
    array-length v7, v5

    if-eqz v7, :cond_13b

    .line 4556
    move-object/from16 v0, p3

    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    aget v7, p3, v7

    const/4 v8, 0x0

    aget v8, p3, v8

    sub-float/2addr v7, v8

    float-to-int v3, v7

    .line 4557
    .local v3, "hLen":I
    move-object/from16 v0, p4

    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    aget v7, p4, v7

    const/4 v8, 0x0

    aget v8, p4, v8

    sub-float/2addr v7, v8

    float-to-int v6, v7

    .line 4565
    .local v6, "vLen":I
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget v7, v7, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_13c

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .line 4566
    # getter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->isTopKeyFlicerUp:Z
    invoke-static {v7}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$2600(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Z

    move-result v7

    if-eqz v7, :cond_13c

    move-object/from16 v0, p4

    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    aget v7, p4, v7

    .line 4567
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v8, v7

    const-wide v10, 0x3fe999999999999aL    # 0.8

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .line 4568
    # getter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->flickerMiddleKeyRadius:D
    invoke-static {v7}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$2700(Lcom/nuance/swype/input/japanese/JapaneseInputView;)D

    move-result-wide v12

    mul-double/2addr v10, v12

    cmpl-double v7, v8, v10

    if-lez v7, :cond_13c

    const/4 v7, 0x0

    aget v7, v5, v7

    const/4 v8, 0x3

    if-gt v7, v8, :cond_13c

    const/4 v7, 0x0

    aget v7, v5, v7

    if-lez v7, :cond_13c

    .line 4570
    sget-object v7, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v8, "current index is 0 when flick from 2"

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 4571
    const/4 v2, 0x0

    .line 4581
    .local v2, "dir":I
    :goto_9b
    sget-object v7, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "current index is="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " current keys[0]:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4582
    sget-object v7, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "y value of the end of path:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    array-length v11, v0

    add-int/lit8 v11, v11, -0x1

    aget v11, p4, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4584
    const/4 v7, 0x4

    if-eq v2, v7, :cond_117

    if-gez v6, :cond_117

    const/4 v7, 0x0

    aget v7, v5, v7

    const/4 v8, 0x3

    if-gt v7, v8, :cond_117

    const/4 v7, 0x0

    aget v7, v5, v7

    if-ltz v7, :cond_117

    move-object/from16 v0, p4

    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    aget v7, p4, v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_117

    .line 4586
    const/4 v2, 0x2

    .line 4587
    sget-object v7, Lcom/nuance/swype/input/japanese/JapaneseInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "current index = 2 when flick from 0"

    aput-object v10, v8, v9

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4592
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    const/4 v8, 0x1

    # setter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->isTopKeyFlicerUp:Z
    invoke-static {v7, v8}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$2602(Lcom/nuance/swype/input/japanese/JapaneseInputView;Z)Z

    .line 4596
    :cond_117
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iput v2, v7, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    .line 4597
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # getter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I
    invoke-static {v8}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$2800(Lcom/nuance/swype/input/japanese/JapaneseInputView;)I

    move-result v8

    iput v8, v7, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyIndex:I

    .line 4599
    if-nez v2, :cond_135

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # getter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->isTopKeyFlicerUp:Z
    invoke-static {v7}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$2600(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Z

    move-result v7

    if-eqz v7, :cond_135

    .line 4601
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    const/4 v8, 0x0

    # setter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->isTopKeyFlicerUp:Z
    invoke-static {v7, v8}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$2602(Lcom/nuance/swype/input/japanese/JapaneseInputView;Z)Z

    .line 4603
    :cond_135
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v7, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showNav(I)V

    .line 4605
    const/4 v4, 0x1

    .line 4609
    .end local v2    # "dir":I
    .end local v3    # "hLen":I
    .end local v5    # "keys":[I
    .end local v6    # "vLen":I
    :cond_13b
    return v4

    .line 4574
    .restart local v3    # "hLen":I
    .restart local v5    # "keys":[I
    .restart local v6    # "vLen":I
    :cond_13c
    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v7, v6, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->calculateDirectionFlickerPopup(II)I

    move-result v2

    .restart local v2    # "dir":I
    goto/16 :goto_9b
.end method

.method private processStoredTouch()Z
    .registers 4

    .prologue
    .line 4539
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->isValidBuild()Z
    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$2300(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4540
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # getter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$1700(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    move-result-object v0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->functionKey:[C

    invoke-virtual {v0, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->processStoredTouch(I[C)Z

    move-result v0

    .line 4543
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public handleKeyboardShiftState(F)V
    .registers 2
    .param p1, "x"    # F

    .prologue
    .line 4787
    return-void
.end method

.method public multiTapTimerTimeOut()V
    .registers 3

    .prologue
    .line 4780
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->onMultitapTimeout()V

    .line 4781
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInMultiTap:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$6602(Lcom/nuance/swype/input/japanese/JapaneseInputView;Z)Z

    .line 4782
    return-void
.end method

.method public multiTapTimerTimeoutActive()V
    .registers 3

    .prologue
    .line 4775
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    const/4 v1, 0x1

    # setter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInMultiTap:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$6502(Lcom/nuance/swype/input/japanese/JapaneseInputView;Z)Z

    .line 4776
    return-void
.end method

.method public quickPress(IILcom/nuance/input/swypecorelib/KeyType;)V
    .registers 9
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;

    .prologue
    const/4 v4, 0x0

    .line 4743
    invoke-virtual {p3}, Lcom/nuance/input/swypecorelib/KeyType;->isFunctionKey()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 4744
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v1, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 4745
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v2, v2, v4

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleKey(IZI)Z

    .line 4747
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_17
    return-void
.end method

.method public touchCanceled(II)V
    .registers 8
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 4695
    iput-boolean v4, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->touchCanceled:Z

    .line 4696
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->isTopKeyFlicerUp:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$2602(Lcom/nuance/swype/input/japanese/JapaneseInputView;Z)Z

    .line 4697
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->resetTrace(I)V
    invoke-static {v0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$4900(Lcom/nuance/swype/input/japanese/JapaneseInputView;I)V

    .line 4699
    if-ne p2, v3, :cond_3b

    .line 4700
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showNav(I)V

    .line 4701
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->keyIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v3, :cond_2f

    .line 4702
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # getter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-static {v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$5000(Lcom/nuance/swype/input/japanese/JapaneseInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->keyIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    invoke-static {v0, v1, v2, v4}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$5100(Lcom/nuance/swype/input/japanese/JapaneseInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 4704
    :cond_2f
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->hideKeyPreview(I)V

    .line 4705
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    sget-object v1, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    invoke-static {v0, v3, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$5200(Lcom/nuance/swype/input/japanese/JapaneseInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 4707
    :cond_3b
    return-void
.end method

.method public touchEnded(IILcom/nuance/input/swypecorelib/KeyType;ZZFFI)V
    .registers 17
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;
    .param p4, "isTraced"    # Z
    .param p5, "quickPressed"    # Z
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "eventTime"    # I

    .prologue
    .line 4638
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # getter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-static {v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$3700(Lcom/nuance/swype/input/japanese/JapaneseInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->keyIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    const/4 v3, 0x1

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$3800(Lcom/nuance/swype/input/japanese/JapaneseInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 4639
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->hideKeyPreview(I)V

    .line 4640
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    const/4 v1, -0x1

    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    invoke-static {v0, v1, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$3900(Lcom/nuance/swype/input/japanese/JapaneseInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 4641
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->touchCanceled:Z

    if-nez v0, :cond_36

    .line 4642
    if-eqz p5, :cond_44

    invoke-virtual {p3}, Lcom/nuance/input/swypecorelib/KeyType;->isFunctionKey()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 4643
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->quickPress(IILcom/nuance/input/swypecorelib/KeyType;)V

    .line 4684
    :goto_2e
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    if-eqz p4, :cond_16d

    const/4 v0, 0x2

    :goto_33
    # setter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->mLastInput:I
    invoke-static {v1, v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$4702(Lcom/nuance/swype/input/japanese/JapaneseInputView;I)I

    .line 4687
    :cond_36
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->keyIndices:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 4688
    if-eqz p4, :cond_43

    .line 4689
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->finishTrace(I)V
    invoke-static {v0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$4800(Lcom/nuance/swype/input/japanese/JapaneseInputView;I)V

    .line 4691
    :cond_43
    return-void

    .line 4645
    :cond_44
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v0, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v7

    .line 4646
    .local v7, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz p4, :cond_53

    .line 4647
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V

    goto :goto_2e

    .line 4649
    :cond_53
    invoke-virtual {p3}, Lcom/nuance/input/swypecorelib/KeyType;->isFunctionKey()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 4650
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v1, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleFunctionKey(IZI)V
    invoke-static {v0, v1, v2, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$4000(Lcom/nuance/swype/input/japanese/JapaneseInputView;IZI)V

    goto :goto_2e

    .line 4652
    :cond_66
    invoke-virtual {p3}, Lcom/nuance/input/swypecorelib/KeyType;->isString()Z

    move-result v0

    if-nez v0, :cond_76

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v0, v7}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKeycode(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v0

    const/16 v1, 0xfdf

    if-ne v0, v1, :cond_84

    .line 4653
    :cond_76
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->getText(Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;
    invoke-static {v1, v7}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$4100(Lcom/nuance/swype/input/japanese/JapaneseInputView;Lcom/nuance/swype/input/KeyboardEx$Key;)Ljava/lang/CharSequence;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->onText(Ljava/lang/CharSequence;J)V

    goto :goto_2e

    .line 4654
    :cond_84
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # getter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;
    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$4200(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 4657
    invoke-virtual {p3}, Lcom/nuance/input/swypecorelib/KeyType;->isLetter()Z

    move-result v0

    if-eqz v0, :cond_10d

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # getter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$1700(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getKeyCount()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_10d

    .line 4658
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isMultitapping()Z

    move-result v0

    if-eqz v0, :cond_ee

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_ee

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->isCommaOrPeriod(I)Z
    invoke-static {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$4300(Lcom/nuance/swype/input/japanese/JapaneseInputView;I)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 4659
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # getter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$1700(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->multiTapTimeOut()V

    .line 4660
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->onMultitapTimeout()V

    .line 4664
    :cond_df
    :goto_df
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->processStoredTouch()Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 4665
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->updateCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)I
    invoke-static {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$4500(Lcom/nuance/swype/input/japanese/JapaneseInputView;Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_2e

    .line 4661
    :cond_ee
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->isConverting()Z

    move-result v0

    if-eqz v0, :cond_df

    .line 4662
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->flushCurrWordAndClearWCL()V
    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$4400(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V

    goto :goto_df

    .line 4667
    :cond_fc
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v2, v7}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKeycode(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleCharKey(Landroid/graphics/Point;I[IJ)V

    goto/16 :goto_2e

    .line 4669
    :cond_10d
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadMultitapInputSupported()Z
    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$4600(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Z

    move-result v0

    if-eqz v0, :cond_15c

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v1, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->isCommaOrPeriod(I)Z
    invoke-static {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$4300(Lcom/nuance/swype/input/japanese/JapaneseInputView;I)Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 4670
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->processStoredTouch()Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 4671
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 4672
    .local v6, "exact":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # getter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$1700(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getExactType(Ljava/lang/StringBuilder;)V

    .line 4673
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    const/4 v1, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleCharKey(Landroid/graphics/Point;I[IJ)V

    goto/16 :goto_2e

    .line 4675
    .end local v6    # "exact":Ljava/lang/StringBuilder;
    :cond_14b
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v2, v7}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKeycode(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleCharKey(Landroid/graphics/Point;I[IJ)V

    goto/16 :goto_2e

    .line 4679
    :cond_15c
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v2, v7}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKeycode(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleCharKey(Landroid/graphics/Point;I[IJ)V

    goto/16 :goto_2e

    .line 4684
    .end local v7    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_16d
    const/4 v0, 0x1

    goto/16 :goto_33
.end method

.method public touchHeld(IILcom/nuance/input/swypecorelib/KeyType;)Z
    .registers 8
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;

    .prologue
    const/4 v3, 0x0

    .line 4711
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v1, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 4712
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # getter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;
    invoke-static {v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$5300(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v1

    if-eqz v1, :cond_4c

    if-eqz v0, :cond_4c

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v1, v1

    if-lez v1, :cond_4c

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, 0x3040

    if-le v1, v2, :cond_4c

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, 0x30fc

    if-gt v1, v2, :cond_4c

    .line 4713
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # getter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->isKeypadFlickrInputSupported:Z
    invoke-static {v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$2400(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 4714
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # setter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I
    invoke-static {v1, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$5402(Lcom/nuance/swype/input/japanese/JapaneseInputView;I)I

    .line 4715
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iput v3, v1, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyRelativeIndex:I

    .line 4716
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # getter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->mCurrentKey:I
    invoke-static {v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$5500(Lcom/nuance/swype/input/japanese/JapaneseInputView;)I

    move-result v2

    iput v2, v1, Lcom/nuance/swype/input/japanese/JapaneseInputView;->japaneseFlickerKeyIndex:I

    .line 4717
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v1, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showNav(I)V

    .line 4723
    :cond_4a
    const/4 v1, 0x1

    :goto_4b
    return v1

    .line 4720
    :cond_4c
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v2, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v2

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->onShortPress(Lcom/nuance/swype/input/KeyboardEx$Key;II)Z
    invoke-static {v1, v2, p2, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$5600(Lcom/nuance/swype/input/japanese/JapaneseInputView;Lcom/nuance/swype/input/KeyboardEx$Key;II)Z

    move-result v1

    goto :goto_4b
.end method

.method public touchHeldEnded(IILcom/nuance/input/swypecorelib/KeyType;)V
    .registers 7
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;

    .prologue
    .line 4758
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v1, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->onTouchHeldEnded(ILcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 4759
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # getter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-static {v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$5800(Lcom/nuance/swype/input/japanese/JapaneseInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    invoke-static {v0, v1, p2, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$5900(Lcom/nuance/swype/input/japanese/JapaneseInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 4760
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->hideKeyPreview(I)V

    .line 4761
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    const/4 v1, -0x1

    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    invoke-static {v0, v1, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$6000(Lcom/nuance/swype/input/japanese/JapaneseInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 4762
    return-void
.end method

.method public touchHeldMove(II[F[F[I)V
    .registers 12
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "xcoords"    # [F
    .param p4, "ycoords"    # [F
    .param p5, "times"    # [I

    .prologue
    .line 4751
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->handleTouchActionFlickr(II[F[FZ)Z

    move-result v0

    if-nez v0, :cond_11

    .line 4752
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->onTouchHeldMoved(I[F[F[I)V

    .line 4754
    :cond_11
    return-void
.end method

.method public touchHeldRepeat(IILcom/nuance/input/swypecorelib/KeyType;I)Z
    .registers 9
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;
    .param p4, "repeatCount"    # I

    .prologue
    const/4 v1, 0x0

    .line 4728
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # getter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;
    invoke-static {v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$5700(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Lcom/nuance/swype/input/IME;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 4729
    invoke-virtual {p3}, Lcom/nuance/input/swypecorelib/KeyType;->isFunctionKey()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 4730
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v2, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 4731
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v2, v2, v1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_24

    .line 4732
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v1, p4}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleBackspace(I)Z

    move-result v1

    .line 4739
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_23
    :goto_23
    return v1

    .line 4733
    .restart local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_24
    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v2, v2, v1

    invoke-static {v2}, Lcom/nuance/swype/input/KeyboardEx;->isArrowKeys(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 4734
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v3, v3, v1

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->handleFunctionKey(IZI)V
    invoke-static {v2, v3, v1, p4}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$4000(Lcom/nuance/swype/input/japanese/JapaneseInputView;IZI)V

    .line 4735
    const/4 v1, 0x1

    goto :goto_23
.end method

.method public touchHelpRepeatEnded(IILcom/nuance/input/swypecorelib/KeyType;)V
    .registers 7
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;

    .prologue
    .line 4766
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # getter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-static {v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$6100(Lcom/nuance/swype/input/japanese/JapaneseInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    invoke-static {v0, v1, p2, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$6200(Lcom/nuance/swype/input/japanese/JapaneseInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 4767
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # getter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->mIme:Lcom/nuance/swype/input/IME;
    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$6300(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Lcom/nuance/swype/input/IME;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->releaseRepeatKey()V

    .line 4769
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->hideKeyPreview(I)V

    .line 4770
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    const/4 v1, -0x1

    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    invoke-static {v0, v1, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$6400(Lcom/nuance/swype/input/japanese/JapaneseInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 4771
    return-void
.end method

.method public touchMoved(II[F[F[IZ)V
    .registers 14
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "xcoords"    # [F
    .param p4, "ycoords"    # [F
    .param p5, "times"    # [I
    .param p6, "canBeTraced"    # Z

    .prologue
    .line 4626
    if-nez p6, :cond_a

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->keyIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-eq p2, v0, :cond_2e

    .line 4627
    :cond_a
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # getter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-static {v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$3300(Lcom/nuance/swype/input/japanese/JapaneseInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->keyIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/4 v3, 0x0

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$3400(Lcom/nuance/swype/input/japanese/JapaneseInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 4628
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->hideKeyPreview(I)V

    .line 4629
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    const/4 v1, -0x1

    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    invoke-static {v0, v1, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$3500(Lcom/nuance/swype/input/japanese/JapaneseInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 4630
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->keyIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4633
    :cond_2e
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p2

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->onTouchMoved(I[F[F[IZI)V
    invoke-static/range {v0 .. v6}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$3600(Lcom/nuance/swype/input/japanese/JapaneseInputView;I[F[F[IZI)V

    .line 4634
    return-void
.end method

.method public touchStarted(IILcom/nuance/input/swypecorelib/KeyType;FFI)V
    .registers 9
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "eventTime"    # I

    .prologue
    .line 4614
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # getter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-static {v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$2900(Lcom/nuance/swype/input/japanese/JapaneseInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->pressKey([Lcom/nuance/swype/input/KeyboardEx$Key;I)V
    invoke-static {v0, v1, p2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$3000(Lcom/nuance/swype/input/japanese/JapaneseInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;I)V

    .line 4615
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    sget-object v1, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Pressed:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    invoke-static {v0, p2, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$3100(Lcom/nuance/swype/input/japanese/JapaneseInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 4616
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v0, p2, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showPreviewKey(II)V

    .line 4617
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->resetTrace(I)V
    invoke-static {v0, p1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$3200(Lcom/nuance/swype/input/japanese/JapaneseInputView;I)V

    .line 4618
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->resetFlickerIndex()V

    .line 4619
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->keyIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4620
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$TouchKeyActionHandler;->touchCanceled:Z

    .line 4622
    return-void
.end method
