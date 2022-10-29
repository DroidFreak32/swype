.class Lcom/nuance/swype/input/AlphaInputView$3;
.super Ljava/lang/Object;
.source "AlphaInputView.java"

# interfaces
.implements Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/AlphaInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field canceledKeys:Landroid/util/SparseBooleanArray;

.field functionKey:[C

.field final keyDownIndices:Landroid/util/SparseIntArray;

.field final synthetic this$0:Lcom/nuance/swype/input/AlphaInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/AlphaInputView;)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/AlphaInputView;

    .prologue
    .line 4507
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4508
    const/4 v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->functionKey:[C

    .line 4509
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->canceledKeys:Landroid/util/SparseBooleanArray;

    .line 4510
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->keyDownIndices:Landroid/util/SparseIntArray;

    return-void
.end method

.method private isKeyCanceled(I)Z
    .registers 4
    .param p1, "pointerId"    # I

    .prologue
    .line 4517
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->canceledKeys:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method private setCancelKey(IZ)V
    .registers 4
    .param p1, "pointerId"    # I
    .param p2, "canceled"    # Z

    .prologue
    .line 4513
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->canceledKeys:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4514
    return-void
.end method


# virtual methods
.method getCaseLetter(CLcom/nuance/swype/input/KeyboardEx$Key;)C
    .registers 4
    .param p1, "letter"    # C
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 4521
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isLatinLanguage()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4522
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaInputView;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    .line 4524
    .end local p1    # "letter":C
    :cond_16
    :goto_16
    return p1

    .restart local p1    # "letter":C
    :cond_17
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaInputView;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v0, p2}, Lcom/nuance/swype/input/AlphaInputView;->getKeycode(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v0

    int-to-char p1, v0

    goto :goto_16
.end method

.method public handleKeyboardShiftState(F)V
    .registers 3
    .param p1, "y"    # F

    .prologue
    .line 4763
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/AlphaInputView;->movePointer(F)V

    .line 4764
    return-void
.end method

.method public multiTapTimerTimeOut()V
    .registers 3

    .prologue
    .line 4758
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mInMultiTap:Z

    .line 4759
    return-void
.end method

.method public multiTapTimerTimeoutActive()V
    .registers 3

    .prologue
    .line 4768
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mInMultiTap:Z

    .line 4769
    return-void
.end method

.method public touchCanceled(II)V
    .registers 7
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 4687
    invoke-direct {p0, p1, v3}, Lcom/nuance/swype/input/AlphaInputView$3;->setCancelKey(IZ)V

    .line 4688
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/AlphaInputView;->resetTrace(I)V

    .line 4689
    if-ne p2, v2, :cond_29

    .line 4690
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->keyDownIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    .line 4691
    if-eq p2, v2, :cond_1d

    .line 4692
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/AlphaInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {v0, v1, p2, v3}, Lcom/nuance/swype/input/AlphaInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 4694
    :cond_1d
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/AlphaInputView;->hideKeyPreview(I)V

    .line 4695
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    sget-object v1, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    invoke-virtual {v0, v2, v1}, Lcom/nuance/swype/input/AlphaInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 4697
    :cond_29
    return-void
.end method

.method public touchEnded(IILcom/nuance/input/swypecorelib/KeyType;ZZFFI)V
    .registers 23
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;
    .param p4, "isTraced"    # Z
    .param p5, "quickPrssed"    # Z
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "eventTime"    # I

    .prologue
    .line 4554
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView$3;->isKeyCanceled(I)Z

    move-result v13

    .line 4556
    .local v13, "touchCanceled":Z
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/nuance/swype/input/AlphaInputView$3;->setCancelKey(IZ)V

    .line 4558
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v3, v3, Lcom/nuance/swype/input/AlphaInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView$3;->keyDownIndices:Landroid/util/SparseIntArray;

    move/from16 v0, p2

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/swype/input/AlphaInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 4559
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/AlphaInputView;->hideKeyPreview(I)V

    .line 4560
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    const/4 v3, -0x1

    sget-object v4, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/AlphaInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 4562
    if-nez v13, :cond_9d

    .line 4563
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/AlphaInputView;->wordRecaptureWrapper:Lcom/nuance/swype/input/keyboard/WordRecaptureWrapper;

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v3, v3, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getRecaptureHandler()Lcom/nuance/swype/input/RecaptureHandler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/keyboard/WordRecaptureWrapper;->removePendingRecaptureMessage(Lcom/nuance/swype/input/RecaptureHandler;)V

    .line 4565
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/AlphaInputView;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v11

    .line 4567
    .local v11, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz p4, :cond_b9

    .line 4568
    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "> handling trace"

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4570
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v2, v3, :cond_75

    .line 4571
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 4572
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    # getter for: Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    invoke-static {v2}, Lcom/nuance/swype/input/AlphaInputView;->access$1000(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearAllKeys()Z

    .line 4573
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    const/4 v3, 0x4

    iput v3, v2, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    .line 4576
    :cond_75
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget v3, v3, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    const/4 v4, 0x1

    move-object/from16 v0, p3

    # invokes: Lcom/nuance/swype/input/AlphaInputView;->autoSpace(Lcom/nuance/input/swypecorelib/KeyType;IZ)V
    invoke-static {v2, v0, v3, v4}, Lcom/nuance/swype/input/AlphaInputView;->access$2200(Lcom/nuance/swype/input/AlphaInputView;Lcom/nuance/input/swypecorelib/KeyType;IZ)V

    .line 4578
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    # getter for: Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    invoke-static {v2}, Lcom/nuance/swype/input/AlphaInputView;->access$1000(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v2

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView$3;->functionKey:[C

    invoke-virtual {v2, v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->processStoredTouch(I[C)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 4579
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/AlphaInputView;->handleTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V

    .line 4673
    :cond_96
    :goto_96
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    if-eqz p4, :cond_2c4

    const/4 v2, 0x2

    :goto_9b
    iput v2, v3, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    .line 4676
    .end local v11    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_9d
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Lcom/nuance/swype/input/AlphaInputView;->onTouchEnded(IIFFI)V

    .line 4678
    if-eqz p4, :cond_b2

    .line 4679
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/AlphaInputView;->finishTrace(I)V

    .line 4682
    :cond_b2
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->keyDownIndices:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 4683
    return-void

    .line 4582
    .restart local v11    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_b9
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/input/swypecorelib/KeyType;->isLetter()Z

    move-result v2

    if-eqz v2, :cond_194

    iget-object v2, v11, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-char v2, v2

    invoke-virtual {p0, v2, v11}, Lcom/nuance/swype/input/AlphaInputView$3;->getCaseLetter(CLcom/nuance/swype/input/KeyboardEx$Key;)C

    move-result v8

    .line 4583
    .local v8, "charKey":C
    :goto_c9
    const/4 v10, 0x0

    .line 4585
    .local v10, "isFunctionKey":Z
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->isNonSpacedLanguage()Z

    move-result v2

    if-eqz v2, :cond_fb

    .line 4586
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/input/swypecorelib/KeyType;->isFunctionKey()Z

    move-result v2

    if-eqz v2, :cond_e3

    iget-object v2, v11, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/16 v3, 0x20

    if-ne v2, v3, :cond_fb

    .line 4587
    :cond_e3
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v12

    .line 4588
    .local v12, "savedShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/AlphaInputView;->clearSelectionKeys()Z

    move-result v2

    if-eqz v2, :cond_f6

    .line 4589
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 4591
    :cond_f6
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v2, v12}, Lcom/nuance/swype/input/AlphaInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 4597
    .end local v12    # "savedShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    :cond_fb
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/input/swypecorelib/KeyType;->isFunctionKey()Z

    move-result v2

    if-eqz v2, :cond_119

    .line 4598
    const/4 v10, 0x1

    .line 4599
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    # getter for: Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    invoke-static {v2}, Lcom/nuance/swype/input/AlphaInputView;->access$1000(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v2

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView$3;->functionKey:[C

    invoke-virtual {v2, v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->processStoredTouch(I[C)Z

    move-result v2

    if-eqz v2, :cond_119

    .line 4600
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->functionKey:[C

    const/4 v3, 0x0

    aget-char v2, v2, v3

    if-eqz v2, :cond_19d

    const/4 v10, 0x1

    .line 4604
    :cond_119
    :goto_119
    if-nez v10, :cond_1a0

    .line 4605
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget v3, v3, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    const/4 v4, 0x0

    move-object/from16 v0, p3

    # invokes: Lcom/nuance/swype/input/AlphaInputView;->autoSpace(Lcom/nuance/input/swypecorelib/KeyType;IZ)V
    invoke-static {v2, v0, v3, v4}, Lcom/nuance/swype/input/AlphaInputView;->access$2200(Lcom/nuance/swype/input/AlphaInputView;Lcom/nuance/input/swypecorelib/KeyType;IZ)V

    .line 4606
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    # getter for: Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;
    invoke-static {v2}, Lcom/nuance/swype/input/AlphaInputView;->access$2300(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/swype/input/AutospaceHandler;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/nuance/swype/input/AutospaceHandler;->onCharKey(I)V

    .line 4608
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v12

    .line 4609
    .restart local v12    # "savedShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/AlphaInputView;->wordRecaptureWrapper:Lcom/nuance/swype/input/keyboard/WordRecaptureWrapper;

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v3, v3, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getRecaptureHandler()Lcom/nuance/swype/input/RecaptureHandler;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/nuance/swype/input/keyboard/WordRecaptureWrapper;->onCharKey(CLcom/nuance/swype/input/RecaptureHandler;)Z

    move-result v2

    if-eqz v2, :cond_14d

    .line 4610
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v2, v12}, Lcom/nuance/swype/input/AlphaInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 4617
    .end local v12    # "savedShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    :cond_14d
    :goto_14d
    if-eqz v10, :cond_1af

    .line 4618
    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "> handling fn key"

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4619
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    const/4 v3, 0x0

    move/from16 v0, p5

    # invokes: Lcom/nuance/swype/input/AlphaInputView;->handleFunctionKey(Lcom/nuance/swype/input/KeyboardEx$Key;ZI)V
    invoke-static {v2, v11, v0, v3}, Lcom/nuance/swype/input/AlphaInputView;->access$2400(Lcom/nuance/swype/input/AlphaInputView;Lcom/nuance/swype/input/KeyboardEx$Key;ZI)V

    .line 4667
    :cond_165
    :goto_165
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    # getter for: Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;
    invoke-static {v2}, Lcom/nuance/swype/input/AlphaInputView;->access$2800(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v2

    iget-object v3, v11, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/CharacterUtilities;->isWordCompounder(I)Z

    move-result v2

    if-eqz v2, :cond_96

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 4668
    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v2

    if-nez v2, :cond_96

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->supportsAlphaMode()Z

    move-result v2

    if-eqz v2, :cond_96

    .line 4669
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/AlphaInputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    goto/16 :goto_96

    .line 4582
    .end local v8    # "charKey":C
    .end local v10    # "isFunctionKey":Z
    :cond_194
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v2, v11}, Lcom/nuance/swype/input/AlphaInputView;->getKeycode(Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v2

    int-to-char v8, v2

    goto/16 :goto_c9

    .line 4600
    .restart local v8    # "charKey":C
    .restart local v10    # "isFunctionKey":Z
    :cond_19d
    const/4 v10, 0x0

    goto/16 :goto_119

    .line 4614
    :cond_1a0
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    # getter for: Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;
    invoke-static {v2}, Lcom/nuance/swype/input/AlphaInputView;->access$2300(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/swype/input/AutospaceHandler;

    move-result-object v2

    iget-object v3, v11, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/AutospaceHandler;->onKey(I)Z

    goto :goto_14d

    .line 4621
    :cond_1af
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/input/swypecorelib/KeyType;->isLetter()Z

    move-result v2

    if-nez v2, :cond_1f4

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    # getter for: Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    invoke-static {v2}, Lcom/nuance/swype/input/AlphaInputView;->access$1000(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->hasActiveInput()Z

    move-result v2

    if-nez v2, :cond_1f4

    .line 4623
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/input/swypecorelib/KeyType;->isString()Z

    move-result v2

    if-eqz v2, :cond_1df

    .line 4624
    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "> handling text"

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4625
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v3, v11, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/swype/input/AlphaInputView;->onText(Ljava/lang/CharSequence;J)V

    goto :goto_165

    .line 4627
    :cond_1df
    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "> handling punct or symbol"

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4628
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    # invokes: Lcom/nuance/swype/input/AlphaInputView;->handlePunctOrSymbol(I)V
    invoke-static {v2, v8}, Lcom/nuance/swype/input/AlphaInputView;->access$2500(Lcom/nuance/swype/input/AlphaInputView;I)V

    goto/16 :goto_165

    .line 4632
    :cond_1f4
    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "shift state before processStoredTouch: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    # getter for: Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    invoke-static {v5}, Lcom/nuance/swype/input/AlphaInputView;->access$1000(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4634
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    # getter for: Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    invoke-static {v2}, Lcom/nuance/swype/input/AlphaInputView;->access$1000(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v2

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView$3;->functionKey:[C

    invoke-virtual {v2, v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->processStoredTouch(I[C)Z

    move-result v2

    if-eqz v2, :cond_165

    .line 4636
    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "shift state after processStoredTouch: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    # getter for: Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    invoke-static {v5}, Lcom/nuance/swype/input/AlphaInputView;->access$1000(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4638
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-boolean v2, v2, Lcom/nuance/swype/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v2, :cond_291

    .line 4639
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/input/swypecorelib/KeyType;->isString()Z

    move-result v2

    if-eqz v2, :cond_25e

    .line 4640
    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "> handling text when prediction on"

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4641
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v3, v11, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/swype/input/AlphaInputView;->onText(Ljava/lang/CharSequence;J)V

    goto/16 :goto_165

    .line 4643
    :cond_25e
    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "> handling prediction"

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4645
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    # invokes: Lcom/nuance/swype/input/AlphaInputView;->isCursorWithinWord()Z
    invoke-static {v2}, Lcom/nuance/swype/input/AlphaInputView;->access$2600(Lcom/nuance/swype/input/AlphaInputView;)Z

    move-result v2

    if-eqz v2, :cond_28a

    .line 4650
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    # getter for: Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    invoke-static {v2}, Lcom/nuance/swype/input/AlphaInputView;->access$1000(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearAllKeys()Z

    .line 4651
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/AlphaInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->commitText(Ljava/lang/CharSequence;)V
    invoke-static {v2, v3}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->access$800(Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;Ljava/lang/CharSequence;)V

    goto/16 :goto_165

    .line 4653
    :cond_28a
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    # invokes: Lcom/nuance/swype/input/AlphaInputView;->handlePrediction(I)V
    invoke-static {v2, v8}, Lcom/nuance/swype/input/AlphaInputView;->access$2700(Lcom/nuance/swype/input/AlphaInputView;I)V

    goto/16 :goto_165

    .line 4657
    :cond_291
    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "> handling text when prediction off"

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4658
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 4659
    .local v9, "exactType":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    # getter for: Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    invoke-static {v2}, Lcom/nuance/swype/input/AlphaInputView;->access$1000(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getExactType(Ljava/lang/StringBuilder;)V

    .line 4660
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    # getter for: Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    invoke-static {v2}, Lcom/nuance/swype/input/AlphaInputView;->access$1000(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearAllKeys()Z

    .line 4661
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/AlphaInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;

    # invokes: Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->commitText(Ljava/lang/CharSequence;)V
    invoke-static {v2, v9}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->access$800(Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;Ljava/lang/CharSequence;)V

    .line 4662
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    goto/16 :goto_165

    .line 4673
    .end local v8    # "charKey":C
    .end local v9    # "exactType":Ljava/lang/StringBuilder;
    .end local v10    # "isFunctionKey":Z
    :cond_2c4
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/input/swypecorelib/KeyType;->isFunctionKey()Z

    move-result v2

    if-nez v2, :cond_2cd

    const/4 v2, 0x1

    goto/16 :goto_9b

    :cond_2cd
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget v2, v2, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    goto/16 :goto_9b
.end method

.method public touchHeld(IILcom/nuance/input/swypecorelib/KeyType;)Z
    .registers 6
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;

    .prologue
    .line 4702
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v1, p2}, Lcom/nuance/swype/input/AlphaInputView;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p1}, Lcom/nuance/swype/input/AlphaInputView;->onShortPress(Lcom/nuance/swype/input/KeyboardEx$Key;II)Z

    move-result v0

    return v0
.end method

.method public touchHeldEnded(IILcom/nuance/input/swypecorelib/KeyType;)V
    .registers 9
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;

    .prologue
    const/4 v4, 0x0

    .line 4733
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v1, p2}, Lcom/nuance/swype/input/AlphaInputView;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 4734
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v1, p1, v0}, Lcom/nuance/swype/input/AlphaInputView;->onTouchHeldEnded(ILcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 4735
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$3;->canceledKeys:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v4

    invoke-static {v1}, Lcom/nuance/swype/input/KeyboardEx;->isShiftKey(I)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 4737
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/AlphaInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {v1, v2, p2, v4}, Lcom/nuance/swype/input/AlphaInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 4741
    :goto_27
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/AlphaInputView;->hideKeyPreview(I)V

    .line 4742
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    const/4 v2, -0x1

    sget-object v3, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/AlphaInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 4743
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$3;->canceledKeys:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4744
    return-void

    .line 4739
    :cond_3a
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/AlphaInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p2, v3}, Lcom/nuance/swype/input/AlphaInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    goto :goto_27
.end method

.method public touchHeldMove(II[F[F[I)V
    .registers 7
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "xcoords"    # [F
    .param p4, "ycoords"    # [F
    .param p5, "times"    # [I

    .prologue
    .line 4728
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/nuance/swype/input/AlphaInputView;->onTouchHeldMoved(I[F[F[I)V

    .line 4729
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

    .line 4707
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v2, :cond_2b

    .line 4708
    invoke-virtual {p3}, Lcom/nuance/input/swypecorelib/KeyType;->isFunctionKey()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 4709
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v2, p2}, Lcom/nuance/swype/input/AlphaInputView;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 4711
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v2, v2, v1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_33

    .line 4712
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isNonSpacedLanguage()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 4713
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v1, p4}, Lcom/nuance/swype/input/AlphaInputView;->handleBackspace(I)Z

    move-result v1

    .line 4723
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_2b
    :goto_2b
    return v1

    .line 4715
    .restart local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_2c
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/AlphaInputView;->handleDeleteWordBack(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    goto :goto_2b

    .line 4717
    :cond_33
    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v2, v2, v1

    invoke-static {v2}, Lcom/nuance/swype/input/KeyboardEx;->isArrowKeys(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 4718
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    # invokes: Lcom/nuance/swype/input/AlphaInputView;->handleFunctionKey(Lcom/nuance/swype/input/KeyboardEx$Key;ZI)V
    invoke-static {v2, v0, v1, p4}, Lcom/nuance/swype/input/AlphaInputView;->access$2400(Lcom/nuance/swype/input/AlphaInputView;Lcom/nuance/swype/input/KeyboardEx$Key;ZI)V

    .line 4719
    const/4 v1, 0x1

    goto :goto_2b
.end method

.method public touchHelpRepeatEnded(IILcom/nuance/input/swypecorelib/KeyType;)V
    .registers 7
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;

    .prologue
    .line 4748
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/AlphaInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/nuance/swype/input/AlphaInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 4749
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->releaseRepeatKey()V

    .line 4751
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/AlphaInputView;->hideKeyPreview(I)V

    .line 4752
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    const/4 v1, -0x1

    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AlphaInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 4753
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->canceledKeys:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4754
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
    .line 4540
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/android/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 4549
    :goto_a
    return-void

    .line 4543
    :cond_b
    if-nez p6, :cond_21

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    # getter for: Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$1000(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->isTraceEnabled()Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->keyDownIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-eq v0, p2, :cond_3b

    .line 4544
    :cond_21
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/AlphaInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$3;->keyDownIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/input/AlphaInputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 4545
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/AlphaInputView;->hideKeyPreview(I)V

    .line 4546
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->keyDownIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4548
    :cond_3b
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/swype/input/AlphaInputView;->onTouchMoved(I[F[F[IZI)V

    goto :goto_a
.end method

.method public touchStarted(IILcom/nuance/input/swypecorelib/KeyType;FFI)V
    .registers 13
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "eventTime"    # I

    .prologue
    .line 4529
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/AlphaInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {v0, v1, p2}, Lcom/nuance/swype/input/AlphaInputView;->pressKey([Lcom/nuance/swype/input/KeyboardEx$Key;I)V

    .line 4530
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    sget-object v1, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Pressed:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    invoke-virtual {v0, p2, v1}, Lcom/nuance/swype/input/AlphaInputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 4531
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v0, p2, p1}, Lcom/nuance/swype/input/AlphaInputView;->showPreviewKey(II)V

    .line 4532
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/AlphaInputView;->resetTrace(I)V

    .line 4533
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->keyDownIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4534
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/AlphaInputView$3;->setCancelKey(IZ)V

    .line 4535
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$3;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    move v1, p1

    move v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/AlphaInputView;->onTouchStarted(IIFFI)V

    .line 4536
    return-void
.end method
