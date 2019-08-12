.class public Lcom/nuance/swype/input/chinese/CJKCandidatesListView;
.super Landroid/view/View;
.source "CJKCandidatesListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/chinese/CJKCandidatesListView$3;,
        Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;,
        Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;,
        Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;,
        Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;
    }
.end annotation


# static fields
.field public static final COMPONENT_MARKER:C = '\u9fff'

.field protected static final MAX_SUGGESTIONS:I

.field private static final MIN_LONGPRESS_TIMEOUT:I = 0x2ee

.field private static final MSG_LONGPRESS:I = 0x3

.field protected static final MSG_REMOVE_PREVIEW:I = 0x1

.field protected static final MSG_REMOVE_THROUGH_PREVIEW:I = 0x2

.field protected static final OUT_OF_BOUNDS:I = -0x1

.field protected static final SCROLL_PIXELS:I = 0xc

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private alignLeft:Z

.field private allowFullScroll:Z

.field private allowedCandidateNum:I

.field private altCharacterConverted:Z

.field private final handlerCallback:Landroid/os/Handler$Callback;

.field protected mA:F

.field private mAbortKey:Z

.field protected mAlphaTextSize:I

.field private mAssociationWord:Z

.field protected mBgPadding:Landroid/graphics/Rect;

.field protected mColorComponent:I

.field protected mColorNormal:I

.field protected mColorOther:I

.field protected mColorPressed:I

.field protected mColorRecommended:I

.field protected mContext:Landroid/content/Context;

.field protected mCurrentWordIndex:I

.field protected mDescent:I

.field protected mDivider:Landroid/graphics/drawable/Drawable;

.field protected mDragSelected:Z

.field protected mEnableHighlight:Z

.field private mExactKeyboardShowable:Z

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mGetMoreWordsHandler:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;

.field mHandler:Landroid/os/Handler;

.field protected mItalic:Landroid/graphics/Typeface;

.field private mLeftArrowShowable:Z

.field private mLeftArrowWidth:I

.field private mLongPressTimeout:I

.field protected mMinCandidateWidth:I

.field protected mMinPadWidth:I

.field protected mMouseDown:Z

.field private mNotMatchTooltip:Lcom/nuance/input/swypecorelib/Candidates;

.field protected mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

