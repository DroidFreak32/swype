.class public Lcom/nuance/swype/input/CandidatesListView;
.super Landroid/view/View;
.source "CandidatesListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/CandidatesListView$5;,
        Lcom/nuance/swype/input/CandidatesListView$Mapper;,
        Lcom/nuance/swype/input/CandidatesListView$RollAverage;,
        Lcom/nuance/swype/input/CandidatesListView$CandidateListener;,
        Lcom/nuance/swype/input/CandidatesListView$Format;
    }
.end annotation


# static fields
.field private static final CAND_STATE_DEFAULT_NORMAL:[I

.field private static final CAND_STATE_DEFAULT_PRESSED:[I

.field private static final LONG_PRESS_DELAY:I = 0x2ee

.field protected static final MAX_SUGGESTIONS:I = 0xa

.field private static final MSG_LONG_PRESS:I = 0x1

.field protected static final OUT_OF_BOUNDS:I = -0x1

.field protected static final SCROLL_PIXELS:I = 0xc

.field protected static final TAG:Ljava/lang/String; = "CandidatesListView"


# instance fields
.field private activeCandidate:Ljava/lang/String;

.field private activeMapper:Lcom/nuance/swype/input/CandidatesListView$Mapper;

.field private alignLeft:Z

.field private allowFullScroll:Z

.field private final defaultMapper:Lcom/nuance/swype/input/CandidatesListView$Mapper;

.field private final handlerCallback:Landroid/os/Handler$Callback;

.field private highlightActiveCandidate:Z

.field private highlightAddtoDictionaryTip:Z

.field private isHardwareKeyboardUsed:Z

.field private isRtl:Z

.field private listener:Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

.field protected mA:F

.field protected mBgPadding:Landroid/graphics/Rect;

.field protected final mCandidateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/CandidatesListView$CandidateListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mColorComponent:I

.field protected mColorNormal:I

.field protected mColorOther:I

.field protected mColorPressed:I

.field protected mColorRecommended:I

.field protected mColorUDBTip:I

.field protected final mDefaultWordHighlight:Landroid/graphics/drawable/Drawable;

.field protected final mDescent:I

.field private mDisableCandidateDisplay:Z

.field protected final mDivider:Landroid/graphics/drawable/Drawable;

.field protected mDragSelected:Z

.field protected final mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIme:Lcom/nuance/swype/input/IME;

.field protected final mItalic:Landroid/graphics/Typeface;

.field private mLongPressHandled:Z

.field protected final mMinCandidateWidth:I

.field protected mMouseDown:Z

.field protected mPadWidth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPaint:Landroid/graphics/Paint;

.field protected mScrolled:Z

.field protected mSelectedCandidate:Lcom/nuance/input/swypecorelib/WordCandidate;

.field protected mSelectedIndex:I

.field protected final mSelectionHighlight:Landroid/graphics/drawable/Drawable;

.field protected mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

.field mSwipeSpeed:Lcom/nuance/swype/input/CandidatesListView$RollAverage;

.field protected final mTappedWordHighlight:Landroid/graphics/drawable/Drawable;

.field protected mTargetScrollX:I

.field protected mTextPadding:I

.field protected mTextSize:I

.field private mTextSizeInit:I

.field protected mTotalWidth:I

.field protected mTouchIndex:I

.field protected mTouchX:I

.field protected mV:F

.field protected mWordWidth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mWordWidthWithoutPadding:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mWordX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private typeface:Landroid/graphics/Typeface;

.field private typefaceBold:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 515
    new-array v0, v2, [I

    sput-object v0, Lcom/nuance/swype/input/CandidatesListView;->CAND_STATE_DEFAULT_NORMAL:[I

    .line 518
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/nuance/swype/input/CandidatesListView;->CAND_STATE_DEFAULT_PRESSED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, -0x1

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 201
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    iput v6, p0, Lcom/nuance/swype/input/CandidatesListView;->mTouchX:I

    .line 74
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidth:Ljava/util/List;

    .line 75
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mPadWidth:Ljava/util/List;

    .line 76
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    .line 77
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidthWithoutPadding:Ljava/util/List;

    .line 97
    iput v6, p0, Lcom/nuance/swype/input/CandidatesListView;->mTouchIndex:I

    .line 104
    iput-boolean v7, p0, Lcom/nuance/swype/input/CandidatesListView;->mDisableCandidateDisplay:Z

    .line 122
    const/16 v5, 0x11

    iput v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mGravity:I

    .line 126
    new-instance v5, Lcom/nuance/swype/input/CandidatesListView$1;

    invoke-direct {v5, p0}, Lcom/nuance/swype/input/CandidatesListView$1;-><init>(Lcom/nuance/swype/input/CandidatesListView;)V

    iput-object v5, p0, Lcom/nuance/swype/input/CandidatesListView;->handlerCallback:Landroid/os/Handler$Callback;

    .line 143
    iput-boolean v7, p0, Lcom/nuance/swype/input/CandidatesListView;->isRtl:Z

    .line 183
    new-instance v5, Lcom/nuance/swype/input/CandidatesListView$RollAverage;

    const v6, 0x3e99999a    # 0.3f

    invoke-direct {v5, v6}, Lcom/nuance/swype/input/CandidatesListView$RollAverage;-><init>(F)V

    iput-object v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mSwipeSpeed:Lcom/nuance/swype/input/CandidatesListView$RollAverage;

    .line 349
    new-instance v5, Lcom/nuance/swype/input/CandidatesListView$3;

    invoke-direct {v5, p0}, Lcom/nuance/swype/input/CandidatesListView$3;-><init>(Lcom/nuance/swype/input/CandidatesListView;)V

    iput-object v5, p0, Lcom/nuance/swype/input/CandidatesListView;->defaultMapper:Lcom/nuance/swype/input/CandidatesListView$Mapper;

    .line 202
    iget-object v5, p0, Lcom/nuance/swype/input/CandidatesListView;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v5}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mHandler:Landroid/os/Handler;

    .line 203
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/CandidatesListView;->readStyles(Landroid/content/Context;)V

    .line 205
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 207
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mIme:Lcom/nuance/swype/input/IME;

    .line 209
    sget v5, Lcom/nuance/swype/input/R$attr;->listSelectorBackgroundPressed:I

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    .line 210
    sget v5, Lcom/nuance/swype/input/R$attr;->wclDefaultWordBackground:I

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mDefaultWordHighlight:Landroid/graphics/drawable/Drawable;

    .line 214
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 215
    .local v2, "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$attr;->listSelectorBackgroundTappedColor:I

    invoke-virtual {v0, v6}, Lcom/nuance/swype/input/IMEApplication;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    iput-object v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mTappedWordHighlight:Landroid/graphics/drawable/Drawable;

    .line 219
    sget v5, Lcom/nuance/swype/input/R$attr;->keyboardSuggestStripDivider:I

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 221
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    .line 222
    iget-object v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/nuance/swype/input/CandidatesListView;->mColorNormal:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    iget-object v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 224
    iget-object v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/nuance/swype/input/CandidatesListView;->mTextSize:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 225
    iget-object v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 226
    iget-object v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mDescent:I

    .line 227
    sget-object v5, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mItalic:Landroid/graphics/Typeface;

    .line 228
    iget-object v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 230
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v5, p0, Lcom/nuance/swype/input/CandidatesListView;->typeface:Landroid/graphics/Typeface;

    .line 231
    sget v5, Lcom/nuance/swype/input/R$string;->custom_wcl_font_normal:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "typefaceNormal":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 233
    invoke-static {v4, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/input/CandidatesListView;->typeface:Landroid/graphics/Typeface;

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$bool;->font_typeface_bold:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_0
    iput-object v5, p0, Lcom/nuance/swype/input/CandidatesListView;->typefaceBold:Landroid/graphics/Typeface;

    .line 238
    sget v5, Lcom/nuance/swype/input/R$string;->custom_wcl_font_bold:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, "typefaceBoldName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 240
    invoke-static {v3, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/input/CandidatesListView;->typefaceBold:Landroid/graphics/Typeface;

    .line 242
    :cond_1
    iget-object v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/nuance/swype/input/CandidatesListView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 244
    new-instance v5, Landroid/view/GestureDetector;

    new-instance v6, Lcom/nuance/swype/input/CandidatesListView$2;

    invoke-direct {v6, p0}, Lcom/nuance/swype/input/CandidatesListView$2;-><init>(Lcom/nuance/swype/input/CandidatesListView;)V

    invoke-direct {v5, p1, v6}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 268
    iget-object v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v7}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 269
    invoke-virtual {p0, v10}, Lcom/nuance/swype/input/CandidatesListView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 270
    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/CandidatesListView;->setWillNotDraw(Z)V

    .line 271
    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/CandidatesListView;->setHorizontalScrollBarEnabled(Z)V

    .line 272
    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/CandidatesListView;->setVerticalScrollBarEnabled(Z)V

    .line 273
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mCandidateListeners:Ljava/util/List;

    .line 274
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->clear()V

    .line 276
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 277
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v10, :cond_4

    .line 278
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v6, v5

    const-wide v8, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v6, v8

    double-to-int v5, v6

    iput v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mMinCandidateWidth:I

    .line 283
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$bool;->use_software_render_in_preview_n_wcl:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 284
    const/4 v5, 0x0

    invoke-virtual {p0, v10, v5}, Lcom/nuance/swype/input/CandidatesListView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 286
    :cond_2
    return-void

    .line 236
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v3    # "typefaceBoldName":Ljava/lang/String;
    :cond_3
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    .line 280
    .restart local v1    # "dm":Landroid/util/DisplayMetrics;
    .restart local v3    # "typefaceBoldName":Ljava/lang/String;
    :cond_4
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v6, v5

    const-wide v8, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v6, v8

    double-to-int v5, v6

    iput v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mMinCandidateWidth:I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/CandidatesListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/CandidatesListView;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->handleLongPress()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/CandidatesListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/CandidatesListView;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->getMaxScroll()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/CandidatesListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/CandidatesListView;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->getMinScroll()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/CandidatesListView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/CandidatesListView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bound(FFF)F
    .locals 1
    .param p1, "val"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F

    .prologue
    .line 186
    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    .line 191
    .end local p2    # "min":F
    :goto_0
    return p2

    .line 188
    .restart local p2    # "min":F
    :cond_0
    cmpl-float v0, p1, p3

    if-lez v0, :cond_1

    move p2, p3

    .line 189
    goto :goto_0

    :cond_1
    move p2, p1

    .line 191
    goto :goto_0
.end method

.method private computeDisplayingCandidateDrawingRegion()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 759
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->getCandidates()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 802
    :cond_0
    return-void

    .line 764
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidth:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    iget-object v9, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 765
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidth:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mPadWidth:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidthWithoutPadding:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 772
    :cond_2
    const/4 v7, 0x0

    .line 773
    .local v7, "x":I
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    const-string v9, " "

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v11, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v8

    float-to-int v4, v8

    .line 774
    .local v4, "padding":I
    const/4 v3, 0x0

    .local v3, "index":I
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v1

    .local v1, "count":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 775
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8, v3}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    .line 777
    .local v0, "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v8

    sget-object v9, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_DRAWABLE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-ne v8, v9, :cond_5

    .line 778
    check-cast v0, Lcom/nuance/swype/input/DrawableCandidate;

    .end local v0    # "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    iget-object v2, v0, Lcom/nuance/swype/input/DrawableCandidate;->icon:Landroid/graphics/drawable/Drawable;

    .line 779
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getHeight()I

    move-result v9

    invoke-virtual {v2, v11, v11, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 780
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 781
    .local v5, "width":I
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidthWithoutPadding:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v3, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 782
    if-eqz v3, :cond_3

    add-int/lit8 v8, v1, -0x1

    if-ne v3, v8, :cond_4

    .line 784
    :cond_3
    iget v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mTextPadding:I

    add-int/2addr v5, v8

    .line 797
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidth:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v3, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 798
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v3, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 799
    iget v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mTotalWidth:I

    add-int/2addr v8, v5

    iput v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mTotalWidth:I

    .line 800
    add-int/2addr v7, v5

    .line 774
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 787
    .end local v5    # "width":I
    .restart local v0    # "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    :cond_5
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-direct {p0, v8, v3}, Lcom/nuance/swype/input/CandidatesListView;->setWordCandidateFont(Lcom/nuance/input/swypecorelib/Candidates;I)V

    .line 788
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v6

    .line 789
    .local v6, "word":Ljava/lang/String;
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidthWithoutPadding:Ljava/util/List;

    iget-object v9, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v3, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 790
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v8

    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v8, v9, :cond_6

    .line 791
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidthWithoutPadding:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int v5, v8, v4

    .restart local v5    # "width":I
    goto :goto_2

    .line 793
    .end local v5    # "width":I
    :cond_6
    invoke-direct {p0, v6}, Lcom/nuance/swype/input/CandidatesListView;->getWordDisplaySize(Ljava/lang/String;)I

    move-result v5

    .restart local v5    # "width":I
    goto :goto_2
.end method

.method private drawCandidate(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;IIIIII)I
    .locals 35
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapper"    # Lcom/nuance/swype/input/CandidatesListView$Mapper;
    .param p3, "idxCandidate"    # I
    .param p4, "lastIndex"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "height"    # I
    .param p8, "touchX"    # I

    .prologue
    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v29, v0

    .line 613
    .local v29, "paint":Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v30

    .line 614
    .local v30, "scrollX":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/CandidatesListView;->mScrolled:Z

    move/from16 v31, v0

    .line 615
    .local v31, "scrolled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    .line 617
    .local v27, "bgPadding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v13

    .line 618
    .local v13, "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v13}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v32

    .line 622
    .local v32, "source":Lcom/nuance/input/swypecorelib/WordCandidate$Source;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mMouseDown:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/Candidates;->hasAttribute(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/CandidatesListView;->mColorPressed:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/CandidatesListView;->typefaceBold:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 631
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidthWithoutPadding:Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v0, v2

    move/from16 v33, v0

    .line 632
    .local v33, "textWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidth:Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 634
    .local v9, "wordWidth":I
    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-interface {v0, v1, v9}, Lcom/nuance/swype/input/CandidatesListView$Mapper;->map(II)I

    move-result v34

    .line 636
    .local v34, "xFlipped":I
    const/4 v2, -0x1

    move/from16 v0, p8

    if-eq v0, v2, :cond_8

    add-int v2, p8, v30

    move/from16 v0, v34

    if-lt v2, v0, :cond_8

    add-int v2, p8, v30

    add-int v3, v34, v9

    if-ge v2, v3, :cond_8

    if-nez v31, :cond_8

    const/16 v16, 0x1

    .line 644
    .local v16, "isPressedCand":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 646
    .local v7, "divWidth":I
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/CandidatesListView;->isList()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 647
    if-eqz v16, :cond_1

    if-eqz v31, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/CandidatesListView;->highlightActiveCandidate:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/nuance/swype/input/CandidatesListView;->isActiveCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 649
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/CandidatesListView;->mColorPressed:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/CandidatesListView;->typefaceBold:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 651
    move/from16 v28, v9

    .line 652
    .local v28, "oldWordWidth":I
    sget-object v2, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_DRAWABLE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-object/from16 v0, v32

    if-eq v0, v2, :cond_3

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v2, v3, :cond_9

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    const-string v4, " "

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v3

    float-to-int v3, v3

    add-int v9, v2, v3

    .line 661
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/CandidatesListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    sub-int v2, v9, v28

    div-int/lit8 v2, v2, 0x2

    add-int v6, p5, v2

    move-object/from16 v0, v27

    iget v8, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v27

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int v10, v2, p7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v10}, Lcom/nuance/swype/input/CandidatesListView;->draw(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;Landroid/graphics/drawable/Drawable;IIIII)V

    .line 665
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/CandidatesListView;->mTouchIndex:I

    .line 676
    .end local v28    # "oldWordWidth":I
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/CandidatesListView;->getHighlightAddtoDictionaryTip()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 677
    sget-object v2, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_DRAWABLE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-object/from16 v0, v32

    if-ne v0, v2, :cond_b

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/CandidatesListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    const/16 v23, 0x0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidth:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int v25, v9, v2

    move-object/from16 v0, v27

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int v26, v2, p7

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, p2

    move/from16 v22, p5

    invoke-virtual/range {v18 .. v26}, Lcom/nuance/swype/input/CandidatesListView;->draw(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;Landroid/graphics/drawable/Drawable;IIIII)V

    .line 689
    :cond_5
    :goto_4
    sget-object v2, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_DRAWABLE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-object/from16 v0, v32

    if-eq v0, v2, :cond_c

    .line 690
    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, p2

    move-object/from16 v21, v29

    move-object/from16 v22, v13

    move/from16 v23, v9

    move/from16 v25, p5

    move/from16 v26, p6

    invoke-direct/range {v18 .. v26}, Lcom/nuance/swype/input/CandidatesListView;->drawCandidateText(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;Landroid/graphics/Paint;Lcom/nuance/input/swypecorelib/WordCandidate;IIII)V

    .line 692
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/CandidatesListView;->isList()Z

    move-result v2

    if-eqz v2, :cond_6

    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_6

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    add-int v22, p5, v9

    const/16 v23, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, p2

    invoke-virtual/range {v18 .. v23}, Lcom/nuance/swype/input/CandidatesListView;->draw(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;Landroid/graphics/drawable/Drawable;ILandroid/graphics/Rect;)V

    .line 700
    .end local v13    # "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    :cond_6
    :goto_5
    return v9

    .line 625
    .end local v7    # "divWidth":I
    .end local v9    # "wordWidth":I
    .end local v16    # "isPressedCand":Z
    .end local v33    # "textWidth":F
    .end local v34    # "xFlipped":I
    .restart local v13    # "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    :cond_7
    sget-object v2, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_DRAWABLE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-object/from16 v0, v32

    if-eq v0, v2, :cond_0

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v2, v1}, Lcom/nuance/swype/input/CandidatesListView;->setWordCandidateFont(Lcom/nuance/input/swypecorelib/Candidates;I)V

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v2, v1}, Lcom/nuance/swype/input/CandidatesListView;->setWordCandidateColor(Lcom/nuance/input/swypecorelib/Candidates;I)V

    goto/16 :goto_0

    .line 636
    .restart local v9    # "wordWidth":I
    .restart local v33    # "textWidth":F
    .restart local v34    # "xFlipped":I
    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 658
    .restart local v7    # "divWidth":I
    .restart local v16    # "isPressedCand":Z
    .restart local v28    # "oldWordWidth":I
    :cond_9
    invoke-virtual {v13}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nuance/swype/input/CandidatesListView;->getWordDisplaySize(Ljava/lang/String;)I

    move-result v9

    goto/16 :goto_2

    .line 667
    .end local v28    # "oldWordWidth":I
    :cond_a
    sget-object v2, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_DRAWABLE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-object/from16 v0, v32

    if-eq v0, v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/CandidatesListView;->isCandidatesList()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 668
    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, v27

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int v3, v3, p7

    move-object/from16 v0, v17

    invoke-direct {v0, v7, v2, v9, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v17, "bounds":Landroid/graphics/Rect;
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v14, p3

    move/from16 v15, p5

    .line 671
    invoke-virtual/range {v10 .. v17}, Lcom/nuance/swype/input/CandidatesListView;->drawCandBackground(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;Lcom/nuance/input/swypecorelib/WordCandidate;IIZLandroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 680
    .end local v17    # "bounds":Landroid/graphics/Rect;
    :cond_b
    sget-object v2, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_DRAWABLE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-object/from16 v0, v32

    if-eq v0, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_DRAWABLE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-ne v2, v3, :cond_5

    .line 682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/CandidatesListView;->mColorPressed:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/CandidatesListView;->typefaceBold:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 684
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/CandidatesListView;->isHardwareKeyboardUsed:Z

    .line 685
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/CandidatesListView;->highlightAddtoDictionaryTip:Z

    goto/16 :goto_4

    .line 697
    :cond_c
    check-cast v13, Lcom/nuance/swype/input/DrawableCandidate;

    .end local v13    # "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    iget-object v0, v13, Lcom/nuance/swype/input/DrawableCandidate;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    .line 698
    .local v21, "icon":Landroid/graphics/drawable/Drawable;
    move/from16 v0, v33

    float-to-int v2, v0

    sub-int v24, v9, v2

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, p2

    move/from16 v22, p5

    move/from16 v23, p3

    invoke-direct/range {v18 .. v24}, Lcom/nuance/swype/input/CandidatesListView;->drawIcon(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;Landroid/graphics/drawable/Drawable;III)V

    goto/16 :goto_5
.end method

.method private drawCandidateText(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;Landroid/graphics/Paint;Lcom/nuance/input/swypecorelib/WordCandidate;IIII)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapper"    # Lcom/nuance/swype/input/CandidatesListView$Mapper;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p5, "wordWidth"    # I
    .param p6, "textWidth"    # I
    .param p7, "x"    # I
    .param p8, "y"    # I

    .prologue
    .line 542
    invoke-virtual/range {p4 .. p4}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v4

    .line 543
    .local v4, "suggestion":Ljava/lang/CharSequence;
    invoke-virtual/range {p4 .. p4}, Lcom/nuance/input/swypecorelib/WordCandidate;->contextPredictLength()I

    move-result v6

    .line 544
    .local v6, "contextLen":I
    sub-int v3, p5, p6

    div-int/lit8 v3, v3, 0x2

    add-int v17, p7, v3

    .line 545
    .local v17, "wordStart":I
    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, p6

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/input/CandidatesListView$Mapper;->map(II)I

    move-result v17

    .line 546
    if-eqz v6, :cond_0

    .line 547
    new-instance v9, Landroid/graphics/Paint;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 548
    .local v9, "contextPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/CandidatesListView;->mColorRecommended:I

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 549
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/CandidatesListView;->mItalic:Landroid/graphics/Typeface;

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 550
    const/4 v5, 0x0

    move/from16 v0, v17

    int-to-float v7, v0

    move/from16 v0, p8

    int-to-float v8, v0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 551
    move/from16 v0, v17

    int-to-float v3, v0

    invoke-virtual/range {p4 .. p4}, Lcom/nuance/input/swypecorelib/WordCandidate;->contextPredict()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    add-float/2addr v3, v5

    float-to-int v0, v3

    move/from16 v17, v0

    .line 553
    .end local v9    # "contextPaint":Landroid/graphics/Paint;
    :cond_0
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v13

    move/from16 v0, v17

    int-to-float v14, v0

    move/from16 v0, p8

    int-to-float v15, v0

    move-object/from16 v10, p1

    move-object v11, v4

    move v12, v6

    move-object/from16 v16, p3

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 554
    return-void
.end method

.method private drawIcon(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;Landroid/graphics/drawable/Drawable;III)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapper"    # Lcom/nuance/swype/input/CandidatesListView$Mapper;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "x"    # I
    .param p5, "idxCandidate"    # I
    .param p6, "wordPadding"    # I

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v7, v8

    .line 727
    .local v2, "availableHeight":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int v7, v2, v7

    div-int/lit8 v3, v7, 0x2

    .line 730
    .local v3, "iconTop":I
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 731
    .local v4, "iconScale":D
    if-gez v3, :cond_0

    .line 732
    iget-object v7, p0, Lcom/nuance/swype/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    iget v3, v7, Landroid/graphics/Rect;->top:I

    .line 733
    int-to-double v8, v2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-double v10, v7

    div-double v4, v8, v10

    .line 735
    :cond_0
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/CandidatesListView;->getIconLeftOffset(II)I

    move-result v6

    .line 736
    .local v6, "left":I
    const/4 v7, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v8, v4

    double-to-int v8, v8

    int-to-double v10, v3

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-double v12, v9

    mul-double/2addr v12, v4

    add-double/2addr v10, v12

    double-to-int v9, v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v3, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 740
    add-int v7, p4, v6

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0, p1, v0, v1, v7}, Lcom/nuance/swype/input/CandidatesListView;->draw(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;Landroid/graphics/drawable/Drawable;I)V

    .line 742
    return-void
.end method

.method private getActiveCandidateIndex()I
    .locals 4

    .prologue
    .line 1383
    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView;->activeCandidate:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1384
    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->getCandidates()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/input/swypecorelib/WordCandidate;

    .line 1385
    .local v1, "wordCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView;->activeCandidate:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1386
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->id()I

    move-result v2

    .line 1390
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "wordCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    :goto_0
    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private getCandidateSize()V
    .locals 4

    .prologue
    .line 1422
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 1423
    .local v0, "sp":Lcom/nuance/swype/input/UserPreferences;
    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mTextSizeInit:I

    int-to-float v1, v1

    const-string v2, "Candidates_Size"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v3}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getCandidatesSize(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;F)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mTextSize:I

    .line 1425
    return-void
.end method

.method private getIconLeftOffset(II)I
    .locals 1
    .param p1, "idxCandidate"    # I
    .param p2, "padding"    # I

    .prologue
    .line 713
    if-nez p1, :cond_0

    .line 721
    .end local p2    # "padding":I
    :goto_0
    return p2

    .line 716
    .restart local p2    # "padding":I
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v0, p1, :cond_1

    .line 718
    const/4 p2, 0x0

    goto :goto_0

    .line 721
    :cond_1
    div-int/lit8 p2, p2, 0x2

    goto :goto_0
.end method

.method private getMapper()Lcom/nuance/swype/input/CandidatesListView$Mapper;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->activeMapper:Lcom/nuance/swype/input/CandidatesListView$Mapper;

    if-nez v0, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/CandidatesListView;->initMapper(I)Lcom/nuance/swype/input/CandidatesListView$Mapper;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->activeMapper:Lcom/nuance/swype/input/CandidatesListView$Mapper;

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->activeMapper:Lcom/nuance/swype/input/CandidatesListView$Mapper;

    return-object v0
.end method

.method private getMaxScroll()I
    .locals 1

    .prologue
    .line 1326
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->getRTLDrawingSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollRange()I

    move-result v0

    goto :goto_0
.end method

.method private getMinScroll()I
    .locals 1

    .prologue
    .line 1330
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->getRTLDrawingSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollRange()I

    move-result v0

    neg-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRTLDrawingSetting()Z
    .locals 2

    .prologue
    .line 750
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/Candidates;->hasAttribute(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/Candidates;->hasAttribute(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_1

    .line 753
    :cond_0
    invoke-static {}, Lcom/nuance/swype/widget/directional/DirectionalUtil;->isCurrentlyRtl()Z

    move-result v0

    .line 755
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/nuance/swype/input/CandidatesListView;->isRtl:Z

    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1298
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    if-nez v1, :cond_0

    move v1, v2

    .line 1322
    :goto_0
    return v1

    .line 1304
    :cond_0
    const/4 v0, 0x0

    .line 1308
    .local v0, "range":I
    iget-boolean v1, p0, Lcom/nuance/swype/input/CandidatesListView;->allowFullScroll:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1, v3}, Lcom/nuance/input/swypecorelib/Candidates;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1309
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1, v3}, Lcom/nuance/input/swypecorelib/Candidates;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1310
    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mTotalWidth:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v0, v1, 0x2

    .line 1322
    :cond_2
    :goto_1
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    .line 1313
    :cond_3
    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mTotalWidth:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v3

    sub-int v0, v1, v3

    goto :goto_1

    .line 1316
    :cond_4
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidth:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1319
    iget v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mTotalWidth:I

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidth:Ljava/util/List;

    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidth:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v0, v3, v1

    goto :goto_1
.end method

.method private getWordDisplaySize(Ljava/lang/String;)I
    .locals 4
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 836
    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mMinCandidateWidth:I

    iget v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mTextPadding:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v0, v1

    .line 837
    .local v0, "minWidth":F
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    iget v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mTextPadding:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 839
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    return v1
.end method

.method private handleLongPress()V
    .locals 4

    .prologue
    .line 1015
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mLongPressHandled:Z

    .line 1018
    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mTouchIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v1

    iget v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mTouchIndex:I

    if-gt v1, v2, :cond_1

    .line 1030
    :cond_0
    :goto_0
    return-void

    .line 1024
    :cond_1
    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mTouchIndex:I

    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    iget v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mTouchIndex:I

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/CandidatesListView;->touchWord(ILcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 1025
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getCurrentSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    .line 1027
    .local v0, "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    if-eqz v0, :cond_0

    .line 1028
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/CandidatesListView;->raiseOnPressHoldCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    goto :goto_0
.end method

.method private initMapper(I)Lcom/nuance/swype/input/CandidatesListView$Mapper;
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->getRTLDrawingSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    new-instance v0, Lcom/nuance/swype/input/CandidatesListView$4;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/CandidatesListView$4;-><init>(Lcom/nuance/swype/input/CandidatesListView;I)V

    .line 384
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->defaultMapper:Lcom/nuance/swype/input/CandidatesListView$Mapper;

    goto :goto_0
.end method

.method private isActiveCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;)Z
    .locals 2
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;

    .prologue
    .line 1345
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->activeCandidate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isList()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 585
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v3, v2, v1

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v3, v2, v0

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/CandidatesListView;->isTypeOneOf([Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private raiseOnCandidatesUpdated()V
    .locals 4

    .prologue
    .line 1080
    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v2, :cond_0

    .line 1081
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getCandidateListener()Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    move-result-object v1

    .line 1082
    .local v1, "localListener":Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    if-eqz v1, :cond_0

    .line 1083
    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-interface {v1, v2}, Lcom/nuance/swype/input/CandidatesListView$CandidateListener;->onCandidatesUpdated(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 1087
    .end local v1    # "localListener":Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mCandidateListeners:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 1088
    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mCandidateListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    .line 1089
    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-interface {v2, v3}, Lcom/nuance/swype/input/CandidatesListView$CandidateListener;->onCandidatesUpdated(Lcom/nuance/input/swypecorelib/Candidates;)V

    goto :goto_0

    .line 1092
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private raiseOnPressHoldCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;)Z
    .locals 5
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;

    .prologue
    const/4 v3, 0x1

    .line 1063
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getCandidateListener()Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    move-result-object v1

    .line 1064
    .local v1, "localListener":Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    if-eqz v1, :cond_0

    .line 1065
    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-interface {v1, p1, v2}, Lcom/nuance/swype/input/CandidatesListView$CandidateListener;->onPressHoldCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 1075
    :goto_0
    return v2

    .line 1070
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mCandidateListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    .line 1071
    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-interface {v2, p1, v4}, Lcom/nuance/swype/input/CandidatesListView$CandidateListener;->onPressHoldCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 1072
    goto :goto_0

    .line 1075
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private raiseOnSelectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;)Z
    .locals 7
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1033
    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mIme:Lcom/nuance/swype/input/IME;

    if-nez v4, :cond_0

    move v4, v5

    .line 1058
    :goto_0
    return v4

    .line 1036
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1037
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    move v4, v5

    .line 1038
    goto :goto_0

    .line 1040
    :cond_1
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1041
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getCandidateListener()Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    move-result-object v2

    .line 1043
    .local v2, "localListener":Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1044
    .local v3, "suggestions":Lcom/nuance/input/swypecorelib/Candidates;
    if-eqz v2, :cond_2

    .line 1045
    invoke-interface {v2, p1, v3}, Lcom/nuance/swype/input/CandidatesListView$CandidateListener;->onSelectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1046
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move v4, v6

    .line 1047
    goto :goto_0

    .line 1051
    :cond_2
    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mCandidateListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    .line 1052
    invoke-interface {v4, p1, v3}, Lcom/nuance/swype/input/CandidatesListView$CandidateListener;->onSelectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1053
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move v4, v6

    .line 1054
    goto :goto_0

    .line 1057
    :cond_4
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move v4, v5

    .line 1058
    goto :goto_0
.end method

.method private readStyles(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v6, -0x10000

    .line 1192
    sget v4, Lcom/nuance/swype/input/R$style;->WordListView:I

    sget-object v5, Lcom/nuance/swype/input/R$styleable;->WordListView:[I

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1195
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    .line 1197
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_b

    .line 1198
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 1200
    .local v1, "attr":I
    sget v4, Lcom/nuance/swype/input/R$styleable;->WordListView_candidateNormal:I

    if-ne v1, v4, :cond_1

    .line 1201
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mColorNormal:I

    .line 1197
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1202
    :cond_1
    sget v4, Lcom/nuance/swype/input/R$styleable;->WordListView_candidateRecommended:I

    if-ne v1, v4, :cond_2

    .line 1203
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mColorRecommended:I

    goto :goto_1

    .line 1204
    :cond_2
    sget v4, Lcom/nuance/swype/input/R$styleable;->WordListView_candidateOther:I

    if-ne v1, v4, :cond_3

    .line 1205
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mColorOther:I

    goto :goto_1

    .line 1206
    :cond_3
    sget v4, Lcom/nuance/swype/input/R$styleable;->WordListView_candidateComponent:I

    if-ne v1, v4, :cond_4

    .line 1207
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mColorComponent:I

    goto :goto_1

    .line 1208
    :cond_4
    sget v4, Lcom/nuance/swype/input/R$styleable;->WordListView_candidatePressed:I

    if-ne v1, v4, :cond_5

    .line 1209
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mColorPressed:I

    goto :goto_1

    .line 1210
    :cond_5
    sget v4, Lcom/nuance/swype/input/R$styleable;->WordListView_textSize:I

    if-ne v1, v4, :cond_6

    .line 1211
    const/16 v4, 0x14

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mTextSizeInit:I

    goto :goto_1

    .line 1212
    :cond_6
    sget v4, Lcom/nuance/swype/input/R$styleable;->WordListView_textPadding:I

    if-ne v1, v4, :cond_7

    .line 1213
    const/16 v4, 0xa

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mTextPadding:I

    goto :goto_1

    .line 1214
    :cond_7
    sget v4, Lcom/nuance/swype/input/R$styleable;->WordListView_udbAndTipColor:I

    if-ne v1, v4, :cond_9

    .line 1215
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1216
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mColorUDBTip:I

    goto :goto_1

    .line 1218
    :cond_8
    sget v4, Lcom/nuance/swype/input/R$styleable;->WordListView_candidateRecommended:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mColorUDBTip:I

    goto :goto_1

    .line 1220
    :cond_9
    sget v4, Lcom/nuance/swype/input/R$styleable;->WordListView_android_gravity:I

    if-ne v1, v4, :cond_0

    .line 1221
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1222
    sget v4, Lcom/nuance/swype/input/R$styleable;->WordListView_android_gravity:I

    iget v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mGravity:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mGravity:I

    goto :goto_1

    .line 1224
    :cond_a
    const/16 v4, 0x11

    iput v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mGravity:I

    goto :goto_1

    .line 1228
    .end local v1    # "attr":I
    :cond_b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1229
    return-void
.end method

.method private resetScroll()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1290
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/CandidatesListView;->scrollToX(I)V

    .line 1291
    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    .line 1292
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    .line 1293
    return-void
.end method

.method private scrollToHighlight()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1355
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->getActiveCandidateIndex()I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    .line 1356
    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_1

    .line 1380
    :cond_0
    :goto_0
    return-void

    .line 1359
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    iget v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedCandidate:Lcom/nuance/input/swypecorelib/WordCandidate;

    .line 1361
    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mTotalWidth:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1362
    .local v0, "maxScroll":I
    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v1

    if-eqz v1, :cond_3

    .line 1363
    iput v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    .line 1364
    iput-boolean v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mScrolled:Z

    .line 1379
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    goto :goto_0

    .line 1366
    :cond_3
    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v1

    if-eq v1, v0, :cond_4

    .line 1367
    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    .line 1368
    iput-boolean v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mScrolled:Z

    goto :goto_1

    .line 1370
    :cond_4
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    iget v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1371
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    iget v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    .line 1372
    iput-boolean v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mScrolled:Z

    goto :goto_1

    .line 1374
    :cond_5
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    iget v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidth:Ljava/util/List;

    iget v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-le v1, v2, :cond_2

    .line 1375
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    iget v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidth:Ljava/util/List;

    iget v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    .line 1376
    iput-boolean v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mScrolled:Z

    goto/16 :goto_1
.end method

.method private scrollToTarget()V
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 958
    iget v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 959
    iget v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v0, v2

    .line 960
    .local v0, "dist":D
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

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

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/CandidatesListView;->scrollToX(I)V

    .line 962
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    if-lt v2, v3, :cond_0

    .line 963
    iget v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/CandidatesListView;->scrollToX(I)V

    .line 973
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    .line 974
    return-void

    .line 966
    .end local v0    # "dist":D
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    sub-int/2addr v2, v3

    int-to-double v0, v2

    .line 967
    .restart local v0    # "dist":D
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

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

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/CandidatesListView;->scrollToX(I)V

    .line 969
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    if-gt v2, v3, :cond_0

    .line 970
    iget v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/CandidatesListView;->scrollToX(I)V

    goto :goto_0
.end method

.method private setDefaultSuggestions(Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 1
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 1272
    new-instance v0, Lcom/nuance/input/swypecorelib/Candidates;

    invoke-direct {v0, p1}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Lcom/nuance/input/swypecorelib/Candidates;)V

    iput-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1273
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->raiseOnCandidatesUpdated()V

    .line 1274
    return-void
.end method

.method private setWordCandidateColor(Lcom/nuance/input/swypecorelib/Candidates;I)V
    .locals 2
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p2, "idx"    # I

    .prologue
    .line 805
    iget-boolean v0, p0, Lcom/nuance/swype/input/CandidatesListView;->isHardwareKeyboardUsed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->getSmartSelectionIndex()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 806
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mColorRecommended:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 807
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/CandidatesListView;->isHardwareKeyboardUsed:Z

    .line 819
    :goto_0
    return-void

    .line 810
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->isList()Z

    move-result v0

    if-nez v0, :cond_1

    .line 812
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mColorUDBTip:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 813
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->getSmartSelectionIndex()I

    move-result v0

    if-ne v0, p2, :cond_2

    .line 815
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mColorRecommended:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 817
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mColorOther:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method private setWordCandidateFont(Lcom/nuance/input/swypecorelib/Candidates;I)V
    .locals 2
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p2, "wordCandidateIndex"    # I

    .prologue
    .line 823
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->getSmartSelectionIndex()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 825
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->typefaceBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 833
    :goto_0
    return-void

    .line 826
    :cond_0
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_2

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->typefaceBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 831
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method private slide()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 919
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v4

    int-to-float v3, v4

    .line 920
    .local v3, "oldX":F
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->getMaxScroll()I

    move-result v0

    .line 921
    .local v0, "maxScroll":I
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->getMinScroll()I

    move-result v1

    .line 927
    .local v1, "minScroll":I
    iget v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    .line 930
    .local v2, "oldV":F
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v4

    iget v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    mul-float/2addr v5, v7

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/CandidatesListView;->pull(F)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/CandidatesListView;->scrollToX(I)V

    .line 931
    iget v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    iget v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mA:F

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    iput v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    .line 933
    iget v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v7

    if-gez v4, :cond_0

    .line 934
    iput v6, p0, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    .line 938
    :cond_0
    iget v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    mul-float/2addr v4, v2

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v4

    if-lt v4, v1, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v4

    if-le v4, v0, :cond_3

    :cond_1
    int-to-float v4, v1

    cmpg-float v4, v3, v4

    if-gez v4, :cond_2

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v4

    if-ge v4, v1, :cond_3

    :cond_2
    int-to-float v4, v0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_4

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v4

    if-gt v4, v0, :cond_4

    .line 940
    :cond_3
    iput v6, p0, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    .line 941
    iput v6, p0, Lcom/nuance/swype/input/CandidatesListView;->mA:F

    .line 942
    int-to-float v4, v1

    cmpg-float v4, v3, v4

    if-gez v4, :cond_5

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v4

    if-lt v4, v1, :cond_5

    .line 943
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/CandidatesListView;->scrollToX(I)V

    .line 949
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    .line 950
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    .line 951
    return-void

    .line 944
    :cond_5
    int-to-float v4, v0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_4

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v4

    if-gt v4, v0, :cond_4

    .line 945
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/CandidatesListView;->scrollToX(I)V

    goto :goto_0
.end method


# virtual methods
.method public addOnWordSelectActionListener(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    .prologue
    .line 306
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mCandidateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mCandidateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_0
    return-void
.end method

.method protected calcAccel()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 850
    iget v6, p0, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    cmpl-float v6, v5, v6

    if-nez v6, :cond_1

    move v3, v5

    .line 851
    .local v3, "vUnitVect":F
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v6

    int-to-float v4, v6

    .line 852
    .local v4, "x":F
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->getMaxScroll()I

    move-result v0

    .line 853
    .local v0, "maxScroll":I
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->getMinScroll()I

    move-result v1

    .line 855
    .local v1, "minScroll":I
    int-to-float v6, v1

    cmpg-float v6, v4, v6

    if-ltz v6, :cond_0

    int-to-float v6, v0

    cmpl-float v6, v4, v6

    if-lez v6, :cond_5

    .line 856
    :cond_0
    int-to-float v6, v1

    cmpg-float v6, v4, v6

    if-gez v6, :cond_2

    move v2, v4

    .line 859
    .local v2, "oobDist":F
    :goto_1
    mul-float v6, v3, v2

    cmpl-float v6, v6, v5

    if-lez v6, :cond_3

    .line 860
    const v5, -0x445c28f6    # -0.005f

    mul-float/2addr v5, v3

    mul-float/2addr v5, v2

    mul-float/2addr v5, v2

    iput v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mA:F

    .line 861
    iget v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mA:F

    const/high16 v6, -0x3ee00000    # -10.0f

    const/high16 v7, 0x41200000    # 10.0f

    invoke-direct {p0, v5, v6, v7}, Lcom/nuance/swype/input/CandidatesListView;->bound(FFF)F

    move-result v5

    iput v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mA:F

    .line 879
    .end local v2    # "oobDist":F
    :goto_2
    return-void

    .line 850
    .end local v0    # "maxScroll":I
    .end local v1    # "minScroll":I
    .end local v3    # "vUnitVect":F
    .end local v4    # "x":F
    :cond_1
    iget v6, p0, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    iget v7, p0, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float v3, v6, v7

    goto :goto_0

    .line 856
    .restart local v0    # "maxScroll":I
    .restart local v1    # "minScroll":I
    .restart local v3    # "vUnitVect":F
    .restart local v4    # "x":F
    :cond_2
    int-to-float v6, v0

    sub-float v2, v4, v6

    goto :goto_1

    .line 864
    .restart local v2    # "oobDist":F
    :cond_3
    iput v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mA:F

    .line 865
    iput v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    .line 866
    int-to-float v5, v1

    cmpg-float v5, v2, v5

    if-gez v5, :cond_4

    .line 867
    iput v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    .line 871
    :goto_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    goto :goto_2

    .line 869
    :cond_4
    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    goto :goto_3

    .line 874
    .end local v2    # "oobDist":F
    :cond_5
    iget v6, p0, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_6

    .line 875
    const v5, -0x40e66666    # -0.6f

    mul-float/2addr v5, v3

    iput v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mA:F

    goto :goto_2

    .line 877
    :cond_6
    iput v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mA:F

    goto :goto_2
.end method

.method public final clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 987
    iput-boolean v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mLongPressHandled:Z

    .line 988
    iput-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    .line 989
    iput v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mTouchX:I

    .line 990
    iput-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedCandidate:Lcom/nuance/input/swypecorelib/WordCandidate;

    .line 991
    iput v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    .line 992
    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mTotalWidth:I

    .line 993
    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    .line 994
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    .line 995
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/CandidatesListView;->scrollToX(I)V

    .line 996
    iput v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mA:F

    .line 997
    iput v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    .line 998
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->raiseOnCandidatesUpdated()V

    .line 999
    return-void
.end method

.method public clearOnWordSelectActionListeners()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mCandidateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 313
    return-void
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mTotalWidth:I

    return v0
.end method

.method draw(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;Landroid/graphics/drawable/Drawable;I)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapper"    # Lcom/nuance/swype/input/CandidatesListView$Mapper;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "offset"    # I

    .prologue
    .line 578
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/CandidatesListView;->draw(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;Landroid/graphics/drawable/Drawable;ILandroid/graphics/Rect;)V

    .line 579
    return-void
.end method

.method draw(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;Landroid/graphics/drawable/Drawable;IIIII)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapper"    # Lcom/nuance/swype/input/CandidatesListView$Mapper;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "offset"    # I
    .param p5, "left"    # I
    .param p6, "top"    # I
    .param p7, "right"    # I
    .param p8, "bottom"    # I

    .prologue
    .line 558
    sub-int v0, p7, p5

    if-lez v0, :cond_0

    sub-int v0, p8, p6

    if-gtz v0, :cond_1

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 563
    sub-int v0, p7, p5

    invoke-interface {p2, p4, v0}, Lcom/nuance/swype/input/CandidatesListView$Mapper;->map(II)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 564
    invoke-virtual {p3, p5, p6, p7, p8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 565
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 566
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method draw(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;Landroid/graphics/drawable/Drawable;ILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapper"    # Lcom/nuance/swype/input/CandidatesListView$Mapper;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "offset"    # I
    .param p5, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 570
    if-nez p5, :cond_0

    .line 575
    :goto_0
    return-void

    .line 573
    :cond_0
    iget v5, p5, Landroid/graphics/Rect;->left:I

    iget v6, p5, Landroid/graphics/Rect;->top:I

    iget v7, p5, Landroid/graphics/Rect;->right:I

    iget v8, p5, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v8}, Lcom/nuance/swype/input/CandidatesListView;->draw(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;Landroid/graphics/drawable/Drawable;IIIII)V

    goto :goto_0
.end method

.method drawCandBackground(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;Lcom/nuance/input/swypecorelib/WordCandidate;IIZLandroid/graphics/Rect;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapper"    # Lcom/nuance/swype/input/CandidatesListView$Mapper;
    .param p3, "cand"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p4, "idx"    # I
    .param p5, "offset"    # I
    .param p6, "isPressed"    # Z
    .param p7, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 526
    if-nez p4, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateIndex()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateIndex()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateIndex()I

    move-result v0

    if-nez v0, :cond_1

    .line 530
    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mTappedWordHighlight:Landroid/graphics/drawable/Drawable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p5

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/CandidatesListView;->draw(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;Landroid/graphics/drawable/Drawable;ILandroid/graphics/Rect;)V

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mDefaultWordHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getSmartSelectionIndex()I

    move-result v0

    if-ne v0, p4, :cond_0

    .line 533
    if-eqz p6, :cond_2

    sget-object v6, Lcom/nuance/swype/input/CandidatesListView;->CAND_STATE_DEFAULT_PRESSED:[I

    .line 535
    .local v6, "drawableState":[I
    :goto_1
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mDefaultWordHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 536
    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mDefaultWordHighlight:Landroid/graphics/drawable/Drawable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p5

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/CandidatesListView;->draw(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;Landroid/graphics/drawable/Drawable;ILandroid/graphics/Rect;)V

    goto :goto_0

    .line 533
    .end local v6    # "drawableState":[I
    :cond_2
    sget-object v6, Lcom/nuance/swype/input/CandidatesListView;->CAND_STATE_DEFAULT_NORMAL:[I

    goto :goto_1
.end method

.method public getCandidateListener()Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->listener:Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    return-object v0
.end method

.method public getCenterCandidateIndex()I
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 1486
    const/4 v1, 0x0

    .line 1487
    .local v1, "i":I
    const/4 v2, -0x1

    .line 1489
    .local v2, "item":I
    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v0

    .line 1490
    .local v0, "count":I
    if-gtz v0, :cond_0

    move v4, v5

    .line 1505
    :goto_0
    return v4

    .line 1493
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v6

    add-int v3, v4, v6

    .line 1494
    .local v3, "rightEdge":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1495
    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, v3, :cond_3

    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidth:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v6

    add-int/lit8 v6, v3, 0x1

    if-lt v4, v6, :cond_3

    .line 1497
    move v2, v1

    .line 1502
    :cond_1
    if-ne v2, v5, :cond_2

    .line 1503
    move v2, v0

    .line 1505
    :cond_2
    div-int/lit8 v4, v2, 0x2

    goto :goto_0

    .line 1500
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getCurrentSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedCandidate:Lcom/nuance/input/swypecorelib/WordCandidate;

    return-object v0
.end method

.method public getFirstCandidateIndexInNextPage()I
    .locals 6

    .prologue
    .line 1468
    const/4 v2, 0x0

    .line 1469
    .local v2, "i":I
    const/4 v1, -0x1

    .line 1470
    .local v1, "firstItem":I
    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v0

    .line 1471
    .local v0, "count":I
    if-gtz v0, :cond_0

    .line 1472
    const/4 v4, -0x1

    .line 1482
    :goto_0
    return v4

    .line 1474
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v5

    add-int v3, v4, v5

    .line 1475
    .local v3, "rightEdge":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 1476
    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, v3, :cond_2

    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidth:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x1

    if-lt v4, v5, :cond_2

    .line 1477
    move v1, v2

    :cond_1
    move v4, v1

    .line 1482
    goto :goto_0

    .line 1480
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getFirstCandidateIndexInPreviousPage()I
    .locals 5

    .prologue
    .line 1509
    const/4 v2, 0x0

    .line 1510
    .local v2, "i":I
    const/4 v1, -0x1

    .line 1511
    .local v1, "firstItem":I
    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v0

    .line 1512
    .local v0, "count":I
    if-gtz v0, :cond_1

    .line 1513
    const/4 v3, -0x1

    .line 1521
    :goto_0
    return v3

    .line 1519
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 1514
    :cond_1
    if-ge v2, v0, :cond_2

    .line 1515
    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidth:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_0

    .line 1516
    move v1, v2

    :cond_2
    move v3, v1

    .line 1521
    goto :goto_0
.end method

.method public getHardwareKeyboardUsed()Z
    .locals 1

    .prologue
    .line 1603
    iget-boolean v0, p0, Lcom/nuance/swype/input/CandidatesListView;->isHardwareKeyboardUsed:Z

    return v0
.end method

.method public getHighlightAddtoDictionaryTip()Z
    .locals 1

    .prologue
    .line 1612
    iget-boolean v0, p0, Lcom/nuance/swype/input/CandidatesListView;->highlightAddtoDictionaryTip:Z

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1622
    iget-boolean v1, p0, Lcom/nuance/swype/input/CandidatesListView;->isRtl:Z

    if-eqz v1, :cond_2

    .line 1623
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1631
    :cond_0
    :goto_0
    return v0

    .line 1626
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/CandidatesListView;->isKeyOutofRightBound(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1627
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1631
    :cond_2
    invoke-super {p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v0

    goto :goto_0
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 1240
    iget v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    return v0
.end method

.method public hideCandidateHighlight()V
    .locals 1

    .prologue
    .line 1394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/CandidatesListView;->highlightActiveCandidate:Z

    .line 1395
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    .line 1396
    return-void
.end method

.method public highlightCandidate(Ljava/lang/String;)V
    .locals 1
    .param p1, "candidate"    # Ljava/lang/String;

    .prologue
    .line 1349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/CandidatesListView;->highlightActiveCandidate:Z

    .line 1350
    iput-object p1, p0, Lcom/nuance/swype/input/CandidatesListView;->activeCandidate:Ljava/lang/String;

    .line 1351
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->scrollToHighlight()V

    .line 1352
    return-void
.end method

.method protected isCandidatesList()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 594
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->isList()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->COMPLETIONS:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v3, v2, v1

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v3, v2, v0

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/CandidatesListView;->isTypeOneOf([Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isEditingUDBWords()Z
    .locals 1

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->isUDBEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyOutofLeftBound(I)Z
    .locals 3
    .param p1, "i"    # I

    .prologue
    const/4 v1, 0x1

    .line 1459
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v2

    if-ge v0, v2, :cond_0

    move v0, v1

    .line 1464
    :goto_0
    return v0

    .line 1461
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidth:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_1

    move v0, v1

    .line 1462
    goto :goto_0

    .line 1464
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyOutofRightBound(I)Z
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v2, 0x1

    .line 1442
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v3

    add-int v0, v1, v3

    .line 1443
    .local v0, "rightEdge":I
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v0, :cond_0

    move v1, v2

    .line 1448
    :goto_0
    return v1

    .line 1445
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v1, v0, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidth:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v3

    if-lt v1, v0, :cond_1

    move v1, v2

    .line 1446
    goto :goto_0

    .line 1448
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected varargs isTypeOneOf([Lcom/nuance/input/swypecorelib/Candidates$Source;)Z
    .locals 5
    .param p1, "types"    # [Lcom/nuance/input/swypecorelib/Candidates$Source;

    .prologue
    .line 600
    move-object v0, p1

    .local v0, "arr$":[Lcom/nuance/input/swypecorelib/Candidates$Source;
    array-length v2, p1

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 601
    .local v3, "type":Lcom/nuance/input/swypecorelib/Candidates$Source;
    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v4

    if-ne v4, v3, :cond_0

    .line 602
    const/4 v4, 0x1

    .line 605
    .end local v3    # "type":Lcom/nuance/input/swypecorelib/Candidates$Source;
    :goto_1
    return v4

    .line 600
    .restart local v3    # "type":Lcom/nuance/input/swypecorelib/Candidates$Source;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 605
    .end local v3    # "type":Lcom/nuance/input/swypecorelib/Candidates$Source;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected longPressFirstWord()V
    .locals 0

    .prologue
    .line 1179
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1183
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1184
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    if-nez v2, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mDisableCandidateDisplay:Z

    if-nez v2, :cond_0

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    if-nez v2, :cond_2

    .line 404
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v2, v3, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/CandidatesListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/CandidatesListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 411
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    .line 412
    .local v20, "divWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-lez v20, :cond_6

    .end local v20    # "divWidth":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/CandidatesListView;->getHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/swype/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    move/from16 v0, v20

    invoke-virtual {v2, v3, v5, v0, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v25

    .line 417
    .local v25, "viewWidth":I
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/CandidatesListView;->getMapper()Lcom/nuance/swype/input/CandidatesListView$Mapper;

    move-result-object v4

    .line 419
    .local v4, "mapper":Lcom/nuance/swype/input/CandidatesListView$Mapper;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v23

    .line 420
    .local v23, "itemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    .line 421
    .local v19, "bgPadding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/CandidatesListView;->mTouchX:I

    move/from16 v18, v0

    .line 422
    .local v18, "touchX":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/CandidatesListView;->mScrolled:Z

    move/from16 v24, v0

    .line 423
    .local v24, "scrolled":Z
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/CandidatesListView;->getHeight()I

    move-result v17

    .line 424
    .local v17, "height":I
    move/from16 v0, v17

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/CandidatesListView;->mDescent:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v16, v2, 0x2

    .line 431
    .local v16, "y":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/nuance/swype/input/CandidatesListView;->mTotalWidth:I

    .line 434
    .local v9, "contentWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v2, v3, :cond_7

    :cond_3
    const/16 v21, 0x1

    .line 437
    .local v21, "forceCenter":Z
    :goto_2
    const/4 v15, 0x0

    .line 438
    .local v15, "x":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/CandidatesListView;->alignLeft:Z

    if-nez v2, :cond_5

    move/from16 v0, v25

    if-ge v9, v0, :cond_5

    .line 439
    if-nez v21, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mGravity:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mGravity:I

    const v3, 0x800003

    if-ne v2, v3, :cond_8

    .line 440
    :cond_4
    const/4 v15, 0x0

    .line 447
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/Candidates;->hasAttribute(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 448
    move/from16 v0, v25

    if-gt v0, v9, :cond_9

    .line 450
    div-int/lit8 v2, v25, 0x2

    add-int/2addr v15, v2

    .line 451
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    move/from16 v0, v23

    if-ge v13, v0, :cond_9

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidth:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v15, v2

    .line 451
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 412
    .end local v4    # "mapper":Lcom/nuance/swype/input/CandidatesListView$Mapper;
    .end local v9    # "contentWidth":I
    .end local v13    # "i":I
    .end local v15    # "x":I
    .end local v16    # "y":I
    .end local v17    # "height":I
    .end local v18    # "touchX":I
    .end local v19    # "bgPadding":Landroid/graphics/Rect;
    .end local v21    # "forceCenter":Z
    .end local v23    # "itemCount":I
    .end local v24    # "scrolled":Z
    .end local v25    # "viewWidth":I
    .restart local v20    # "divWidth":I
    :cond_6
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 434
    .end local v20    # "divWidth":I
    .restart local v4    # "mapper":Lcom/nuance/swype/input/CandidatesListView$Mapper;
    .restart local v9    # "contentWidth":I
    .restart local v16    # "y":I
    .restart local v17    # "height":I
    .restart local v18    # "touchX":I
    .restart local v19    # "bgPadding":Landroid/graphics/Rect;
    .restart local v23    # "itemCount":I
    .restart local v24    # "scrolled":Z
    .restart local v25    # "viewWidth":I
    :cond_7
    const/16 v21, 0x0

    goto :goto_2

    .line 443
    .restart local v15    # "x":I
    .restart local v21    # "forceCenter":Z
    :cond_8
    sub-int v2, v25, v9

    div-int/lit8 v15, v2, 0x2

    goto :goto_3

    .line 457
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/Candidates;->hasAttribute(I)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mMouseDown:Z

    if-eqz v2, :cond_b

    .line 458
    move v6, v15

    .line 459
    .local v6, "xOffset":I
    move/from16 v0, v25

    if-gt v0, v9, :cond_a

    .line 460
    sub-int v2, v25, v9

    div-int/lit8 v6, v2, 0x2

    .line 462
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/CandidatesListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    move-object/from16 v0, v19

    iget v8, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/CandidatesListView;->getHeight()I

    move-result v2

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v2, v3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v10}, Lcom/nuance/swype/input/CandidatesListView;->draw(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;Landroid/graphics/drawable/Drawable;IIIII)V

    .line 463
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mTouchIndex:I

    .line 467
    .end local v6    # "xOffset":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    .line 468
    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v2

    .line 469
    sget-object v3, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_DRAWABLE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-eq v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/Candidates;->hasAttribute(I)Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mTotalWidth:I

    move/from16 v0, v25

    if-ge v2, v0, :cond_d

    const/16 v22, 0x1

    .line 473
    .local v22, "isShortWordList":Z
    :goto_5
    if-eqz v22, :cond_c

    .line 474
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/CandidatesListView;->isRtl:Z

    if-eqz v2, :cond_e

    .line 475
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 476
    int-to-float v2, v15

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 478
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 484
    :cond_c
    :goto_6
    add-int/lit8 v14, v23, -0x1

    .line 485
    .local v14, "lastIndex":I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_7
    move/from16 v0, v23

    if-ge v13, v0, :cond_f

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v12, v4

    .line 486
    invoke-direct/range {v10 .. v18}, Lcom/nuance/swype/input/CandidatesListView;->drawCandidate(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;IIIIII)I

    move-result v26

    .line 487
    .local v26, "wordWidth":I
    add-int v15, v15, v26

    .line 485
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 469
    .end local v13    # "i":I
    .end local v14    # "lastIndex":I
    .end local v22    # "isShortWordList":Z
    .end local v26    # "wordWidth":I
    :cond_d
    const/16 v22, 0x0

    goto :goto_5

    .line 480
    .restart local v22    # "isShortWordList":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_6

    .line 490
    .restart local v13    # "i":I
    .restart local v14    # "lastIndex":I
    :cond_f
    if-eqz v22, :cond_10

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v2, v15}, Lcom/nuance/swype/input/CandidatesListView;->draw(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;Landroid/graphics/drawable/Drawable;I)V

    .line 494
    :cond_10
    if-nez v24, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v2, v3, :cond_11

    .line 496
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mTotalWidth:I

    move/from16 v0, v25

    if-le v2, v0, :cond_11

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidth:Ljava/util/List;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v2, v25, v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v3, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    .line 502
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v3

    if-eq v2, v3, :cond_12

    .line 503
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/CandidatesListView;->scrollToTarget()V

    .line 506
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mMouseDown:Z

    if-nez v2, :cond_0

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/CandidatesListView;->calcAccel()V

    .line 508
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/CandidatesListView;->mA:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_13

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 509
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/CandidatesListView;->slide()V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1282
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 1283
    if-eq p1, p3, :cond_0

    .line 1284
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->resetScroll()V

    .line 1285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->activeMapper:Lcom/nuance/swype/input/CandidatesListView$Mapper;

    .line 1287
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "me"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 1111
    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1170
    :cond_0
    :goto_0
    return v6

    .line 1115
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1120
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 1121
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 1122
    .local v2, "y":I
    iput v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mTouchX:I

    .line 1124
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1126
    :pswitch_0
    iput-boolean v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mLongPressHandled:Z

    .line 1127
    iput-boolean v6, p0, Lcom/nuance/swype/input/CandidatesListView;->mMouseDown:Z

    .line 1128
    iput-boolean v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mDragSelected:Z

    .line 1130
    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mSwipeSpeed:Lcom/nuance/swype/input/CandidatesListView$RollAverage;

    invoke-virtual {v3}, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->flush()V

    .line 1131
    iput v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mA:F

    .line 1132
    iput v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    .line 1133
    iput-boolean v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mScrolled:Z

    .line 1134
    iput v7, p0, Lcom/nuance/swype/input/CandidatesListView;->mTouchIndex:I

    .line 1135
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    .line 1136
    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1137
    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2ee

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1141
    :pswitch_1
    if-gtz v2, :cond_0

    iget-boolean v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mDragSelected:Z

    if-nez v3, :cond_0

    .line 1143
    iput-boolean v6, p0, Lcom/nuance/swype/input/CandidatesListView;->mDragSelected:Z

    goto :goto_0

    .line 1148
    :pswitch_2
    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1149
    iput-boolean v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mMouseDown:Z

    .line 1150
    iput-boolean v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mDragSelected:Z

    .line 1152
    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mSwipeSpeed:Lcom/nuance/swype/input/CandidatesListView$RollAverage;

    invoke-virtual {v3}, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->isFlushed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1153
    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mSwipeSpeed:Lcom/nuance/swype/input/CandidatesListView$RollAverage;

    invoke-virtual {v3}, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->get()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/CandidatesListView;->setVelocity(F)V

    .line 1155
    :cond_2
    iget-boolean v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mLongPressHandled:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mScrolled:Z

    if-nez v3, :cond_4

    iget v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mTouchIndex:I

    if-eq v3, v7, :cond_4

    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v3

    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v3

    if-lez v3, :cond_4

    iget v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mTouchIndex:I

    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 1160
    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/Candidates;->hasAttribute(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1161
    iget v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mTouchIndex:I

    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    iget v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mTouchIndex:I

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/nuance/swype/input/CandidatesListView;->touchWord(ILcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 1163
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->trySelect()V

    .line 1166
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->removeHighlight()V

    goto/16 :goto_0

    .line 1124
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected pull(F)F
    .locals 13
    .param p1, "dist"    # F

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    .line 882
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v8

    int-to-float v7, v8

    .line 883
    .local v7, "x":F
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v6

    .line 884
    .local v6, "width":I
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->getMaxScroll()I

    move-result v1

    .line 885
    .local v1, "maxScroll":I
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->getMinScroll()I

    move-result v2

    .line 889
    .local v2, "minScroll":I
    int-to-float v8, v6

    const/high16 v9, 0x40800000    # 4.0f

    div-float v0, v8, v9

    .line 891
    .local v0, "maxPullDist":F
    int-to-float v8, v2

    cmpg-float v8, v7, v8

    if-gez v8, :cond_1

    .line 892
    move v3, v7

    .line 899
    .local v3, "oobDist":F
    :goto_0
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 901
    .local v4, "pinnedOobDist":F
    mul-float v8, v4, v4

    mul-float v9, v0, v0

    div-float/2addr v8, v9

    sub-float v8, v12, v8

    float-to-double v8, v8

    const-wide v10, 0x3fe999999999999aL    # 0.8

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    .line 903
    mul-float v5, v8, p1

    .line 906
    .local v5, "ret":F
    mul-float v8, p1, v3

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v8, v8, v12

    if-gez v8, :cond_0

    .line 908
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    div-float v5, p1, v8

    .line 911
    :cond_0
    return v5

    .line 893
    .end local v3    # "oobDist":F
    .end local v4    # "pinnedOobDist":F
    .end local v5    # "ret":F
    :cond_1
    int-to-float v8, v1

    cmpl-float v8, v7, v8

    if-lez v8, :cond_2

    .line 894
    int-to-float v8, v1

    sub-float v3, v7, v8

    .restart local v3    # "oobDist":F
    goto :goto_0

    .line 896
    .end local v3    # "oobDist":F
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "oobDist":F
    goto :goto_0
.end method

.method protected removeHighlight()V
    .locals 1

    .prologue
    .line 1174
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mTouchX:I

    .line 1175
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    .line 1176
    return-void
.end method

.method public scrollEnd()V
    .locals 1

    .prologue
    .line 1536
    iget v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mTotalWidth:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/CandidatesListView;->updateScrollPosition(I)V

    .line 1537
    return-void
.end method

.method public scrollHead()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1525
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidth:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v2

    sub-int v0, v1, v2

    .line 1527
    .local v0, "leftEdge":I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 1529
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1530
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1532
    :cond_1
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/CandidatesListView;->updateScrollPosition(I)V

    .line 1533
    return-void
.end method

.method public scrollNext()V
    .locals 9

    .prologue
    .line 1563
    const/4 v1, 0x0

    .line 1564
    .local v1, "i":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v5

    .line 1565
    .local v5, "targetX":I
    iget-object v6, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v0

    .line 1566
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v7

    add-int v4, v6, v7

    .line 1567
    .local v4, "rightEdge":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1568
    iget-object v6, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v6, v4, :cond_4

    iget-object v6, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v6, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidth:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v7

    if-lt v6, v4, :cond_4

    .line 1569
    iget-object v6, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Lcom/nuance/swype/input/CandidatesListView;->mTotalWidth:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1575
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v6

    if-gt v5, v6, :cond_1

    .line 1576
    move v5, v4

    .line 1579
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1581
    .local v2, "iParentWidth":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_2

    .line 1582
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1585
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getRight()I

    move-result v6

    sub-int v3, v2, v6

    .line 1591
    .local v3, "rightArrowSize":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getLeft()I

    move-result v6

    if-ge v6, v3, :cond_3

    .line 1592
    sub-int/2addr v5, v3

    .line 1595
    :cond_3
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/CandidatesListView;->updateScrollPosition(I)V

    .line 1596
    return-void

    .line 1572
    .end local v2    # "iParentWidth":I
    .end local v3    # "rightArrowSize":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public scrollPrev()V
    .locals 7

    .prologue
    .line 1540
    const/4 v2, 0x0

    .line 1541
    .local v2, "i":I
    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v0

    .line 1543
    .local v0, "count":I
    const/4 v1, 0x0

    .line 1544
    .local v1, "firstItem":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1545
    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidth:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt v4, v5, :cond_3

    .line 1546
    move v1, v2

    .line 1551
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidth:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v5

    sub-int v3, v4, v5

    .line 1552
    .local v3, "leftEdge":I
    if-gez v3, :cond_1

    .line 1553
    const/4 v3, 0x0

    .line 1556
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 1557
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1559
    :cond_2
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/CandidatesListView;->updateScrollPosition(I)V

    .line 1560
    return-void

    .line 1549
    .end local v3    # "leftEdge":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected scrollToX(I)V
    .locals 1
    .param p1, "newScrollX"    # I

    .prologue
    .line 1188
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/CandidatesListView;->scrollTo(II)V

    .line 1189
    return-void
.end method

.method public selectCandidateTriggedByExternalSource(Ljava/lang/String;)Z
    .locals 4
    .param p1, "candidate"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1334
    iput-boolean v2, p0, Lcom/nuance/swype/input/CandidatesListView;->highlightActiveCandidate:Z

    .line 1335
    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/Candidates;->getCandidates()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/input/swypecorelib/WordCandidate;

    .line 1336
    .local v1, "wordCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1337
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/CandidatesListView;->raiseOnSelectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    .line 1338
    const/4 v2, 0x1

    .line 1341
    .end local v1    # "wordCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    :cond_1
    return v2
.end method

.method public setAlignLeft(Z)V
    .locals 1
    .param p1, "alignLeft"    # Z

    .prologue
    .line 293
    iput-boolean p1, p0, Lcom/nuance/swype/input/CandidatesListView;->alignLeft:Z

    .line 295
    invoke-static {p0}, Lcom/nuance/android/compat/ViewCompat;->isHardwareAccelerated(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    .line 298
    :cond_0
    return-void
.end method

.method public setCandidateListener(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/nuance/swype/input/CandidatesListView;->listener:Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    .line 1098
    return-void
.end method

.method protected setCandidateSize(F)V
    .locals 1
    .param p1, "newTempTextSize"    # F

    .prologue
    .line 1418
    iget v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mTextSizeInit:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mTextSize:I

    .line 1419
    return-void
.end method

.method public setCandidatesDisplay(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1403
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mDisableCandidateDisplay:Z

    .line 1404
    return-void

    .line 1403
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFullScroll(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/nuance/swype/input/CandidatesListView;->allowFullScroll:Z

    .line 290
    return-void
.end method

.method public setHardwareKeyboardUsed(Z)V
    .locals 0
    .param p1, "used"    # Z

    .prologue
    .line 1599
    iput-boolean p1, p0, Lcom/nuance/swype/input/CandidatesListView;->isHardwareKeyboardUsed:Z

    .line 1600
    return-void
.end method

.method public setHighlightAddtoDictionaryTip(Z)V
    .locals 0
    .param p1, "highlight"    # Z

    .prologue
    .line 1607
    iput-boolean p1, p0, Lcom/nuance/swype/input/CandidatesListView;->highlightAddtoDictionaryTip:Z

    .line 1608
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    .line 1609
    return-void
.end method

.method public setHorizontalLayout(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "width"    # I

    .prologue
    .line 1407
    if-lez p2, :cond_0

    .line 1408
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1409
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1410
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1411
    .local v1, "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1412
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1415
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method

.method public setSuggestions(Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)Lcom/nuance/input/swypecorelib/Candidates;
    .locals 3
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p2, "format"    # Lcom/nuance/swype/input/CandidatesListView$Format;

    .prologue
    .line 1248
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->clear()V

    .line 1250
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v0

    if-lez v0, :cond_0

    .line 1251
    sget-object v0, Lcom/nuance/swype/input/CandidatesListView$5;->$SwitchMap$com$nuance$swype$input$CandidatesListView$Format:[I

    invoke-virtual {p2}, Lcom/nuance/swype/input/CandidatesListView$Format;->ordinal()I

    .line 1255
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/CandidatesListView;->setDefaultSuggestions(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 1259
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateIndex()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    .line 1260
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->computeDisplayingCandidateDrawingRegion()V

    .line 1261
    iget v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    iget v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/CandidatesListView;->touchWord(ILcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 1263
    iget v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/CandidatesListView;->scrollToX(I)V

    .line 1264
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->requestLayout()V

    .line 1265
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    .line 1268
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    return-object v0
.end method

.method protected setVelocity(F)V
    .locals 3
    .param p1, "v"    # F

    .prologue
    .line 843
    const v0, 0x3f333333    # 0.7f

    const/high16 v1, -0x3e100000    # -30.0f

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-direct {p0, p1, v1, v2}, Lcom/nuance/swype/input/CandidatesListView;->bound(FFF)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    .line 844
    return-void
.end method

.method public touchWord(ILcom/nuance/input/swypecorelib/WordCandidate;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;

    .prologue
    .line 321
    iput p1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    .line 322
    iput-object p2, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedCandidate:Lcom/nuance/input/swypecorelib/WordCandidate;

    .line 323
    return-void
.end method

.method protected trySelect()V
    .locals 3

    .prologue
    .line 1002
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v1, v2, :cond_1

    .line 1012
    :cond_0
    :goto_0
    return-void

    .line 1005
    :cond_1
    const/4 v0, 0x0

    .line 1006
    .local v0, "selectionHandled":Z
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedCandidate:Lcom/nuance/input/swypecorelib/WordCandidate;

    if-eqz v1, :cond_2

    .line 1007
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedCandidate:Lcom/nuance/input/swypecorelib/WordCandidate;

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/CandidatesListView;->raiseOnSelectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    move-result v0

    .line 1009
    :cond_2
    if-nez v0, :cond_0

    .line 1010
    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/CandidatesListView;->touchWord(ILcom/nuance/input/swypecorelib/WordCandidate;)V

    goto :goto_0
.end method

.method public updateCandidatesSize()V
    .locals 2

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 1429
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->getCandidateSize()V

    .line 1430
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1432
    :cond_0
    return-void
.end method

.method public updateRtlStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "newLangStr"    # Ljava/lang/String;

    .prologue
    .line 1616
    invoke-static {p1}, Lcom/nuance/swype/widget/directional/DirectionalUtil;->isLanguageRtl(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/CandidatesListView;->isRtl:Z

    .line 1617
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->activeMapper:Lcom/nuance/swype/input/CandidatesListView$Mapper;

    .line 1618
    return-void
.end method

.method protected updateScrollPosition(I)V
    .locals 1
    .param p1, "targetX"    # I

    .prologue
    .line 977
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 978
    iput p1, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    .line 981
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    .line 982
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mScrolled:Z

    .line 984
    :cond_0
    return-void
.end method

.method public wordCount()I
    .locals 1

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v0

    .line 1236
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
