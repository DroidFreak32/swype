.class Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;
.super Ljava/lang/Object;
.source "KoreanInputView.java"

# interfaces
.implements Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/korean/KoreanInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchKeyActionHandler"
.end annotation


# instance fields
.field final functionKey:[C

.field private final keyIndices:Landroid/util/SparseIntArray;

.field private multiTapKeyIndex:I

.field final synthetic this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

.field touchCanceled:Z


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/korean/KoreanInputView;)V
    .registers 3

    .prologue
    .line 2459
    iput-object p1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2461
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->keyIndices:Landroid/util/SparseIntArray;

    .line 2462
    const/4 v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->functionKey:[C

    .line 2463
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->multiTapKeyIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/korean/KoreanInputView;Lcom/nuance/swype/input/korean/KoreanInputView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView;
    .param p2, "x1"    # Lcom/nuance/swype/input/korean/KoreanInputView$1;

    .prologue
    .line 2459
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;-><init>(Lcom/nuance/swype/input/korean/KoreanInputView;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;

    .prologue
    .line 2459
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->processStoredTouch()Z

    move-result v0

    return v0
.end method

.method private processStoredTouch()Z
    .registers 4

    .prologue
    .line 2466
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    # getter for: Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;
    invoke-static {v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$1300(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    move-result-object v0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->functionKey:[C

    invoke-virtual {v0, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->processStoredTouch(I[C)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public handleKeyboardShiftState(F)V
    .registers 2
    .param p1, "x"    # F

    .prologue
    .line 2636
    return-void
.end method

.method public multiTapTimerTimeOut()V
    .registers 3

    .prologue
    .line 2628
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->onMultitapTimeout()V

    .line 2629
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/swype/input/korean/KoreanInputView;->mInMultiTap:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$5602(Lcom/nuance/swype/input/korean/KoreanInputView;Z)Z

    .line 2630
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->multiTapKeyIndex:I

    .line 2631
    return-void
.end method

.method public multiTapTimerTimeoutActive()V
    .registers 3

    .prologue
    .line 2623
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    const/4 v1, 0x1

    # setter for: Lcom/nuance/swype/input/korean/KoreanInputView;->mInMultiTap:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$5502(Lcom/nuance/swype/input/korean/KoreanInputView;Z)Z

    .line 2624
    return-void
.end method

.method public quickPress(IILcom/nuance/input/swypecorelib/KeyType;)V
    .registers 9
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;

    .prologue
    const/4 v4, 0x0

    .line 2592
    invoke-virtual {p3}, Lcom/nuance/input/swypecorelib/KeyType;->isFunctionKey()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2593
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v1, p2}, Lcom/nuance/swype/input/korean/KoreanInputView;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 2594
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v2, v2, v4

    const/4 v3, 0x1

    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView;->handleFunctionKey(IZI)V
    invoke-static {v1, v2, v3, v4}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$3600(Lcom/nuance/swype/input/korean/KoreanInputView;IZI)V

    .line 2596
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

    .line 2559
    iput-boolean v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->touchCanceled:Z

    .line 2560
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView;->resetTrace(I)V
    invoke-static {v0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$4100(Lcom/nuance/swype/input/korean/KoreanInputView;I)V

    .line 2561
    if-ne p2, v3, :cond_30

    .line 2562
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->keyIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v3, :cond_24

    .line 2563
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    # getter for: Lcom/nuance/swype/input/korean/KoreanInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$4200(Lcom/nuance/swype/input/korean/KoreanInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->keyIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    invoke-static {v0, v1, v2, v4}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$4300(Lcom/nuance/swype/input/korean/KoreanInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 2565
    :cond_24
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->hideKeyPreview(I)V

    .line 2566
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    sget-object v1, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    invoke-static {v0, v3, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$4400(Lcom/nuance/swype/input/korean/KoreanInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 2568
    :cond_30
    return-void
.end method

.method public touchEnded(IILcom/nuance/input/swypecorelib/KeyType;ZZFFI)V
    .registers 16
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;
    .param p4, "isTraced"    # Z
    .param p5, "quickPressed"    # Z
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "eventTime"    # I

    .prologue
    .line 2493
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    # getter for: Lcom/nuance/swype/input/korean/KoreanInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$3200(Lcom/nuance/swype/input/korean/KoreanInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->keyIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    const/4 v3, 0x1

    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$3300(Lcom/nuance/swype/input/korean/KoreanInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 2494
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->hideKeyPreview(I)V

    .line 2495
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    const/4 v1, -0x1

    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    invoke-static {v0, v1, v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$3400(Lcom/nuance/swype/input/korean/KoreanInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 2497
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->touchCanceled:Z

    if-nez v0, :cond_36

    .line 2498
    if-eqz p5, :cond_44

    invoke-virtual {p3}, Lcom/nuance/input/swypecorelib/KeyType;->isFunctionKey()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 2499
    invoke-virtual {p0, p1, p2, p3}, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->quickPress(IILcom/nuance/input/swypecorelib/KeyType;)V

    .line 2547
    .end local p2    # "keyIndex":I
    :goto_2e
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    if-eqz p4, :cond_155

    const/4 v0, 0x2

    :goto_33
    # setter for: Lcom/nuance/swype/input/korean/KoreanInputView;->mLastInput:I
    invoke-static {v1, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$3902(Lcom/nuance/swype/input/korean/KoreanInputView;I)I

    .line 2550
    :cond_36
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->keyIndices:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2552
    if-eqz p4, :cond_43

    .line 2553
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView;->finishTrace(I)V
    invoke-static {v0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$4000(Lcom/nuance/swype/input/korean/KoreanInputView;I)V

    .line 2555
    :cond_43
    return-void

    .line 2501
    .restart local p2    # "keyIndex":I
    :cond_44
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v0, p2}, Lcom/nuance/swype/input/korean/KoreanInputView;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v6

    .line 2502
    .local v6, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz p4, :cond_71

    .line 2503
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V

    .line 2504
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    # getter for: Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;
    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$1300(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView;->updateUIShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V
    invoke-static {v0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$3500(Lcom/nuance/swype/input/korean/KoreanInputView;Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 2544
    .end local p2    # "keyIndex":I
    :cond_61
    :goto_61
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    # getter for: Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;
    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$1300(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView;->updateUIShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V
    invoke-static {v0, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$3500(Lcom/nuance/swype/input/korean/KoreanInputView;Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    goto :goto_2e

    .line 2506
    .restart local p2    # "keyIndex":I
    :cond_71
    invoke-virtual {p3}, Lcom/nuance/input/swypecorelib/KeyType;->isFunctionKey()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 2508
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isMultitapping()Z

    move-result v0

    if-eqz v0, :cond_88

    iget-object v0, v6, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_aa

    .line 2509
    :cond_88
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    iget-object v1, v6, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView;->handleFunctionKey(IZI)V
    invoke-static {v0, v1, v2, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$3600(Lcom/nuance/swype/input/korean/KoreanInputView;IZI)V

    .line 2510
    iget-object v0, v6, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Lcom/nuance/swype/input/KeyboardEx;->isShiftKey(I)Z

    move-result v0

    if-nez v0, :cond_aa

    .line 2511
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    # getter for: Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;
    invoke-static {v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$1300(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 2514
    :cond_aa
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isMultitapping()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 2515
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    # getter for: Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;
    invoke-static {v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$1300(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->multiTapTimeOut()V

    .line 2516
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/korean/KoreanInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->multiTapTimerTimeOut()V

    goto :goto_61

    .line 2519
    :cond_c3
    invoke-virtual {p3}, Lcom/nuance/input/swypecorelib/KeyType;->isString()Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 2520
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isMultitapping()Z

    move-result v0

    if-eqz v0, :cond_da

    .line 2521
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    # getter for: Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;
    invoke-static {v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$1300(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->multiTapTimeOut()V

    .line 2523
    :cond_da
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    iget-object v1, v6, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->onText(Ljava/lang/CharSequence;J)V

    .line 2541
    .end local p2    # "keyIndex":I
    :goto_e3
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    # getter for: Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;
    invoke-static {v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$1300(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    goto/16 :goto_61

    .line 2525
    .restart local p2    # "keyIndex":I
    :cond_f0
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isMultitapping()Z

    move-result v0

    if-eqz v0, :cond_117

    .line 2528
    iget v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->multiTapKeyIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_117

    iget v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->multiTapKeyIndex:I

    if-eq v0, p2, :cond_117

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    # getter for: Lcom/nuance/swype/input/korean/KoreanInputView;->mTextInputPredictionOn:Z
    invoke-static {v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$3700(Lcom/nuance/swype/input/korean/KoreanInputView;)Z

    move-result v0

    if-nez v0, :cond_117

    .line 2529
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    # getter for: Lcom/nuance/swype/input/korean/KoreanInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;
    invoke-static {v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$1300(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->multiTapTimeOut()V

    .line 2530
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->onMultitapTimeout()V

    .line 2533
    :cond_117
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    # getter for: Lcom/nuance/swype/input/korean/KoreanInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;
    invoke-static {v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$3800(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_143

    .line 2534
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    new-instance v1, Landroid/graphics/Point;

    float-to-int v2, p6

    float-to-int v3, p7

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v2, v6}, Lcom/nuance/swype/input/korean/KoreanInputView;->getKeycode(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleCharKey(Landroid/graphics/Point;I[IJ)V

    .line 2539
    :goto_138
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->isMultitapping()Z

    move-result v0

    if-eqz v0, :cond_153

    .end local p2    # "keyIndex":I
    :goto_140
    iput p2, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->multiTapKeyIndex:I

    goto :goto_e3

    .line 2536
    .restart local p2    # "keyIndex":I
    :cond_143
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v2, v6}, Lcom/nuance/swype/input/korean/KoreanInputView;->getKeycode(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleCharKey(Landroid/graphics/Point;I[IJ)V

    goto :goto_138

    .line 2539
    :cond_153
    const/4 p2, -0x1

    goto :goto_140

    .line 2547
    .end local v6    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local p2    # "keyIndex":I
    :cond_155
    const/4 v0, 0x1

    goto/16 :goto_33
.end method

.method public touchHeld(IILcom/nuance/input/swypecorelib/KeyType;)Z
    .registers 6
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;

    .prologue
    .line 2572
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v1, p2}, Lcom/nuance/swype/input/korean/KoreanInputView;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView;->onShortPress(Lcom/nuance/swype/input/KeyboardEx$Key;II)Z
    invoke-static {v0, v1, p2, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$4500(Lcom/nuance/swype/input/korean/KoreanInputView;Lcom/nuance/swype/input/KeyboardEx$Key;II)Z

    move-result v0

    return v0
.end method

.method public touchHeldEnded(IILcom/nuance/input/swypecorelib/KeyType;)V
    .registers 8
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;

    .prologue
    const/4 v3, -0x1

    .line 2604
    if-eq p2, v3, :cond_1a

    .line 2605
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v1, p2}, Lcom/nuance/swype/input/korean/KoreanInputView;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView;->onTouchHeldEnded(ILcom/nuance/swype/input/KeyboardEx$Key;)V
    invoke-static {v0, p1, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$4700(Lcom/nuance/swype/input/korean/KoreanInputView;ILcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 2606
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    # getter for: Lcom/nuance/swype/input/korean/KoreanInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$4800(Lcom/nuance/swype/input/korean/KoreanInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    invoke-static {v0, v1, p2, v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$4900(Lcom/nuance/swype/input/korean/KoreanInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 2608
    :cond_1a
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->hideKeyPreview(I)V

    .line 2609
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    sget-object v1, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    invoke-static {v0, v3, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$5000(Lcom/nuance/swype/input/korean/KoreanInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 2610
    return-void
.end method

.method public touchHeldMove(II[F[F[I)V
    .registers 7
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "xcoords"    # [F
    .param p4, "ycoords"    # [F
    .param p5, "times"    # [I

    .prologue
    .line 2599
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/nuance/swype/input/korean/KoreanInputView;->onTouchHeldMoved(I[F[F[I)V

    .line 2600
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

    .line 2577
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    # getter for: Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;
    invoke-static {v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$4600(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/swype/input/IME;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 2578
    invoke-virtual {p3}, Lcom/nuance/input/swypecorelib/KeyType;->isFunctionKey()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2579
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v2, p2}, Lcom/nuance/swype/input/korean/KoreanInputView;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 2580
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v2, v2, v1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_24

    .line 2581
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v1, p4}, Lcom/nuance/swype/input/korean/KoreanInputView;->handleBackspace(I)Z

    move-result v1

    .line 2588
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_23
    :goto_23
    return v1

    .line 2582
    .restart local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_24
    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v2, v2, v1

    invoke-static {v2}, Lcom/nuance/swype/input/KeyboardEx;->isArrowKeys(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2583
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    iget-object v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v3, v3, v1

    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView;->handleFunctionKey(IZI)V
    invoke-static {v2, v3, v1, p4}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$3600(Lcom/nuance/swype/input/korean/KoreanInputView;IZI)V

    .line 2584
    const/4 v1, 0x1

    goto :goto_23
.end method

.method public touchHelpRepeatEnded(IILcom/nuance/input/swypecorelib/KeyType;)V
    .registers 7
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;

    .prologue
    .line 2614
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    # getter for: Lcom/nuance/swype/input/korean/KoreanInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$5100(Lcom/nuance/swype/input/korean/KoreanInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    invoke-static {v0, v1, p2, v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$5200(Lcom/nuance/swype/input/korean/KoreanInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 2615
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    # getter for: Lcom/nuance/swype/input/korean/KoreanInputView;->mIme:Lcom/nuance/swype/input/IME;
    invoke-static {v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$5300(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/swype/input/IME;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->releaseRepeatKey()V

    .line 2617
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->hideKeyPreview(I)V

    .line 2618
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    const/4 v1, -0x1

    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    invoke-static {v0, v1, v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$5400(Lcom/nuance/swype/input/korean/KoreanInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 2619
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
    .line 2481
    if-nez p6, :cond_a

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->keyIndices:Landroid/util/SparseIntArray;

    .line 2482
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-eq p2, v0, :cond_2e

    .line 2483
    :cond_a
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    # getter for: Lcom/nuance/swype/input/korean/KoreanInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$2800(Lcom/nuance/swype/input/korean/KoreanInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->keyIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/4 v3, 0x0

    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$2900(Lcom/nuance/swype/input/korean/KoreanInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 2484
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->hideKeyPreview(I)V

    .line 2485
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    const/4 v1, -0x1

    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    invoke-static {v0, v1, v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$3000(Lcom/nuance/swype/input/korean/KoreanInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 2486
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->keyIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2488
    :cond_2e
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p2

    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView;->onTouchMoved(I[F[F[IZI)V
    invoke-static/range {v0 .. v6}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$3100(Lcom/nuance/swype/input/korean/KoreanInputView;I[F[F[IZI)V

    .line 2489
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
    .line 2471
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    # getter for: Lcom/nuance/swype/input/korean/KoreanInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$2400(Lcom/nuance/swype/input/korean/KoreanInputView;)[Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView;->pressKey([Lcom/nuance/swype/input/KeyboardEx$Key;I)V
    invoke-static {v0, v1, p2}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$2500(Lcom/nuance/swype/input/korean/KoreanInputView;[Lcom/nuance/swype/input/KeyboardEx$Key;I)V

    .line 2472
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    sget-object v1, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Pressed:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I
    invoke-static {v0, p2, v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$2600(Lcom/nuance/swype/input/korean/KoreanInputView;ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 2473
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v0, p2, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->showPreviewKey(II)V

    .line 2474
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView;->resetTrace(I)V
    invoke-static {v0, p1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$2700(Lcom/nuance/swype/input/korean/KoreanInputView;I)V

    .line 2475
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->keyIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$TouchKeyActionHandler;->touchCanceled:Z

    .line 2477
    return-void
.end method
