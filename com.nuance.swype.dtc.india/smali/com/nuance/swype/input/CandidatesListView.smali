.class public abstract Lcom/nuance/swype/input/CandidatesListView;
.super Landroid/view/View;
.source "CandidatesListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private activeCandidate:Ljava/lang/String;

.field private alignLeft:Z

.field private allowFullScroll:Z

.field private final defaultMapper:Lcom/nuance/swype/input/CandidatesListView$Mapper;

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

.field private final handlerCallback:Landroid/os/Handler$Callback;

.field private highlightActiveCandidate:Z

.field private highlightAddtoDictionaryTip:Z

.field private isHardwareKeyboardUsed:Z

.field private isRtl:Z

.field private listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/swype/input/CandidatesListView$CandidateListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mA:F

.field protected mBgPadding:Landroid/graphics/Rect;

.field protected final mCandidateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/swype/input/CandidatesListView$CandidateListener;",
            ">;>;"
        }
    .end annotation
.end field

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

.field private final mIme:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/swype/input/IME;",
            ">;"
        }
    .end annotation
.end field

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

.field public final mPaint:Landroid/graphics/Paint;

.field protected mScroll:Z

.field protected mScrolled:Z

.field protected mSelectedCandidate:Lcom/nuance/input/swypecorelib/WordCandidate;

.field protected mSelectedIndex:I

.field protected final mSelectionHighlight:Landroid/graphics/drawable/Drawable;

.field protected mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

.field mSwipeSpeed:Lcom/nuance/swype/input/CandidatesListView$RollAverage;

.field protected final mTappedWordHighlight:Landroid/graphics/drawable/Drawable;

.field protected mTargetScrollX:I

.field protected mTextPadding:I

.field public mTextSize:I

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

.field private final reverseMapper:Lcom/nuance/swype/input/CandidatesListView$Mapper;

.field private typeface:Landroid/graphics/Typeface;

.field private typefaceBold:Landroid/graphics/Typeface;

.field private xDown:F

