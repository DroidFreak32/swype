.class public Lcom/nuance/swype/input/chinese/CJKCandidatesListView;
.super Landroid/view/View;
.source "CJKCandidatesListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.field protected static final MSG_REMOVE_THROUGH_PREVIEW:I = 0x2

.field protected static final OUT_OF_BOUNDS:I = -0x1

.field protected static final SCROLL_PIXELS:I = 0xc

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private alignLeft:Z

.field private allowFullScroll:Z

.field private altCharacterConverted:Z

.field private emojiCacheManager:Lcom/nuance/swype/input/emoji/EmojiCacheManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/swype/input/emoji/EmojiCacheManager",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public emojiInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/emoji/EmojiInfo;",
            ">;"
        }
    .end annotation
.end field

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

.field protected mDefaultWordHighlight:Landroid/graphics/drawable/Drawable;

.field protected mDescent:I

.field protected mDivider:Landroid/graphics/drawable/Drawable;

.field protected mDragSelected:Z

.field public mEmojis:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mEnableHighlight:Z

.field private mExactKeyboardShowable:Z

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mGetMoreWordsHandler:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;

.field mHandler:Landroid/os/Handler;

.field protected mItalic:Landroid/graphics/Typeface;

.field private mLeftArrowShowable:Z

.field private mLeftArrowWidth:I

.field private mLongPressTimeout:I

.field protected mMinPadWidth:I

.field protected mMouseDown:Z

.field private mNotMatchTooltip:Lcom/nuance/input/swypecorelib/Candidates;

.field protected mOnWCLSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

.field protected mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