.field protected mPadWidth:[I

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPopupPreviewX:I

.field protected mPopupPreviewY:I

.field protected mScrolled:Z

.field protected mSelectedIndex:I

.field protected mSelectedString:Ljava/lang/CharSequence;

.field protected mSelectionHighlight:Landroid/graphics/drawable/Drawable;

.field private mShowTooltip:Z

.field public mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field mSwipeSpeed:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;

.field private mSwypeTooltip:Lcom/nuance/input/swypecorelib/Candidates;

.field protected mTargetScrollPos:I

.field protected mTextSize:I

.field protected mTextSizeInit:I

.field private mTooltip:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

.field private mTooltipWordWidth:[I

.field public mTotalLength:I

.field protected mTouchIndex:I

.field protected mTouchX:I

.field protected mTouchY:I

.field protected mV:F

.field private mWordSourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private mWordSpace:I

.field protected mWordWidth:[I

.field private mWordWidthWithoutPadding:[I

.field public mWordX:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    const/16 v0, 0x100

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->MAX_SUGGESTIONS:I

    .line 335
    const-string v0, "CJKCandidatesListView"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 244
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordSourceList:Ljava/util/List;

    .line 68
    iput v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchX:I

    .line 69
    iput v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchY:I

    .line 88
    const/16 v0, 0x2ee

    iput v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLongPressTimeout:I

    .line 91
    sget v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->MAX_SUGGESTIONS:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    .line 92
    sget v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->MAX_SUGGESTIONS:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPadWidth:[I

    .line 93
    sget v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->MAX_SUGGESTIONS:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    .line 113
    iput v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    .line 114
    iput v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mA:F

    .line 116
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mMouseDown:Z

    .line 117
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mDragSelected:Z

    .line 119
    iput v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    .line 125
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mAssociationWord:Z

    .line 127
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLeftArrowShowable:Z

    .line 128
    iput v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLeftArrowWidth:I

    .line 130
    iput-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTooltipWordWidth:[I

    .line 131
    iput-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidthWithoutPadding:[I

    .line 133
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mExactKeyboardShowable:Z

    .line 135
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mShowTooltip:Z

    .line 141
    iput-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTooltip:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    .line 142
    iput-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSwypeTooltip:Lcom/nuance/input/swypecorelib/Candidates;

    .line 143
    iput-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mNotMatchTooltip:Lcom/nuance/input/swypecorelib/Candidates;

    .line 156
    new-instance v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;-><init>(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->handlerCallback:Landroid/os/Handler$Callback;

    .line 184
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mHandler:Landroid/os/Handler;

    .line 222
    new-instance v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;-><init>(F)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSwipeSpeed:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;

    .line 245
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mContext:Landroid/content/Context;

    .line 246
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordSourceList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getMaxScroll()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->needMoreWords()Z

    move-result v0

    return v0
.end method

.method private computeDisplayingCandidateDrawingRegion(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;)V
    .locals 21
    .param p1, "t"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    .prologue
    .line 1343
    invoke-direct/range {p0 .. p1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getTooltip(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v13

    .line 1344
    .local v13, "tooltip":Lcom/nuance/input/swypecorelib/Candidates;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTooltip:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTooltip:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_2

    :cond_0
    const/4 v11, 0x1

    .line 1346
    .local v11, "needRefresh":Z
    :goto_0
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mAlphaTextSize:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1354
    if-nez v11, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidthWithoutPadding:[I

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTooltipWordWidth:[I

    move-object/from16 v17, v0

    if-nez v17, :cond_4

    .line 1355
    :cond_1
    invoke-virtual {v13}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidthWithoutPadding:[I

    .line 1356
    invoke-virtual {v13}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTooltipWordWidth:[I

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const-string v18, " "

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v17 .. v20}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v17

    move/from16 v0, v17

    float-to-int v12, v0

    .line 1360
    .local v12, "padding":I
    const/4 v9, 0x0

    .local v9, "index":I
    invoke-virtual {v13}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v6

    .local v6, "count":I
    :goto_1
    if-ge v9, v6, :cond_5

    .line 1361
    invoke-virtual {v13, v9}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v5

    .line 1363
    .local v5, "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v17

    sget-object v18, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_DRAWABLE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 1364
    check-cast v5, Lcom/nuance/swype/input/DrawableCandidate;

    .end local v5    # "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    iget-object v8, v5, Lcom/nuance/swype/input/DrawableCandidate;->icon:Landroid/graphics/drawable/Drawable;

    .line 1365
    .local v8, "icon":Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getHeight()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1366
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 1367
    .local v15, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidthWithoutPadding:[I

    move-object/from16 v17, v0

    aput v15, v17, v9

    .line 1375
    .end local v8    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTooltipWordWidth:[I

    move-object/from16 v17, v0

    aput v15, v17, v9

    .line 1376
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    move/from16 v17, v0

    add-int v17, v17, v15

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    .line 1360
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1344
    .end local v6    # "count":I
    .end local v9    # "index":I
    .end local v11    # "needRefresh":Z
    .end local v12    # "padding":I
    .end local v15    # "width":I
    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1369
    .restart local v5    # "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    .restart local v6    # "count":I
    .restart local v9    # "index":I
    .restart local v11    # "needRefresh":Z
    .restart local v12    # "padding":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1370
    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1371
    .local v16, "word":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidthWithoutPadding:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    aput v18, v17, v9

    .line 1372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidthWithoutPadding:[I

    move-object/from16 v17, v0

    aget v17, v17, v9

    add-int v15, v17, v12

    .restart local v15    # "width":I
    goto :goto_2

    .line 1380
    .end local v5    # "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    .end local v6    # "count":I
    .end local v9    # "index":I
    .end local v12    # "padding":I
    .end local v15    # "width":I
    .end local v16    # "word":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTooltipWordWidth:[I

    .local v4, "arr$":[I
    array-length v10, v4

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_3
    if-ge v7, v10, :cond_5

    aget v14, v4, v7

    .line 1381
    .local v14, "w":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    move/from16 v17, v0

    add-int v17, v17, v14

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    .line 1380
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1386
    .end local v4    # "arr$":[I
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    .end local v14    # "w":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTextSize:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1388
    return-void
.end method

.method private drawToolTip(Landroid/graphics/Canvas;)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1391
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTooltip:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    if-nez v2, :cond_1

    .line 1456
    :cond_0
    :goto_0
    return-void

    .line 1395
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTooltip:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getTooltip(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v19

    .line 1397
    .local v19, "tooltip":Lcom/nuance/input/swypecorelib/Candidates;
    if-eqz v19, :cond_0

    .line 1402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mAlphaTextSize:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1405
    invoke-virtual/range {v19 .. v19}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v11

    .line 1407
    .local v11, "count":I
    const/16 v21, 0x0

    .line 1408
    .local v21, "x":I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getHeight()I

    move-result v2

    .line 1409
    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mDescent:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    div-int/lit8 v22, v2, 0x2

    .line 1410
    .local v22, "y":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    .line 1412
    .local v8, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mColorRecommended:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1414
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    .line 1416
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v11, :cond_4

    .line 1417
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v10

    .line 1418
    .local v10, "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v10}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v17

    .line 1420
    .local v17, "source":Lcom/nuance/input/swypecorelib/WordCandidate$Source;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidthWithoutPadding:[I

    aget v2, v2, v12

    int-to-float v0, v2

    move/from16 v18, v0

    .line 1421
    .local v18, "textWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTooltipWordWidth:[I

    aget v20, v2, v12

    .line 1423
    .local v20, "wordWidth":I
    sget-object v2, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_DRAWABLE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-object/from16 v0, v17

    if-eq v0, v2, :cond_2

    .line 1424
    invoke-virtual {v10}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1425
    .local v3, "suggestion":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move/from16 v0, v21

    int-to-float v2, v0

    move/from16 v0, v20

    int-to-float v6, v0

    sub-float v6, v6, v18

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v2

    move/from16 v0, v22

    int-to-float v7, v0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 1449
    .end local v3    # "suggestion":Ljava/lang/CharSequence;
    .end local v10    # "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    :goto_2
    add-int v21, v21, v20

    .line 1450
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    add-int v2, v2, v20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    .line 1416
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1428
    .restart local v10    # "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    :cond_2
    check-cast v10, Lcom/nuance/swype/input/DrawableCandidate;

    .end local v10    # "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    iget-object v13, v10, Lcom/nuance/swype/input/DrawableCandidate;->icon:Landroid/graphics/drawable/Drawable;

    .line 1431
    .local v13, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v2, v4

    .line 1432
    .local v9, "availableHeight":I
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, v9, v2

    div-int/lit8 v16, v2, 0x2

    .line 1435
    .local v16, "iconTop":I
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 1436
    .local v14, "iconScale":D
    if-gez v16, :cond_3

    .line 1437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 1438
    int-to-double v4, v9

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-double v6, v2

    div-double v14, v4, v6

    .line 1441
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v14

    double-to-int v4, v4

    move/from16 v0, v16

    int-to-double v6, v0

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-double v0, v5

    move-wide/from16 v24, v0

    mul-double v24, v24, v14

    add-double v6, v6, v24

    double-to-int v5, v6

    move/from16 v0, v16

    invoke-virtual {v13, v2, v0, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1443
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1444
    move/from16 v0, v18

    float-to-int v2, v0

    sub-int v2, v20, v2

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, v21

    int-to-float v2, v2

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1445
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1446
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    .line 1454
    .end local v9    # "availableHeight":I
    .end local v13    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v14    # "iconScale":D
    .end local v16    # "iconTop":I
    .end local v17    # "source":Lcom/nuance/input/swypecorelib/WordCandidate$Source;
    .end local v18    # "textWidth":F
    .end local v20    # "wordWidth":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_0
.end method

.method private getMaxScroll()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1297
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    if-nez v2, :cond_0

    .line 1315
    :goto_0
    return v1

    .line 1301
    :cond_0
    const/4 v0, 0x0

    .line 1305
    .local v0, "maxScroll":I
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->allowFullScroll:Z

    if-nez v2, :cond_2

    .line 1306
    iget v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v3

    sub-int v0, v2, v3

    .line 1315
    :cond_1
    :goto_1
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    .line 1308
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    array-length v2, v2

    if-lez v2, :cond_1

    .line 1312
    iget v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getLeftWidth()I

    move-result v3

    sub-int v0, v2, v3

    goto :goto_1
.end method

.method private getTooltip(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;)Lcom/nuance/input/swypecorelib/Candidates;
    .locals 2
    .param p1, "tooltip"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    .prologue
    .line 1319
    sget-object v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$3;->$SwitchMap$com$nuance$swype$input$chinese$CJKCandidatesListView$Tooltip:[I

    invoke-virtual {p1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1338
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1321
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mNotMatchTooltip:Lcom/nuance/input/swypecorelib/Candidates;

    if-nez v0, :cond_0

    .line 1322
    new-instance v0, Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getToolTips()Lcom/nuance/swype/input/ToolTips;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/ToolTips;->createNoMatchTip()Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Lcom/nuance/input/swypecorelib/Candidates;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mNotMatchTooltip:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mNotMatchTooltip:Lcom/nuance/input/swypecorelib/Candidates;

    goto :goto_0

    .line 1329
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSwypeTooltip:Lcom/nuance/input/swypecorelib/Candidates;

    if-nez v0, :cond_1

    .line 1330
    new-instance v0, Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getToolTips()Lcom/nuance/swype/input/ToolTips;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/ToolTips;->createSwypeKeyTip()Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Lcom/nuance/input/swypecorelib/Candidates;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSwypeTooltip:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1335
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSwypeTooltip:Lcom/nuance/input/swypecorelib/Candidates;

    goto :goto_0

    .line 1319
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isHardKeyboardActive()Z
    .locals 2

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 708
    .local v0, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private needMoreWords()Z
    .locals 2

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollToTarget()V
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 643
    iget v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 644
    iget v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v0, v2

    .line 645
    .local v0, "dist":D
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v2

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    div-double/2addr v4, v6

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v12

    add-double/2addr v4, v8

    double-to-int v3, v4

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollToX(I)V

    .line 647
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    if-lt v2, v3, :cond_0

    .line 648
    iget v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollToX(I)V

    .line 658
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->onScrollContentChanged()V

    .line 659
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    .line 660
    return-void

    .line 651
    .end local v0    # "dist":D
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    sub-int/2addr v2, v3

    int-to-double v0, v2

    .line 652
    .restart local v0    # "dist":D
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v2

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    div-double/2addr v4, v6

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v12

    add-double/2addr v4, v8

    double-to-int v3, v4

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollToX(I)V

    .line 654
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    if-gt v2, v3, :cond_0

    .line 655
    iget v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollToX(I)V

    goto :goto_0
.end method

.method private slide()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 597
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v3

    int-to-float v2, v3

    .line 598
    .local v2, "oldX":F
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getMaxScroll()I

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 602
    .local v0, "maxScroll":I
    iget v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    .line 607
    .local v1, "oldV":F
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v3

    iget v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    mul-float/2addr v4, v6

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->pull(F)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollToX(I)V

    .line 608
    iget v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    iget v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mA:F

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    iput v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    .line 610
    iget v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v6

    if-gez v3, :cond_0

    .line 611
    iput v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    .line 615
    :cond_0
    iget v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    mul-float/2addr v3, v1

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v3

    if-le v3, v0, :cond_3

    :cond_1
    cmpg-float v3, v2, v5

    if-gez v3, :cond_2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v3

    if-gez v3, :cond_3

    :cond_2
    int-to-float v3, v0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_4

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v3

    if-gt v3, v0, :cond_4

    .line 617
    :cond_3
    iput v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    .line 618
    iput v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mA:F

    .line 619
    cmpg-float v3, v2, v5

    if-gez v3, :cond_6

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v3

    if-ltz v3, :cond_6

    .line 620
    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollToX(I)V

    .line 626
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v3

    iput v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    .line 627
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->onScrollContentChanged()V

    .line 628
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->needMoreWords()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 629
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;

    invoke-interface {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;->requestMoreWords()V

    .line 634
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    .line 635
    return-void

    .line 621
    :cond_6
    int-to-float v3, v0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_4

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v3

    if-gt v3, v0, :cond_4

    .line 622
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollToX(I)V

    goto :goto_0
.end method


# virtual methods
.method public abortKey()V
    .locals 1

    .prologue
    .line 1124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mAbortKey:Z

    .line 1125
    return-void
.end method

.method protected bound(FFF)F
    .locals 1
    .param p1, "val"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F

    .prologue
    .line 225
    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    .line 230
    .end local p2    # "min":F
    :goto_0
    return p2

    .line 227
    .restart local p2    # "min":F
    :cond_0
    cmpl-float v0, p1, p3

    if-lez v0, :cond_1

    move p2, p3

    .line 228
    goto :goto_0

    :cond_1
    move p2, p1

    .line 230
    goto :goto_0
.end method

.method protected calcAccel()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 519
    iget v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    cmpl-float v5, v4, v5

    if-nez v5, :cond_1

    move v2, v4

    .line 520
    .local v2, "vUnitVect":F
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v5

    int-to-float v3, v5

    .line 521
    .local v3, "x":F
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getMaxScroll()I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 525
    .local v0, "maxScroll":I
    cmpg-float v5, v3, v4

    if-ltz v5, :cond_0

    int-to-float v5, v0

    cmpl-float v5, v3, v5

    if-lez v5, :cond_5

    .line 526
    :cond_0
    cmpg-float v5, v3, v4

    if-gez v5, :cond_2

    move v1, v3

    .line 528
    .local v1, "oobDist":F
    :goto_1
    mul-float v5, v2, v1

    cmpl-float v5, v5, v4

    if-lez v5, :cond_3

    .line 529
    const v4, -0x445c28f6    # -0.005f

    mul-float/2addr v4, v2

    mul-float/2addr v4, v1

    mul-float/2addr v4, v1

    iput v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mA:F

    .line 530
    iget v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mA:F

    const/high16 v5, -0x3ee00000    # -10.0f

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {p0, v4, v5, v6}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->bound(FFF)F

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mA:F

    .line 550
    .end local v1    # "oobDist":F
    :goto_2
    return-void

    .line 519
    .end local v0    # "maxScroll":I
    .end local v2    # "vUnitVect":F
    .end local v3    # "x":F
    :cond_1
    iget v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    iget v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float v2, v5, v6

    goto :goto_0

    .line 526
    .restart local v0    # "maxScroll":I
    .restart local v2    # "vUnitVect":F
    .restart local v3    # "x":F
    :cond_2
    int-to-float v5, v0

    sub-float v1, v3, v5

    goto :goto_1

    .line 533
    .restart local v1    # "oobDist":F
    :cond_3
    iput v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mA:F

    .line 534
    iput v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    .line 535
    cmpg-float v4, v1, v4

    if-gez v4, :cond_4

    .line 536
    iput v7, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    .line 540
    :goto_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    goto :goto_2

    .line 538
    :cond_4
    iput v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    goto :goto_3

    .line 543
    .end local v1    # "oobDist":F
    :cond_5
    iget v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_6

    .line 544
    const v4, -0x40e66666    # -0.6f

    mul-float/2addr v4, v2

    iput v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mA:F

    goto :goto_2

    .line 546
    :cond_6
    iput v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mA:F

    goto :goto_2
.end method

.method public calculateAllowedCandidateNum()V
    .locals 7

    .prologue
    const/16 v5, 0x1e

    .line 1514
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 1515
    .local v1, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    :goto_0
    iput v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->allowedCandidateNum:I

    .line 1517
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/nuance/swype/input/R$string;->label_chn_key:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1518
    .local v2, "singleCandidate":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 1519
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    iget v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mMinPadWidth:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float v3, v4, v6

    .line 1520
    .local v3, "width":F
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getDisplayWidth()I

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v6

    div-int/2addr v4, v6

    add-int/lit8 v0, v4, 0x2

    .line 1521
    .local v0, "allowedMax":I
    if-lez v0, :cond_0

    if-ge v0, v5, :cond_0

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getDisplayWidth()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v0

    mul-float/2addr v5, v3

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 1523
    iput v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->allowedCandidateNum:I

    .line 1526
    .end local v0    # "allowedMax":I
    .end local v3    # "width":F
    :cond_0
    return-void

    .line 1515
    .end local v2    # "singleCandidate":Ljava/lang/String;
    :cond_1
    const/16 v4, 0xf

    goto :goto_0
.end method

.method public clear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 892
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mShowTooltip:Z

    .line 894
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 895
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 896
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 897
    iput v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchY:I

    .line 898
    iput v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchX:I

    .line 899
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    .line 900
    iput v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    .line 901
    iput v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    .line 902
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    .line 903
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 904
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 906
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollToX(I)V

    .line 907
    iput v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    .line 908
    iput v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mA:F

    .line 909
    iput v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    .line 910
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->onScrollContentChanged()V

    .line 913
    :cond_0
    return-void
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    return v0
.end method

.method public disableHighlight()V
    .locals 1

    .prologue
    .line 1077
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mEnableHighlight:Z

    .line 1078
    return-void
.end method

.method public drawCandidates(I)V
    .locals 1
    .param p1, "defaultIndex"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    .line 507
    iput p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    .line 508
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 509
    return-void
.end method

.method public enableHighlight()V
    .locals 1

    .prologue
    .line 1073
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mEnableHighlight:Z

    .line 1074
    return-void
.end method

.method public getAllowedCandidateNumber()I
    .locals 2

    .prologue
    const/16 v0, 0x1e

    .line 1535
    iget v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->allowedCandidateNum:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->allowedCandidateNum:I

    if-ge v1, v0, :cond_1

    .line 1536
    iget v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->allowedCandidateNum:I

    .line 1539
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v0, 0xf

    goto :goto_0
.end method

.method public getAltCharacterConverted()Z
    .locals 1

    .prologue
    .line 1471
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->altCharacterConverted:Z

    return v0
.end method

.method protected getCandidateSize()V
    .locals 4

    .prologue
    .line 1495
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 1496
    .local v0, "sp":Lcom/nuance/swype/input/UserPreferences;
    iget v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTextSizeInit:I

    int-to-float v1, v1

    const-string v2, "Candidates_Size"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v3}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getCandidatesSize(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;F)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTextSize:I

    .line 1498
    return-void
.end method

.method public getCenterCandidateIndex()I
    .locals 7

    .prologue
    const/4 v4, -0x1

    .line 1565
    const/4 v1, 0x0

    .line 1566
    .local v1, "i":I
    const/4 v2, -0x1

    .line 1567
    .local v2, "item":I
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 1568
    .local v0, "count":I
    if-gtz v0, :cond_0

    .line 1582
    :goto_0
    return v4

    .line 1571
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v6

    add-int v3, v5, v6

    .line 1572
    .local v3, "rightEdge":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1573
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v5, v5, v1

    if-gt v5, v3, :cond_3

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v5, v5, v1

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    aget v6, v6, v1

    add-int/2addr v5, v6

    add-int/lit8 v6, v3, 0x1

    if-lt v5, v6, :cond_3

    .line 1574
    move v2, v1

    .line 1579
    :cond_1
    if-ne v2, v4, :cond_2

    .line 1580
    move v2, v0

    .line 1582
    :cond_2
    div-int/lit8 v4, v2, 0x2

    goto :goto_0

    .line 1577
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getCurrentHighlighted()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1088
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->wordCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    .line 1092
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstCandidateInCurrentPage()I
    .locals 5

    .prologue
    .line 1203
    const/4 v2, 0x0

    .line 1204
    .local v2, "i":I
    const/4 v1, -0x1

    .line 1206
    .local v1, "firstItem":I
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1208
    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1209
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v3, v3, v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 1210
    move v1, v2

    .line 1215
    :cond_0
    return v1

    .line 1213
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getFirstCandidateIndexInNextOrPreviousPage(Z)I
    .locals 7
    .param p1, "isNextPage"    # Z

    .prologue
    .line 1146
    const/4 v2, 0x0

    .line 1147
    .local v2, "i":I
    const/4 v1, -0x1

    .line 1149
    .local v1, "firstItem":I
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 1150
    .local v0, "count":I
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isHardKeyboardActive()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1151
    if-eqz p1, :cond_3

    .line 1152
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v6

    add-int v4, v5, v6

    .line 1153
    .local v4, "rightEdge":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1154
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v5, v5, v2

    if-ge v5, v4, :cond_0

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v5, v5, v2

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    aget v6, v6, v2

    add-int/2addr v5, v6

    if-lt v5, v4, :cond_2

    .line 1155
    :cond_0
    move v1, v2

    .line 1194
    .end local v4    # "rightEdge":I
    :cond_1
    :goto_1
    return v1

    .line 1158
    .restart local v4    # "rightEdge":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1161
    .end local v4    # "rightEdge":I
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v3

    .line 1162
    .local v3, "leftEdge":I
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLeftArrowShowable:Z

    if-eqz v5, :cond_4

    .line 1163
    iget v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLeftArrowWidth:I

    sub-int v5, v3, v5

    iget v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mMinPadWidth:I

    sub-int v3, v5, v6

    .line 1164
    :cond_4
    add-int/lit8 v2, v0, -0x1

    .line 1165
    :goto_2
    if-lez v2, :cond_5

    .line 1166
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v5, v5, v2

    if-lt v5, v3, :cond_5

    .line 1167
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1172
    :cond_5
    move v1, v2

    .line 1173
    goto :goto_1

    .line 1175
    .end local v3    # "leftEdge":I
    :cond_6
    if-eqz p1, :cond_9

    .line 1176
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v6

    add-int v4, v5, v6

    .line 1177
    .restart local v4    # "rightEdge":I
    :goto_3
    if-ge v2, v0, :cond_1

    .line 1178
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v5, v5, v2

    if-gt v5, v4, :cond_7

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v5, v5, v2

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    aget v6, v6, v2

    add-int/2addr v5, v6

    if-lt v5, v4, :cond_7

    .line 1179
    move v1, v2

    .line 1180
    goto :goto_1

    .line 1182
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1190
    .end local v4    # "rightEdge":I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 1185
    :cond_9
    if-ge v2, v0, :cond_1

    .line 1186
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v5, v5, v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v6

    if-ge v5, v6, :cond_8

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v5, v5, v2

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    aget v6, v6, v2

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_8

    .line 1187
    move v1, v2

    .line 1188
    goto :goto_1
.end method

.method public getLeftArrowStatus()Z
    .locals 1

    .prologue
    .line 1136
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLeftArrowShowable:Z

    return v0
.end method

.method public getLeftDistance()I
    .locals 1

    .prologue
    .line 1561
    iget v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLeftArrowWidth:I

    return v0
.end method

.method public getLeftWidth()I
    .locals 1

    .prologue
    .line 1128
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getLeft()I

    move-result v0

    return v0
.end method

.method public getRightWidth()I
    .locals 1

    .prologue
    .line 1132
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getRight()I

    move-result v0

    return v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    return v0
.end method

.method public hideTooltip()V
    .locals 1

    .prologue
    .line 1284
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mShowTooltip:Z

    if-eqz v0, :cond_0

    .line 1285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mShowTooltip:Z

    .line 1286
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    .line 1288
    :cond_0
    return-void
.end method

.method public init()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 250
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 252
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    sget v2, Lcom/nuance/swype/input/R$attr;->listSelectorBackgroundPressed:I

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    .line 253
    sget v2, Lcom/nuance/swype/input/R$attr;->keyboardSuggestStripDividerCJK:I

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 255
    iput-boolean v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mEnableHighlight:Z

    .line 257
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    .line 258
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mColorNormal:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 260
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 261
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 262
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mDescent:I

    .line 263
    sget-object v2, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mItalic:Landroid/graphics/Typeface;

    .line 265
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;

    .line 266
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;

    invoke-direct {v4, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;-><init>(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 290
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v5}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 291
    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 292
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setWillNotDraw(Z)V

    .line 293
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setHorizontalScrollBarEnabled(Z)V

    .line 294
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setVerticalScrollBarEnabled(Z)V

    .line 295
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 297
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 298
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordSpace:I

    int-to-float v2, v2

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mMinPadWidth:I

    .line 299
    const/high16 v2, 0x42200000    # 40.0f

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mMinCandidateWidth:I

    .line 300
    return-void
.end method

.method public isCandidateListEmpty()Z
    .locals 1

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExactKeyboardShowable()Z
    .locals 1

    .prologue
    .line 1479
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mExactKeyboardShowable:Z

    return v0
.end method

.method public isKeyOutofLeftBound(I)Z
    .locals 3
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x1

    .line 1244
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v1, v1, p1

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1249
    :cond_0
    :goto_0
    return v0

    .line 1246
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v1, v1, p1

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 1249
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyOutofRightBound(I)Z
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v1, 0x1

    .line 1226
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v3

    add-int v0, v2, v3

    .line 1227
    .local v0, "rightEdge":I
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v2, v2, p1

    if-lt v2, v0, :cond_1

    .line 1232
    :cond_0
    :goto_0
    return v1

    .line 1229
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v2, v2, p1

    if-gt v2, v0, :cond_2

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v2, v2, p1

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    aget v3, v3, p1

    add-int/2addr v2, v3

    if-ge v2, v0, :cond_0

    .line 1232
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLeftArrowShowable()Z
    .locals 1

    .prologue
    .line 1108
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLeftArrowShowable:Z

    return v0
.end method

.method public isScrolling()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 553
    iget v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mA:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingSwypeTooltip()Z
    .locals 1

    .prologue
    .line 1291
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mShowTooltip:Z

    return v0
.end method

.method protected longPressFirstWord()V
    .locals 0

    .prologue
    .line 1022
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1035
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1036
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 342
    sget-object v2, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onDraw(): canvas: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 343
    move-object/from16 v0, p0

    iget v15, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    .line 344
    .local v15, "measuredWidth":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 347
    new-instance v2, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-direct {v2, v5, v6, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 353
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mShowTooltip:Z

    if-eqz v2, :cond_1

    if-nez v15, :cond_1

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTooltip:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->computeDisplayingCandidateDrawingRegion(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;)V

    .line 357
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchX:I

    move/from16 v20, v0

    .line 358
    .local v20, "touchX":I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v21

    .line 359
    .local v21, "width":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->alignLeft:Z

    if-nez v2, :cond_2

    move/from16 v0, v21

    if-ge v15, v0, :cond_2

    if-eqz p1, :cond_2

    .line 360
    sub-int v2, v21, v15

    div-int/lit8 v16, v2, 0x2

    .line 361
    .local v16, "offset":I
    move/from16 v0, v16

    int-to-float v2, v0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 362
    sub-int v20, v20, v16

    .line 365
    .end local v16    # "offset":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 367
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mShowTooltip:Z

    if-eqz v2, :cond_4

    .line 369
    invoke-direct/range {p0 .. p1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->drawToolTip(Landroid/graphics/Canvas;)V

    .line 503
    :cond_4
    :goto_0
    return-void

    .line 374
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getHeight()I

    move-result v13

    .line 376
    .local v13, "height":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLeftArrowShowable:Z

    if-eqz v2, :cond_8

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLeftArrowWidth:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLeftArrowWidth:I

    move/from16 v25, v0

    add-int v7, v7, v25

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getHeight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    invoke-virtual {v2, v5, v6, v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 385
    :goto_1
    const/16 v23, 0x0

    .line 386
    .local v23, "x":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    .line 387
    .local v12, "count":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    .line 388
    .local v10, "bgPadding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    .line 389
    .local v8, "paint":Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v18

    .line 390
    .local v18, "scrollX":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mScrolled:Z

    move/from16 v19, v0

    .line 391
    .local v19, "scrolled":Z
    int-to-float v2, v13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mDescent:I

    int-to-float v5, v5

    sub-float/2addr v2, v5

    float-to-int v2, v2

    div-int/lit8 v24, v2, 0x2

    .line 393
    .local v24, "y":I
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 394
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v12, :cond_13

    .line 396
    if-nez v14, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v2

    if-ge v15, v2, :cond_6

    .line 397
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 398
    move/from16 v0, v23

    int-to-float v2, v0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 400
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 403
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 405
    .local v3, "suggestion":Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_7

    .line 406
    const/4 v4, 0x0

    .line 410
    .local v4, "startIndex":I
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 412
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const v5, 0x9fff

    if-ne v2, v5, :cond_e

    .line 413
    const/4 v2, 0x1

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v5, 0x7e

    if-ne v2, v5, :cond_9

    .line 414
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    if-ne v2, v14, :cond_7

    .line 415
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    .line 394
    .end local v4    # "startIndex":I
    :cond_7
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 381
    .end local v3    # "suggestion":Ljava/lang/CharSequence;
    .end local v8    # "paint":Landroid/graphics/Paint;
    .end local v10    # "bgPadding":Landroid/graphics/Rect;
    .end local v12    # "count":I
    .end local v14    # "i":I
    .end local v18    # "scrollX":I
    .end local v19    # "scrolled":Z
    .end local v23    # "x":I
    .end local v24    # "y":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getHeight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    invoke-virtual {v2, v5, v6, v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_1

    .line 419
    .restart local v3    # "suggestion":Ljava/lang/CharSequence;
    .restart local v4    # "startIndex":I
    .restart local v8    # "paint":Landroid/graphics/Paint;
    .restart local v10    # "bgPadding":Landroid/graphics/Rect;
    .restart local v12    # "count":I
    .restart local v14    # "i":I
    .restart local v18    # "scrollX":I
    .restart local v19    # "scrolled":Z
    .restart local v23    # "x":I
    .restart local v24    # "y":I
    :cond_9
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 420
    const/4 v4, 0x1

    .line 421
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mColorComponent:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 440
    :goto_4
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v8, v3, v4, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    float-to-int v0, v2

    move/from16 v22, v0

    .line 442
    .local v22, "wordWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mMinPadWidth:I

    move/from16 v17, v0

    .line 443
    .local v17, "padWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    aput v22, v2, v14

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPadWidth:[I

    aput v17, v2, v14

    .line 445
    mul-int/lit8 v2, v17, 0x2

    add-int v11, v22, v2

    .line 447
    .local v11, "cellWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aput v23, v2, v14

    .line 448
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLeftArrowShowable:Z

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLeftArrowWidth:I

    .line 449
    .local v9, "arrowOffset":I
    :goto_5
    add-int v2, v20, v18

    add-int v5, v23, v9

    if-lt v2, v5, :cond_b

    add-int v2, v20, v18

    add-int v5, v23, v11

    add-int/2addr v5, v9

    if-ge v2, v5, :cond_b

    if-nez v19, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchX:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_b

    .line 452
    if-eqz p1, :cond_a

    .line 453
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 454
    move/from16 v0, v23

    int-to-float v2, v0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v9

    iget v6, v10, Landroid/graphics/Rect;->top:I

    add-int v7, v11, v9

    invoke-virtual {v2, v5, v6, v7, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 458
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mColorPressed:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 463
    :cond_a
    move-object/from16 v0, p0

    iput v14, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    .line 466
    :cond_b
    if-eqz p1, :cond_d

    .line 467
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int v2, v23, v17

    add-int/2addr v2, v9

    int-to-float v6, v2

    move/from16 v0, v24

    int-to-float v7, v0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 469
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mColorOther:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 471
    add-int/lit8 v2, v12, -0x1

    if-lt v14, v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v2

    if-ge v15, v2, :cond_d

    .line 472
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 473
    add-int v2, v23, v11

    int-to-float v2, v2

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 475
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 478
    :cond_d
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 479
    mul-int/lit8 v2, v17, 0x2

    add-int v2, v2, v22

    add-int v23, v23, v2

    goto/16 :goto_3

    .line 422
    .end local v9    # "arrowOffset":I
    .end local v11    # "cellWidth":I
    .end local v17    # "padWidth":I
    .end local v22    # "wordWidth":I
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    if-ne v2, v14, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mEnableHighlight:Z

    if-eqz v2, :cond_f

    .line 423
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 424
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mColorRecommended:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 425
    :cond_f
    if-nez v14, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mEnableHighlight:Z

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    instance-of v2, v2, Lcom/nuance/swype/input/AlphaInputView;

    if-eqz v2, :cond_10

    .line 427
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mColorNormal:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mItalic:Landroid/graphics/Typeface;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_4

    .line 430
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mAssociationWord:Z

    if-eqz v2, :cond_11

    .line 431
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mColorComponent:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 433
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mColorOther:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 448
    .restart local v11    # "cellWidth":I
    .restart local v17    # "padWidth":I
    .restart local v22    # "wordWidth":I
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 482
    .end local v3    # "suggestion":Ljava/lang/CharSequence;
    .end local v4    # "startIndex":I
    .end local v11    # "cellWidth":I
    .end local v17    # "padWidth":I
    .end local v22    # "wordWidth":I
    :cond_13
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    .line 483
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mExactKeyboardShowable:Z

    if-nez v2, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v2

    if-gez v2, :cond_14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLeftArrowShowable:Z

    if-eqz v2, :cond_14

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->prevBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V

    .line 485
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mExactKeyboardShowable:Z

    .line 487
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v5

    if-eq v2, v5, :cond_15

    .line 488
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollToTarget()V

    .line 497
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mMouseDown:Z

    if-nez v2, :cond_4

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->calcAccel()V

    .line 499
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mA:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_16

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_4

    .line 500
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->slide()V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1460
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 1461
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 934
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 987
    :cond_0
    :goto_0
    return v8

    .line 938
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 939
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 940
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 941
    .local v2, "y":I
    iput v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchY:I

    .line 942
    iput v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchX:I

    .line 944
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 946
    :pswitch_0
    iput-boolean v8, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mMouseDown:Z

    .line 947
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mDragSelected:Z

    .line 948
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mAbortKey:Z

    .line 950
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSwipeSpeed:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->flush()V

    .line 951
    iput v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mA:F

    .line 952
    iput v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    .line 953
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mScrolled:Z

    .line 954
    iput v7, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    .line 955
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    .line 956
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 957
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLongPressTimeout:I

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 963
    :pswitch_1
    if-gtz v2, :cond_0

    iget-boolean v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mDragSelected:Z

    if-nez v3, :cond_0

    .line 965
    iput-boolean v8, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mDragSelected:Z

    goto :goto_0

    .line 969
    :pswitch_2
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 970
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mMouseDown:Z

    .line 971
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mDragSelected:Z

    .line 973
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSwipeSpeed:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->isFlushed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 974
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSwipeSpeed:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->get()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setVelocity(F)V

    .line 976
    :cond_2
    iget-boolean v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mScrolled:Z

    if-nez v3, :cond_3

    iget v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    if-eq v3, v7, :cond_3

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 978
    iget-boolean v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mAbortKey:Z

    if-nez v3, :cond_3

    .line 979
    iget v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    iget v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p0, v4, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 980
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->trySelect()V

    .line 983
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->removeHighlight()V

    goto/16 :goto_0

    .line 944
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected pull(F)F
    .locals 14
    .param p1, "dist"    # F

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    .line 557
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v7

    int-to-float v6, v7

    .line 558
    .local v6, "x":F
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v5

    .line 559
    .local v5, "width":I
    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getMaxScroll()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 562
    .local v1, "maxScroll":I
    int-to-float v7, v5

    const/high16 v8, 0x40800000    # 4.0f

    div-float v0, v7, v8

    .line 564
    .local v0, "maxPullDist":F
    cmpg-float v7, v6, v12

    if-gez v7, :cond_1

    .line 565
    move v2, v6

    .line 572
    .local v2, "oobDist":F
    :goto_0
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 574
    .local v3, "pinnedOobDist":F
    mul-float v7, v3, v3

    mul-float v8, v0, v0

    div-float/2addr v7, v8

    sub-float v7, v13, v7

    float-to-double v8, v7

    const-wide v10, 0x3fe999999999999aL    # 0.8

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v7, v8

    .line 576
    mul-float v4, v7, p1

    .line 579
    .local v4, "ret":F
    mul-float v7, p1, v2

    cmpg-float v7, v7, v12

    if-gez v7, :cond_0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v13

    if-gez v7, :cond_0

    .line 581
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float v4, p1, v7

    .line 587
    :cond_0
    return v4

    .line 566
    .end local v2    # "oobDist":F
    .end local v3    # "pinnedOobDist":F
    .end local v4    # "ret":F
    :cond_1
    int-to-float v7, v1

    cmpl-float v7, v6, v7

    if-lez v7, :cond_2

    .line 567
    int-to-float v7, v1

    sub-float v2, v6, v7

    .restart local v2    # "oobDist":F
    goto :goto_0

    .line 569
    .end local v2    # "oobDist":F
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "oobDist":F
    goto :goto_0
.end method

.method public readStyles(I)V
    .locals 8
    .param p1, "aResid"    # I

    .prologue
    const/16 v7, 0x14

    const/high16 v6, -0x10000

    .line 1044
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/nuance/swype/input/R$styleable;->WordListView:[I

    invoke-virtual {v4, p1, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1046
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    .line 1048
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_8

    .line 1049
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 1051
    .local v1, "attr":I
    sget v4, Lcom/nuance/swype/input/R$styleable;->WordListView_candidateNormal:I

    if-ne v1, v4, :cond_1

    .line 1052
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mColorNormal:I

    .line 1048
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1053
    :cond_1
    sget v4, Lcom/nuance/swype/input/R$styleable;->WordListView_candidateRecommended:I

    if-ne v1, v4, :cond_2

    .line 1054
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mColorRecommended:I

    goto :goto_1

    .line 1055
    :cond_2
    sget v4, Lcom/nuance/swype/input/R$styleable;->WordListView_candidateOther:I

    if-ne v1, v4, :cond_3

    .line 1056
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mColorOther:I

    goto :goto_1

    .line 1057
    :cond_3
    sget v4, Lcom/nuance/swype/input/R$styleable;->WordListView_candidateComponent:I

    if-ne v1, v4, :cond_4

    .line 1058
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mColorComponent:I

    goto :goto_1

    .line 1059
    :cond_4
    sget v4, Lcom/nuance/swype/input/R$styleable;->WordListView_textSizeCJK:I

    if-ne v1, v4, :cond_5

    .line 1060
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTextSizeInit:I

    goto :goto_1

    .line 1061
    :cond_5
    sget v4, Lcom/nuance/swype/input/R$styleable;->WordListView_textSize:I

    if-ne v1, v4, :cond_6

    .line 1062
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mAlphaTextSize:I

    goto :goto_1

    .line 1063
    :cond_6
    sget v4, Lcom/nuance/swype/input/R$styleable;->WordListView_wordSpace:I

    if-ne v1, v4, :cond_7

    .line 1064
    const/16 v4, 0xa

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordSpace:I

    goto :goto_1

    .line 1065
    :cond_7
    sget v4, Lcom/nuance/swype/input/R$styleable;->WordListView_candidatePressed:I

    if-ne v1, v4, :cond_0

    .line 1066
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mColorPressed:I

    goto :goto_1

    .line 1069
    .end local v1    # "attr":I
    :cond_8
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1070
    return-void
.end method

.method protected removeHighlight()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1016
    iput v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchY:I

    .line 1017
    iput v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchX:I

    .line 1018
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    .line 1019
    return-void
.end method

.method public scrollEnd()V
    .locals 1

    .prologue
    .line 1557
    iget v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateScrollPosition(I)V

    .line 1558
    return-void
.end method

.method public scrollHead()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1544
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    aget v2, v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v2

    sub-int v0, v1, v2

    .line 1547
    .local v0, "leftEdge":I
    if-gez v0, :cond_0

    .line 1548
    const/4 v0, 0x0

    .line 1550
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1551
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1553
    :cond_1
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateScrollPosition(I)V

    .line 1554
    return-void
.end method

.method public scrollLeftToHighlight(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 838
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v1, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->isScrollable(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 839
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v1, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->prevBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V

    .line 853
    :goto_0
    return-void

    .line 841
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v2

    sub-int v0, v1, v2

    .line 842
    .local v0, "leftEdge":I
    if-gez v0, :cond_1

    .line 843
    const/4 v0, 0x0

    .line 847
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 848
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 850
    :cond_2
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateScrollPosition(I)V

    goto :goto_0
.end method

.method public scrollNext()V
    .locals 9

    .prologue
    .line 781
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v6, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->isScrollable(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 782
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v6, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->nextBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V

    .line 835
    :goto_0
    return-void

    .line 784
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isHardKeyboardActive()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 785
    const/4 v1, 0x0

    .line 786
    .local v1, "i":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v5

    .line 787
    .local v5, "targetX":I
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 788
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 790
    .local v2, "iParentWidth":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_1

    .line 791
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 794
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getRight()I

    move-result v6

    sub-int v3, v2, v6

    .line 795
    .local v3, "rightArrowSize":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    sub-int v4, v6, v3

    .line 796
    .local v4, "rightEdge":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 797
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v6, v6, v1

    if-gt v6, v4, :cond_2

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v6, v6, v1

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    aget v7, v7, v1

    add-int/2addr v6, v7

    if-lt v6, v4, :cond_6

    .line 798
    :cond_2
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v6, v6, v1

    iget v7, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLeftArrowWidth:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 804
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v6

    if-gt v5, v6, :cond_4

    .line 805
    move v5, v4

    .line 810
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getLeft()I

    move-result v6

    if-ge v6, v3, :cond_5

    .line 811
    sub-int/2addr v5, v3

    .line 814
    :cond_5
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateScrollPosition(I)V

    goto :goto_0

    .line 801
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 816
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "iParentWidth":I
    .end local v3    # "rightArrowSize":I
    .end local v4    # "rightEdge":I
    .end local v5    # "targetX":I
    :cond_7
    const/4 v1, 0x0

    .line 817
    .restart local v1    # "i":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v5

    .line 818
    .restart local v5    # "targetX":I
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 819
    .restart local v0    # "count":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v7

    add-int v4, v6, v7

    .line 820
    .restart local v4    # "rightEdge":I
    :goto_2
    if-ge v1, v0, :cond_8

    .line 821
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v6, v6, v1

    if-gt v6, v4, :cond_a

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v6, v6, v1

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    aget v7, v7, v1

    add-int/2addr v6, v7

    if-lt v6, v4, :cond_a

    .line 822
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v6, v6, v1

    iget v7, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 828
    :cond_8
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v6

    if-gt v5, v6, :cond_9

    .line 829
    move v5, v4

    .line 832
    :cond_9
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateScrollPosition(I)V

    goto/16 :goto_0

    .line 825
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public scrollPrev()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 712
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isHardKeyboardActive()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 713
    const/4 v2, 0x0

    .line 714
    .local v2, "i":I
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 715
    .local v0, "count":I
    const/4 v1, 0x0

    .line 716
    .local v1, "firstItem":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v4

    .line 717
    .local v4, "leftEdge":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v3, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 719
    .local v3, "iParentWidth":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_0

    .line 720
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 723
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getRight()I

    move-result v6

    sub-int v5, v3, v6

    .line 724
    .local v5, "rightArrowSize":I
    iget-boolean v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLeftArrowShowable:Z

    if-eqz v6, :cond_1

    .line 725
    sub-int v6, v4, v5

    iget v7, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mMinPadWidth:I

    sub-int v4, v6, v7

    .line 726
    :cond_1
    :goto_0
    if-ge v2, v0, :cond_2

    .line 727
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v6, v6, v2

    if-lt v6, v4, :cond_6

    .line 728
    if-lez v2, :cond_5

    .line 729
    add-int/lit8 v1, v2, -0x1

    .line 739
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v6, v6, v1

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    aget v7, v7, v1

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    add-int v4, v6, v5

    .line 740
    if-gez v4, :cond_3

    .line 741
    const/4 v4, 0x0

    .line 745
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v6

    if-lt v4, v6, :cond_4

    .line 746
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 748
    :cond_4
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateScrollPosition(I)V

    .line 778
    .end local v0    # "count":I
    .end local v1    # "firstItem":I
    .end local v2    # "i":I
    .end local v3    # "iParentWidth":I
    .end local v4    # "leftEdge":I
    .end local v5    # "rightArrowSize":I
    :goto_2
    return-void

    .line 731
    .restart local v0    # "count":I
    .restart local v1    # "firstItem":I
    .restart local v2    # "i":I
    .restart local v3    # "iParentWidth":I
    .restart local v4    # "leftEdge":I
    .restart local v5    # "rightArrowSize":I
    :cond_5
    const/4 v1, 0x0

    .line 732
    goto :goto_1

    .line 733
    :cond_6
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v6, v6, v2

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    aget v7, v7, v2

    add-int/2addr v6, v7

    add-int/lit8 v7, v4, -0x1

    if-lt v6, v7, :cond_7

    .line 734
    move v1, v2

    .line 735
    goto :goto_1

    .line 737
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 751
    .end local v0    # "count":I
    .end local v1    # "firstItem":I
    .end local v2    # "i":I
    .end local v3    # "iParentWidth":I
    .end local v4    # "leftEdge":I
    .end local v5    # "rightArrowSize":I
    :cond_8
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v6, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->isScrollable(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 752
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v6, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->prevBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V

    goto :goto_2

    .line 754
    :cond_9
    const/4 v2, 0x0

    .line 755
    .restart local v2    # "i":I
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 756
    .restart local v0    # "count":I
    const/4 v1, 0x0

    .line 759
    .restart local v1    # "firstItem":I
    :goto_3
    if-ge v2, v0, :cond_a

    .line 760
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v6, v6, v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v7

    if-ge v6, v7, :cond_d

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v6, v6, v2

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    aget v7, v7, v2

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-lt v6, v7, :cond_d

    .line 761
    move v1, v2

    .line 766
    :cond_a
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v6, v6, v1

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    aget v7, v7, v1

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v7

    sub-int v4, v6, v7

    .line 767
    .restart local v4    # "leftEdge":I
    if-gez v4, :cond_b

    .line 768
    const/4 v4, 0x0

    .line 772
    :cond_b
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v6

    if-lt v4, v6, :cond_c

    .line 773
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 775
    :cond_c
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateScrollPosition(I)V

    goto :goto_2

    .line 764
    .end local v4    # "leftEdge":I
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public scrollRightToHighLight(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 856
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v3, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->isScrollable(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 857
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v3, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->nextBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V

    .line 873
    :goto_0
    return-void

    .line 859
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v2

    .line 860
    .local v2, "targetX":I
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 861
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v4

    add-int v1, v3, v4

    .line 862
    .local v1, "rightEdge":I
    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 863
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v3, v3, p1

    iget v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 866
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 867
    move v2, v1

    .line 870
    :cond_2
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateScrollPosition(I)V

    goto :goto_0
.end method

.method protected scrollToX(I)V
    .locals 1
    .param p1, "newScrollX"    # I

    .prologue
    .line 1040
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollTo(II)V

    .line 1041
    return-void
.end method

.method public selectActiveWord()V
    .locals 4

    .prologue
    .line 916
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    if-ltz v0, :cond_0

    .line 917
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    iget v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    iget v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v0, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 922
    :goto_0
    return-void

    .line 920
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->trySelect()V

    goto :goto_0
.end method

.method public setAlignLeft(Z)V
    .locals 0
    .param p1, "alignLeft"    # Z

    .prologue
    .line 991
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->alignLeft:Z

    .line 992
    return-void
.end method

.method public setAltCharacterConverted(Z)V
    .locals 0
    .param p1, "converted"    # Z

    .prologue
    .line 1467
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->altCharacterConverted:Z

    .line 1468
    return-void
.end method

.method public setAssociationEnable(Z)V
    .locals 0
    .param p1, "bAssociationWord"    # Z

    .prologue
    .line 1096
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mAssociationWord:Z

    .line 1097
    return-void
.end method

.method public setExactKeyboardShowable(Z)V
    .locals 0
    .param p1, "showable"    # Z

    .prologue
    .line 1475
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mExactKeyboardShowable:Z

    .line 1476
    return-void
.end method

.method public setFullScroll(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 995
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->allowFullScroll:Z

    .line 996
    return-void
.end method

.method public setGetMoreWordsHandler(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;)V
    .locals 0
    .param p1, "getMoreWordsHandler"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;

    .line 1026
    return-void
.end method

.method public setHorizontalLayout(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "width"    # I

    .prologue
    .line 1483
    if-lez p2, :cond_0

    .line 1484
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1485
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1486
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1487
    .local v1, "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1488
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1492
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method

.method public setLeftArrowStatus(Z)V
    .locals 0
    .param p1, "leftArrow"    # Z

    .prologue
    .line 1104
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLeftArrowShowable:Z

    .line 1105
    return-void
.end method

.method public setLeftDistance(I)V
    .locals 0
    .param p1, "leftArrowWidth"    # I

    .prologue
    .line 1100
    iput p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLeftArrowWidth:I

    .line 1101
    return-void
.end method

.method public setMoreSuggestions(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 666
    .local p1, "wordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p2, "wordSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    if-eqz p1, :cond_1

    .line 667
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mShowTooltip:Z

    .line 668
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 670
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 671
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 673
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 674
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 675
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 676
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordSourceList:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 680
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setOnWordSelectActionListener(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    .line 309
    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 1116
    iput p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    .line 1117
    return-void
.end method

.method public setSuggestions(Ljava/util/List;I)V
    .locals 1
    .param p2, "defaultWordIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 683
    .local p1, "wordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;ILjava/util/List;)V

    .line 684
    return-void
.end method

.method public setSuggestions(Ljava/util/List;ILjava/util/List;)V
    .locals 2
    .param p2, "defaultWordIndex"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 689
    .local p1, "wordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p3, "wordSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    sget-object v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "setSuggestions()"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 690
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 691
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 692
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 693
    const/4 p2, 0x0

    .line 695
    :cond_0
    iput p2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    .line 696
    invoke-virtual {p0, p1, p3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setMoreSuggestions(Ljava/util/List;Ljava/util/List;)V

    .line 697
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 698
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, p2, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 702
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 703
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->onScrollContentChanged()V

    .line 704
    return-void
.end method

.method protected setVelocity(F)V
    .locals 3
    .param p1, "v"    # F

    .prologue
    .line 512
    const v0, 0x3f333333    # 0.7f

    const/high16 v1, -0x3e100000    # -30.0f

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {p0, p1, v1, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->bound(FFF)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    .line 513
    return-void
.end method

.method public showNotMatchTootip()V
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1281
    :goto_0
    return-void

    .line 1273
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mShowTooltip:Z

    .line 1275
    sget-object v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;->NOTMATCH_TOOLTIP:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->computeDisplayingCandidateDrawingRegion(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;)V

    .line 1277
    sget-object v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;->NOTMATCH_TOOLTIP:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTooltip:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    .line 1279
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->requestLayout()V

    .line 1280
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    goto :goto_0
.end method

.method public showSwypeTooltip()V
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1266
    :goto_0
    return-void

    .line 1258
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mShowTooltip:Z

    .line 1260
    sget-object v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;->SWYPE_TOOLTIP:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->computeDisplayingCandidateDrawingRegion(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;)V

    .line 1262
    sget-object v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;->SWYPE_TOOLTIP:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTooltip:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    .line 1264
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->requestLayout()V

    .line 1265
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    goto :goto_0
.end method

.method public suggestions()Ljava/util/List;
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
    .line 234
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    return-object v0
.end method

.method public takeSuggestionAt(F)V
    .locals 4
    .param p1, "x"    # F
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 1006
    float-to-int v0, p1

    iput v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchX:I

    .line 1008
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1009
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->trySelect()V

    .line 1010
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    .line 1011
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1012
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1013
    return-void
.end method

.method public touchWord(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    .line 318
    iget v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    instance-of v0, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .line 321
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setActiveCandidate(I)V

    .line 327
    :cond_0
    :goto_0
    iput p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    .line 328
    iput-object p2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    .line 329
    return-void

    .line 322
    :cond_1
    iget v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    instance-of v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .line 325
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setActiveCandidate(I)V

    goto :goto_0
.end method

.method protected trySelect()V
    .locals 3

    .prologue
    .line 925
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    iget v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 928
    :cond_0
    iget v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 929
    return-void
.end method

.method public updateCandidatesSize()V
    .locals 2

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 1502
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getCandidateSize()V

    .line 1503
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1505
    :cond_0
    return-void
.end method

.method public updateScrollPosition(I)V
    .locals 1
    .param p1, "targetX"    # I

    .prologue
    .line 877
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 878
    iput p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    .line 879
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->needMoreWords()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;

    invoke-interface {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;->requestMoreWords()V

    .line 884
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    .line 885
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mScrolled:Z

    .line 889
    :cond_1
    return-void
.end method

.method public wordCount()I
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1084
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
