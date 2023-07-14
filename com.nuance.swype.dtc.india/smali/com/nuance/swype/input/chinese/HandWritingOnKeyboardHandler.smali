.class public Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;
.super Ljava/lang/Object;
.source "HandWritingOnKeyboardHandler.java"


# static fields
.field protected static final MSG_DELAY_RECOGNIZER:I = 0xc9

.field protected static final MSG_DELAY_RECOGNIZER_ADD_STROKE:I = 0xca

.field private static final MSG_HANDLE_CHAR:I = 0xcc

.field private static final MSG_HANDLE_SUGGESTION_CANDIDATES:I = 0xcb

.field private static final MSG_HANDLE_TEXT:I = 0xcd

.field protected static final STROKE_RECOGNITION_TIME_OUT:I = 0x64

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final HWHandlerCallback:Landroid/os/Handler$Callback;

.field private final delayWritingRecognizerHandlerCallback:Landroid/os/Handler$Callback;

.field protected mCachedWritePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

.field private mDelayFlushWriteInlineWord:Z

.field private final mDelayWriteRecognizeHandler:Landroid/os/Handler;

.field private mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

.field mHWHandler:Landroid/os/Handler;

.field private mHWRecognitionCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mHandwritingOn:Z

.field private mIME:Lcom/nuance/swype/input/IME;

.field private mIsWriting:Z

.field private mIsWritingRecognitionDone:Z

.field protected mPntWrite:Landroid/graphics/Paint;

.field protected mRepaintWrite:Z

.field private mStroke:Lcom/nuance/swype/input/Stroke;

.field protected mVctWrite:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

.field protected mWriteColor:I

.field protected mWriteNewSession:Z

.field protected mWritePath:Landroid/graphics/Path;

.field protected mWriteStrokes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;>;"
        }
    .end annotation
.end field

