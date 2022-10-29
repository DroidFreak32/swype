.class public Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;
.super Ljava/lang/Object;
.source "DefaultHWRTouchKeyHandler.java"

# interfaces
.implements Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler$KeyUIState;
    }
.end annotation


# instance fields
.field private final functionKey:[C

.field private final ime:Lcom/nuance/swype/input/IME;

.field private final inputView:Lcom/nuance/swype/input/InputView;

.field private final keyUIState:Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler$KeyUIState;

.field private final xt9CoreInput:Lcom/nuance/input/swypecorelib/XT9CoreInput;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/InputView;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler$KeyUIState;)V
    .registers 6
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;
    .param p2, "inputView"    # Lcom/nuance/swype/input/InputView;
    .param p3, "xt9CoreInput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p4, "keyUIState"    # Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler$KeyUIState;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;->functionKey:[C

    .line 30
    iput-object p1, p0, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;->ime:Lcom/nuance/swype/input/IME;

    .line 31
    iput-object p2, p0, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;->inputView:Lcom/nuance/swype/input/InputView;

    .line 32
    iput-object p3, p0, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;->xt9CoreInput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    .line 33
    iput-object p4, p0, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;->keyUIState:Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler$KeyUIState;

    .line 34
    return-void
.end method


# virtual methods
.method public handleKeyboardShiftState(F)V
    .registers 2
    .param p1, "x"    # F

    .prologue
    .line 132
    return-void
.end method

.method public multiTapTimerTimeOut()V
    .registers 1

    .prologue
    .line 127
    return-void
.end method

.method public multiTapTimerTimeoutActive()V
    .registers 1

    .prologue
    .line 122
    return-void
.end method

.method public touchCanceled(II)V
    .registers 3
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I

    .prologue
    .line 81
    return-void
.end method