.field protected mPadWidth:[I

.field protected mPaint:Landroid/graphics/Paint;

.field protected mScroll:Z

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

.field private mWCLTooltip:Lcom/nuance/input/swypecorelib/Candidates;

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

.field private xDown:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 100
    const/16 v0, 0x100

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->MAX_SUGGESTIONS:I

    .line 382
    const-string/jumbo v0, "CJKCandidatesListView"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 285
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->emojiInfoList:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mEmojis:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordSourceList:Ljava/util/List;

    .line 88
    iput v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchX:I

    .line 89
    iput v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchY:I

    .line 107
    const/16 v0, 0x2ee

    iput v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLongPressTimeout:I

    .line 110
    sget v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->MAX_SUGGESTIONS:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    .line 111
    sget v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->MAX_SUGGESTIONS:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPadWidth:[I

    .line 112
    sget v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->MAX_SUGGESTIONS:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mScroll:Z

    .line 130
    iput v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    .line 131
    iput v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mA:F

    .line 133
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mMouseDown:Z

    .line 134
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mDragSelected:Z

    .line 136
    iput v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    .line 142
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mAssociationWord:Z

    .line 144
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLeftArrowShowable:Z

    .line 145
    iput v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLeftArrowWidth:I

    .line 147
    iput-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTooltipWordWidth:[I

    .line 148
    iput-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidthWithoutPadding:[I

    .line 150
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mExactKeyboardShowable:Z

    .line 152
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mShowTooltip:Z

    .line 158
    iput-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTooltip:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    .line 159
    iput-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSwypeTooltip:Lcom/nuance/input/swypecorelib/Candidates;

    .line 160
    iput-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mNotMatchTooltip:Lcom/nuance/input/swypecorelib/Candidates;

    .line 161
    iput-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWCLTooltip:Lcom/nuance/input/swypecorelib/Candidates;

    .line 172
    new-instance v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;-><init>(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->handlerCallback:Landroid/os/Handler$Callback;

    .line 218
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mHandler:Landroid/os/Handler;

    .line 255
    new-instance v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;-><init>(F)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSwipeSpeed:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;

    .line 286
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mContext:Landroid/content/Context;

    .line 287
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordSourceList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getMaxScroll()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->needMoreWords()Z

    move-result v0

    return v0
.end method

.method private computeDisplayingCandidateDrawingRegion(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;)V
    .registers 16
    .param p1, "t"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1432
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getTooltip(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v6

    .line 1433
    .local v6, "tooltip":Lcom/nuance/input/swypecorelib/Candidates;
    iget-object v12, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTooltip:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    if-eqz v12, :cond_e

    iget-object v12, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTooltip:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    if-eq v12, p1, :cond_7a

    :cond_e
    move v4, v11

    .line 1435
    .local v4, "needRefresh":Z
    :goto_f
    iput v10, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    .line 1438
    iget-object v12, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v13, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mAlphaTextSize:I

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1439
    iget-object v12, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1443
    if-nez v4, :cond_2a

    iget-object v12, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidthWithoutPadding:[I

    if-eqz v12, :cond_2a

    iget-object v12, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTooltipWordWidth:[I

    if-nez v12, :cond_99

    .line 1444
    :cond_2a
    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v12

    new-array v12, v12, [I

    iput-object v12, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidthWithoutPadding:[I

    .line 1445
    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v12

    new-array v12, v12, [I

    iput-object v12, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTooltipWordWidth:[I

    .line 1448
    iget-object v12, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13, v10, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v11

    float-to-int v5, v11

    .line 1449
    .local v5, "padding":I
    const/4 v3, 0x0

    .local v3, "index":I
    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v1

    .local v1, "count":I
    :goto_49
    if-ge v3, v1, :cond_a8

    .line 1450
    invoke-virtual {v6, v3}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    .line 1452
    .local v0, "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v11

    sget-object v12, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_DRAWABLE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-ne v11, v12, :cond_7c

    .line 1453
    check-cast v0, Lcom/nuance/swype/input/DrawableCandidate;

    .end local v0    # "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    iget-object v2, v0, Lcom/nuance/swype/input/DrawableCandidate;->icon:Landroid/graphics/drawable/Drawable;

    .line 1454
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getHeight()I

    move-result v12

    invoke-virtual {v2, v10, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1455
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 1456
    .local v8, "width":I
    iget-object v11, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidthWithoutPadding:[I

    aput v8, v11, v3

    .line 1464
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_6e
    iget-object v11, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTooltipWordWidth:[I

    aput v8, v11, v3

    .line 1465
    iget v11, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    add-int/2addr v11, v8

    iput v11, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    .line 1449
    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    .end local v1    # "count":I
    .end local v3    # "index":I
    .end local v4    # "needRefresh":Z
    .end local v5    # "padding":I
    .end local v8    # "width":I
    :cond_7a
    move v4, v10

    .line 1433
    goto :goto_f

    .line 1458
    .restart local v0    # "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    .restart local v1    # "count":I
    .restart local v3    # "index":I
    .restart local v4    # "needRefresh":Z
    .restart local v5    # "padding":I
    :cond_7c
    iget-object v11, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1459
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1460
    .local v9, "word":Ljava/lang/String;
    iget-object v11, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidthWithoutPadding:[I

    iget-object v12, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    float-to-int v12, v12

    aput v12, v11, v3

    .line 1461
    iget-object v11, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidthWithoutPadding:[I

    aget v11, v11, v3

    add-int v8, v11, v5

    .restart local v8    # "width":I
    goto :goto_6e

    .line 1469
    .end local v0    # "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    .end local v1    # "count":I
    .end local v3    # "index":I
    .end local v5    # "padding":I
    .end local v8    # "width":I
    .end local v9    # "word":Ljava/lang/String;
    :cond_99
    iget-object v11, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTooltipWordWidth:[I

    array-length v12, v11

    :goto_9c
    if-ge v10, v12, :cond_a8

    aget v7, v11, v10

    .line 1470
    .local v7, "w":I
    iget v13, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    add-int/2addr v13, v7

    iput v13, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    .line 1469
    add-int/lit8 v10, v10, 0x1

    goto :goto_9c

    .line 1475
    .end local v7    # "w":I
    :cond_a8
    iget-object v10, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v11, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTextSize:I

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1476
    iget-object v10, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1477
    return-void
.end method

.method private drawToolTip(Landroid/graphics/Canvas;)V
    .registers 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1480
    if-eqz p1, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTooltip:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    if-nez v2, :cond_9

    .line 1545
    :cond_8
    :goto_8
    return-void

    .line 1484
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTooltip:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getTooltip(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v19

    .line 1486
    .local v19, "tooltip":Lcom/nuance/input/swypecorelib/Candidates;
    if-eqz v19, :cond_8

    .line 1491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mAlphaTextSize:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1494
    invoke-virtual/range {v19 .. v19}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v11

    .line 1496
    .local v11, "count":I
    const/16 v21, 0x0

    .line 1497
    .local v21, "x":I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getHeight()I

    move-result v2

    .line 1498
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

    .line 1499
    .local v22, "y":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    .line 1501
    .local v8, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mColorRecommended:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1503
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    .line 1505
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5c
    if-ge v12, v11, :cond_114

    .line 1506
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v10

    .line 1507
    .local v10, "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v10}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v17

    .line 1509
    .local v17, "source":Lcom/nuance/input/swypecorelib/WordCandidate$Source;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidthWithoutPadding:[I

    aget v2, v2, v12

    int-to-float v0, v2

    move/from16 v18, v0

    .line 1510
    .local v18, "textWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTooltipWordWidth:[I

    aget v20, v2, v12

    .line 1512
    .local v20, "wordWidth":I
    sget-object v2, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_DRAWABLE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-object/from16 v0, v17

    if-eq v0, v2, :cond_a9

    .line 1513
    invoke-virtual {v10}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1514
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

    .line 1538
    .end local v3    # "suggestion":Ljava/lang/CharSequence;
    .end local v10    # "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    :goto_9a
    add-int v21, v21, v20

    .line 1539
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    add-int v2, v2, v20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    .line 1505
    add-int/lit8 v12, v12, 0x1

    goto :goto_5c

    .line 1517
    .restart local v10    # "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    :cond_a9
    check-cast v10, Lcom/nuance/swype/input/DrawableCandidate;

    .end local v10    # "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    iget-object v13, v10, Lcom/nuance/swype/input/DrawableCandidate;->icon:Landroid/graphics/drawable/Drawable;

    .line 1520
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

    .line 1521
    .local v9, "availableHeight":I
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, v9, v2

    div-int/lit8 v16, v2, 0x2

    .line 1524
    .local v16, "iconTop":I
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 1525
    .local v14, "iconScale":D
    if-gez v16, :cond_dc

    .line 1526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 1527
    int-to-double v4, v9

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-double v6, v2

    div-double v14, v4, v6

    .line 1530
    :cond_dc
    const/4 v2, 0x0

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v14

    double-to-int v4, v4

    move/from16 v0, v16

    int-to-double v6, v0

    .line 1531
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-double v0, v5

    move-wide/from16 v24, v0

    mul-double v24, v24, v14

    add-double v6, v6, v24

    double-to-int v5, v6

    .line 1530
    move/from16 v0, v16

    invoke-virtual {v13, v2, v0, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1532
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1533
    move/from16 v0, v18

    float-to-int v2, v0

    sub-int v2, v20, v2

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, v21

    int-to-float v2, v2

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1534
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1535
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_9a

    .line 1543
    .end local v9    # "availableHeight":I
    .end local v13    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v14    # "iconScale":D
    .end local v16    # "iconTop":I
    .end local v17    # "source":Lcom/nuance/input/swypecorelib/WordCandidate$Source;
    .end local v18    # "textWidth":F
    .end local v20    # "wordWidth":I
    :cond_114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_8
.end method

.method private getDefaultSkinToneCode(Lcom/nuance/swype/input/emoji/Emoji;)Ljava/lang/String;
    .registers 5
    .param p1, "emoji"    # Lcom/nuance/swype/input/emoji/Emoji;

    .prologue
    .line 1645
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->emojiCacheManager:Lcom/nuance/swype/input/emoji/EmojiCacheManager;

    invoke-static {v1, p1, v2}, Lcom/nuance/swype/input/emoji/EmojiLoader;->getDefaultSkinToneCode(Landroid/content/Context;Lcom/nuance/swype/input/emoji/Emoji;Lcom/nuance/swype/input/emoji/EmojiCacheManager;)Lcom/nuance/swype/input/emoji/Emoji;

    move-result-object v0

    .line 1647
    .local v0, "defaultSkinToneEmoji":Lcom/nuance/swype/input/emoji/Emoji;
    if-nez v0, :cond_e

    .line 1648
    const/4 v1, 0x0

    .line 1650
    :goto_d
    return-object v1

    :cond_e
    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiDisplayCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_d
.end method

.method private getEmojiText(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "emoji_unicode"    # Ljava/lang/String;

    .prologue
    .line 1629
    if-nez p1, :cond_4

    .line 1630
    const/4 v1, 0x0

    .line 1641
    :goto_3
    return-object v1

    .line 1632
    :cond_4
    invoke-static {p1}, Lcom/nuance/swype/input/emoji/EmojiLoader;->getEmoji(Ljava/lang/String;)Lcom/nuance/swype/input/emoji/Emoji;

    move-result-object v0

    .line 1633
    .local v0, "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    if-eqz v0, :cond_16

    .line 1634
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getDefaultSkinToneCode(Lcom/nuance/swype/input/emoji/Emoji;)Ljava/lang/String;

    move-result-object v1

    .line 1635
    .local v1, "emojiCode":Ljava/lang/String;
    if-eqz v1, :cond_16

    .line 1636
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mEmojis:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .end local v1    # "emojiCode":Ljava/lang/String;
    :cond_16
    move-object v1, p1

    .line 1641
    goto :goto_3
.end method

.method private getMaxScroll()I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1385
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    if-nez v2, :cond_6

    .line 1403
    :goto_5
    return v1

    .line 1389
    :cond_6
    const/4 v0, 0x0

    .line 1393
    .local v0, "maxScroll":I
    iget-boolean v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->allowFullScroll:Z

    if-nez v2, :cond_18

    .line 1394
    iget v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v3

    sub-int v0, v2, v3

    .line 1403
    :cond_13
    :goto_13
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_5

    .line 1396
    :cond_18
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    array-length v2, v2

    if-lez v2, :cond_13

    .line 1400
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

    goto :goto_13
.end method

.method private getTooltip(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;)Lcom/nuance/input/swypecorelib/Candidates;
    .registers 4
    .param p1, "tooltip"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    .prologue
    .line 1407
    sget-object v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$3;->$SwitchMap$com$nuance$swype$input$chinese$CJKCandidatesListView$Tooltip:[I

    invoke-virtual {p1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4c

    .line 1427
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 1409
    :pswitch_d
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mNotMatchTooltip:Lcom/nuance/input/swypecorelib/Candidates;

    if-nez v0, :cond_28

    .line 1410
    new-instance v0, Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 1411
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getToolTips()Lcom/nuance/swype/input/ToolTips;

    move-result-object v1

    .line 1412
    invoke-virtual {v1}, Lcom/nuance/swype/input/ToolTips;->createNoMatchTip()Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Lcom/nuance/input/swypecorelib/Candidates;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mNotMatchTooltip:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1415
    :cond_28
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mNotMatchTooltip:Lcom/nuance/input/swypecorelib/Candidates;

    goto :goto_c

    .line 1417
    :pswitch_2b
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSwypeTooltip:Lcom/nuance/input/swypecorelib/Candidates;

    if-nez v0, :cond_46

    .line 1418
    new-instance v0, Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 1419
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getToolTips()Lcom/nuance/swype/input/ToolTips;

    move-result-object v1

    .line 1420
    invoke-virtual {v1}, Lcom/nuance/swype/input/ToolTips;->createSwypeKeyTip()Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Lcom/nuance/input/swypecorelib/Candidates;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSwypeTooltip:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1423
    :cond_46
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSwypeTooltip:Lcom/nuance/input/swypecorelib/Candidates;

    goto :goto_c

    .line 1425
    :pswitch_49
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWCLTooltip:Lcom/nuance/input/swypecorelib/Candidates;

    goto :goto_c

    .line 1407
    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_d
        :pswitch_2b
        :pswitch_49
    .end packed-switch
.end method

.method private isHardKeyboardActive()Z
    .registers 2

    .prologue
    .line 788
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 789
    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v0

    return v0
.end method

.method private needMoreWords()Z
    .registers 3

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    if-lt v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private raiseOnPressMoveCandidate(FFF)V
    .registers 6
    .param p1, "xPos"    # F
    .param p2, "yPos"    # F
    .param p3, "xOffset"    # F

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 1680
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->onPressMoveCandidate(FFF)V

    .line 1682
    :cond_e
    return-void
.end method

.method private scrollToTarget()V
    .registers 15

    .prologue
    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 722
    iget v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v3

    if-le v2, v3, :cond_42

    .line 723
    iget v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v0, v2

    .line 724
    .local v0, "dist":D
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v2

    .line 725
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    div-double/2addr v4, v6

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v12

    add-double/2addr v4, v8

    double-to-int v3, v4

    add-int/2addr v2, v3

    .line 724
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollToX(I)V

    .line 726
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    if-lt v2, v3, :cond_39

    .line 727
    iget v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollToX(I)V

    .line 737
    :cond_39
    :goto_39
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->onScrollContentChanged()V

    .line 738
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    .line 739
    return-void

    .line 730
    .end local v0    # "dist":D
    :cond_42
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    sub-int/2addr v2, v3

    int-to-double v0, v2

    .line 731
    .restart local v0    # "dist":D
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v2

    .line 732
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    div-double/2addr v4, v6

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v12

    add-double/2addr v4, v8

    double-to-int v3, v4

    sub-int/2addr v2, v3

    .line 731
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollToX(I)V

    .line 733
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    if-gt v2, v3, :cond_39

    .line 734
    iget v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollToX(I)V

    goto :goto_39
.end method

.method private setFingerUpListener()V
    .registers 6

    .prologue
    .line 1090
    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mAbortKey:Z

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    if-eqz v1, :cond_24

    iget v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_24

    .line 1091
    const/4 v0, 0x0

    .line 1092
    .local v0, "wdSource":I
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordSourceList:Ljava/util/List;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_33

    .line 1093
    iget v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_25

    .line 1101
    .end local v0    # "wdSource":I
    :cond_24
    :goto_24
    return-void

    .line 1096
    .restart local v0    # "wdSource":I
    :cond_25
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordSourceList:Ljava/util/List;

    iget v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1098
    :cond_33
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    iget v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    iget v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->onPressReleaseCandidate(ILjava/lang/String;I)Z

    .line 1099
    iget v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    goto :goto_24
.end method

.method private slide()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 676
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v3

    int-to-float v2, v3

    .line 677
    .local v2, "oldX":F
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getMaxScroll()I

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 682
    .local v0, "maxScroll":I
    iget v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    .line 686
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

    .line 687
    iget v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    iget v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mA:F

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    iput v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    .line 689
    iget v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v6

    if-gez v3, :cond_37

    .line 690
    iput v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    .line 694
    :cond_37
    iget v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    mul-float/2addr v3, v1

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_4a

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v3

    if-ltz v3, :cond_4a

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v3

    if-le v3, v0, :cond_5f

    :cond_4a
    cmpg-float v3, v2, v5

    if-gez v3, :cond_54

    .line 695
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v3

    if-gez v3, :cond_5f

    :cond_54
    int-to-float v3, v0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_70

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v3

    if-gt v3, v0, :cond_70

    .line 696
    :cond_5f
    iput v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    .line 697
    iput v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mA:F

    .line 698
    cmpg-float v3, v2, v5

    if-gez v3, :cond_8a

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v3

    if-ltz v3, :cond_8a

    .line 699
    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollToX(I)V

    .line 705
    :cond_70
    :goto_70
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v3

    iput v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    .line 706
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->onScrollContentChanged()V

    .line 707
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->needMoreWords()Z

    move-result v3

    if-eqz v3, :cond_86

    .line 708
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;

    invoke-interface {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;->requestMoreWords()V

    .line 713
    :cond_86
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    .line 714
    return-void

    .line 700
    :cond_8a
    int-to-float v3, v0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_70

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v3

    if-gt v3, v0, :cond_70

    .line 701
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollToX(I)V

    goto :goto_70
.end method


# virtual methods
.method public abortKey()V
    .registers 2

    .prologue
    .line 1225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mAbortKey:Z

    .line 1226
    return-void
.end method

.method protected bound(FFF)F
    .registers 5
    .param p1, "val"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F

    .prologue
    .line 258
    cmpg-float v0, p1, p2

    if-gez v0, :cond_5

    .line 263
    .end local p2    # "min":F
    :goto_4
    return p2

    .line 260
    .restart local p2    # "min":F
    :cond_5
    cmpl-float v0, p1, p3

    if-lez v0, :cond_b

    move p2, p3

    .line 261
    goto :goto_4

    :cond_b
    move p2, p1

    .line 263
    goto :goto_4
.end method

.method protected calcAccel()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 598
    iget v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    cmpl-float v5, v4, v5

    if-nez v5, :cond_3f

    move v2, v4

    .line 599
    .local v2, "vUnitVect":F
    :goto_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v5

    int-to-float v3, v5

    .line 600
    .local v3, "x":F
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getMaxScroll()I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 604
    .local v0, "maxScroll":I
    cmpg-float v5, v3, v4

    if-ltz v5, :cond_1f

    int-to-float v5, v0

    cmpl-float v5, v3, v5

    if-lez v5, :cond_5f

    .line 605
    :cond_1f
    cmpg-float v5, v3, v4

    if-gez v5, :cond_4a

    move v1, v3

    .line 607
    .local v1, "oobDist":F
    :goto_24
    mul-float v5, v2, v1

    cmpl-float v5, v5, v4

    if-lez v5, :cond_4e

    .line 608
    const v4, -0x445c28f6    # -0.005f

    mul-float/2addr v4, v2

    mul-float/2addr v4, v1

    mul-float/2addr v4, v1

    iput v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mA:F

    .line 609
    iget v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mA:F

    const/high16 v5, -0x3ee00000    # -10.0f

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {p0, v4, v5, v6}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->bound(FFF)F

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mA:F

    .line 629
    .end local v1    # "oobDist":F
    :goto_3e
    return-void

    .line 598
    .end local v0    # "maxScroll":I
    .end local v2    # "vUnitVect":F
    .end local v3    # "x":F
    :cond_3f
    iget v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    iget v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float v2, v5, v6

    goto :goto_9

    .line 605
    .restart local v0    # "maxScroll":I
    .restart local v2    # "vUnitVect":F
    .restart local v3    # "x":F
    :cond_4a
    int-to-float v5, v0

    sub-float v1, v3, v5

    goto :goto_24

    .line 612
    .restart local v1    # "oobDist":F
    :cond_4e
    iput v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mA:F

    .line 613
    iput v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    .line 614
    cmpg-float v4, v1, v4

    if-gez v4, :cond_5c

    .line 615
    iput v7, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    .line 619
    :goto_58
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    goto :goto_3e

    .line 617
    :cond_5c
    iput v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    goto :goto_58

    .line 622
    .end local v1    # "oobDist":F
    :cond_5f
    iget v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_6c

    .line 623
    const v4, -0x40e66666    # -0.6f

    mul-float/2addr v4, v2

    iput v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mA:F

    goto :goto_3e

    .line 625
    :cond_6c
    iput v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mA:F

    goto :goto_3e
.end method

.method public clear()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 973
    iput-boolean v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mShowTooltip:Z

    .line 975
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 976
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 977
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 978
    iput v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchY:I

    .line 979
    iput v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchX:I

    .line 980
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    .line 981
    iput v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    .line 982
    iput v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    .line 983
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    .line 984
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 985
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 987
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollToX(I)V

    .line 988
    iput v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    .line 989
    iput v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mA:F

    .line 990
    iput v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    .line 991
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    if-eqz v0, :cond_3f

    .line 992
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->onScrollContentChanged()V

    .line 994
    :cond_3f
    return-void
.end method

.method public computeHorizontalScrollRange()I
    .registers 2

    .prologue
    .line 364
    iget v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    return v0
.end method

.method public disableHighlight()V
    .registers 2

    .prologue
    .line 1202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mEnableHighlight:Z

    .line 1203
    return-void
.end method

.method public drawCandidates(I)V
    .registers 3
    .param p1, "defaultIndex"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    .line 586
    iput p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    .line 587
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 588
    return-void
.end method

.method public enableHighlight()V
    .registers 2

    .prologue
    .line 1198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mEnableHighlight:Z

    .line 1199
    return-void
.end method

.method public getAltCharacterConverted()Z
    .registers 2

    .prologue
    .line 1561
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->altCharacterConverted:Z

    return v0
.end method

.method protected getCandidateSize()V
    .registers 5

    .prologue
    .line 1573
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 1574
    .local v0, "sp":Lcom/nuance/swype/input/UserPreferences;
    iget v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTextSizeInit:I

    int-to-float v1, v1

    const-string/jumbo v2, "Candidates_Size"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v3}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getCandidatesSize(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;F)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTextSize:I

    .line 1576
    return-void
.end method

.method public getCenterCandidateIndex()I
    .registers 8

    .prologue
    const/4 v4, -0x1

    .line 1607
    const/4 v1, 0x0

    .line 1608
    .local v1, "i":I
    const/4 v2, -0x1

    .line 1609
    .local v2, "item":I
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 1610
    .local v0, "count":I
    if-gtz v0, :cond_c

    .line 1624
    :goto_b
    return v4

    .line 1613
    :cond_c
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v6

    add-int v3, v5, v6

    .line 1614
    .local v3, "rightEdge":I
    :goto_16
    if-ge v1, v0, :cond_2c

    .line 1615
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v5, v5, v1

    if-gt v5, v3, :cond_32

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v5, v5, v1

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    aget v6, v6, v1

    add-int/2addr v5, v6

    add-int/lit8 v6, v3, 0x1

    if-lt v5, v6, :cond_32

    .line 1616
    move v2, v1

    .line 1621
    :cond_2c
    if-ne v2, v4, :cond_2f

    .line 1622
    move v2, v0

    .line 1624
    :cond_2f
    div-int/lit8 v4, v2, 0x2

    goto :goto_b

    .line 1619
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_16
.end method

.method public getEmojiInfoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/emoji/EmojiInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->emojiInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getEmojis()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mEmojis:Ljava/util/Map;

    return-object v0
.end method

.method public getFirstCandidateIndexInNextOrPreviousPage(Z)I
    .registers 9
    .param p1, "isNextPage"    # Z

    .prologue
    .line 1247
    const/4 v2, 0x0

    .line 1248
    .local v2, "i":I
    const/4 v1, -0x1

    .line 1250
    .local v1, "firstItem":I
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 1251
    .local v0, "count":I
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isHardKeyboardActive()Z

    move-result v5

    if-eqz v5, :cond_51

    .line 1252
    if-eqz p1, :cond_32

    .line 1253
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v6

    add-int v4, v5, v6

    .line 1254
    .local v4, "rightEdge":I
    :goto_1a
    if-ge v2, v0, :cond_2e

    .line 1255
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v5, v5, v2

    if-ge v5, v4, :cond_2d

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v5, v5, v2

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    aget v6, v6, v2

    add-int/2addr v5, v6

    if-lt v5, v4, :cond_2f

    .line 1256
    :cond_2d
    move v1, v2

    .line 1294
    .end local v4    # "rightEdge":I
    :cond_2e
    :goto_2e
    return v1

    .line 1259
    .restart local v4    # "rightEdge":I
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 1262
    .end local v4    # "rightEdge":I
    :cond_32
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v3

    .line 1263
    .local v3, "leftEdge":I
    iget-boolean v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLeftArrowShowable:Z

    if-eqz v5, :cond_42

    .line 1264
    iget v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLeftArrowWidth:I

    sub-int v5, v3, v5

    iget v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mMinPadWidth:I

    sub-int v3, v5, v6

    .line 1265
    :cond_42
    add-int/lit8 v2, v0, -0x1

    .line 1266
    :goto_44
    if-lez v2, :cond_4f

    .line 1267
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v5, v5, v2

    if-lt v5, v3, :cond_4f

    .line 1270
    add-int/lit8 v2, v2, -0x1

    goto :goto_44

    .line 1272
    :cond_4f
    move v1, v2

    .line 1273
    goto :goto_2e

    .line 1275
    .end local v3    # "leftEdge":I
    :cond_51
    if-eqz p1, :cond_77

    .line 1276
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v6

    add-int v4, v5, v6

    .line 1277
    .restart local v4    # "rightEdge":I
    :goto_5d
    if-ge v2, v0, :cond_2e

    .line 1278
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v5, v5, v2

    if-gt v5, v4, :cond_72

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v5, v5, v2

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    aget v6, v6, v2

    add-int/2addr v5, v6

    if-lt v5, v4, :cond_72

    .line 1279
    move v1, v2

    .line 1280
    goto :goto_2e

    .line 1282
    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 1290
    .end local v4    # "rightEdge":I
    :cond_75
    add-int/lit8 v2, v2, 0x1

    .line 1285
    :cond_77
    if-ge v2, v0, :cond_2e

    .line 1286
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v5, v5, v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v6

    if-ge v5, v6, :cond_75

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v5, v5, v2

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    aget v6, v6, v2

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_75

    .line 1287
    move v1, v2

    .line 1288
    goto :goto_2e
.end method

.method public getLeftArrowStatus()Z
    .registers 2

    .prologue
    .line 1237
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLeftArrowShowable:Z

    return v0
.end method

.method public getLeftDistance()I
    .registers 2

    .prologue
    .line 1603
    iget v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLeftArrowWidth:I

    return v0
.end method

.method public getLeftWidth()I
    .registers 2

    .prologue
    .line 1229
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getLeft()I

    move-result v0

    return v0
.end method

.method public getOffsetX(F)F
    .registers 3
    .param p1, "xPos"    # F

    .prologue
    .line 1684
    iget v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->xDown:F

    sub-float v0, p1, v0

    return v0
.end method

.method public getRightWidth()I
    .registers 2

    .prologue
    .line 1233
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getRight()I

    move-result v0

    return v0
.end method

.method public getSelectCandidateColorPressed()I
    .registers 2

    .prologue
    .line 1548
    iget v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mColorPressed:I

    return v0
.end method

.method public getTargetScrollX()I
    .registers 2

    .prologue
    .line 1692
    iget v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    return v0
.end method

.method public hideTooltip()V
    .registers 2

    .prologue
    .line 1372
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mShowTooltip:Z

    if-eqz v0, :cond_a

    .line 1373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mShowTooltip:Z

    .line 1374
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    .line 1376
    :cond_a
    return-void
.end method

.method public init()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 291
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 292
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/emoji/EmojiCacheManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/emoji/EmojiCacheManager;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->emojiCacheManager:Lcom/nuance/swype/input/emoji/EmojiCacheManager;

    .line 293
    sget v2, Lcom/nuance/swype/input/R$attr;->listSelectorBackgroundPressed:I

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    .line 294
    sget v2, Lcom/nuance/swype/input/R$attr;->wclDefaultWordBackground:I

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mDefaultWordHighlight:Landroid/graphics/drawable/Drawable;

    .line 296
    sget v2, Lcom/nuance/swype/input/R$attr;->keyboardSuggestStripDivider:I

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 298
    iput-boolean v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mEnableHighlight:Z

    .line 300
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    .line 301
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mColorNormal:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 302
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 303
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 304
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 305
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mDescent:I

    .line 306
    sget-object v2, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mItalic:Landroid/graphics/Typeface;

    .line 308
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;

    .line 309
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;

    invoke-direct {v4, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;-><init>(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 338
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v5}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 339
    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 340
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setWillNotDraw(Z)V

    .line 341
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setHorizontalScrollBarEnabled(Z)V

    .line 342
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setVerticalScrollBarEnabled(Z)V

    .line 343
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 345
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 346
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordSpace:I

    int-to-float v2, v2

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mMinPadWidth:I

    .line 347
    return-void
.end method

.method public isCandidateListEmpty()Z
    .registers 2

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isExactKeyboardShowable()Z
    .registers 2

    .prologue
    .line 1569
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mExactKeyboardShowable:Z

    return v0
.end method

.method public isKeyOutofLeftBound(I)Z
    .registers 5
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x1

    .line 1318
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v1, v1, p1

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 1321
    :cond_b
    :goto_b
    return v0

    :cond_c
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v1, v1, p1

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v2

    if-ge v1, v2, :cond_27

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_b

    :cond_27
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isKeyOutofRightBound(I)Z
    .registers 6
    .param p1, "i"    # I

    .prologue
    const/4 v1, 0x1

    .line 1304
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v3

    add-int v0, v2, v3

    .line 1305
    .local v0, "rightEdge":I
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v2, v2, p1

    if-lt v2, v0, :cond_12

    .line 1308
    :cond_11
    :goto_11
    return v1

    :cond_12
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v2, v2, p1

    if-gt v2, v0, :cond_23

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v2, v2, p1

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    aget v3, v3, p1

    add-int/2addr v2, v3

    if-ge v2, v0, :cond_11

    :cond_23
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public isScrolling()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 632
    iget v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mA:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isShowingSwypeTooltip()Z
    .registers 2

    .prologue
    .line 1379
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mShowTooltip:Z

    return v0
.end method

.method protected longPressFirstWord()V
    .registers 1

    .prologue
    .line 1134
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 1147
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1148
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 32
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 389
    sget-object v2, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v28, "onDraw(): canvas: "

    move-object/from16 v0, v28

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v2, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v17

    .line 391
    .local v17, "mIme":Lcom/nuance/swype/input/IME;
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 392
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    .line 393
    .local v12, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/IME;->isShowCandidatesViewAllowed()Z

    move-result v2

    if-nez v2, :cond_45

    iget v2, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_45

    .line 394
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/IME;->setCandidatesViewShown(Z)V

    .line 582
    :cond_44
    :goto_44
    return-void

    .line 397
    :cond_45
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    move/from16 v18, v0

    .line 398
    .local v18, "measuredWidth":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    if-nez v2, :cond_77

    .line 401
    new-instance v2, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-direct {v2, v5, v6, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_77

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 407
    :cond_77
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mShowTooltip:Z

    if-eqz v2, :cond_88

    if-nez v18, :cond_88

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTooltip:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->computeDisplayingCandidateDrawingRegion(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;)V

    .line 411
    :cond_88
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchX:I

    move/from16 v23, v0

    .line 412
    .local v23, "touchX":I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v24

    .line 413
    .local v24, "width":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->alignLeft:Z

    if-nez v2, :cond_af

    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_af

    if-eqz p1, :cond_af

    .line 414
    sub-int v2, v24, v18

    div-int/lit8 v19, v2, 0x2

    .line 415
    .local v19, "offset":I
    move/from16 v0, v19

    int-to-float v2, v0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 416
    sub-int v23, v23, v19

    .line 419
    .end local v19    # "offset":I
    :cond_af
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    if-eqz v2, :cond_bf

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 421
    :cond_bf
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mShowTooltip:Z

    if-eqz v2, :cond_44

    .line 423
    invoke-direct/range {p0 .. p1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->drawToolTip(Landroid/graphics/Canvas;)V

    goto/16 :goto_44

    .line 428
    :cond_ca
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getHeight()I

    move-result v15

    .line 430
    .local v15, "height":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLeftArrowShowable:Z

    if-eqz v2, :cond_1bc

    .line 431
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

    move/from16 v28, v0

    add-int v7, v7, v28

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getHeight()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    .line 431
    move/from16 v0, v28

    invoke-virtual {v2, v5, v6, v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 439
    :goto_109
    const/16 v26, 0x0

    .line 440
    .local v26, "x":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    .line 441
    .local v13, "count":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    .line 442
    .local v10, "bgPadding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    .line 443
    .local v8, "paint":Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v21

    .line 444
    .local v21, "scrollX":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mScrolled:Z

    move/from16 v22, v0

    .line 445
    .local v22, "scrolled":Z
    int-to-float v2, v15

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

    div-int/lit8 v27, v2, 0x2

    .line 447
    .local v27, "y":I
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 448
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_13f
    move/from16 v0, v16

    if-ge v0, v13, :cond_40d

    .line 450
    if-nez v16, :cond_167

    if-eqz p1, :cond_167

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_167

    .line 451
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 452
    move/from16 v0, v26

    int-to-float v2, v0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 454
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 457
    :cond_167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 459
    .local v3, "suggestion":Ljava/lang/CharSequence;
    if-eqz v3, :cond_1b9

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1b9

    .line 463
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/emoji/EmojiLoader;->isEmoji(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18f

    .line 464
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getEmojiText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 466
    :cond_18f
    const/4 v4, 0x0

    .line 467
    .local v4, "startIndex":I
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 469
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const v5, 0x9fff

    if-ne v2, v5, :cond_3b6

    .line 470
    const/4 v2, 0x1

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v5, 0x7e

    if-ne v2, v5, :cond_1e8

    .line 471
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    move/from16 v0, v16

    if-ne v2, v0, :cond_1b9

    .line 472
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    .line 448
    .end local v4    # "startIndex":I
    :cond_1b9
    :goto_1b9
    add-int/lit8 v16, v16, 0x1

    goto :goto_13f

    .line 435
    .end local v3    # "suggestion":Ljava/lang/CharSequence;
    .end local v8    # "paint":Landroid/graphics/Paint;
    .end local v10    # "bgPadding":Landroid/graphics/Rect;
    .end local v13    # "count":I
    .end local v16    # "i":I
    .end local v21    # "scrollX":I
    .end local v22    # "scrolled":Z
    .end local v26    # "x":I
    .end local v27    # "y":I
    :cond_1bc
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

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    invoke-virtual {v2, v5, v6, v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_109

    .line 476
    .restart local v3    # "suggestion":Ljava/lang/CharSequence;
    .restart local v4    # "startIndex":I
    .restart local v8    # "paint":Landroid/graphics/Paint;
    .restart local v10    # "bgPadding":Landroid/graphics/Rect;
    .restart local v13    # "count":I
    .restart local v16    # "i":I
    .restart local v21    # "scrollX":I
    .restart local v22    # "scrolled":Z
    .restart local v26    # "x":I
    .restart local v27    # "y":I
    :cond_1e8
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 477
    const/4 v4, 0x1

    .line 478
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mColorComponent:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 497
    :goto_1f4
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v8, v3, v4, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    float-to-int v0, v2

    move/from16 v25, v0

    .line 499
    .local v25, "wordWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mMinPadWidth:I

    move/from16 v20, v0

    .line 500
    .local v20, "padWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    aput v25, v2, v16

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPadWidth:[I

    aput v20, v2, v16

    .line 502
    mul-int/lit8 v2, v20, 0x2

    add-int v11, v25, v2

    .line 504
    .local v11, "cellWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aput v26, v2, v16

    .line 505
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLeftArrowShowable:Z

    if-eqz v2, :cond_40a

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLeftArrowWidth:I

    .line 506
    .local v9, "arrowOffset":I
    :goto_225
    add-int v2, v23, v21

    add-int v5, v26, v9

    if-lt v2, v5, :cond_287

    add-int v2, v23, v21

    add-int v5, v26, v11

    add-int/2addr v5, v9

    if-ge v2, v5, :cond_287

    if-nez v22, :cond_287

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchX:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_287

    .line 509
    if-eqz p1, :cond_281

    .line 510
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 511
    move/from16 v0, v26

    int-to-float v2, v0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 512
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

    invoke-virtual {v2, v5, v6, v7, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 515
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mColorPressed:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 520
    :cond_281
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    .line 523
    :cond_287
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    move/from16 v0, v16

    if-ne v2, v0, :cond_2cd

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mEnableHighlight:Z

    if-eqz v2, :cond_2cd

    if-eqz p1, :cond_2cd

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mDefaultWordHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2cd

    .line 525
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 526
    move/from16 v0, v26

    int-to-float v2, v0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mDefaultWordHighlight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v9

    iget v6, v10, Landroid/graphics/Rect;->top:I

    add-int v7, v11, v9

    invoke-virtual {v2, v5, v6, v7, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mDefaultWordHighlight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 531
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 534
    :cond_2cd
    if-eqz p1, :cond_3a9

    .line 535
    sget-object v2, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "drawCandidate()"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v28, " draw called ::  x:: "

    move-object/from16 v0, v28

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v28, ", y:: "

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v28, " , offset :: 16844052"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v2, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 536
    sget-object v2, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "drawCandidate()"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v28, " draw called :: wordWidth:: "

    move-object/from16 v0, v28

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v28, ", height:: "

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v28, ", cellWidth :: "

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v28, " , offset :: 16844052"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v2, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 539
    new-instance v14, Lcom/nuance/swype/input/emoji/EmojiInfo;

    invoke-direct {v14}, Lcom/nuance/swype/input/emoji/EmojiInfo;-><init>()V

    .line 540
    .local v14, "emojiInfo":Lcom/nuance/swype/input/emoji/EmojiInfo;
    move/from16 v0, v26

    iput v0, v14, Lcom/nuance/swype/input/emoji/EmojiInfo;->xPos:I

    .line 541
    move/from16 v0, v27

    iput v0, v14, Lcom/nuance/swype/input/emoji/EmojiInfo;->yPos:I

    .line 542
    iput v11, v14, Lcom/nuance/swype/input/emoji/EmojiInfo;->width:I

    .line 543
    iput v15, v14, Lcom/nuance/swype/input/emoji/EmojiInfo;->height:I

    .line 544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->emojiInfoList:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int v2, v26, v20

    add-int/2addr v2, v9

    int-to-float v6, v2

    move/from16 v0, v27

    int-to-float v7, v0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 547
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mColorOther:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 550
    add-int/lit8 v2, v13, -0x1

    move/from16 v0, v16

    if-lt v0, v2, :cond_391

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_3a9

    .line 551
    :cond_391
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 552
    add-int v2, v26, v11

    int-to-float v2, v2

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 554
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 557
    .end local v14    # "emojiInfo":Lcom/nuance/swype/input/emoji/EmojiInfo;
    :cond_3a9
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 558
    mul-int/lit8 v2, v20, 0x2

    add-int v2, v2, v25

    add-int v26, v26, v2

    goto/16 :goto_1b9

    .line 479
    .end local v9    # "arrowOffset":I
    .end local v11    # "cellWidth":I
    .end local v20    # "padWidth":I
    .end local v25    # "wordWidth":I
    :cond_3b6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    move/from16 v0, v16

    if-ne v2, v0, :cond_3d2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mEnableHighlight:Z

    if-eqz v2, :cond_3d2

    .line 480
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 481
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mColorRecommended:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1f4

    .line 482
    :cond_3d2
    if-nez v16, :cond_3f2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mEnableHighlight:Z

    if-eqz v2, :cond_3f2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    instance-of v2, v2, Lcom/nuance/swype/input/AlphaInputView;

    if-eqz v2, :cond_3f2

    .line 484
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mColorNormal:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mItalic:Landroid/graphics/Typeface;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_1f4

    .line 487
    :cond_3f2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mAssociationWord:Z

    if-eqz v2, :cond_401

    .line 488
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mColorComponent:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1f4

    .line 490
    :cond_401
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mColorOther:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1f4

    .line 505
    .restart local v11    # "cellWidth":I
    .restart local v20    # "padWidth":I
    .restart local v25    # "wordWidth":I
    :cond_40a
    const/4 v9, 0x0

    goto/16 :goto_225

    .line 561
    .end local v3    # "suggestion":Ljava/lang/CharSequence;
    .end local v4    # "startIndex":I
    .end local v11    # "cellWidth":I
    .end local v20    # "padWidth":I
    .end local v25    # "wordWidth":I
    :cond_40d
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    .line 562
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mExactKeyboardShowable:Z

    if-nez v2, :cond_433

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v2

    if-gez v2, :cond_433

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLeftArrowShowable:Z

    if-eqz v2, :cond_433

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->prevBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V

    .line 564
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mExactKeyboardShowable:Z

    .line 566
    :cond_433
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v5

    if-eq v2, v5, :cond_440

    .line 567
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollToTarget()V

    .line 576
    :cond_440
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mMouseDown:Z

    if-nez v2, :cond_44

    .line 577
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->calcAccel()V

    .line 578
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mA:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_45b

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_44

    .line 579
    :cond_45b
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->slide()V

    goto/16 :goto_44
.end method

.method onMoveHandler(Landroid/view/MotionEvent;)V
    .registers 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1654
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 1657
    .local v3, "pointerCount":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 1658
    .local v0, "historySize":I
    const/4 v1, 0x0

    .local v1, "idxHistory":I
    :goto_9
    if-ge v1, v0, :cond_23

    .line 1659
    const/4 v2, 0x0

    .local v2, "idxPointer":I
    :goto_c
    if-ge v2, v3, :cond_20

    .line 1661
    invoke-virtual {p1, v2, v1}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v6

    .line 1662
    .local v6, "xPos":F
    invoke-virtual {p1, v2, v1}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v7

    .line 1663
    .local v7, "yPos":F
    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getOffsetX(F)F

    move-result v5

    .line 1664
    .local v5, "xOffset":F
    invoke-direct {p0, v6, v7, v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->raiseOnPressMoveCandidate(FFF)V

    .line 1659
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1658
    .end local v5    # "xOffset":F
    .end local v6    # "xPos":F
    .end local v7    # "yPos":F
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1669
    .end local v2    # "idxPointer":I
    :cond_23
    const/4 v4, 0x0

    .local v4, "pointerIndex":I
    :goto_24
    if-ge v4, v3, :cond_38

    .line 1671
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 1672
    .restart local v6    # "xPos":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 1673
    .restart local v7    # "yPos":F
    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getOffsetX(F)F

    move-result v5

    .line 1674
    .restart local v5    # "xOffset":F
    invoke-direct {p0, v6, v7, v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->raiseOnPressMoveCandidate(FFF)V

    .line 1669
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 1676
    .end local v5    # "xOffset":F
    .end local v6    # "xPos":F
    .end local v7    # "yPos":F
    :cond_38
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1553
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 1554
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "me"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x3

    const/4 v6, -0x1

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 1021
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1086
    :cond_d
    :goto_d
    return v8

    .line 1025
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1026
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 1027
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 1028
    .local v2, "y":I
    iput v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchY:I

    .line 1029
    iput v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchX:I

    .line 1031
    packed-switch v0, :pswitch_data_e0

    goto :goto_d

    .line 1033
    :pswitch_24
    iget v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchX:I

    int-to-float v3, v3

    iput v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->xDown:F

    .line 1034
    iput-boolean v8, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mMouseDown:Z

    .line 1035
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mDragSelected:Z

    .line 1036
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mAbortKey:Z

    .line 1038
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSwipeSpeed:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->flush()V

    .line 1039
    iput v7, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mA:F

    .line 1040
    iput v7, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    .line 1041
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mScrolled:Z

    .line 1042
    iput v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    .line 1043
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    .line 1044
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1045
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLongPressTimeout:I

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_d

    .line 1051
    :pswitch_56
    if-gtz v2, :cond_5e

    iget-boolean v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mDragSelected:Z

    if-nez v3, :cond_5e

    .line 1053
    iput-boolean v8, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mDragSelected:Z

    .line 1055
    :cond_5e
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->onMoveHandler(Landroid/view/MotionEvent;)V

    goto :goto_d

    .line 1058
    :pswitch_62
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1059
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mMouseDown:Z

    .line 1060
    iput-boolean v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mDragSelected:Z

    .line 1062
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSwipeSpeed:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->isFlushed()Z

    move-result v3

    if-nez v3, :cond_7c

    .line 1063
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSwipeSpeed:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->get()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setVelocity(F)V

    .line 1065
    :cond_7c
    iget-boolean v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mScrolled:Z

    if-nez v3, :cond_ac

    iget v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    if-eq v3, v6, :cond_ac

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    .line 1066
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_ac

    iget v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_ac

    .line 1067
    iget-boolean v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mAbortKey:Z

    if-nez v3, :cond_ac

    .line 1068
    iget v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    iget v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p0, v4, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 1069
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->trySelect()V

    .line 1072
    :cond_ac
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->removeHighlight()V

    .line 1073
    iget-boolean v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mShowTooltip:Z

    if-eqz v3, :cond_c0

    sget-object v3, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;->WCL_TOOLTIP:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTooltip:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 1074
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->trySelectWCLMsg()V

    .line 1076
    :cond_c0
    iget-boolean v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mScrolled:Z

    if-nez v3, :cond_d

    iget v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    if-eq v3, v6, :cond_d

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    .line 1077
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d

    iget v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_d

    .line 1078
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setFingerUpListener()V

    goto/16 :goto_d

    .line 1031
    nop

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_24
        :pswitch_62
        :pswitch_56
    .end packed-switch
.end method

.method protected pull(F)F
    .registers 16
    .param p1, "dist"    # F

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    .line 636
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v7

    int-to-float v6, v7

    .line 637
    .local v6, "x":F
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v5

    .line 638
    .local v5, "width":I
    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getMaxScroll()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 641
    .local v1, "maxScroll":I
    int-to-float v7, v5

    const/high16 v8, 0x40800000    # 4.0f

    div-float v0, v7, v8

    .line 643
    .local v0, "maxPullDist":F
    cmpg-float v7, v6, v12

    if-gez v7, :cond_50

    .line 644
    move v2, v6

    .line 651
    .local v2, "oobDist":F
    :goto_1f
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 653
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

    .line 655
    mul-float v4, v7, p1

    .line 658
    .local v4, "ret":F
    mul-float v7, p1, v2

    cmpg-float v7, v7, v12

    if-gez v7, :cond_4f

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v13

    if-gez v7, :cond_4f

    .line 660
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float v4, p1, v7

    .line 666
    :cond_4f
    return v4

    .line 645
    .end local v2    # "oobDist":F
    .end local v3    # "pinnedOobDist":F
    .end local v4    # "ret":F
    :cond_50
    int-to-float v7, v1

    cmpl-float v7, v6, v7

    if-lez v7, :cond_59

    .line 646
    int-to-float v7, v1

    sub-float v2, v6, v7

    .restart local v2    # "oobDist":F
    goto :goto_1f

    .line 648
    .end local v2    # "oobDist":F
    :cond_59
    const/4 v2, 0x0

    .restart local v2    # "oobDist":F
    goto :goto_1f
.end method

.method public readStyles(I)V
    .registers 16
    .param p1, "aResid"    # I

    .prologue
    const/16 v13, 0x14

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/high16 v12, -0x10000

    .line 1156
    const/4 v8, 0x0

    .line 1157
    .local v8, "a":Lcom/nuance/swype/plugin/TypedArrayWrapper;
    sget v0, Lcom/nuance/swype/input/R$style;->WordListView:I

    if-ne p1, v0, :cond_21

    .line 1158
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeLoader;->getInstance()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/nuance/swype/input/R$styleable;->WordListView:[I

    sget v5, Lcom/nuance/swype/input/R$style;->WordListView:I

    sget v6, Lcom/nuance/swype/input/R$xml;->defaults:I

    const-string/jumbo v7, "WordListView"

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/swype/plugin/ThemeLoader;->obtainStyledAttributes$6d3b0587(Landroid/content/Context;Landroid/util/AttributeSet;[IIIILjava/lang/String;)Lcom/nuance/swype/plugin/TypedArrayWrapper;

    move-result-object v8

    .line 1168
    :cond_1e
    :goto_1e
    if-nez v8, :cond_4f

    .line 1195
    :goto_20
    return-void

    .line 1160
    :cond_21
    sget v0, Lcom/nuance/swype/input/R$style;->CHNPYPrefixListView:I

    if-ne p1, v0, :cond_38

    .line 1161
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeLoader;->getInstance()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/nuance/swype/input/R$styleable;->WordListView:[I

    sget v6, Lcom/nuance/swype/input/R$xml;->defaults:I

    const-string/jumbo v7, "CHNPYPrefixListView"

    move v5, p1

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/swype/plugin/ThemeLoader;->obtainStyledAttributes$6d3b0587(Landroid/content/Context;Landroid/util/AttributeSet;[IIIILjava/lang/String;)Lcom/nuance/swype/plugin/TypedArrayWrapper;

    move-result-object v8

    goto :goto_1e

    .line 1163
    :cond_38
    sget v0, Lcom/nuance/swype/input/R$style;->CHNHWCharacterListView:I

    if-ne p1, v0, :cond_1e

    .line 1164
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeLoader;->getInstance()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/nuance/swype/input/R$styleable;->WordListView:[I

    sget v6, Lcom/nuance/swype/input/R$xml;->defaults:I

    const-string/jumbo v7, "CHNHWCharacterListView"

    move v5, p1

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/swype/plugin/ThemeLoader;->obtainStyledAttributes$6d3b0587(Landroid/content/Context;Landroid/util/AttributeSet;[IIIILjava/lang/String;)Lcom/nuance/swype/plugin/TypedArrayWrapper;

    move-result-object v8

    goto :goto_1e

    .line 2030
    :cond_4f
    iget-object v0, v8, Lcom/nuance/swype/plugin/TypedArrayWrapper;->delegateTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v11

    .line 1173
    .local v11, "n":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_56
    if-ge v10, v11, :cond_b8

    .line 1174
    invoke-virtual {v8, v10}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getIndex(I)I

    move-result v9

    .line 1176
    .local v9, "attr":I
    sget v0, Lcom/nuance/swype/input/R$styleable;->WordListView_candidateNormal:I

    if-ne v9, v0, :cond_69

    .line 1177
    invoke-virtual {v8, v9, v12}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mColorNormal:I

    .line 1173
    :cond_66
    :goto_66
    add-int/lit8 v10, v10, 0x1

    goto :goto_56

    .line 1178
    :cond_69
    sget v0, Lcom/nuance/swype/input/R$styleable;->WordListView_candidateRecommended:I

    if-ne v9, v0, :cond_74

    .line 1179
    invoke-virtual {v8, v9, v12}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mColorRecommended:I

    goto :goto_66

    .line 1180
    :cond_74
    sget v0, Lcom/nuance/swype/input/R$styleable;->WordListView_candidateOther:I

    if-ne v9, v0, :cond_7f

    .line 1181
    invoke-virtual {v8, v9, v12}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mColorOther:I

    goto :goto_66

    .line 1182
    :cond_7f
    sget v0, Lcom/nuance/swype/input/R$styleable;->WordListView_candidateComponent:I

    if-ne v9, v0, :cond_8a

    .line 1183
    invoke-virtual {v8, v9, v12}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mColorComponent:I

    goto :goto_66

    .line 1184
    :cond_8a
    sget v0, Lcom/nuance/swype/input/R$styleable;->WordListView_textSizeCJK:I

    if-ne v9, v0, :cond_95

    .line 1185
    invoke-virtual {v8, v9, v13}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTextSizeInit:I

    goto :goto_66

    .line 1186
    :cond_95
    sget v0, Lcom/nuance/swype/input/R$styleable;->WordListView_textSize:I

    if-ne v9, v0, :cond_a0

    .line 1187
    invoke-virtual {v8, v9, v13}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mAlphaTextSize:I

    goto :goto_66

    .line 1188
    :cond_a0
    sget v0, Lcom/nuance/swype/input/R$styleable;->WordListView_wordSpace:I

    if-ne v9, v0, :cond_ad

    .line 1189
    const/16 v0, 0xa

    invoke-virtual {v8, v9, v0}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordSpace:I

    goto :goto_66

    .line 1190
    :cond_ad
    sget v0, Lcom/nuance/swype/input/R$styleable;->WordListView_candidatePressed:I

    if-ne v9, v0, :cond_66

    .line 1191
    invoke-virtual {v8, v9, v12}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mColorPressed:I

    goto :goto_66

    .line 1194
    .end local v9    # "attr":I
    :cond_b8
    invoke-virtual {v8}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->recycle()V

    goto/16 :goto_20
.end method

.method protected removeHighlight()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 1128
    iput v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchY:I

    .line 1129
    iput v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchX:I

    .line 1130
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    .line 1131
    return-void
.end method

.method public scrollEnd()V
    .registers 2

    .prologue
    .line 1599
    iget v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateScrollPosition(I)V

    .line 1600
    return-void
.end method

.method public scrollHead()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1588
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    aget v2, v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v2

    sub-int v0, v1, v2

    .line 1589
    .local v0, "leftEdge":I
    if-gez v0, :cond_13

    .line 1590
    const/4 v0, 0x0

    .line 1592
    :cond_13
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_26

    .line 1593
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1595
    :cond_26
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateScrollPosition(I)V

    .line 1596
    return-void
.end method

.method public scrollLeftToHighlight(I)V
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 919
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v1, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->isScrollable(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 920
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v1, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->prevBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V

    .line 934
    :goto_d
    return-void

    .line 922
    :cond_e
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v2

    sub-int v0, v1, v2

    .line 923
    .local v0, "leftEdge":I
    if-gez v0, :cond_20

    .line 924
    const/4 v0, 0x0

    .line 928
    :cond_20
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_34

    .line 929
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 931
    :cond_34
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateScrollPosition(I)V

    goto :goto_d
.end method

.method public scrollNext()V
    .registers 10

    .prologue
    .line 862
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v6, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->isScrollable(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 863
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v6, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->nextBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V

    .line 916
    :goto_d
    return-void

    .line 865
    :cond_e
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isHardKeyboardActive()Z

    move-result v6

    if-eqz v6, :cond_8a

    .line 866
    const/4 v1, 0x0

    .line 867
    .local v1, "i":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v5

    .line 868
    .local v5, "targetX":I
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 869
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 871
    .local v2, "iParentWidth":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_3f

    .line 872
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 875
    :cond_3f
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getRight()I

    move-result v6

    sub-int v3, v2, v6

    .line 876
    .local v3, "rightArrowSize":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    sub-int v4, v6, v3

    .line 877
    .local v4, "rightEdge":I
    :goto_50
    if-ge v1, v0, :cond_75

    .line 878
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v6, v6, v1

    if-gt v6, v4, :cond_63

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v6, v6, v1

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    aget v7, v7, v1

    add-int/2addr v6, v7

    if-lt v6, v4, :cond_87

    .line 879
    :cond_63
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

    .line 885
    :cond_75
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v6

    if-gt v5, v6, :cond_7c

    .line 886
    move v5, v4

    .line 891
    :cond_7c
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getLeft()I

    move-result v6

    if-ge v6, v3, :cond_83

    .line 892
    sub-int/2addr v5, v3

    .line 895
    :cond_83
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateScrollPosition(I)V

    goto :goto_d

    .line 882
    :cond_87
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 897
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "iParentWidth":I
    .end local v3    # "rightArrowSize":I
    .end local v4    # "rightEdge":I
    .end local v5    # "targetX":I
    :cond_8a
    const/4 v1, 0x0

    .line 898
    .restart local v1    # "i":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v5

    .line 899
    .restart local v5    # "targetX":I
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 900
    .restart local v0    # "count":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v7

    add-int v4, v6, v7

    .line 901
    .restart local v4    # "rightEdge":I
    :goto_9f
    if-ge v1, v0, :cond_c1

    .line 902
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v6, v6, v1

    if-gt v6, v4, :cond_cd

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v6, v6, v1

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    aget v7, v7, v1

    add-int/2addr v6, v7

    if-lt v6, v4, :cond_cd

    .line 903
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v6, v6, v1

    iget v7, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 909
    :cond_c1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v6

    if-gt v5, v6, :cond_c8

    .line 910
    move v5, v4

    .line 913
    :cond_c8
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateScrollPosition(I)V

    goto/16 :goto_d

    .line 906
    :cond_cd
    add-int/lit8 v1, v1, 0x1

    goto :goto_9f
.end method

.method public scrollPrev()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 793
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isHardKeyboardActive()Z

    move-result v6

    if-eqz v6, :cond_8d

    .line 794
    const/4 v2, 0x0

    .line 795
    .local v2, "i":I
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 796
    .local v0, "count":I
    const/4 v1, 0x0

    .line 797
    .local v1, "firstItem":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v4

    .line 798
    .local v4, "leftEdge":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v3, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 800
    .local v3, "iParentWidth":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_33

    .line 801
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 804
    :cond_33
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getRight()I

    move-result v6

    sub-int v5, v3, v6

    .line 805
    .local v5, "rightArrowSize":I
    iget-boolean v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLeftArrowShowable:Z

    if-eqz v6, :cond_43

    .line 806
    sub-int v6, v4, v5

    iget v7, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mMinPadWidth:I

    sub-int v4, v6, v7

    .line 807
    :cond_43
    :goto_43
    if-ge v2, v0, :cond_4f

    .line 808
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v6, v6, v2

    if-lt v6, v4, :cond_7b

    .line 809
    if-lez v2, :cond_79

    .line 810
    add-int/lit8 v1, v2, -0x1

    .line 820
    :cond_4f
    :goto_4f
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v6, v6, v1

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    aget v7, v7, v1

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    add-int v4, v6, v5

    .line 821
    if-gez v4, :cond_62

    .line 822
    const/4 v4, 0x0

    .line 826
    :cond_62
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v6

    if-lt v4, v6, :cond_75

    .line 827
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 829
    :cond_75
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateScrollPosition(I)V

    .line 859
    .end local v0    # "count":I
    .end local v1    # "firstItem":I
    .end local v2    # "i":I
    .end local v3    # "iParentWidth":I
    .end local v4    # "leftEdge":I
    .end local v5    # "rightArrowSize":I
    :goto_78
    return-void

    .line 812
    .restart local v0    # "count":I
    .restart local v1    # "firstItem":I
    .restart local v2    # "i":I
    .restart local v3    # "iParentWidth":I
    .restart local v4    # "leftEdge":I
    .restart local v5    # "rightArrowSize":I
    :cond_79
    const/4 v1, 0x0

    .line 813
    goto :goto_4f

    .line 814
    :cond_7b
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v6, v6, v2

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    aget v7, v7, v2

    add-int/2addr v6, v7

    add-int/lit8 v7, v4, -0x1

    if-lt v6, v7, :cond_8a

    .line 815
    move v1, v2

    .line 816
    goto :goto_4f

    .line 818
    :cond_8a
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 832
    .end local v0    # "count":I
    .end local v1    # "firstItem":I
    .end local v2    # "i":I
    .end local v3    # "iParentWidth":I
    .end local v4    # "leftEdge":I
    .end local v5    # "rightArrowSize":I
    :cond_8d
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v6, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->isScrollable(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Z

    move-result v6

    if-nez v6, :cond_9b

    .line 833
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v6, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->prevBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V

    goto :goto_78

    .line 835
    :cond_9b
    const/4 v2, 0x0

    .line 836
    .restart local v2    # "i":I
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 837
    .restart local v0    # "count":I
    const/4 v1, 0x0

    .line 840
    .restart local v1    # "firstItem":I
    :goto_a3
    if-ge v2, v0, :cond_c1

    .line 841
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v6, v6, v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v7

    if-ge v6, v7, :cond_ea

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v6, v6, v2

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    aget v7, v7, v2

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-lt v6, v7, :cond_ea

    .line 842
    move v1, v2

    .line 847
    :cond_c1
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v6, v6, v1

    iget-object v7, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordWidth:[I

    aget v7, v7, v1

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v7

    sub-int v4, v6, v7

    .line 848
    .restart local v4    # "leftEdge":I
    if-gez v4, :cond_d3

    .line 849
    const/4 v4, 0x0

    .line 853
    :cond_d3
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v6

    if-lt v4, v6, :cond_e6

    .line 854
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 856
    :cond_e6
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateScrollPosition(I)V

    goto :goto_78

    .line 845
    .end local v4    # "leftEdge":I
    :cond_ea
    add-int/lit8 v2, v2, 0x1

    goto :goto_a3
.end method

.method public scrollRightToHighLight(I)V
    .registers 8
    .param p1, "index"    # I

    .prologue
    .line 937
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v3, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->isScrollable(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 938
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v3, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->nextBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V

    .line 954
    :goto_d
    return-void

    .line 940
    :cond_e
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v2

    .line 941
    .local v2, "targetX":I
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 942
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v4

    add-int v1, v3, v4

    .line 943
    .local v1, "rightEdge":I
    if-ltz p1, :cond_35

    if-ge p1, v0, :cond_35

    .line 944
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordX:[I

    aget v3, v3, p1

    iget v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 947
    :cond_35
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v3

    if-gt v2, v3, :cond_3c

    .line 948
    move v2, v1

    .line 951
    :cond_3c
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateScrollPosition(I)V

    goto :goto_d
.end method

.method protected scrollToX(I)V
    .registers 3
    .param p1, "newScrollX"    # I

    .prologue
    .line 1152
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollTo(II)V

    .line 1153
    return-void
.end method

.method public selectActiveWord()V
    .registers 5

    .prologue
    .line 997
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    if-nez v0, :cond_1a

    iget v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    if-ltz v0, :cond_1a

    .line 998
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    iget v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    iget v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    .line 999
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 998
    invoke-interface {v1, v2, v0, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 1003
    :goto_19
    return-void

    .line 1001
    :cond_1a
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->trySelect()V

    goto :goto_19
.end method

.method public setAlignLeft(Z)V
    .registers 2
    .param p1, "alignLeft"    # Z

    .prologue
    .line 1103
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->alignLeft:Z

    .line 1104
    return-void
.end method

.method public setAltCharacterConverted(Z)V
    .registers 2
    .param p1, "converted"    # Z

    .prologue
    .line 1557
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->altCharacterConverted:Z

    .line 1558
    return-void
.end method

.method public setExactKeyboardShowable(Z)V
    .registers 2
    .param p1, "showable"    # Z

    .prologue
    .line 1565
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mExactKeyboardShowable:Z

    .line 1566
    return-void
.end method

.method public setFullScroll(Z)V
    .registers 2
    .param p1, "allow"    # Z

    .prologue
    .line 1107
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->allowFullScroll:Z

    .line 1108
    return-void
.end method

.method public setGetMoreWordsHandler(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;)V
    .registers 2
    .param p1, "getMoreWordsHandler"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;

    .prologue
    .line 1137
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;

    .line 1138
    return-void
.end method

.method public setHorizontalScroll(Z)V
    .registers 2
    .param p1, "mScroll"    # Z

    .prologue
    .line 1688
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mScroll:Z

    .line 1689
    return-void
.end method

.method public setLeftArrowStatus(Z)V
    .registers 2
    .param p1, "leftArrow"    # Z

    .prologue
    .line 1213
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mLeftArrowShowable:Z

    .line 1214
    return-void
.end method

.method public setMoreSuggestions(Ljava/util/List;Ljava/util/List;)V
    .registers 6
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
    .line 745
    .local p1, "wordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p2, "wordSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    if-eqz p1, :cond_3d

    .line 746
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mShowTooltip:Z

    .line 747
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 749
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 750
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 752
    :cond_1d
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 753
    if-eqz p2, :cond_3d

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3d

    .line 754
    const/4 v0, 0x0

    :goto_2b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 755
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWordSourceList:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 759
    .end local v0    # "i":I
    :cond_3d
    return-void
.end method

.method public setOnWCLMessageSelectActionListener(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWCLSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    .line 360
    return-void
.end method

.method public setOnWordSelectActionListener(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    .line 356
    return-void
.end method

.method public setSuggestions(Ljava/util/List;I)V
    .registers 4
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
    .line 762
    .local p1, "wordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;ILjava/util/List;)V

    .line 763
    return-void
.end method

.method public setSuggestions(Ljava/util/List;ILjava/util/List;)V
    .registers 9
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
    .local p1, "wordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p3, "wordSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 768
    sget-object v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "setSuggestions()"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 770
    sget-object v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Swype"

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CJK_Suggestions"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 771
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 772
    if-eqz p1, :cond_52

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_52

    .line 773
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_3f

    .line 774
    const/4 p2, 0x0

    .line 776
    :cond_3f
    iput p2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    .line 777
    invoke-virtual {p0, p1, p3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setMoreSuggestions(Ljava/util/List;Ljava/util/List;)V

    .line 778
    const/4 v0, -0x1

    if-eq p2, v0, :cond_52

    .line 779
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, p2, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 783
    :cond_52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 784
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-interface {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->onScrollContentChanged()V

    .line 785
    return-void
.end method

.method protected setVelocity(F)V
    .registers 5
    .param p1, "v"    # F

    .prologue
    .line 591
    const v0, 0x3f333333    # 0.7f

    const/high16 v1, -0x3e100000    # -30.0f

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {p0, p1, v1, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->bound(FFF)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    .line 592
    return-void
.end method

.method public showMessageOnWCL(Lcom/nuance/input/swypecorelib/Candidates;)V
    .registers 3
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1339
    :goto_c
    return-void

    .line 1329
    :cond_d
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mWCLTooltip:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mShowTooltip:Z

    .line 1332
    sget-object v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;->WCL_TOOLTIP:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->computeDisplayingCandidateDrawingRegion(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;)V

    .line 1334
    sget-object v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;->WCL_TOOLTIP:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTooltip:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    .line 1336
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->requestLayout()V

    .line 1337
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    goto :goto_c
.end method

.method public showNotMatchTootip()V
    .registers 2

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1369
    :goto_c
    return-void

    .line 1361
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mShowTooltip:Z

    .line 1363
    sget-object v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;->NOTMATCH_TOOLTIP:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->computeDisplayingCandidateDrawingRegion(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;)V

    .line 1365
    sget-object v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;->NOTMATCH_TOOLTIP:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTooltip:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    .line 1367
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->requestLayout()V

    .line 1368
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    goto :goto_c
.end method

.method public showSwypeTooltip()V
    .registers 2

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_c
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/android/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1354
    :cond_14
    :goto_14
    return-void

    .line 1346
    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mShowTooltip:Z

    .line 1348
    sget-object v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;->SWYPE_TOOLTIP:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->computeDisplayingCandidateDrawingRegion(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;)V

    .line 1350
    sget-object v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;->SWYPE_TOOLTIP:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTooltip:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$Tooltip;

    .line 1352
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->requestLayout()V

    .line 1353
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    goto :goto_14
.end method

.method public suggestions()Ljava/util/List;
    .registers 2
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
    .line 267
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    return-object v0
.end method

.method public takeSuggestionAt(F)V
    .registers 6
    .param p1, "x"    # F
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 1118
    float-to-int v0, p1

    iput v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchX:I

    .line 1120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1121
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->trySelect()V

    .line 1122
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    .line 1123
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1124
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1125
    return-void
.end method

.method public touchWord(ILjava/lang/CharSequence;)V
    .registers 4
    .param p1, "i"    # I
    .param p2, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    .line 369
    iget v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    if-eq v0, p1, :cond_16

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    instance-of v0, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    if-eqz v0, :cond_16

    .line 371
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .line 372
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setActiveCandidate(I)V

    .line 378
    :cond_11
    :goto_11
    iput p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    .line 379
    iput-object p2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    .line 380
    return-void

    .line 373
    :cond_16
    iget v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    if-eq v0, p1, :cond_11

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    instance-of v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    if-eqz v0, :cond_11

    .line 375
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .line 376
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setActiveCandidate(I)V

    goto :goto_11
.end method

.method protected trySelect()V
    .registers 4

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    if-eqz v0, :cond_d

    .line 1007
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    iget v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 1009
    :cond_d
    iget v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->touchWord(ILjava/lang/CharSequence;)V

    .line 1010
    return-void
.end method

.method protected trySelectWCLMsg()V
    .registers 4

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWCLSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    iget v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedIndex:I

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 1015
    return-void
.end method

.method public updateCandidatesSize()V
    .registers 3

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_f

    .line 1580
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getCandidateSize()V

    .line 1581
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1583
    :cond_f
    return-void
.end method

.method public updateScrollPosition(I)V
    .registers 3
    .param p1, "targetX"    # I

    .prologue
    .line 958
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v0

    if-eq p1, v0, :cond_19

    .line 959
    iput p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    .line 960
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->needMoreWords()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 961
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;

    invoke-interface {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;->requestMoreWords()V

    .line 965
    :cond_13
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    .line 966
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mScrolled:Z

    .line 970
    :cond_19
    return-void
.end method

.method public wordCount()I
    .registers 2

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 1207
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1209
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