.field private yDown:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    const-string/jumbo v0, "CandidatesListView"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/CandidatesListView;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 534
    new-array v0, v2, [I

    sput-object v0, Lcom/nuance/swype/input/CandidatesListView;->CAND_STATE_DEFAULT_NORMAL:[I

    .line 537
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/nuance/swype/input/CandidatesListView;->CAND_STATE_DEFAULT_PRESSED:[I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 224
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    iput v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mTouchX:I

    .line 93
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidth:Ljava/util/List;

    .line 94
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mPadWidth:Ljava/util/List;

    .line 95
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    .line 96
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidthWithoutPadding:Ljava/util/List;

    .line 109
    iput-boolean v7, p0, Lcom/nuance/swype/input/CandidatesListView;->mScroll:Z

    .line 117
    iput v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mTouchIndex:I

    .line 124
    iput-boolean v6, p0, Lcom/nuance/swype/input/CandidatesListView;->mDisableCandidateDisplay:Z

    .line 142
    const/16 v4, 0x11

    iput v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mGravity:I

    .line 148
    new-instance v4, Lcom/nuance/swype/input/CandidatesListView$1;

    invoke-direct {v4, p0}, Lcom/nuance/swype/input/CandidatesListView$1;-><init>(Lcom/nuance/swype/input/CandidatesListView;)V

    iput-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->handlerCallback:Landroid/os/Handler$Callback;

    .line 166
    iput-boolean v6, p0, Lcom/nuance/swype/input/CandidatesListView;->isRtl:Z

    .line 206
    new-instance v4, Lcom/nuance/swype/input/CandidatesListView$RollAverage;

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v4, v5}, Lcom/nuance/swype/input/CandidatesListView$RollAverage;-><init>(F)V

    iput-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mSwipeSpeed:Lcom/nuance/swype/input/CandidatesListView$RollAverage;

    .line 375
    new-instance v4, Lcom/nuance/swype/input/CandidatesListView$3;

    invoke-direct {v4, p0}, Lcom/nuance/swype/input/CandidatesListView$3;-><init>(Lcom/nuance/swype/input/CandidatesListView;)V

    iput-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->defaultMapper:Lcom/nuance/swype/input/CandidatesListView$Mapper;

    .line 387
    new-instance v4, Lcom/nuance/swype/input/CandidatesListView$4;

    invoke-direct {v4, p0}, Lcom/nuance/swype/input/CandidatesListView$4;-><init>(Lcom/nuance/swype/input/CandidatesListView;)V

    iput-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->reverseMapper:Lcom/nuance/swype/input/CandidatesListView$Mapper;

    .line 225
    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v4}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mHandler:Landroid/os/Handler;

    .line 226
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/CandidatesListView;->readStyles(Landroid/content/Context;)V

    .line 228
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 230
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mIme:Ljava/lang/ref/WeakReference;

    .line 231
    invoke-static {p1}, Lcom/nuance/swype/input/emoji/EmojiCacheManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/emoji/EmojiCacheManager;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->emojiCacheManager:Lcom/nuance/swype/input/emoji/EmojiCacheManager;

    .line 233
    sget v4, Lcom/nuance/swype/input/R$attr;->listSelectorBackgroundPressed:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    .line 234
    sget v4, Lcom/nuance/swype/input/R$attr;->wclDefaultWordBackground:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mDefaultWordHighlight:Landroid/graphics/drawable/Drawable;

    .line 238
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 239
    .local v1, "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$attr;->listSelectorBackgroundTappedColor:I

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/IMEApplication;->getThemedColor(I)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/nuance/swype/input/CandidatesListView;->setColor(Landroid/graphics/Paint;I)V

    .line 241
    iput-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mTappedWordHighlight:Landroid/graphics/drawable/Drawable;

    .line 243
    sget v4, Lcom/nuance/swype/input/R$attr;->keyboardSuggestStripDivider:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 245
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    .line 246
    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mColorNormal:I

    invoke-virtual {p0, v4, v5}, Lcom/nuance/swype/input/CandidatesListView;->setColor(Landroid/graphics/Paint;I)V

    .line 247
    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 248
    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 249
    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 250
    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mDescent:I

    .line 251
    sget-object v4, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mItalic:Landroid/graphics/Typeface;

    .line 252
    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v4, v5}, Lcom/nuance/swype/input/CandidatesListView;->setTypeface(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    .line 254
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->typeface:Landroid/graphics/Typeface;

    .line 255
    sget v4, Lcom/nuance/swype/input/R$string;->custom_wcl_font_normal:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, "typefaceNormal":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 257
    invoke-static {v3, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->typeface:Landroid/graphics/Typeface;

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$bool;->font_typeface_bold:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_0
    iput-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->typefaceBold:Landroid/graphics/Typeface;

    .line 262
    sget v4, Lcom/nuance/swype/input/R$string;->custom_wcl_font_bold:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "typefaceBoldName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 264
    invoke-static {v2, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->typefaceBold:Landroid/graphics/Typeface;

    .line 266
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/nuance/swype/input/CandidatesListView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p0, v4, v5}, Lcom/nuance/swype/input/CandidatesListView;->setTypeface(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    .line 268
    new-instance v4, Landroid/view/GestureDetector;

    new-instance v5, Lcom/nuance/swype/input/CandidatesListView$2;

    invoke-direct {v5, p0}, Lcom/nuance/swype/input/CandidatesListView$2;-><init>(Lcom/nuance/swype/input/CandidatesListView;)V

    invoke-direct {v4, p1, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 296
    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, v6}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 297
    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/CandidatesListView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 298
    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/CandidatesListView;->setWillNotDraw(Z)V

    .line 299
    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/CandidatesListView;->setHorizontalScrollBarEnabled(Z)V

    .line 300
    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/CandidatesListView;->setVerticalScrollBarEnabled(Z)V

    .line 301
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mCandidateListeners:Ljava/util/List;

    .line 302
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->clear()V

    .line 304
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/CandidatesListView;->getMinCandidateWidth(Landroid/content/Context;)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mMinCandidateWidth:I

    .line 306
    return-void

    .line 260
    .end local v2    # "typefaceBoldName":Ljava/lang/String;
    :cond_2
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/CandidatesListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/CandidatesListView;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->handleLongPress()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/CandidatesListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/CandidatesListView;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->getMaxScroll()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/CandidatesListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/CandidatesListView;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->getMinScroll()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/CandidatesListView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/CandidatesListView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bound(FFF)F
    .locals 1
    .param p1, "val"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F

    .prologue
    .line 209
    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    .line 214
    .end local p2    # "min":F
    :goto_0
    return p2

    .line 211
    .restart local p2    # "min":F
    :cond_0
    cmpl-float v0, p1, p3

    if-lez v0, :cond_1

    move p2, p3

    .line 212
    goto :goto_0

    :cond_1
    move p2, p1

    .line 214
    goto :goto_0
.end method

.method private computeDisplayingCandidateDrawingRegion()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 821
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->getCandidates()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 864
    :cond_0
    return-void

    .line 826
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidth:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    iget-object v9, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 827
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidth:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mPadWidth:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidthWithoutPadding:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 834
    :cond_2
    const/4 v7, 0x0

    .line 835
    .local v7, "x":I
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    const-string/jumbo v9, " "

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v11, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v8

    float-to-int v4, v8

    .line 836
    .local v4, "padding":I
    const/4 v3, 0x0

    .local v3, "index":I
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v1

    .local v1, "count":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 837
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8, v3}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    .line 839
    .local v0, "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v8

    sget-object v9, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_DRAWABLE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-ne v8, v9, :cond_5

    .line 840
    check-cast v0, Lcom/nuance/swype/input/DrawableCandidate;

    .end local v0    # "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    iget-object v2, v0, Lcom/nuance/swype/input/DrawableCandidate;->icon:Landroid/graphics/drawable/Drawable;

    .line 841
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getHeight()I

    move-result v9

    invoke-virtual {v2, v11, v11, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 842
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 843
    .local v5, "width":I
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidthWithoutPadding:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v3, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 844
    if-eqz v3, :cond_3

    add-int/lit8 v8, v1, -0x1

    if-ne v3, v8, :cond_4

    .line 846
    :cond_3
    iget v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mTextPadding:I

    add-int/2addr v5, v8

    .line 859
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidth:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v3, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 860
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v3, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 861
    iget v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mTotalWidth:I

    add-int/2addr v8, v5

    iput v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mTotalWidth:I

    .line 862
    add-int/2addr v7, v5

    .line 836
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 849
    .end local v5    # "width":I
    .restart local v0    # "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    :cond_5
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-direct {p0, v8, v3}, Lcom/nuance/swype/input/CandidatesListView;->setWordCandidateFont(Lcom/nuance/input/swypecorelib/Candidates;I)V

    .line 850
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v6

    .line 851
    .local v6, "word":Ljava/lang/String;
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidthWithoutPadding:Ljava/util/List;

    iget-object v9, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v3, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 852
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v8

    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v8, v9, :cond_6

    .line 853
    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidthWithoutPadding:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int v5, v8, v4

    .restart local v5    # "width":I
    goto :goto_2

    .line 855
    .end local v5    # "width":I
    :cond_6
    invoke-direct {p0, v6}, Lcom/nuance/swype/input/CandidatesListView;->getWordDisplaySize(Ljava/lang/String;)I

    move-result v5

    .restart local v5    # "width":I
    goto :goto_2
.end method

.method private drawCandidate(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;IIIIII)I
    .locals 39
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapper"    # Lcom/nuance/swype/input/CandidatesListView$Mapper;
    .param p3, "idxCandidate"    # I
    .param p4, "lastIndex"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "height"    # I
    .param p8, "touchX"    # I

    .prologue
    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v33, v0

    .line 656
    .local v33, "paint":Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v34

    .line 657
    .local v34, "scrollX":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/CandidatesListView;->mScrolled:Z

    move/from16 v35, v0

    .line 658
    .local v35, "scrolled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    .line 660
    .local v28, "bgPadding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v13

    .line 661
    .local v13, "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v13}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v36

    .line 666
    .local v36, "source":Lcom/nuance/input/swypecorelib/WordCandidate$Source;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mMouseDown:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/Candidates;->hasAttribute(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 667
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/CandidatesListView;->mColorPressed:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/nuance/swype/input/CandidatesListView;->setColor(Landroid/graphics/Paint;I)V

    .line 668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/CandidatesListView;->typefaceBold:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/nuance/swype/input/CandidatesListView;->setTypeface(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    .line 675
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

    move/from16 v37, v0

    .line 676
    .local v37, "textWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidth:Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 678
    .local v9, "wordWidth":I
    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-interface {v0, v1, v9}, Lcom/nuance/swype/input/CandidatesListView$Mapper;->map(II)I

    move-result v38

    .line 680
    .local v38, "xFlipped":I
    const/4 v2, -0x1

    move/from16 v0, p8

    if-eq v0, v2, :cond_a

    add-int v2, p8, v34

    move/from16 v0, v38

    if-lt v2, v0, :cond_a

    add-int v2, p8, v34

    add-int v3, v38, v9

    if-ge v2, v3, :cond_a

    if-nez v35, :cond_a

    const/16 v16, 0x1

    .line 688
    .local v16, "isPressedCand":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 690
    .local v7, "divWidth":I
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/CandidatesListView;->isList()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 691
    if-eqz v16, :cond_1

    if-eqz v35, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/CandidatesListView;->highlightActiveCandidate:Z

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/nuance/swype/input/CandidatesListView;->isActiveCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 693
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/CandidatesListView;->mColorPressed:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/nuance/swype/input/CandidatesListView;->setColor(Landroid/graphics/Paint;I)V

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/CandidatesListView;->typefaceBold:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/nuance/swype/input/CandidatesListView;->setTypeface(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    .line 695
    move/from16 v32, v9

    .line 696
    .local v32, "oldWordWidth":I
    sget-object v2, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_DRAWABLE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-object/from16 v0, v36

    if-eq v0, v2, :cond_3

    .line 697
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v2, v3, :cond_b

    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    .line 699
    invoke-virtual {v13}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v3

    .line 698
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    const-string/jumbo v4, " "

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 700
    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v3

    float-to-int v3, v3

    add-int v9, v2, v3

    .line 705
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/CandidatesListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    sub-int v2, v9, v32

    div-int/lit8 v2, v2, 0x2

    add-int v6, p5, v2

    move-object/from16 v0, v28

    iget v8, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v28

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int v10, v2, p7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v10}, Lcom/nuance/swype/input/CandidatesListView;->draw(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;Landroid/graphics/drawable/Drawable;IIIII)V

    .line 709
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/CandidatesListView;->mTouchIndex:I

    .line 720
    .end local v32    # "oldWordWidth":I
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

    .line 721
    sget-object v2, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_DRAWABLE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-object/from16 v0, v36

    if-ne v0, v2, :cond_d

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/CandidatesListView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    const/16 v23, 0x0

    move-object/from16 v0, v28

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

    move-object/from16 v0, v28

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int v26, v2, p7

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, p2

    move/from16 v22, p5

    invoke-virtual/range {v18 .. v26}, Lcom/nuance/swype/input/CandidatesListView;->draw(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;Landroid/graphics/drawable/Drawable;IIIII)V

    .line 733
    :cond_5
    :goto_4
    sget-object v2, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_DRAWABLE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-object/from16 v0, v36

    if-eq v0, v2, :cond_e

    .line 735
    invoke-virtual {v13}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v31

    .line 736
    .local v31, "emoji_unicode":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Lcom/nuance/swype/input/emoji/EmojiLoader;->isEmoji(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 737
    invoke-static/range {v31 .. v31}, Lcom/nuance/swype/input/emoji/EmojiLoader;->getEmoji(Ljava/lang/String;)Lcom/nuance/swype/input/emoji/Emoji;

    move-result-object v29

    .line 738
    .local v29, "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    if-eqz v29, :cond_7

    .line 739
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/CandidatesListView;->getDefaultSkinToneCode(Lcom/nuance/swype/input/emoji/Emoji;)Ljava/lang/String;

    move-result-object v30

    .line 741
    .local v30, "emojiCode":Ljava/lang/String;
    if-eqz v30, :cond_6

    .line 742
    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->setWord(Ljava/lang/String;)V

    .line 744
    :cond_6
    move/from16 v0, p5

    invoke-virtual {v13, v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->setLeft(I)V

    .line 745
    move/from16 v0, p6

    invoke-virtual {v13, v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->setTop(I)V

    .line 746
    move/from16 v0, v37

    float-to-int v2, v0

    invoke-virtual {v13, v2}, Lcom/nuance/input/swypecorelib/WordCandidate;->setWidth(I)V

    .line 747
    move/from16 v0, p7

    invoke-virtual {v13, v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->setHeight(I)V

    .line 748
    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->setEmojiUnicode(Ljava/lang/String;)V

    .line 751
    .end local v29    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    .end local v30    # "emojiCode":Ljava/lang/String;
    :cond_7
    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, p2

    move-object/from16 v21, v33

    move-object/from16 v22, v13

    move/from16 v23, v9

    move/from16 v25, p5

    move/from16 v26, p6

    move/from16 v27, v16

    invoke-direct/range {v18 .. v27}, Lcom/nuance/swype/input/CandidatesListView;->drawCandidateText(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;Landroid/graphics/Paint;Lcom/nuance/input/swypecorelib/WordCandidate;IIIIZ)V

    .line 753
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/CandidatesListView;->isList()Z

    move-result v2

    if-eqz v2, :cond_8

    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_8

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    add-int v22, p5, v9

    const/16 v23, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, p2

    invoke-virtual/range {v18 .. v23}, Lcom/nuance/swype/input/CandidatesListView;->draw(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;Landroid/graphics/drawable/Drawable;ILandroid/graphics/Rect;)V

    .line 761
    .end local v13    # "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    .end local v31    # "emoji_unicode":Ljava/lang/String;
    :cond_8
    :goto_5
    return v9

    .line 669
    .end local v7    # "divWidth":I
    .end local v9    # "wordWidth":I
    .end local v16    # "isPressedCand":Z
    .end local v37    # "textWidth":F
    .end local v38    # "xFlipped":I
    .restart local v13    # "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    :cond_9
    sget-object v2, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_DRAWABLE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-object/from16 v0, v36

    if-eq v0, v2, :cond_0

    .line 670
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v2, v1}, Lcom/nuance/swype/input/CandidatesListView;->setWordCandidateFont(Lcom/nuance/input/swypecorelib/Candidates;I)V

    .line 671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v2, v1}, Lcom/nuance/swype/input/CandidatesListView;->setWordCandidateColor(Lcom/nuance/input/swypecorelib/Candidates;I)V

    goto/16 :goto_0

    .line 680
    .restart local v9    # "wordWidth":I
    .restart local v37    # "textWidth":F
    .restart local v38    # "xFlipped":I
    :cond_a
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 702
    .restart local v7    # "divWidth":I
    .restart local v16    # "isPressedCand":Z
    .restart local v32    # "oldWordWidth":I
    :cond_b
    invoke-virtual {v13}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nuance/swype/input/CandidatesListView;->getWordDisplaySize(Ljava/lang/String;)I

    move-result v9

    goto/16 :goto_2

    .line 711
    .end local v32    # "oldWordWidth":I
    :cond_c
    sget-object v2, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_DRAWABLE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-object/from16 v0, v36

    if-eq v0, v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/CandidatesListView;->isCandidatesList()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 712
    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, v28

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v28

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

    .line 715
    invoke-virtual/range {v10 .. v17}, Lcom/nuance/swype/input/CandidatesListView;->drawCandBackground(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;Lcom/nuance/input/swypecorelib/WordCandidate;IIZLandroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 724
    .end local v17    # "bounds":Landroid/graphics/Rect;
    :cond_d
    sget-object v2, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_DRAWABLE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-object/from16 v0, v36

    if-eq v0, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    const/4 v3, 0x0

    .line 725
    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_DRAWABLE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-ne v2, v3, :cond_5

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/CandidatesListView;->mColorPressed:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/nuance/swype/input/CandidatesListView;->setColor(Landroid/graphics/Paint;I)V

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/CandidatesListView;->typefaceBold:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/nuance/swype/input/CandidatesListView;->setTypeface(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    .line 728
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/CandidatesListView;->isHardwareKeyboardUsed:Z

    .line 729
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nuance/swype/input/CandidatesListView;->highlightAddtoDictionaryTip:Z

    goto/16 :goto_4

    .line 758
    :cond_e
    check-cast v13, Lcom/nuance/swype/input/DrawableCandidate;

    .end local v13    # "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    iget-object v0, v13, Lcom/nuance/swype/input/DrawableCandidate;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    .line 759
    .local v21, "icon":Landroid/graphics/drawable/Drawable;
    move/from16 v0, v37

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

.method private drawCandidateText(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;Landroid/graphics/Paint;Lcom/nuance/input/swypecorelib/WordCandidate;IIIIZ)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapper"    # Lcom/nuance/swype/input/CandidatesListView$Mapper;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p5, "wordWidth"    # I
    .param p6, "textWidth"    # I
    .param p7, "x"    # I
    .param p8, "y"    # I
    .param p9, "isPressed"    # Z

    .prologue
    .line 562
    invoke-virtual/range {p4 .. p4}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v4

    .line 563
    .local v4, "suggestion":Ljava/lang/CharSequence;
    invoke-virtual/range {p4 .. p4}, Lcom/nuance/input/swypecorelib/WordCandidate;->contextPredictLength()I

    move-result v6

    .line 564
    .local v6, "contextLen":I
    sub-int v3, p5, p6

    div-int/lit8 v3, v3, 0x2

    add-int v21, p7, v3

    .line 565
    .local v21, "wordStart":I
    move-object/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, p6

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/input/CandidatesListView$Mapper;->map(II)I

    move-result v21

    .line 567
    new-instance v9, Landroid/graphics/Paint;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 568
    .local v9, "contextPaint":Landroid/graphics/Paint;
    if-eqz p9, :cond_2

    .line 569
    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/CandidatesListView;->mColorPressed:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v3}, Lcom/nuance/swype/input/CandidatesListView;->setColor(Landroid/graphics/Paint;I)V

    .line 573
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/CandidatesListView;->mItalic:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v3}, Lcom/nuance/swype/input/CandidatesListView;->setTypeface(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    .line 574
    if-eqz v6, :cond_0

    .line 575
    const/4 v5, 0x0

    move/from16 v0, v21

    int-to-float v7, v0

    move/from16 v0, p8

    int-to-float v8, v0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 576
    move/from16 v0, v21

    int-to-float v3, v0

    invoke-virtual/range {p4 .. p4}, Lcom/nuance/input/swypecorelib/WordCandidate;->contextPredict()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    add-float/2addr v3, v5

    float-to-int v0, v3

    move/from16 v21, v0

    .line 579
    :cond_0
    if-eqz v6, :cond_3

    const/4 v13, 0x0

    .line 584
    .local v13, "highlightLen":I
    :goto_1
    if-eqz v13, :cond_1

    .line 585
    sget-object v3, Lcom/nuance/swype/input/CandidatesListView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "suggestions-"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    aput-object v4, v5, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "contextLen-"

    aput-object v8, v5, v7

    const/4 v7, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x4

    const-string/jumbo v8, " highlightLen-"

    aput-object v8, v5, v7

    const/4 v7, 0x5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-interface {v3, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 586
    move/from16 v0, v21

    int-to-float v14, v0

    move/from16 v0, p8

    int-to-float v15, v0

    move-object/from16 v10, p1

    move-object v11, v4

    move v12, v6

    move-object/from16 v16, v9

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 590
    move/from16 v0, v21

    int-to-float v3, v0

    invoke-virtual/range {p4 .. p4}, Lcom/nuance/input/swypecorelib/WordCandidate;->word()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    add-float/2addr v3, v5

    float-to-int v0, v3

    move/from16 v21, v0

    .line 593
    :cond_1
    add-int v16, v6, v13

    .line 595
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v17

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, p8

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v14, p1

    move-object v15, v4

    move-object/from16 v20, p3

    .line 593
    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 597
    return-void

    .line 571
    .end local v13    # "highlightLen":I
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/input/CandidatesListView;->mColorRecommended:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v3}, Lcom/nuance/swype/input/CandidatesListView;->setColor(Landroid/graphics/Paint;I)V

    goto/16 :goto_0

    .line 581
    :cond_3
    invoke-virtual/range {p4 .. p4}, Lcom/nuance/input/swypecorelib/WordCandidate;->contextKillLength()I

    move-result v3

    .line 582
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 580
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto/16 :goto_1
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
    .line 788
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v7, v8

    .line 789
    .local v2, "availableHeight":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int v7, v2, v7

    div-int/lit8 v3, v7, 0x2

    .line 792
    .local v3, "iconTop":I
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 793
    .local v4, "iconScale":D
    if-gez v3, :cond_0

    .line 794
    iget-object v7, p0, Lcom/nuance/swype/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    iget v3, v7, Landroid/graphics/Rect;->top:I

    .line 795
    int-to-double v8, v2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-double v10, v7

    div-double v4, v8, v10

    .line 797
    :cond_0
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/CandidatesListView;->getIconLeftOffset(II)I

    move-result v6

    .line 798
    .local v6, "left":I
    const/4 v7, 0x0

    .line 800
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v8, v4

    double-to-int v8, v8

    int-to-double v10, v3

    .line 801
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-double v12, v9

    mul-double/2addr v12, v4

    add-double/2addr v10, v12

    double-to-int v9, v10

    .line 798
    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v3, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 802
    add-int v7, p4, v6

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0, p1, v0, v1, v7}, Lcom/nuance/swype/input/CandidatesListView;->draw(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;Landroid/graphics/drawable/Drawable;I)V

    .line 804
    return-void
.end method

.method private getActiveCandidateIndex()I
    .locals 4

    .prologue
    .line 1495
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->activeCandidate:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1496
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->getCandidates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/WordCandidate;

    .line 1497
    .local v0, "wordCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView;->activeCandidate:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1498
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->id()I

    move-result v1

    .line 1502
    .end local v0    # "wordCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getDefaultSkinToneCode(Lcom/nuance/swype/input/emoji/Emoji;)Ljava/lang/String;
    .locals 2
    .param p1, "emoji"    # Lcom/nuance/swype/input/emoji/Emoji;

    .prologue
    .line 1783
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->emojiCacheManager:Lcom/nuance/swype/input/emoji/EmojiCacheManager;

    invoke-static {v0, p1, v1}, Lcom/nuance/swype/input/emoji/EmojiLoader;->getDefaultSkinToneCode(Landroid/content/Context;Lcom/nuance/swype/input/emoji/Emoji;Lcom/nuance/swype/input/emoji/EmojiCacheManager;)Lcom/nuance/swype/input/emoji/Emoji;

    move-result-object v0

    .line 1784
    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiDisplayCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEmoji(Ljava/lang/String;)Lcom/nuance/swype/input/emoji/Emoji;
    .locals 1
    .param p1, "emoji_unicode"    # Ljava/lang/String;

    .prologue
    .line 1788
    invoke-static {p1}, Lcom/nuance/swype/input/emoji/EmojiLoader;->getEmoji(Ljava/lang/String;)Lcom/nuance/swype/input/emoji/Emoji;

    move-result-object v0

    return-object v0
.end method

.method private getIconLeftOffset(II)I
    .locals 1
    .param p1, "idxCandidate"    # I
    .param p2, "padding"    # I

    .prologue
    .line 775
    if-nez p1, :cond_0

    .line 783
    .end local p2    # "padding":I
    :goto_0
    return p2

    .line 778
    .restart local p2    # "padding":I
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v0, p1, :cond_1

    .line 780
    const/4 p2, 0x0

    goto :goto_0

    .line 783
    :cond_1
    div-int/lit8 p2, p2, 0x2

    goto :goto_0
.end method

.method private getMapper()Lcom/nuance/swype/input/CandidatesListView$Mapper;
    .locals 1

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->getRTLDrawingSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->reverseMapper:Lcom/nuance/swype/input/CandidatesListView$Mapper;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->defaultMapper:Lcom/nuance/swype/input/CandidatesListView$Mapper;

    goto :goto_0
.end method

.method private getMaxScroll()I
    .locals 1

    .prologue
    .line 1438
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
    .line 1442
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
    .line 812
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/Candidates;->hasAttribute(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    const/4 v1, 0x2

    .line 813
    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/Candidates;->hasAttribute(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    .line 814
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_1

    .line 815
    :cond_0
    invoke-static {}, Lcom/nuance/swype/widget/directional/DirectionalUtil;->isCurrentlyRtl()Z

    move-result v0

    .line 817
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

    .line 1410
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    if-nez v1, :cond_0

    move v1, v2

    .line 1434
    :goto_0
    return v1

    .line 1416
    :cond_0
    const/4 v0, 0x0

    .line 1420
    .local v0, "range":I
    iget-boolean v1, p0, Lcom/nuance/swype/input/CandidatesListView;->allowFullScroll:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1, v3}, Lcom/nuance/input/swypecorelib/Candidates;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1421
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1, v3}, Lcom/nuance/input/swypecorelib/Candidates;->hasAttribute(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1422
    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mTotalWidth:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v0, v1, 0x2

    .line 1434
    :cond_2
    :goto_1
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    .line 1425
    :cond_3
    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mTotalWidth:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v3

    sub-int v0, v1, v3

    goto :goto_1

    .line 1428
    :cond_4
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidth:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1431
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
    .line 898
    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mMinCandidateWidth:I

    iget v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mTextPadding:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v0, v1

    .line 899
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

    .line 901
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    return v1
.end method

.method private handleLongPress()V
    .locals 4

    .prologue
    .line 1080
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mLongPressHandled:Z

    .line 1083
    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mTouchIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1084
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1085
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v1

    iget v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mTouchIndex:I

    if-gt v1, v2, :cond_1

    .line 1095
    :cond_0
    :goto_0
    return-void

    .line 1089
    :cond_1
    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mTouchIndex:I

    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    iget v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mTouchIndex:I

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/CandidatesListView;->touchWord(ILcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 1090
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getCurrentSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    .line 1092
    .local v0, "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    if-eqz v0, :cond_0

    .line 1093
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/CandidatesListView;->raiseOnPressHoldCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    goto :goto_0
.end method

.method private handleReleasePress()V
    .locals 1

    .prologue
    .line 1075
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getCurrentSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    .line 1076
    .local v0, "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/CandidatesListView;->raiseOnPressReleaseCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    .line 1077
    return-void
.end method

.method private isActiveCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;)Z
    .locals 2
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;

    .prologue
    .line 1457
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

    .line 628
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

.method private onMove(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1804
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 1807
    .local v3, "pointerCount":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 1808
    .local v0, "historySize":I
    const/4 v1, 0x0

    .local v1, "idxHistory":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1809
    const/4 v2, 0x0

    .local v2, "idxPointer":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 1811
    invoke-virtual {p1, v2, v1}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v6

    .line 1812
    .local v6, "xPos":F
    invoke-virtual {p1, v2, v1}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v7

    .line 1813
    .local v7, "yPos":F
    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/CandidatesListView;->getOffsetX(F)F

    move-result v5

    .line 1814
    .local v5, "xOffset":F
    invoke-direct {p0, v6, v7, v5}, Lcom/nuance/swype/input/CandidatesListView;->raiseOnPressMoveCandidate(FFF)V

    .line 1809
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1808
    .end local v5    # "xOffset":F
    .end local v6    # "xPos":F
    .end local v7    # "yPos":F
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1819
    .end local v2    # "idxPointer":I
    :cond_1
    const/4 v4, 0x0

    .local v4, "pointerIndex":I
    :goto_2
    if-ge v4, v3, :cond_2

    .line 1821
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 1822
    .restart local v6    # "xPos":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 1823
    .restart local v7    # "yPos":F
    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/CandidatesListView;->getOffsetX(F)F

    move-result v5

    .line 1824
    .restart local v5    # "xOffset":F
    invoke-direct {p0, v6, v7, v5}, Lcom/nuance/swype/input/CandidatesListView;->raiseOnPressMoveCandidate(FFF)V

    .line 1819
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1826
    .end local v5    # "xOffset":F
    .end local v6    # "xPos":F
    .end local v7    # "yPos":F
    :cond_2
    return-void
.end method

.method private raiseOnCandidatesUpdated()V
    .locals 4

    .prologue
    .line 1181
    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v2, :cond_0

    .line 1182
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getCandidateListener()Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    move-result-object v1

    .line 1183
    .local v1, "localListener":Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    if-eqz v1, :cond_0

    .line 1184
    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-interface {v1, v2}, Lcom/nuance/swype/input/CandidatesListView$CandidateListener;->onCandidatesUpdated(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 1188
    .end local v1    # "localListener":Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mCandidateListeners:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 1189
    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mCandidateListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1190
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    .line 1191
    .local v0, "listener":Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    if-eqz v0, :cond_1

    .line 1192
    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-interface {v0, v2}, Lcom/nuance/swype/input/CandidatesListView$CandidateListener;->onCandidatesUpdated(Lcom/nuance/input/swypecorelib/Candidates;)V

    goto :goto_0

    .line 1196
    .end local v0    # "listener":Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    :cond_2
    return-void
.end method

.method private raiseOnPressHoldCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;)Z
    .locals 5
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;

    .prologue
    const/4 v3, 0x1

    .line 1129
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getCandidateListener()Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    move-result-object v1

    .line 1130
    .local v1, "localListener":Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    if-eqz v1, :cond_0

    .line 1131
    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-interface {v1, p1, v2}, Lcom/nuance/swype/input/CandidatesListView$CandidateListener;->onPressHoldCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 1142
    :goto_0
    return v2

    .line 1136
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mCandidateListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1137
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    .line 1138
    .local v0, "listener":Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-interface {v0, p1, v2}, Lcom/nuance/swype/input/CandidatesListView$CandidateListener;->onPressHoldCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 1139
    goto :goto_0

    .line 1142
    .end local v0    # "listener":Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private raiseOnPressMoveCandidate(FFF)V
    .locals 4
    .param p1, "xPos"    # F
    .param p2, "yPos"    # F
    .param p3, "xOffset"    # F

    .prologue
    .line 1164
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getCandidateListener()Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    move-result-object v1

    .line 1165
    .local v1, "localListener":Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    if-eqz v1, :cond_0

    .line 1166
    invoke-interface {v1, p1, p2, p3}, Lcom/nuance/swype/input/CandidatesListView$CandidateListener;->onPressMoveCandidate(FFF)V

    .line 1170
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mCandidateListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1171
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    .line 1172
    .local v0, "listener":Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    if-eqz v0, :cond_1

    .line 1173
    invoke-interface {v0, p1, p2, p3}, Lcom/nuance/swype/input/CandidatesListView$CandidateListener;->onPressMoveCandidate(FFF)V

    goto :goto_0

    .line 1178
    .end local v0    # "listener":Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    :cond_2
    return-void
.end method

.method private raiseOnPressReleaseCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;)Z
    .locals 5
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;

    .prologue
    const/4 v3, 0x1

    .line 1147
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getCandidateListener()Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    move-result-object v1

    .line 1148
    .local v1, "localListener":Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    if-eqz v1, :cond_0

    .line 1149
    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-interface {v1, p1, v2}, Lcom/nuance/swype/input/CandidatesListView$CandidateListener;->onPressReleaseCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 1160
    :goto_0
    return v2

    .line 1154
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mCandidateListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1155
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    .line 1156
    .local v0, "listener":Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-interface {v0, p1, v2}, Lcom/nuance/swype/input/CandidatesListView$CandidateListener;->onPressReleaseCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 1157
    goto :goto_0

    .line 1160
    .end local v0    # "listener":Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private raiseOnSelectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;)Z
    .locals 8
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1098
    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mIme:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    move v4, v5

    .line 1124
    :goto_0
    return v4

    .line 1101
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mIme:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v0, 0x0

    .line 1102
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    :goto_1
    if-nez v0, :cond_2

    move v4, v5

    .line 1103
    goto :goto_0

    .line 1101
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mIme:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    goto :goto_1

    .line 1105
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1106
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getCandidateListener()Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    move-result-object v2

    .line 1108
    .local v2, "localListener":Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1109
    .local v3, "suggestions":Lcom/nuance/input/swypecorelib/Candidates;
    if-eqz v2, :cond_3

    .line 1110
    invoke-interface {v2, p1, v3}, Lcom/nuance/swype/input/CandidatesListView$CandidateListener;->onSelectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1111
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move v4, v6

    .line 1112
    goto :goto_0

    .line 1116
    :cond_3
    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mCandidateListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 1117
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    .line 1118
    .local v1, "listener":Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    if-eqz v1, :cond_4

    invoke-interface {v1, p1, v3}, Lcom/nuance/swype/input/CandidatesListView$CandidateListener;->onSelectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1119
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move v4, v6

    .line 1120
    goto :goto_0

    .line 1123
    .end local v1    # "listener":Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    :cond_5
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move v4, v5

    .line 1124
    goto :goto_0
.end method

.method private readStyles(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v12, -0x10000

    .line 1306
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeLoader;->getInstance()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Lcom/nuance/swype/input/R$styleable;->WordListView:[I

    const/4 v4, 0x0

    sget v5, Lcom/nuance/swype/input/R$style;->WordListView:I

    sget v6, Lcom/nuance/swype/input/R$xml;->defaults:I

    const-string/jumbo v7, "WordListView"

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/swype/plugin/ThemeLoader;->obtainStyledAttributes$6d3b0587(Landroid/content/Context;Landroid/util/AttributeSet;[IIIILjava/lang/String;)Lcom/nuance/swype/plugin/TypedArrayWrapper;

    move-result-object v8

    .line 2030
    .local v8, "a":Lcom/nuance/swype/plugin/TypedArrayWrapper;
    iget-object v0, v8, Lcom/nuance/swype/plugin/TypedArrayWrapper;->delegateTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v11

    .line 1310
    .local v11, "n":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v11, :cond_a

    .line 1311
    invoke-virtual {v8, v10}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getIndex(I)I

    move-result v9

    .line 1313
    .local v9, "attr":I
    sget v0, Lcom/nuance/swype/input/R$styleable;->WordListView_candidateNormal:I

    if-ne v9, v0, :cond_1

    .line 1314
    invoke-virtual {v8, v9, v12}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mColorNormal:I

    .line 1310
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1315
    :cond_1
    sget v0, Lcom/nuance/swype/input/R$styleable;->WordListView_candidateRecommended:I

    if-ne v9, v0, :cond_2

    .line 1316
    invoke-virtual {v8, v9, v12}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mColorRecommended:I

    goto :goto_1

    .line 1317
    :cond_2
    sget v0, Lcom/nuance/swype/input/R$styleable;->WordListView_candidateOther:I

    if-ne v9, v0, :cond_3

    .line 1318
    invoke-virtual {v8, v9, v12}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mColorOther:I

    goto :goto_1

    .line 1319
    :cond_3
    sget v0, Lcom/nuance/swype/input/R$styleable;->WordListView_candidatePressed:I

    if-ne v9, v0, :cond_4

    .line 1320
    invoke-virtual {v8, v9, v12}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mColorPressed:I

    goto :goto_1

    .line 1321
    :cond_4
    sget v0, Lcom/nuance/swype/input/R$styleable;->WordListView_textSize:I

    if-ne v9, v0, :cond_5

    .line 1322
    const/16 v0, 0x14

    invoke-virtual {v8, v9, v0}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mTextSizeInit:I

    goto :goto_1

    .line 1323
    :cond_5
    sget v0, Lcom/nuance/swype/input/R$styleable;->WordListView_textPadding:I

    if-ne v9, v0, :cond_6

    .line 1324
    const/16 v0, 0xa

    invoke-virtual {v8, v9, v0}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mTextPadding:I

    goto :goto_1

    .line 1325
    :cond_6
    sget v0, Lcom/nuance/swype/input/R$styleable;->WordListView_udbAndTipColor:I

    if-ne v9, v0, :cond_8

    .line 1326
    invoke-virtual {v8, v9}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1327
    invoke-virtual {v8, v9, v12}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mColorUDBTip:I

    goto :goto_1

    .line 1329
    :cond_7
    sget v0, Lcom/nuance/swype/input/R$styleable;->WordListView_candidateRecommended:I

    invoke-virtual {v8, v0, v12}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mColorUDBTip:I

    goto :goto_1

    .line 1331
    :cond_8
    sget v0, Lcom/nuance/swype/input/R$styleable;->WordListView_android_gravity:I

    if-ne v9, v0, :cond_0

    .line 1332
    invoke-virtual {v8, v9}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1333
    sget v0, Lcom/nuance/swype/input/R$styleable;->WordListView_android_gravity:I

    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mGravity:I

    invoke-virtual {v8, v0, v1}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mGravity:I

    goto :goto_1

    .line 1335
    :cond_9
    const/16 v0, 0x11

    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mGravity:I

    goto :goto_1

    .line 1339
    .end local v9    # "attr":I
    :cond_a
    invoke-virtual {v8}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->recycle()V

    .line 1340
    return-void
.end method

.method private resetScroll()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1402
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/CandidatesListView;->scrollToX(I)V

    .line 1403
    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    .line 1404
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    .line 1405
    return-void
.end method

.method private scrollToHighlight()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1467
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->getActiveCandidateIndex()I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    .line 1468
    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_1

    .line 1492
    :cond_0
    :goto_0
    return-void

    .line 1471
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    iget v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedCandidate:Lcom/nuance/input/swypecorelib/WordCandidate;

    .line 1473
    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mTotalWidth:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1474
    .local v0, "maxScroll":I
    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v1

    if-eqz v1, :cond_3

    .line 1475
    iput v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    .line 1476
    iput-boolean v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mScrolled:Z

    .line 1491
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    goto :goto_0

    .line 1478
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

    .line 1479
    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    .line 1480
    iput-boolean v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mScrolled:Z

    goto :goto_1

    .line 1482
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

    .line 1483
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    iget v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    .line 1484
    iput-boolean v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mScrolled:Z

    goto :goto_1

    .line 1486
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

    .line 1487
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

    .line 1488
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

    .line 1020
    iget v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 1021
    iget v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v0, v2

    .line 1022
    .local v0, "dist":D
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v2

    .line 1023
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    div-double/2addr v4, v6

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v12

    add-double/2addr v4, v8

    double-to-int v3, v4

    add-int/2addr v2, v3

    .line 1022
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/CandidatesListView;->scrollToX(I)V

    .line 1024
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    if-lt v2, v3, :cond_0

    .line 1025
    iget v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/CandidatesListView;->scrollToX(I)V

    .line 1035
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    .line 1036
    return-void

    .line 1028
    .end local v0    # "dist":D
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    sub-int/2addr v2, v3

    int-to-double v0, v2

    .line 1029
    .restart local v0    # "dist":D
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v2

    .line 1030
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    div-double/2addr v4, v6

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v12

    add-double/2addr v4, v8

    double-to-int v3, v4

    sub-int/2addr v2, v3

    .line 1029
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/CandidatesListView;->scrollToX(I)V

    .line 1031
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    if-gt v2, v3, :cond_0

    .line 1032
    iget v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/CandidatesListView;->scrollToX(I)V

    goto :goto_0
.end method

.method private setDefaultSuggestions(Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 1
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 1385
    new-instance v0, Lcom/nuance/input/swypecorelib/Candidates;

    invoke-direct {v0, p1}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Lcom/nuance/input/swypecorelib/Candidates;)V

    iput-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1386
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->raiseOnCandidatesUpdated()V

    .line 1387
    return-void
.end method

.method private setWordCandidateColor(Lcom/nuance/input/swypecorelib/Candidates;I)V
    .locals 2
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p2, "idx"    # I

    .prologue
    .line 867
    iget-boolean v0, p0, Lcom/nuance/swype/input/CandidatesListView;->isHardwareKeyboardUsed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->getSmartSelectionIndex()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 868
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mColorRecommended:I

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/CandidatesListView;->setColor(Landroid/graphics/Paint;I)V

    .line 869
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/CandidatesListView;->isHardwareKeyboardUsed:Z

    .line 881
    :goto_0
    return-void

    .line 872
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->isList()Z

    move-result v0

    if-nez v0, :cond_1

    .line 874
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mColorUDBTip:I

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/CandidatesListView;->setColor(Landroid/graphics/Paint;I)V

    goto :goto_0

    .line 875
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_2

    .line 876
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->getSmartSelectionIndex()I

    move-result v0

    if-ne v0, p2, :cond_2

    .line 877
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mColorRecommended:I

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/CandidatesListView;->setColor(Landroid/graphics/Paint;I)V

    goto :goto_0

    .line 879
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mColorOther:I

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/CandidatesListView;->setColor(Landroid/graphics/Paint;I)V

    goto :goto_0
.end method

.method private setWordCandidateFont(Lcom/nuance/input/swypecorelib/Candidates;I)V
    .locals 2
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p2, "wordCandidateIndex"    # I

    .prologue
    .line 885
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_0

    .line 886
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->getSmartSelectionIndex()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 887
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->typefaceBold:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/CandidatesListView;->setTypeface(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    .line 895
    :goto_0
    return-void

    .line 888
    :cond_0
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_1

    .line 889
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_2

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->typefaceBold:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/CandidatesListView;->setTypeface(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 893
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/CandidatesListView;->setTypeface(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

.method private slide()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 981
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v4

    int-to-float v3, v4

    .line 982
    .local v3, "oldX":F
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->getMaxScroll()I

    move-result v0

    .line 983
    .local v0, "maxScroll":I
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->getMinScroll()I

    move-result v1

    .line 990
    .local v1, "minScroll":I
    iget v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    .line 992
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

    .line 993
    iget v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    iget v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mA:F

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    iput v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    .line 995
    iget v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v7

    if-gez v4, :cond_0

    .line 996
    iput v6, p0, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    .line 1000
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

    .line 1001
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

    .line 1002
    :cond_3
    iput v6, p0, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    .line 1003
    iput v6, p0, Lcom/nuance/swype/input/CandidatesListView;->mA:F

    .line 1004
    int-to-float v4, v1

    cmpg-float v4, v3, v4

    if-gez v4, :cond_5

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v4

    if-lt v4, v1, :cond_5

    .line 1005
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/CandidatesListView;->scrollToX(I)V

    .line 1011
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    .line 1012
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    .line 1013
    return-void

    .line 1006
    :cond_5
    int-to-float v4, v0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_4

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v4

    if-gt v4, v0, :cond_4

    .line 1007
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/CandidatesListView;->scrollToX(I)V

    goto :goto_0
.end method


# virtual methods
.method public addOnWordSelectActionListener(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)V
    .locals 3
    .param p1, "newlistener"    # Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    .prologue
    .line 326
    if-eqz p1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mCandidateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 328
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    .line 329
    .local v0, "listener":Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    .line 335
    .end local v0    # "listener":Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    :cond_1
    :goto_0
    return-void

    .line 333
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mCandidateListeners:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected calcAccel()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 912
    iget v6, p0, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    cmpl-float v6, v5, v6

    if-nez v6, :cond_1

    move v3, v5

    .line 913
    .local v3, "vUnitVect":F
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v6

    int-to-float v4, v6

    .line 914
    .local v4, "x":F
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->getMaxScroll()I

    move-result v0

    .line 915
    .local v0, "maxScroll":I
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->getMinScroll()I

    move-result v1

    .line 917
    .local v1, "minScroll":I
    int-to-float v6, v1

    cmpg-float v6, v4, v6

    if-ltz v6, :cond_0

    int-to-float v6, v0

    cmpl-float v6, v4, v6

    if-lez v6, :cond_5

    .line 918
    :cond_0
    int-to-float v6, v1

    cmpg-float v6, v4, v6

    if-gez v6, :cond_2

    move v2, v4

    .line 921
    .local v2, "oobDist":F
    :goto_1
    mul-float v6, v3, v2

    cmpl-float v6, v6, v5

    if-lez v6, :cond_3

    .line 922
    const v5, -0x445c28f6    # -0.005f

    mul-float/2addr v5, v3

    mul-float/2addr v5, v2

    mul-float/2addr v5, v2

    iput v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mA:F

    .line 923
    iget v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mA:F

    const/high16 v6, -0x3ee00000    # -10.0f

    const/high16 v7, 0x41200000    # 10.0f

    invoke-direct {p0, v5, v6, v7}, Lcom/nuance/swype/input/CandidatesListView;->bound(FFF)F

    move-result v5

    iput v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mA:F

    .line 941
    .end local v2    # "oobDist":F
    :goto_2
    return-void

    .line 912
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

    .line 918
    .restart local v0    # "maxScroll":I
    .restart local v1    # "minScroll":I
    .restart local v3    # "vUnitVect":F
    .restart local v4    # "x":F
    :cond_2
    int-to-float v6, v0

    sub-float v2, v4, v6

    goto :goto_1

    .line 926
    .restart local v2    # "oobDist":F
    :cond_3
    iput v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mA:F

    .line 927
    iput v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    .line 928
    int-to-float v5, v1

    cmpg-float v5, v2, v5

    if-gez v5, :cond_4

    .line 929
    iput v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    .line 933
    :goto_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    goto :goto_2

    .line 931
    :cond_4
    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    goto :goto_3

    .line 936
    .end local v2    # "oobDist":F
    :cond_5
    iget v6, p0, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_6

    .line 937
    const v5, -0x40e66666    # -0.6f

    mul-float/2addr v5, v3

    iput v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mA:F

    goto :goto_2

    .line 939
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

    .line 1049
    iput-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1050
    iput v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mTouchX:I

    .line 1051
    iput-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedCandidate:Lcom/nuance/input/swypecorelib/WordCandidate;

    .line 1052
    iput v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    .line 1053
    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mTotalWidth:I

    .line 1054
    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    .line 1055
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    .line 1056
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/CandidatesListView;->scrollToX(I)V

    .line 1057
    iput v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mA:F

    .line 1058
    iput v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    .line 1059
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->raiseOnCandidatesUpdated()V

    .line 1060
    return-void
.end method

.method public clearOnWordSelectActionListeners()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mCandidateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 339
    return-void
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 343
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
    .line 621
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/CandidatesListView;->draw(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;Landroid/graphics/drawable/Drawable;ILandroid/graphics/Rect;)V

    .line 622
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
    .line 601
    sub-int v0, p7, p5

    if-lez v0, :cond_0

    sub-int v0, p8, p6

    if-gtz v0, :cond_1

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 606
    sub-int v0, p7, p5

    invoke-interface {p2, p4, v0}, Lcom/nuance/swype/input/CandidatesListView$Mapper;->map(II)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 607
    invoke-virtual {p3, p5, p6, p7, p8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 608
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 609
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
    .line 613
    if-nez p5, :cond_0

    .line 618
    :goto_0
    return-void

    .line 616
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
    .line 545
    if-nez p4, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    .line 546
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateIndex()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateIndex()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    .line 547
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateIndex()I

    move-result v0

    if-nez v0, :cond_1

    .line 549
    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mTappedWordHighlight:Landroid/graphics/drawable/Drawable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p5

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/CandidatesListView;->draw(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;Landroid/graphics/drawable/Drawable;ILandroid/graphics/Rect;)V

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mDefaultWordHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getSmartSelectionIndex()I

    move-result v0

    if-ne v0, p4, :cond_0

    .line 552
    if-eqz p6, :cond_2

    sget-object v6, Lcom/nuance/swype/input/CandidatesListView;->CAND_STATE_DEFAULT_PRESSED:[I

    .line 554
    .local v6, "drawableState":[I
    :goto_1
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mDefaultWordHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 555
    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mDefaultWordHighlight:Landroid/graphics/drawable/Drawable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p5

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/CandidatesListView;->draw(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;Landroid/graphics/drawable/Drawable;ILandroid/graphics/Rect;)V

    goto :goto_0

    .line 552
    .end local v6    # "drawableState":[I
    :cond_2
    sget-object v6, Lcom/nuance/swype/input/CandidatesListView;->CAND_STATE_DEFAULT_NORMAL:[I

    goto :goto_1
.end method

.method public getCandidateListener()Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->listener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getCandidateSize()V
    .locals 4

    .prologue
    .line 1534
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 1535
    .local v0, "sp":Lcom/nuance/swype/input/UserPreferences;
    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mTextSizeInit:I

    int-to-float v1, v1

    const-string/jumbo v2, "Candidates_Size"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v3}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getCandidatesSize(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;F)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mTextSize:I

    .line 1537
    return-void
.end method

.method public getCenterCandidateIndex()I
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 1596
    const/4 v1, 0x0

    .line 1597
    .local v1, "i":I
    const/4 v2, -0x1

    .line 1599
    .local v2, "item":I
    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v0

    .line 1600
    .local v0, "count":I
    if-gtz v0, :cond_0

    move v4, v5

    .line 1615
    :goto_0
    return v4

    .line 1603
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v6

    add-int v3, v4, v6

    .line 1604
    .local v3, "rightEdge":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1605
    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, v3, :cond_3

    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    .line 1606
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

    .line 1607
    move v2, v1

    .line 1612
    :cond_1
    if-ne v2, v5, :cond_2

    .line 1613
    move v2, v0

    .line 1615
    :cond_2
    div-int/lit8 v4, v2, 0x2

    goto :goto_0

    .line 1610
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getCurrentSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;
    .locals 1

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedCandidate:Lcom/nuance/input/swypecorelib/WordCandidate;

    return-object v0
.end method

.method public getFirstCandidateIndexInNextPage()I
    .locals 6

    .prologue
    .line 1578
    const/4 v2, 0x0

    .line 1579
    .local v2, "i":I
    const/4 v1, -0x1

    .line 1580
    .local v1, "firstItem":I
    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v0

    .line 1581
    .local v0, "count":I
    if-gtz v0, :cond_0

    .line 1582
    const/4 v4, -0x1

    .line 1592
    :goto_0
    return v4

    .line 1584
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v5

    add-int v3, v4, v5

    .line 1585
    .local v3, "rightEdge":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 1586
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

    .line 1587
    move v1, v2

    :cond_1
    move v4, v1

    .line 1592
    goto :goto_0

    .line 1590
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getFirstCandidateIndexInPreviousPage()I
    .locals 5

    .prologue
    .line 1619
    const/4 v2, 0x0

    .line 1620
    .local v2, "i":I
    const/4 v1, -0x1

    .line 1621
    .local v1, "firstItem":I
    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v0

    .line 1622
    .local v0, "count":I
    if-gtz v0, :cond_1

    .line 1623
    const/4 v3, -0x1

    .line 1631
    :goto_0
    return v3

    .line 1629
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 1624
    :cond_1
    if-ge v2, v0, :cond_2

    .line 1625
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

    .line 1626
    move v1, v2

    :cond_2
    move v3, v1

    .line 1631
    goto :goto_0
.end method

.method public getHardwareKeyboardUsed()Z
    .locals 1

    .prologue
    .line 1713
    iget-boolean v0, p0, Lcom/nuance/swype/input/CandidatesListView;->isHardwareKeyboardUsed:Z

    return v0
.end method

.method public getHighlightAddtoDictionaryTip()Z
    .locals 1

    .prologue
    .line 1722
    iget-boolean v0, p0, Lcom/nuance/swype/input/CandidatesListView;->highlightAddtoDictionaryTip:Z

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1731
    iget-boolean v1, p0, Lcom/nuance/swype/input/CandidatesListView;->isRtl:Z

    if-eqz v1, :cond_2

    .line 1732
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1740
    :cond_0
    :goto_0
    return v0

    .line 1735
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/CandidatesListView;->isKeyOutofRightBound(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1736
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1740
    :cond_2
    invoke-super {p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v0

    goto :goto_0
.end method

.method abstract getMinCandidateWidth(Landroid/content/Context;)I
.end method

.method public getOffsetX(F)F
    .locals 1
    .param p1, "xPos"    # F

    .prologue
    .line 1799
    iget v0, p0, Lcom/nuance/swype/input/CandidatesListView;->xDown:F

    sub-float v0, p1, v0

    return v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 1351
    iget v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    return v0
.end method

.method public getTargetScrollX()I
    .locals 1

    .prologue
    .line 1796
    iget v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    return v0
.end method

.method public getWordListAsString()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1745
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1750
    .local v2, "hwclContent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v9, :cond_2

    .line 1752
    iget-object v9, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 1753
    iget-object v9, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1754
    .local v1, "defaultWord":Ljava/lang/String;
    invoke-virtual {v2, v10, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1759
    .end local v1    # "defaultWord":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x0

    .line 1760
    .local v5, "offset":I
    iget v9, p0, Lcom/nuance/swype/input/CandidatesListView;->mTotalWidth:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 1761
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v9

    iget v10, p0, Lcom/nuance/swype/input/CandidatesListView;->mTotalWidth:I

    sub-int/2addr v9, v10

    div-int/lit8 v5, v9, 0x2

    .line 1763
    :cond_0
    iget-object v9, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9}, Lcom/nuance/input/swypecorelib/Candidates;->getCandidates()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    .line 1764
    .local v4, "numberOfWords":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 1765
    iget-object v9, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9, v3}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    .line 1766
    .local v0, "candidateWord":Lcom/nuance/input/swypecorelib/WordCandidate;
    iget-object v9, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v9, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidth:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v10

    add-int v8, v9, v5

    .line 1767
    .local v8, "xPos":I
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1768
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1764
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1756
    .end local v0    # "candidateWord":Lcom/nuance/input/swypecorelib/WordCandidate;
    .end local v3    # "i":I
    .end local v4    # "numberOfWords":I
    .end local v5    # "offset":I
    .end local v8    # "xPos":I
    :cond_1
    const-string/jumbo v9, ""

    invoke-virtual {v2, v10, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1773
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1774
    .local v6, "retValue":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1775
    .local v7, "word":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 1776
    const-string/jumbo v10, ","

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1778
    :cond_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1780
    .end local v7    # "word":Ljava/lang/String;
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public hideCandidateHighlight()V
    .locals 1

    .prologue
    .line 1506
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/CandidatesListView;->highlightActiveCandidate:Z

    .line 1507
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    .line 1508
    return-void
.end method

.method public highlightCandidate(Ljava/lang/String;)V
    .locals 1
    .param p1, "candidate"    # Ljava/lang/String;

    .prologue
    .line 1461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/CandidatesListView;->highlightActiveCandidate:Z

    .line 1462
    iput-object p1, p0, Lcom/nuance/swype/input/CandidatesListView;->activeCandidate:Ljava/lang/String;

    .line 1463
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->scrollToHighlight()V

    .line 1464
    return-void
.end method

.method protected isCandidatesList()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 637
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->isList()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->COMPLETIONS:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v3, v2, v1

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v3, v2, v0

    .line 638
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
    .line 1390
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

    .line 1569
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

    .line 1574
    :goto_0
    return v0

    .line 1571
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

    .line 1572
    goto :goto_0

    .line 1574
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyOutofRightBound(I)Z
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v2, 0x1

    .line 1554
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v3

    add-int v0, v1, v3

    .line 1555
    .local v0, "rightEdge":I
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mWordX:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v0, :cond_0

    move v1, v2

    .line 1558
    :goto_0
    return v1

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

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected varargs isTypeOneOf([Lcom/nuance/input/swypecorelib/Candidates$Source;)Z
    .locals 5
    .param p1, "types"    # [Lcom/nuance/input/swypecorelib/Candidates$Source;

    .prologue
    const/4 v1, 0x0

    .line 643
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 644
    .local v0, "type":Lcom/nuance/input/swypecorelib/Candidates$Source;
    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v4

    if-ne v4, v0, :cond_1

    .line 645
    const/4 v1, 0x1

    .line 648
    .end local v0    # "type":Lcom/nuance/input/swypecorelib/Candidates$Source;
    :cond_0
    return v1

    .line 643
    .restart local v0    # "type":Lcom/nuance/input/swypecorelib/Candidates$Source;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected longPressFirstWord()V
    .locals 0

    .prologue
    .line 1293
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1297
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1298
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .prologue
    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    if-nez v2, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mDisableCandidateDisplay:Z

    if-nez v2, :cond_0

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    if-nez v2, :cond_2

    .line 422
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v2, v3, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/CandidatesListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 424
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/CandidatesListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 429
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    .line 430
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

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v25

    .line 436
    .local v25, "viewWidth":I
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/CandidatesListView;->getMapper()Lcom/nuance/swype/input/CandidatesListView$Mapper;

    move-result-object v4

    .line 438
    .local v4, "mapper":Lcom/nuance/swype/input/CandidatesListView$Mapper;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v23

    .line 439
    .local v23, "itemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/CandidatesListView;->mBgPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    .line 440
    .local v19, "bgPadding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/CandidatesListView;->mTouchX:I

    move/from16 v18, v0

    .line 441
    .local v18, "touchX":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/CandidatesListView;->mScrolled:Z

    move/from16 v24, v0

    .line 442
    .local v24, "scrolled":Z
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/CandidatesListView;->getHeight()I

    move-result v17

    .line 443
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

    .line 450
    .local v16, "y":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/nuance/swype/input/CandidatesListView;->mTotalWidth:I

    .line 453
    .local v9, "contentWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    .line 454
    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v2, v3, :cond_7

    :cond_3
    const/16 v21, 0x1

    .line 456
    .local v21, "forceCenter":Z
    :goto_2
    const/4 v15, 0x0

    .line 457
    .local v15, "x":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/CandidatesListView;->alignLeft:Z

    if-nez v2, :cond_5

    move/from16 v0, v25

    if-ge v9, v0, :cond_5

    .line 458
    if-nez v21, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mGravity:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mGravity:I

    const v3, 0x800003

    if-ne v2, v3, :cond_8

    .line 459
    :cond_4
    const/4 v15, 0x0

    .line 466
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/Candidates;->hasAttribute(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 467
    move/from16 v0, v25

    if-gt v0, v9, :cond_9

    .line 469
    div-int/lit8 v2, v25, 0x2

    add-int/2addr v15, v2

    .line 470
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    move/from16 v0, v23

    if-ge v13, v0, :cond_9

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mWordWidth:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v15, v2

    .line 470
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 430
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

    .line 454
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

    .line 462
    .restart local v15    # "x":I
    .restart local v21    # "forceCenter":Z
    :cond_8
    sub-int v2, v25, v9

    div-int/lit8 v15, v2, 0x2

    goto :goto_3

    .line 476
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

    .line 477
    move v6, v15

    .line 478
    .local v6, "xOffset":I
    move/from16 v0, v25

    if-gt v0, v9, :cond_a

    .line 479
    sub-int v2, v25, v9

    div-int/lit8 v6, v2, 0x2

    .line 481
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

    .line 482
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mTouchIndex:I

    .line 486
    .end local v6    # "xOffset":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    .line 487
    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v2

    .line 488
    sget-object v3, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_DRAWABLE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-eq v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    .line 489
    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    const/4 v3, 0x2

    .line 490
    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/Candidates;->hasAttribute(I)Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mTotalWidth:I

    move/from16 v0, v25

    if-ge v2, v0, :cond_d

    const/16 v22, 0x1

    .line 492
    .local v22, "isShortWordList":Z
    :goto_5
    if-eqz v22, :cond_c

    .line 493
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/CandidatesListView;->isRtl:Z

    if-eqz v2, :cond_e

    .line 494
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 495
    int-to-float v2, v15

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 497
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 503
    :cond_c
    :goto_6
    add-int/lit8 v14, v23, -0x1

    .line 504
    .local v14, "lastIndex":I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_7
    move/from16 v0, v23

    if-ge v13, v0, :cond_f

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v12, v4

    .line 505
    invoke-direct/range {v10 .. v18}, Lcom/nuance/swype/input/CandidatesListView;->drawCandidate(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;IIIIII)I

    move-result v26

    .line 506
    .local v26, "wordWidth":I
    add-int v15, v15, v26

    .line 504
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 490
    .end local v13    # "i":I
    .end local v14    # "lastIndex":I
    .end local v22    # "isShortWordList":Z
    .end local v26    # "wordWidth":I
    :cond_d
    const/16 v22, 0x0

    goto :goto_5

    .line 499
    .restart local v22    # "isShortWordList":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_6

    .line 509
    .restart local v13    # "i":I
    .restart local v14    # "lastIndex":I
    :cond_f
    if-eqz v22, :cond_10

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v2, v15}, Lcom/nuance/swype/input/CandidatesListView;->draw(Landroid/graphics/Canvas;Lcom/nuance/swype/input/CandidatesListView$Mapper;Landroid/graphics/drawable/Drawable;I)V

    .line 513
    :cond_10
    if-nez v24, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v2, v3, :cond_11

    .line 515
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mTotalWidth:I

    move/from16 v0, v25

    if-le v2, v0, :cond_11

    .line 516
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

    .line 521
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v3

    if-eq v2, v3, :cond_12

    .line 522
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/CandidatesListView;->scrollToTarget()V

    .line 525
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mMouseDown:Z

    if-nez v2, :cond_0

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/CandidatesListView;->calcAccel()V

    .line 527
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

    .line 528
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/CandidatesListView;->slide()V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1395
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 1396
    if-eq p1, p3, :cond_0

    .line 1397
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->resetScroll()V

    .line 1399
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "me"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1215
    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mIme:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mIme:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1284
    :cond_0
    :goto_0
    return v7

    .line 1219
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1224
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 1225
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 1226
    .local v2, "y":I
    iput v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mTouchX:I

    .line 1228
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1230
    :pswitch_0
    iget v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mTouchX:I

    int-to-float v3, v3

    iput v3, p0, Lcom/nuance/swype/input/CandidatesListView;->xDown:F

    .line 1231
    int-to-float v3, v2

    iput v3, p0, Lcom/nuance/swype/input/CandidatesListView;->yDown:F

    .line 1232
    sget-object v3, Lcom/nuance/swype/input/CandidatesListView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onMove(): called  action down >>>>>>>>>>1 :: xDown=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/nuance/swype/input/CandidatesListView;->xDown:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1233
    iput-boolean v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mLongPressHandled:Z

    .line 1234
    iput-boolean v7, p0, Lcom/nuance/swype/input/CandidatesListView;->mMouseDown:Z

    .line 1235
    iput-boolean v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mDragSelected:Z

    .line 1237
    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mSwipeSpeed:Lcom/nuance/swype/input/CandidatesListView$RollAverage;

    invoke-virtual {v3}, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->flush()V

    .line 1238
    iput v9, p0, Lcom/nuance/swype/input/CandidatesListView;->mA:F

    .line 1239
    iput v9, p0, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    .line 1240
    iput-boolean v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mScrolled:Z

    .line 1241
    iput v10, p0, Lcom/nuance/swype/input/CandidatesListView;->mTouchIndex:I

    .line 1242
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    .line 1243
    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1244
    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2ee

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1248
    :pswitch_1
    if-gtz v2, :cond_2

    iget-boolean v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mDragSelected:Z

    if-nez v3, :cond_2

    .line 1250
    iput-boolean v7, p0, Lcom/nuance/swype/input/CandidatesListView;->mDragSelected:Z

    .line 1252
    :cond_2
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/CandidatesListView;->onMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1256
    :pswitch_2
    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1257
    iput-boolean v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mMouseDown:Z

    .line 1258
    iput-boolean v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mDragSelected:Z

    .line 1260
    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mSwipeSpeed:Lcom/nuance/swype/input/CandidatesListView$RollAverage;

    invoke-virtual {v3}, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->isFlushed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1261
    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mSwipeSpeed:Lcom/nuance/swype/input/CandidatesListView$RollAverage;

    invoke-virtual {v3}, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->get()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/CandidatesListView;->setVelocity(F)V

    .line 1263
    :cond_3
    iget-boolean v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mLongPressHandled:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mScrolled:Z

    if-nez v3, :cond_5

    iget v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mTouchIndex:I

    if-eq v3, v10, :cond_5

    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1266
    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v3

    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1267
    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v3

    if-lez v3, :cond_5

    iget v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mTouchIndex:I

    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 1268
    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v3, v6}, Lcom/nuance/input/swypecorelib/Candidates;->hasAttribute(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1269
    iget v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mTouchIndex:I

    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    iget v5, p0, Lcom/nuance/swype/input/CandidatesListView;->mTouchIndex:I

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/nuance/swype/input/CandidatesListView;->touchWord(ILcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 1271
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->trySelect()V

    .line 1274
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->removeHighlight()V

    .line 1275
    sget-object v3, Lcom/nuance/swype/input/CandidatesListView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v6, [Ljava/lang/Object;

    const-string/jumbo v5, "onTouch()"

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "called >>>>>: mLongPressHandled "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/nuance/swype/input/CandidatesListView;->mLongPressHandled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1276
    iget-boolean v3, p0, Lcom/nuance/swype/input/CandidatesListView;->mLongPressHandled:Z

    if-eqz v3, :cond_6

    .line 1277
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->handleReleasePress()V

    .line 1280
    :cond_6
    iput-boolean v8, p0, Lcom/nuance/swype/input/CandidatesListView;->mLongPressHandled:Z

    goto/16 :goto_0

    .line 1228
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

    .line 944
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v8

    int-to-float v7, v8

    .line 945
    .local v7, "x":F
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v6

    .line 946
    .local v6, "width":I
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->getMaxScroll()I

    move-result v1

    .line 947
    .local v1, "maxScroll":I
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->getMinScroll()I

    move-result v2

    .line 951
    .local v2, "minScroll":I
    int-to-float v8, v6

    const/high16 v9, 0x40800000    # 4.0f

    div-float v0, v8, v9

    .line 953
    .local v0, "maxPullDist":F
    int-to-float v8, v2

    cmpg-float v8, v7, v8

    if-gez v8, :cond_1

    .line 954
    move v3, v7

    .line 961
    .local v3, "oobDist":F
    :goto_0
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 963
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

    .line 965
    mul-float v5, v8, p1

    .line 968
    .local v5, "ret":F
    mul-float v8, p1, v3

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v8, v8, v12

    if-gez v8, :cond_0

    .line 970
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    div-float v5, p1, v8

    .line 973
    :cond_0
    return v5

    .line 955
    .end local v3    # "oobDist":F
    .end local v4    # "pinnedOobDist":F
    .end local v5    # "ret":F
    :cond_1
    int-to-float v8, v1

    cmpl-float v8, v7, v8

    if-lez v8, :cond_2

    .line 956
    int-to-float v8, v1

    sub-float v3, v7, v8

    .restart local v3    # "oobDist":F
    goto :goto_0

    .line 958
    .end local v3    # "oobDist":F
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "oobDist":F
    goto :goto_0
.end method

.method protected removeHighlight()V
    .locals 1

    .prologue
    .line 1288
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mTouchX:I

    .line 1289
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    .line 1290
    return-void
.end method

.method public scrollEnd()V
    .locals 1

    .prologue
    .line 1646
    iget v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mTotalWidth:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/CandidatesListView;->updateScrollPosition(I)V

    .line 1647
    return-void
.end method

.method public scrollHead()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1636
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

    .line 1637
    .local v0, "leftEdge":I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 1639
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1640
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1642
    :cond_1
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/CandidatesListView;->updateScrollPosition(I)V

    .line 1643
    return-void
.end method

.method public scrollNext()V
    .locals 9

    .prologue
    .line 1673
    const/4 v1, 0x0

    .line 1674
    .local v1, "i":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v5

    .line 1675
    .local v5, "targetX":I
    iget-object v6, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v0

    .line 1676
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v7

    add-int v4, v6, v7

    .line 1677
    .local v4, "rightEdge":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1678
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

    .line 1679
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

    .line 1685
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v6

    if-gt v5, v6, :cond_1

    .line 1686
    move v5, v4

    .line 1689
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1691
    .local v2, "iParentWidth":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_2

    .line 1692
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1695
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getRight()I

    move-result v6

    sub-int v3, v2, v6

    .line 1701
    .local v3, "rightArrowSize":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getLeft()I

    move-result v6

    if-ge v6, v3, :cond_3

    .line 1702
    sub-int/2addr v5, v3

    .line 1705
    :cond_3
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/CandidatesListView;->updateScrollPosition(I)V

    .line 1706
    return-void

    .line 1682
    .end local v2    # "iParentWidth":I
    .end local v3    # "rightArrowSize":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public scrollPrev()V
    .locals 7

    .prologue
    .line 1650
    const/4 v2, 0x0

    .line 1651
    .local v2, "i":I
    iget-object v4, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v0

    .line 1653
    .local v0, "count":I
    const/4 v1, 0x0

    .line 1654
    .local v1, "firstItem":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1655
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

    .line 1656
    move v1, v2

    .line 1661
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

    .line 1662
    .local v3, "leftEdge":I
    if-gez v3, :cond_1

    .line 1663
    const/4 v3, 0x0

    .line 1666
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 1667
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1669
    :cond_2
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/CandidatesListView;->updateScrollPosition(I)V

    .line 1670
    return-void

    .line 1659
    .end local v3    # "leftEdge":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected scrollToX(I)V
    .locals 1
    .param p1, "newScrollX"    # I

    .prologue
    .line 1302
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/CandidatesListView;->scrollTo(II)V

    .line 1303
    return-void
.end method

.method public selectCandidateTriggedByExternalSource(Ljava/lang/String;)Z
    .locals 4
    .param p1, "candidate"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1446
    iput-boolean v1, p0, Lcom/nuance/swype/input/CandidatesListView;->highlightActiveCandidate:Z

    .line 1447
    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->getCandidates()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/WordCandidate;

    .line 1448
    .local v0, "wordCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1449
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/CandidatesListView;->raiseOnSelectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    .line 1450
    const/4 v1, 0x1

    .line 1453
    .end local v0    # "wordCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    :cond_1
    return v1
.end method

.method public setAlignLeft(Z)V
    .locals 1
    .param p1, "alignLeft"    # Z

    .prologue
    .line 313
    iput-boolean p1, p0, Lcom/nuance/swype/input/CandidatesListView;->alignLeft:Z

    .line 315
    invoke-static {p0}, Lcom/nuance/android/compat/ViewCompat;->isHardwareAccelerated(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    .line 318
    :cond_0
    return-void
.end method

.method public setCandidateListener(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    .prologue
    .line 1201
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->listener:Ljava/lang/ref/WeakReference;

    .line 1202
    return-void
.end method

.method public setCandidateSize(F)V
    .locals 1
    .param p1, "newTempTextSize"    # F

    .prologue
    .line 1530
    iget v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mTextSizeInit:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mTextSize:I

    .line 1531
    return-void
.end method

.method public setCandidatesDisplay(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1515
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mDisableCandidateDisplay:Z

    .line 1516
    return-void

    .line 1515
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract setColor(Landroid/graphics/Paint;I)V
.end method

.method public setFullScroll(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 309
    iput-boolean p1, p0, Lcom/nuance/swype/input/CandidatesListView;->allowFullScroll:Z

    .line 310
    return-void
.end method

.method public setHardwareKeyboardUsed(Z)V
    .locals 0
    .param p1, "used"    # Z

    .prologue
    .line 1709
    iput-boolean p1, p0, Lcom/nuance/swype/input/CandidatesListView;->isHardwareKeyboardUsed:Z

    .line 1710
    return-void
.end method

.method public setHighlightAddtoDictionaryTip(Z)V
    .locals 0
    .param p1, "highlight"    # Z

    .prologue
    .line 1717
    iput-boolean p1, p0, Lcom/nuance/swype/input/CandidatesListView;->highlightAddtoDictionaryTip:Z

    .line 1718
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    .line 1719
    return-void
.end method

.method public setHorizontalLayout(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "width"    # I

    .prologue
    .line 1519
    if-lez p2, :cond_0

    .line 1520
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1521
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1522
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1523
    .local v1, "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1524
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1527
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method

.method public setHorizontalScroll(Z)V
    .locals 0
    .param p1, "mScroll"    # Z

    .prologue
    .line 1792
    iput-boolean p1, p0, Lcom/nuance/swype/input/CandidatesListView;->mScroll:Z

    .line 1793
    return-void
.end method

.method public setSuggestions(Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)Lcom/nuance/input/swypecorelib/Candidates;
    .locals 4
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p2, "format"    # Lcom/nuance/swype/input/CandidatesListView$Format;

    .prologue
    .line 1359
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->clear()V

    .line 1361
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v0

    if-lez v0, :cond_0

    .line 1362
    sget-object v0, Lcom/nuance/swype/input/CandidatesListView$5;->$SwitchMap$com$nuance$swype$input$CandidatesListView$Format:[I

    invoke-virtual {p2}, Lcom/nuance/swype/input/CandidatesListView$Format;->ordinal()I

    .line 1366
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/CandidatesListView;->setDefaultSuggestions(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 1370
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateIndex()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    .line 1371
    invoke-direct {p0}, Lcom/nuance/swype/input/CandidatesListView;->computeDisplayingCandidateDrawingRegion()V

    .line 1372
    iget v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    iget v2, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/CandidatesListView;->touchWord(ILcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 1374
    iget v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/CandidatesListView;->scrollToX(I)V

    .line 1375
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->requestLayout()V

    .line 1376
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    .line 1379
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/CandidatesListView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Suggestions:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getWordListAsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1381
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    return-object v0
.end method

.method abstract setTypeface(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V
.end method

.method protected setVelocity(F)V
    .locals 3
    .param p1, "v"    # F

    .prologue
    .line 905
    const v0, 0x3f333333    # 0.7f

    const/high16 v1, -0x3e100000    # -30.0f

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-direct {p0, p1, v1, v2}, Lcom/nuance/swype/input/CandidatesListView;->bound(FFF)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    .line 906
    return-void
.end method

.method public touchWord(ILcom/nuance/input/swypecorelib/WordCandidate;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;

    .prologue
    .line 347
    iput p1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    .line 348
    iput-object p2, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedCandidate:Lcom/nuance/input/swypecorelib/WordCandidate;

    .line 349
    return-void
.end method

.method protected trySelect()V
    .locals 3

    .prologue
    .line 1063
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v1, v2, :cond_1

    .line 1073
    :cond_0
    :goto_0
    return-void

    .line 1066
    :cond_1
    const/4 v0, 0x0

    .line 1067
    .local v0, "selectionHandled":Z
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedCandidate:Lcom/nuance/input/swypecorelib/WordCandidate;

    if-eqz v1, :cond_2

    .line 1068
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedCandidate:Lcom/nuance/input/swypecorelib/WordCandidate;

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/CandidatesListView;->raiseOnSelectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    move-result v0

    .line 1070
    :cond_2
    if-nez v0, :cond_0

    .line 1071
    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mSelectedIndex:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/CandidatesListView;->touchWord(ILcom/nuance/input/swypecorelib/WordCandidate;)V

    goto :goto_0
.end method

.method public updateCandidatesSize()V
    .locals 2

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 1541
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getCandidateSize()V

    .line 1542
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/swype/input/CandidatesListView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1544
    :cond_0
    return-void
.end method

.method public updateRtlStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "newLangStr"    # Ljava/lang/String;

    .prologue
    .line 1726
    invoke-static {p1}, Lcom/nuance/swype/widget/directional/DirectionalUtil;->isLanguageRtl(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/CandidatesListView;->isRtl:Z

    .line 1727
    return-void
.end method

.method protected updateScrollPosition(I)V
    .locals 1
    .param p1, "targetX"    # I

    .prologue
    .line 1039
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1040
    iput p1, p0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    .line 1043
    invoke-virtual {p0}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    .line 1044
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mScrolled:Z

    .line 1046
    :cond_0
    return-void
.end method

.method public wordCount()I
    .locals 1

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_0

    .line 1344
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v0

    .line 1347
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