.field private minMoveDistance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "HandWritingOnKeyboardHandler"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method constructor <init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .locals 3
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;
    .param p2, "iv"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteStrokes:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mVctWrite:Ljava/util/List;

    .line 47
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mRepaintWrite:Z

    .line 48
    const v0, -0xffff01

    iput v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteColor:I

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mCachedWritePoints:Ljava/util/List;

    .line 50
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWritePath:Landroid/graphics/Path;

    .line 51
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteNewSession:Z

    .line 52
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mIsWritingRecognitionDone:Z

    .line 55
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mDelayFlushWriteInlineWord:Z

    .line 258
    new-instance v0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler$1;-><init>(Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->HWHandlerCallback:Landroid/os/Handler$Callback;

    .line 300
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->HWHandlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHWHandler:Landroid/os/Handler;

    .line 325
    new-instance v0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler$2;-><init>(Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->delayWritingRecognizerHandlerCallback:Landroid/os/Handler$Callback;

    .line 344
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->delayWritingRecognizerHandlerCallback:Landroid/os/Handler$Callback;

    .line 345
    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mDelayWriteRecognizeHandler:Landroid/os/Handler;

    .line 70
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mIME:Lcom/nuance/swype/input/IME;

    .line 71
    iput-object p2, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHWRecognitionCandidates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHWRecognitionCandidates:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;)Lcom/nuance/swype/input/chinese/ChineseInputView;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->isPendingRecognizeMessage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->isPendingRecognizeStrokeMessage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->performDelayWriteRecognition()V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->performDelayRecognitionStroke()V

    return-void
.end method

.method private cancelDelayRecognition()V
    .locals 0

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->removeDelayWriteRecognitionMsg()V

    .line 432
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->resetWrite()V

    .line 433
    return-void
.end method

.method private distance(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .locals 3
    .param p1, "p1"    # Landroid/graphics/Point;
    .param p2, "p2"    # Landroid/graphics/Point;

    .prologue
    .line 511
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private isPendingRecognizeMessage()Z
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mDelayWriteRecognizeHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private isPendingRecognizeStrokeMessage()Z
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mDelayWriteRecognizeHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private isWriteDetected()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 499
    const/4 v2, 0x0

    .line 500
    .local v2, "writeDetected":Z
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mVctWrite:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v3, :cond_0

    .line 501
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mVctWrite:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 502
    .local v0, "pt1":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mVctWrite:Ljava/util/List;

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mVctWrite:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 503
    .local v1, "pt2":Landroid/graphics/Point;
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->distance(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v5

    iget v6, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->minMoveDistance:I

    if-le v5, v6, :cond_1

    move v2, v3

    .line 505
    .end local v0    # "pt1":Landroid/graphics/Point;
    .end local v1    # "pt2":Landroid/graphics/Point;
    :cond_0
    :goto_0
    sget-object v5, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "isWriteDetected: "

    aput-object v7, v6, v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 506
    return v2

    .restart local v0    # "pt1":Landroid/graphics/Point;
    .restart local v1    # "pt2":Landroid/graphics/Point;
    :cond_1
    move v2, v4

    .line 503
    goto :goto_0
.end method

.method private onTouchMovedSub(II[F[F[IZ)V
    .locals 15
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "xcoords"    # [F
    .param p4, "ycoords"    # [F
    .param p5, "times"    # [I
    .param p6, "canBeTraced"    # Z

    .prologue
    .line 547
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mVctWrite:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    .line 548
    .local v13, "vctbase":I
    const/4 v14, 0x0

    .line 549
    .local v14, "vctoffset":I
    move-object/from16 v0, p3

    array-length v1, v0

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mVctWrite:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 550
    move-object/from16 v0, p3

    array-length v1, v0

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mVctWrite:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int v14, v1, v2

    .line 552
    :cond_0
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v14, :cond_1

    .line 553
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mVctWrite:Ljava/util/List;

    new-instance v2, Landroid/graphics/Point;

    add-int v3, v13, v10

    aget v3, p3, v3

    float-to-int v3, v3

    add-int v4, v13, v10

    aget v4, p4, v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 554
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 557
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteStrokes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 561
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .local v11, "newStroke":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteStrokes:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    .end local v11    # "newStroke":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteStrokes:Ljava/util/List;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteStrokes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 566
    .local v9, "curStroke":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 567
    .local v8, "base":I
    const/4 v12, 0x0

    .line 568
    .local v12, "offset":I
    move-object/from16 v0, p3

    array-length v1, v0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 569
    move-object/from16 v0, p3

    array-length v1, v0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    sub-int v12, v1, v2

    .line 571
    :cond_3
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v12, :cond_4

    .line 572
    new-instance v1, Landroid/graphics/Point;

    add-int v2, v8, v10

    aget v2, p3, v2

    float-to-int v2, v2

    add-int v3, v8, v10

    aget v3, p4, v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 574
    :cond_4
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mStroke:Lcom/nuance/swype/input/Stroke;

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/nuance/swype/input/Stroke;->handleTouchMoved(II[F[F[IZ)V

    .line 575
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->invalidate()V

    .line 576
    return-void
.end method

.method private performDelayRecognitionStroke()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getOnKeyboardActionListener()Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getOnKeyboardActionListener()Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mCachedWritePoints:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onWrite(Ljava/util/List;)V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mCachedWritePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 412
    return-void
.end method

.method private performDelayWriteRecognition()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->endArcsAddingSequence()V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mCachedWritePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 384
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FaddingStrokeQueue;->stopFading()V

    .line 386
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->resetWrite()V

    .line 387
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->invalidate()V

    .line 388
    return-void
.end method

.method private removeDelayRecognitionMsg()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mDelayWriteRecognizeHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 392
    return-void
.end method

.method private removeDelayRecognitionStroke()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mDelayWriteRecognizeHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 400
    return-void
.end method

.method private removeDelayWriteRecognitionMsg()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mDelayWriteRecognizeHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 377
    return-void
.end method

.method private resetWrite()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 354
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mVctWrite:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mVctWrite:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWritePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWritePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteStrokes:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteStrokes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mCachedWritePoints:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 366
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mCachedWritePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 368
    :cond_3
    iput-boolean v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mIsWriting:Z

    .line 369
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteNewSession:Z

    .line 370
    iput-boolean v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mRepaintWrite:Z

    .line 371
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->setWritingRecognitionDone(Z)V

    .line 372
    sget-object v0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "resetWrite"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 373
    return-void
.end method


# virtual methods
.method public acceptHWRRecognitionWord()Z
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->recognitionCandidatesAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHWRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHWRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHWRecognitionCandidates:Ljava/util/List;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushInlineWord()Z

    .line 178
    const/4 v0, 0x1

    .line 180
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearInternalStatus()V
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->recognitionCandidatesAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHWRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 193
    :cond_0
    return-void
.end method

.method public clearRecognitionCandidates()V
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHWRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHWRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 632
    :cond_0
    return-void
.end method

.method public getHWRecognitionCandidates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 634
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHWRecognitionCandidates:Ljava/util/List;

    return-object v0
.end method

.method public getT9WriteChinese()Lcom/nuance/input/swypecorelib/T9WriteChinese;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    return-object v0
.end method

.method public isWriting()Z
    .locals 1

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mIsWriting:Z

    return v0
.end method

.method protected isWritingRecognitionDone()Z
    .locals 1

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mIsWritingRecognitionDone:Z

    return v0
.end method

.method protected onClearKeyboardState()V
    .locals 0

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->resetWrite()V

    .line 463
    return-void
.end method

.method public onCreate(Lcom/nuance/input/swypecorelib/T9Write;)V
    .locals 2
    .param p1, "t9write"    # Lcom/nuance/input/swypecorelib/T9Write;

    .prologue
    .line 74
    check-cast p1, Lcom/nuance/input/swypecorelib/T9WriteChinese;

    .end local p1    # "t9write":Lcom/nuance/input/swypecorelib/T9Write;
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    .line 76
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mIME:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$dimen;->trace_redraw_threadshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->minMoveDistance:I

    .line 79
    return-void
.end method

.method public onDelayStartInput()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 99
    iget-boolean v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHandwritingOn:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    .line 100
    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    .line 101
    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v3

    .line 102
    invoke-virtual {v3}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v3

    .line 103
    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isWriteChineseBuildEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v3

    if-nez v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->removeAllRecognizeListener()V

    .line 105
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 106
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->clearCategory()V

    .line 107
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addTextCategory()V

    .line 108
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addLatinLetterCategory()V

    .line 109
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addSymbolCategory()V

    .line 110
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addPunctuationCategory()V

    .line 111
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addNumberCategory()V

    .line 112
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->addGestureCategory()V

    .line 113
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    const-string/jumbo v4, "pen_color"

    const/16 v5, 0x18

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    .line 115
    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 113
    invoke-static {v3, v4, v5, v6}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenColor(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v1

    .line 117
    .local v1, "penColor":I
    new-instance v3, Lcom/nuance/swype/input/FaddingStrokeQueue;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-direct {v3, v4, v1, v5}, Lcom/nuance/swype/input/FaddingStrokeQueue;-><init>(Landroid/content/Context;ILandroid/view/View;)V

    iput-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    .line 120
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 122
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3, v7}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setWritingDirection(I)V

    .line 126
    :goto_0
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 127
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    .line 128
    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    const-string/jumbo v4, "hwr_auto_recpgnize_delay"

    sget v5, Lcom/nuance/swype/input/R$integer;->handwriting_auto_recognize_default_ms:I

    .line 130
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 128
    invoke-static {v3, v4, v5}, Lcom/nuance/swype/input/settings/InputPrefs;->getAutoDelay(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v0

    .line 131
    .local v0, "delay":I
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3, v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setRecognizerDelay(I)V

    .line 132
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mIME:Lcom/nuance/swype/input/IME;

    .line 133
    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v4

    .line 132
    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->startSession(I)V

    .line 134
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->clearCommonChar()I

    .line 135
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->applyChangedSettings()V

    .line 137
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->isHwrRotationEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 138
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3, v8}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->updateRotationSetting(Z)V

    .line 143
    :goto_1
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->isAttachingCommonWordsLDBAllowed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 144
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3, v8}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->updateAttachingCommonWordsLDB(Z)V

    .line 149
    :goto_2
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHWRecognitionCandidates:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 150
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHWRecognitionCandidates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 153
    .end local v0    # "delay":I
    .end local v1    # "penColor":I
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void

    .line 124
    .restart local v1    # "penColor":I
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->setWritingDirection(I)V

    goto :goto_0

    .line 140
    .restart local v0    # "delay":I
    .restart local v2    # "res":Landroid/content/res/Resources;
    :cond_2
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3, v7}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->updateRotationSetting(Z)V

    goto :goto_1

    .line 146
    :cond_3
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3, v7}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->updateAttachingCommonWordsLDB(Z)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mIME:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isWriteChineseBuildEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->removeRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 85
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->finishSession()V

    .line 87
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 436
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mIsWriting:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mRepaintWrite:Z

    if-eqz v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/FaddingStrokeQueue;->draw(Landroid/graphics/Canvas;)V

    .line 438
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mStroke:Lcom/nuance/swype/input/Stroke;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Stroke;->getPaths()[Landroid/graphics/Path;

    move-result-object v2

    .line 439
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 440
    .local v0, "path":Landroid/graphics/Path;
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mPntWrite:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    .end local v0    # "path":Landroid/graphics/Path;
    :cond_0
    return-void
.end method

.method public onFinishInput()V
    .locals 2

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->cancelDelayRecognition()V

    .line 156
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHandwritingOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mIME:Lcom/nuance/swype/input/IME;

    .line 157
    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isWriteChineseBuildEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->removeRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 162
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->finishSession()V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHWHandler:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 165
    return-void
.end method

.method public onHandleBackspace()Z
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->recognitionCandidatesAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHWRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 208
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHandleClose()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->cancelDelayRecognition()V

    .line 215
    return-void
.end method

.method public onHandleSeparator()V
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->recognitionCandidatesAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushInlineWord()Z

    .line 244
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHWRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 246
    :cond_0
    return-void
.end method

.method public onHandleWrite(Ljava/util/List;)V
    .locals 5
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
    .local p1, "write":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    const/4 v4, 0x0

    .line 219
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v2

    if-nez v2, :cond_0

    .line 220
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->applyChangedSettings()V

    .line 222
    :cond_0
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v2

    if-nez v2, :cond_4

    .line 223
    const/4 v1, 0x0

    .line 224
    .local v1, "start":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 225
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-nez v2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-nez v2, :cond_2

    .line 227
    if-ltz v1, :cond_1

    if-le v0, v1, :cond_1

    .line 228
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueAddArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 230
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 224
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v2, :cond_4

    .line 234
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v2, v4}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->queueRecognition(Ljava/lang/CharSequence;)V

    .line 237
    .end local v0    # "i":I
    .end local v1    # "start":I
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 239
    return-void
.end method

.method public onHandleWriteEvent(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;

    .prologue
    const-wide/16 v4, 0x5

    .line 305
    iget v0, p1, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 323
    :goto_0
    return-void

    .line 307
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHWHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHWHandler:Landroid/os/Handler;

    const/16 v2, 0xcb

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 311
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHWHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHWHandler:Landroid/os/Handler;

    const/16 v2, 0xcd

    .line 312
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 311
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 316
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHWHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHWHandler:Landroid/os/Handler;

    const/16 v2, 0xcc

    .line 317
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 316
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onReadStyles(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x40c00000    # 6.0f

    .line 249
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mPntWrite:Landroid/graphics/Paint;

    .line 250
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mPntWrite:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 251
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mPntWrite:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 252
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mPntWrite:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 253
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mPntWrite:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 254
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mPntWrite:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v0}, Lcom/nuance/swype/input/Stroke;->create(I)Lcom/nuance/swype/input/Stroke;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mStroke:Lcom/nuance/swype/input/Stroke;

    .line 256
    return-void
.end method

.method public onSendPlaceHolderKey()Z
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->recognitionCandidatesAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHWRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHWRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 199
    const/4 v0, 0x1

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStartInput()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHWRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mIME:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getEditState()Lcom/nuance/swype/input/EditState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->startSession()V

    .line 94
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHWRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->cancelDelayRecognition()V

    .line 97
    return-void
.end method

.method public onTouchEnded(IILcom/nuance/input/swypecorelib/KeyType;Z)Z
    .locals 8
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;
    .param p4, "isTraced"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 579
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHandwritingOn:Z

    if-nez v5, :cond_0

    .line 625
    :goto_0
    return v3

    .line 584
    :cond_0
    if-lez p1, :cond_1

    move v3, v4

    .line 585
    goto :goto_0

    .line 587
    :cond_1
    sget-object v5, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "onTouchEnded...mIsWriting: "

    aput-object v7, v6, v3

    iget-boolean v7, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mIsWriting:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 588
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mIsWriting:Z

    if-eqz v5, :cond_7

    .line 589
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mStroke:Lcom/nuance/swype/input/Stroke;

    invoke-virtual {v5, p1, p2, p3, p4}, Lcom/nuance/swype/input/Stroke;->handleTouchEnd(IILcom/nuance/input/swypecorelib/KeyType;Z)V

    .line 591
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mVctWrite:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 592
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 593
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mCachedWritePoints:Ljava/util/List;

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mVctWrite:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 596
    :cond_2
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mCachedWritePoints:Ljava/util/List;

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mStroke:Lcom/nuance/swype/input/Stroke;

    invoke-virtual {v5}, Lcom/nuance/swype/input/Stroke;->getPaths()[Landroid/graphics/Path;

    move-result-object v5

    .line 599
    array-length v6, v5

    :goto_2
    if-ge v3, v6, :cond_3

    aget-object v1, v5, v3

    .line 600
    .local v1, "path":Landroid/graphics/Path;
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v7, v1}, Lcom/nuance/swype/input/FaddingStrokeQueue;->add(Landroid/graphics/Path;)V

    .line 599
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 603
    .end local v1    # "path":Landroid/graphics/Path;
    :cond_3
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    if-eqz v3, :cond_6

    .line 604
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->isPendingRecognizeStrokeMessage()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 605
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->removeDelayRecognitionStroke()V

    .line 607
    :cond_4
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mDelayWriteRecognizeHandler:Landroid/os/Handler;

    const/16 v5, 0xca

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 609
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->isPendingRecognizeMessage()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 610
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->removeDelayRecognitionMsg()V

    .line 612
    :cond_5
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mDelayWriteRecognizeHandler:Landroid/os/Handler;

    const/16 v5, 0xc9

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    .line 613
    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->getRecognizerDelay()I

    move-result v6

    int-to-long v6, v6

    .line 612
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 615
    :cond_6
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mStroke:Lcom/nuance/swype/input/Stroke;

    invoke-virtual {v3}, Lcom/nuance/swype/input/Stroke;->clear()V

    .line 616
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v3}, Lcom/nuance/swype/input/FaddingStrokeQueue;->startActionFading()V

    .line 617
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v3}, Lcom/nuance/swype/input/FaddingStrokeQueue;->startFading()V

    .line 618
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->invalidate()V

    move v3, v4

    .line 619
    goto/16 :goto_0

    .line 621
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_7
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->resetWrite()V

    .line 622
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mStroke:Lcom/nuance/swype/input/Stroke;

    invoke-virtual {v4}, Lcom/nuance/swype/input/Stroke;->clear()V

    .line 623
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->invalidate()V

    goto/16 :goto_0
.end method

.method public onTouchMoved(II[F[F[IZ)Z
    .locals 7
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I
    .param p3, "xcoords"    # [F
    .param p4, "ycoords"    # [F
    .param p5, "times"    # [I
    .param p6, "canBeTraced"    # Z

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHandwritingOn:Z

    if-nez v0, :cond_0

    .line 516
    const/4 v0, 0x0

    .line 542
    :goto_0
    return v0

    .line 520
    :cond_0
    if-lez p1, :cond_1

    .line 521
    const/4 v0, 0x1

    goto :goto_0

    .line 524
    :cond_1
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mIsWriting:Z

    if-nez v0, :cond_4

    .line 525
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->isWriteDetected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mRepaintWrite:Z

    .line 527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mIsWriting:Z

    .line 528
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mDelayFlushWriteInlineWord:Z

    if-eqz v0, :cond_2

    .line 529
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushCurrentActiveWord()V

    .line 530
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mDelayFlushWriteInlineWord:Z

    .line 532
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->setWritingRecognitionDone(Z)V

    .line 534
    :cond_3
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->onTouchMovedSub(II[F[F[IZ)V

    .line 535
    const/4 v0, 0x1

    goto :goto_0

    .line 537
    :cond_4
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mIsWriting:Z

    if-eqz v0, :cond_5

    .line 538
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->onTouchMovedSub(II[F[F[IZ)V

    .line 539
    const/4 v0, 0x1

    goto :goto_0

    .line 542
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchStarted(I)Z
    .locals 7
    .param p1, "pointerId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 466
    iget-boolean v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHandwritingOn:Z

    if-nez v3, :cond_1

    .line 495
    :cond_0
    :goto_0
    return v1

    .line 470
    :cond_1
    if-lez p1, :cond_2

    move v1, v2

    .line 471
    goto :goto_0

    .line 473
    :cond_2
    sget-object v3, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "onTouchStarted...mWriteNewSession: "

    aput-object v5, v4, v1

    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteNewSession:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x2

    const-string/jumbo v6, "...mIsWriting: "

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-boolean v6, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mIsWriting:Z

    .line 474
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    .line 473
    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 475
    iget-boolean v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteNewSession:Z

    if-eqz v3, :cond_3

    .line 476
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mDelayFlushWriteInlineWord:Z

    .line 477
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->resetWrite()V

    .line 478
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteNewSession:Z

    .line 482
    :goto_1
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->removeDelayWriteRecognitionMsg()V

    .line 483
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->removeDelayRecognitionStroke()V

    .line 484
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteChinese:Lcom/nuance/input/swypecorelib/T9WriteChinese;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/T9WriteChinese;->startArcsAddingSequence()V

    .line 485
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v3}, Lcom/nuance/swype/input/FaddingStrokeQueue;->pauseFading()V

    .line 486
    iget-boolean v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mIsWriting:Z

    if-eqz v3, :cond_0

    .line 487
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->removeDelayWriteRecognitionMsg()V

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 490
    .local v0, "newStroke":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mWriteStrokes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mVctWrite:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 492
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->invalidate()V

    move v1, v2

    .line 493
    goto :goto_0

    .line 480
    .end local v0    # "newStroke":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    :cond_3
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mDelayFlushWriteInlineWord:Z

    goto :goto_1
.end method

.method public onWindowVisibilityChanged()V
    .locals 8

    .prologue
    .line 450
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    const-string/jumbo v5, "pen_color"

    const/16 v6, 0x18

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    .line 452
    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 450
    invoke-static {v4, v5, v6, v7}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenColor(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v2

    .line 453
    .local v2, "penColor":I
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->setWritePenColor(I)V

    .line 454
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 455
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v1

    .line 456
    .local v1, "isTablet":Z
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mChineseInputView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    const-string/jumbo v6, "hwr_pen_size"

    if-eqz v1, :cond_0

    const/4 v4, 0x7

    :goto_0
    int-to-float v4, v4

    iget v7, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v7

    float-to-int v4, v4

    invoke-static {v5, v6, v4}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenSize(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v3

    .line 459
    .local v3, "penSize":I
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->setWritePenSize(I)V

    .line 460
    return-void

    .line 456
    .end local v3    # "penSize":I
    :cond_0
    const/4 v4, 0x5

    goto :goto_0
.end method

.method public recognitionCandidatesAvailable()Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHWRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHWRecognitionCandidates:Ljava/util/List;

    .line 186
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAllMessages()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 349
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHWHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 350
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mDelayWriteRecognizeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 351
    return-void
.end method

.method public setHandwritingOn(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mHandwritingOn:Z

    .line 169
    return-void
.end method

.method protected setWritePenColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 423
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mPntWrite:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 424
    return-void
.end method

.method protected setWritePenSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 427
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mPntWrite:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 428
    return-void
.end method

.method protected setWritingRecognitionDone(Z)V
    .locals 0
    .param p1, "bWritingRecognitionDone"    # Z

    .prologue
    .line 419
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->mIsWritingRecognitionDone:Z

    .line 420
    return-void
.end method