.method public touchEnded(IILcom/nuance/input/swypecorelib/KeyType;ZZFFI)V
    .registers 23
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;
    .param p4, "isTraced"    # Z
    .param p5, "quickPressed"    # Z
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "eventTime"    # I

    .prologue
    .line 48
    iget-object v3, p0, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;->keyUIState:Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler$KeyUIState;

    move/from16 v0, p2

    invoke-interface {v3, p1, v0}, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler$KeyUIState;->onRelease(II)V

    .line 50
    iget-object v3, p0, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;->xt9CoreInput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;->functionKey:[C

    invoke-virtual {v3, v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->processStoredTouch(I[C)Z

    .line 52
    iget-object v3, p0, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;->inputView:Lcom/nuance/swype/input/InputView;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/nuance/swype/input/InputView;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v7

    .line 53
    .local v7, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v3, p0, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;->xt9CoreInput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v2

    .line 55
    .local v2, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/input/swypecorelib/KeyType;->isFunctionKey()Z

    move-result v3

    if-eqz v3, :cond_76

    .line 57
    iget-object v3, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0xb54

    if-eq v3, v4, :cond_5f

    if-nez p4, :cond_40

    iget-object v3, p0, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;->inputView:Lcom/nuance/swype/input/InputView;

    iget-object v4, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, 0x0

    .line 58
    move/from16 v0, p5

    invoke-virtual {v3, v4, v0, v5}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v3

    if-nez v3, :cond_55

    :cond_40
    iget-object v3, p0, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;->inputView:Lcom/nuance/swype/input/InputView;

    iget-object v4, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    .line 59
    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/InputView;->handleGesture(I)Z

    move-result v3

    if-nez v3, :cond_55

    iget-object v3, p0, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;->inputView:Lcom/nuance/swype/input/InputView;

    .line 60
    invoke-virtual {v3, v2}, Lcom/nuance/swype/input/InputView;->handleGesture(Lcom/nuance/input/swypecorelib/Candidates;)Z

    move-result v3

    if-eqz v3, :cond_5f

    :cond_55
    iget-object v3, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const v4, 0xaa37

    if-ne v3, v4, :cond_70

    .line 62
    :cond_5f
    if-nez p4, :cond_70

    .line 63
    iget-object v3, p0, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;->ime:Lcom/nuance/swype/input/IME;

    const/4 v4, 0x0

    iget-object v5, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const-wide/16 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/nuance/swype/input/IME;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    .line 74
    :cond_70
    :goto_70
    iget-object v3, p0, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;->xt9CoreInput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->clearAllKeys()Z

    .line 76
    return-void

    .line 67
    :cond_76
    iget-object v3, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_88

    .line 68
    iget-object v3, p0, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;->inputView:Lcom/nuance/swype/input/InputView;

    iget-object v4, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    const-wide/16 v8, 0x0

    invoke-virtual {v3, v4, v8, v9}, Lcom/nuance/swype/input/InputView;->onText(Ljava/lang/CharSequence;J)V

    goto :goto_70

    .line 70
    :cond_88
    iget-object v8, p0, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;->inputView:Lcom/nuance/swype/input/InputView;

    const/4 v9, 0x0

    iget-object v3, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v4, 0x0

    aget v10, v3, v4

    iget-object v11, v7, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const-wide/16 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/nuance/swype/input/InputView;->handleCharKey(Landroid/graphics/Point;I[IJ)V

    goto :goto_70
.end method

.method public touchHeld(IILcom/nuance/input/swypecorelib/KeyType;)Z
    .registers 5
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0, p2, p1}, Lcom/nuance/swype/input/InputView;->onShortPress(II)Z

    move-result v0

    return v0
.end method

.method public touchHeldEnded(IILcom/nuance/input/swypecorelib/KeyType;)V
    .registers 5
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/InputView;->onTouchHeldEnded(II)V

    .line 111
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;->keyUIState:Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler$KeyUIState;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler$KeyUIState;->onRelease(II)V

    .line 112
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
    .line 105
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/nuance/swype/input/InputView;->onTouchHeldMoved(I[F[F[I)V

    .line 106
    return-void
.end method

.method public touchHeldRepeat(IILcom/nuance/input/swypecorelib/KeyType;I)Z
    .registers 13
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;
    .param p4, "repeatCount"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 90
    invoke-virtual {p3}, Lcom/nuance/input/swypecorelib/KeyType;->isFunctionKey()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 91
    iget-object v1, p0, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;->inputView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v1, p2}, Lcom/nuance/swype/input/InputView;->getKey(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 93
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v3

    const/16 v4, 0x8

    if-ne v1, v4, :cond_21

    .line 94
    iget-object v1, p0, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;->inputView:Lcom/nuance/swype/input/InputView;

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2, v3, p4}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v1

    .line 100
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :goto_20
    return v1

    .line 95
    .restart local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_21
    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v3

    invoke-static {v1}, Lcom/nuance/swype/input/KeyboardEx;->isArrowKeys(I)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 96
    iget-object v1, p0, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;->ime:Lcom/nuance/swype/input/IME;

    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v3, v4, v3

    const-wide/16 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v1 .. v7}, Lcom/nuance/swype/input/IME;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    .line 97
    const/4 v1, 0x1

    goto :goto_20

    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_3a
    move v1, v3

    .line 100
    goto :goto_20
.end method

.method public touchHelpRepeatEnded(IILcom/nuance/input/swypecorelib/KeyType;)V
    .registers 5
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;->keyUIState:Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler$KeyUIState;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler$KeyUIState;->onRelease(II)V

    .line 117
    return-void
.end method

.method public touchMoved(II[F[F[IZ)V
    .registers 7
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "xcoords"    # [F
    .param p4, "ycoords"    # [F
    .param p5, "times"    # [I
    .param p6, "canBeTraced"    # Z

    .prologue
    .line 44
    return-void
.end method

.method public touchStarted(IILcom/nuance/input/swypecorelib/KeyType;FFI)V
    .registers 8
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "eventTime"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;->keyUIState:Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler$KeyUIState;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler$KeyUIState;->onPress(II)V

    .line 39
    return-void
.end method
