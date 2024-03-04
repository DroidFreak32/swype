.class public Lcom/nuance/swype/input/settings/HorizontalListView;
.super Landroid/widget/AdapterView;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/HorizontalListView$IceCreamSandwichPlus;,
        Lcom/nuance/swype/input/settings/HorizontalListView$HoneycombPlus;,
        Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener;,
        Lcom/nuance/swype/input/settings/HorizontalListView$RunningOutOfDataListener;,
        Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final BUNDLE_ID_CURRENT_X:Ljava/lang/String; = "BUNDLE_ID_CURRENT_X"

.field private static final BUNDLE_ID_PARENT_STATE:Ljava/lang/String; = "BUNDLE_ID_PARENT_STATE"

.field private static final FAKE_FRAME_TIME:J = 0xaL

.field private static final FLING_DEFAULT_ABSORB_VELOCITY:F = 30.0f

.field private static final INSERT_AT_END_OF_LIST:I = -0x1

.field private static final INSERT_AT_START_OF_LIST:I

.field private static isRTL:Z

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field private mAdapterDataObserver:Landroid/database/DataSetObserver;

.field private mBlockTouchAction:Z

.field private mCurrentScrollState:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

.field protected mCurrentX:I

.field private mCurrentlySelectedAdapterIndex:I

.field private mDataChanged:Z

.field private mDelayedLayout:Ljava/lang/Runnable;

.field private mDisplayOffset:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerWidth:I

.field private mEdgeGlowLeft:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

.field private mEdgeGlowRight:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

.field protected mFlingTracker:Landroid/widget/Scroller;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mGestureListener:Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;

.field private mHasNotifiedRunningLowOnData:Z

.field private mHeightMeasureSpec:I

.field private mIsParentVerticiallyScrollableViewDisallowingInterceptTouchEvent:Z

.field private mLeftViewAdapterIndex:I

.field private mMaxX:I

.field protected mNextX:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnScrollStateChangedListener:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener;

.field private mRect:Landroid/graphics/Rect;

.field private mRemovedViewsCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRestoreX:Ljava/lang/Integer;

.field private mRightViewAdapterIndex:I

.field private mRunningOutOfDataListener:Lcom/nuance/swype/input/settings/HorizontalListView$RunningOutOfDataListener;

.field private mRunningOutOfDataThreshold:I

.field private mViewBeingTouched:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-string v0, "HorizontalListView"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/settings/HorizontalListView;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 149
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nuance/swype/input/settings/HorizontalListView;->isRTL:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 200
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    .line 98
    new-instance v0, Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;

    invoke-direct {v0, p0, v3}, Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;-><init>(Lcom/nuance/swype/input/settings/HorizontalListView;Lcom/nuance/swype/input/settings/HorizontalListView$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mGestureListener:Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    .line 113
    iput-boolean v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDataChanged:Z

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRect:Landroid/graphics/Rect;

    .line 119
    iput-object v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    .line 122
    iput v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDividerWidth:I

    .line 125
    iput-object v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 134
    iput-object v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRestoreX:Ljava/lang/Integer;

    .line 137
    const v0, 0x7fffffff

    iput v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mMaxX:I

    .line 153
    iput-object v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRunningOutOfDataListener:Lcom/nuance/swype/input/settings/HorizontalListView$RunningOutOfDataListener;

    .line 158
    iput v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRunningOutOfDataThreshold:I

    .line 163
    iput-boolean v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mHasNotifiedRunningLowOnData:Z

    .line 168
    iput-object v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mOnScrollStateChangedListener:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener;

    .line 173
    sget-object v0, Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    iput-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentScrollState:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    .line 189
    iput-boolean v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mBlockTouchAction:Z

    .line 192
    iput-boolean v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mIsParentVerticiallyScrollableViewDisallowingInterceptTouchEvent:Z

    .line 364
    new-instance v0, Lcom/nuance/swype/input/settings/HorizontalListView$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/HorizontalListView$2;-><init>(Lcom/nuance/swype/input/settings/HorizontalListView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapterDataObserver:Landroid/database/DataSetObserver;

    .line 646
    new-instance v0, Lcom/nuance/swype/input/settings/HorizontalListView$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/HorizontalListView$3;-><init>(Lcom/nuance/swype/input/settings/HorizontalListView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDelayedLayout:Ljava/lang/Runnable;

    .line 201
    new-instance v0, Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-direct {v0, p1}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowLeft:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    .line 202
    new-instance v0, Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-direct {v0, p1}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowRight:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    .line 203
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mGestureListener:Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 204
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 205
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->bindGestureDetector()V

    .line 206
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->initView()V

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/settings/HorizontalListView;->retrieveXmlConfiguration(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 208
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 209
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/HorizontalListView;->setVerticalScrollBarEnabled(Z)V

    .line 210
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$dimen;->horizontal_division_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->setDividerWidth(I)V

    .line 211
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/HorizontalListView;->setWillNotDraw(Z)V

    .line 212
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->setIAPBackgroundColor()V

    .line 213
    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/HorizontalListView;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/HorizontalListView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/swype/input/settings/HorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/HorizontalListView;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mBlockTouchAction:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/nuance/swype/input/settings/HorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/HorizontalListView;

    .prologue
    .line 78
    iget v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    return v0
.end method

.method static synthetic access$1200(Lcom/nuance/swype/input/settings/HorizontalListView;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/HorizontalListView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/nuance/swype/input/settings/HorizontalListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/HorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDataChanged:Z

    return p1
.end method

.method static synthetic access$302(Lcom/nuance/swype/input/settings/HorizontalListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/HorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mHasNotifiedRunningLowOnData:Z

    return p1
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/settings/HorizontalListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/HorizontalListView;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->unpressTouchedChild()V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/settings/HorizontalListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/HorizontalListView;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->reset()V

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/settings/HorizontalListView;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/HorizontalListView;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/HorizontalListView;->requestParentListViewToNotInterceptTouchEvents(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/settings/HorizontalListView;Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/HorizontalListView;
    .param p1, "x1"    # Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/HorizontalListView;->setCurrentScrollState(Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/settings/HorizontalListView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/HorizontalListView;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/HorizontalListView;->updateOverscrollAnimation(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/settings/HorizontalListView;II)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/HorizontalListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/settings/HorizontalListView;->getChildIndex(II)I

    move-result v0

    return v0
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "viewPos"    # I

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/HorizontalListView;->getLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 482
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/nuance/swype/input/settings/HorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 483
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/HorizontalListView;->measureChild(Landroid/view/View;)V

    .line 484
    return-void
.end method

.method private bindGestureDetector()V
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lcom/nuance/swype/input/settings/HorizontalListView$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/HorizontalListView$1;-><init>(Lcom/nuance/swype/input/settings/HorizontalListView;)V

    .line 232
    .local v0, "gestureListenerHandler":Landroid/view/View$OnTouchListener;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 233
    return-void
.end method

.method private determineFlingAbsorbVelocity()F
    .locals 2

    .prologue
    .line 635
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 636
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/HorizontalListView$IceCreamSandwichPlus;->getCurrVelocity(Landroid/widget/Scroller;)F

    move-result v0

    .line 641
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_0
.end method

.method private determineIfLowOnData()V
    .locals 2

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRunningOutOfDataListener:Lcom/nuance/swype/input/settings/HorizontalListView$RunningOutOfDataListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRunningOutOfDataThreshold:I

    if-ge v0, v1, :cond_0

    .line 1197
    iget-boolean v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mHasNotifiedRunningLowOnData:Z

    if-nez v0, :cond_0

    .line 1198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mHasNotifiedRunningLowOnData:Z

    .line 1199
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRunningOutOfDataListener:Lcom/nuance/swype/input/settings/HorizontalListView$RunningOutOfDataListener;

    invoke-interface {v0}, Lcom/nuance/swype/input/settings/HorizontalListView$RunningOutOfDataListener;->onRunningOutOfData()V

    .line 1202
    :cond_0
    return-void
.end method

.method private determineMaxX()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 670
    iget v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/settings/HorizontalListView;->isLastItemInAdapter(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 671
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v1

    .line 673
    .local v1, "rightView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 674
    iget v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mMaxX:I

    .line 677
    .local v0, "oldMaxX":I
    iget v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentX:I

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getRenderWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mMaxX:I

    .line 680
    iget v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mMaxX:I

    if-gez v3, :cond_0

    .line 681
    iput v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mMaxX:I

    .line 684
    :cond_0
    iget v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mMaxX:I

    if-eq v3, v0, :cond_1

    .line 685
    const/4 v2, 0x1

    .line 690
    .end local v0    # "oldMaxX":I
    .end local v1    # "rightView":Landroid/view/View;
    :cond_1
    return v2
.end method

.method private drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 969
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 971
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 973
    :cond_0
    return-void
.end method

.method private drawDividers(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 922
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getChildCount()I

    move-result v2

    .line 925
    .local v2, "count":I
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRect:Landroid/graphics/Rect;

    .line 926
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getPaddingTop()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 927
    iget-object v4, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getRenderHeight()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 930
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 932
    add-int/lit8 v4, v2, -0x1

    if-ne v3, v4, :cond_0

    iget v4, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/settings/HorizontalListView;->isLastItemInAdapter(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 933
    :cond_0
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/settings/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 935
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 936
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDividerWidth:I

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 939
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getPaddingLeft()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 940
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getPaddingLeft()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 944
    :cond_1
    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_2

    .line 945
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 949
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 953
    if-nez v3, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getPaddingLeft()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 954
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getPaddingLeft()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 955
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 956
    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 930
    .end local v1    # "child":Landroid/view/View;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 960
    :cond_4
    return-void
.end method

.method private drawEdgeGlow(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 890
    iget-object v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowLeft:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowLeft:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->isEdgeGlowEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 892
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 893
    .local v1, "restoreCount":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getHeight()I

    move-result v0

    .line 895
    .local v0, "height":I
    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v3, v5, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 896
    neg-int v3, v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 898
    iget-object v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowLeft:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getRenderHeight()I

    move-result v4

    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getRenderWidth()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->setSize(II)V

    .line 899
    iget-object v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowLeft:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 900
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->invalidate()V

    .line 903
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 918
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    :cond_1
    :goto_0
    return-void

    .line 904
    :cond_2
    iget-object v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowRight:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowRight:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->isEdgeGlowEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 906
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 907
    .restart local v1    # "restoreCount":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getWidth()I

    move-result v2

    .line 909
    .local v2, "width":I
    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {p1, v3, v5, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 910
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 911
    iget-object v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowRight:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getRenderHeight()I

    move-result v4

    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getRenderWidth()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->setSize(II)V

    .line 912
    iget-object v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowRight:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 913
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->invalidate()V

    .line 916
    :cond_3
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method private fillList(I)V
    .locals 2
    .param p1, "dx"    # I

    .prologue
    .line 696
    const/4 v1, 0x0

    .line 697
    .local v1, "edge":I
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v0

    .line 698
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 703
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/nuance/swype/input/settings/HorizontalListView;->fillListRight(II)V

    .line 706
    const/4 v1, 0x0

    .line 707
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getLeftmostChild()Landroid/view/View;

    move-result-object v0

    .line 708
    if-eqz v0, :cond_1

    .line 709
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 713
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/nuance/swype/input/settings/HorizontalListView;->fillListLeft(II)V

    .line 714
    return-void
.end method

.method private fillListLeft(II)V
    .locals 4
    .param p1, "leftEdge"    # I
    .param p2, "dx"    # I

    .prologue
    .line 774
    :goto_0
    add-int v1, p1, p2

    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDividerWidth:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_2

    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    if-lez v1, :cond_2

    .line 775
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    .line 776
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    iget v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/settings/HorizontalListView;->getRecycledView(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v2, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 777
    .local v0, "child":Landroid/view/View;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/settings/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 780
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    :goto_1
    sub-int/2addr p1, v1

    .line 783
    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDisplayOffset:I

    add-int v1, p1, p2

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    :goto_2
    sub-int v1, v2, v1

    iput v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDisplayOffset:I

    goto :goto_0

    .line 780
    :cond_0
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDividerWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 783
    :cond_1
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDividerWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_2

    .line 785
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private fillListRight(II)V
    .locals 4
    .param p1, "rightEdge"    # I
    .param p2, "dx"    # I

    .prologue
    .line 752
    :goto_0
    add-int v1, p1, p2

    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDividerWidth:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 753
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    .line 756
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    if-gez v1, :cond_0

    .line 757
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    iput v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    .line 761
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    iget v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/settings/HorizontalListView;->getRecycledView(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v2, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 762
    .local v0, "child":Landroid/view/View;
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/settings/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 765
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 768
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->determineIfLowOnData()V

    goto :goto_0

    .line 765
    :cond_1
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDividerWidth:I

    goto :goto_1

    .line 770
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private getChild(I)Landroid/view/View;
    .locals 1
    .param p1, "adapterIndex"    # I

    .prologue
    .line 827
    iget v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    if-gt p1, v0, :cond_0

    .line 828
    iget v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 831
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getChildIndex(II)I
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 844
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getChildCount()I

    move-result v0

    .line 846
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 847
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 848
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 853
    .end local v1    # "index":I
    :goto_1
    return v1

    .line 846
    .restart local v1    # "index":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 853
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 506
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 507
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 509
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 512
    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-object v0
.end method

.method private getLeftmostChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 814
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getRecycledView(I)Landroid/view/View;
    .locals 2
    .param p1, "adapterIndex"    # I

    .prologue
    .line 450
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 452
    .local v0, "itemViewType":I
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->isItemViewTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 456
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getRenderHeight()I
    .locals 2

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getRenderWidth()I
    .locals 2

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getRightmostChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private initView()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 347
    iput v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    .line 348
    iput v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    .line 349
    iput v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDisplayOffset:I

    .line 350
    iput v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentX:I

    .line 351
    iput v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mNextX:I

    .line 352
    const v0, 0x7fffffff

    iput v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mMaxX:I

    .line 353
    sget-object v0, Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->setCurrentScrollState(Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 354
    return-void
.end method

.method private initializeRecycledViewCache(I)V
    .locals 3
    .param p1, "viewTypeCount"    # I

    .prologue
    .line 437
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 438
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    :cond_0
    return-void
.end method

.method private isEdgeGlowEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1315
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1318
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mMaxX:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isItemViewTypeValid(I)Z
    .locals 1
    .param p1, "itemViewType"    # I

    .prologue
    .line 476
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLastItemInAdapter(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 858
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureChild(Landroid/view/View;)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 492
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/HorizontalListView;->getLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 494
    .local v0, "childLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v2, :cond_0

    .line 495
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 499
    .local v1, "childWidthSpec":I
    :goto_0
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->measure(II)V

    .line 500
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mHeightMeasureSpec:I

    .line 501
    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mHeightMeasureSpec:I

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 502
    return-void

    .line 497
    .end local v1    # "childWidthSpec":I
    :cond_0
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "childWidthSpec":I
    goto :goto_0
.end method

.method private positionChildren(I)V
    .locals 10
    .param p1, "dx"    # I

    .prologue
    .line 789
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getChildCount()I

    move-result v2

    .line 791
    .local v2, "childCount":I
    if-lez v2, :cond_0

    .line 792
    iget v8, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDisplayOffset:I

    add-int/2addr v8, p1

    iput v8, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDisplayOffset:I

    .line 793
    iget v5, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDisplayOffset:I

    .line 796
    .local v5, "leftOffset":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 797
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/settings/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 798
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getPaddingLeft()I

    move-result v8

    add-int v4, v5, v8

    .line 799
    .local v4, "left":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getPaddingTop()I

    move-result v7

    .line 800
    .local v7, "top":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int v6, v4, v8

    .line 801
    .local v6, "right":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v7, v8

    .line 804
    .local v0, "bottom":I
    invoke-virtual {v1, v4, v7, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 807
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget v9, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDividerWidth:I

    add-int/2addr v8, v9

    add-int/2addr v5, v8

    .line 796
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 810
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "i":I
    .end local v4    # "left":I
    .end local v5    # "leftOffset":I
    .end local v6    # "right":I
    .end local v7    # "top":I
    :cond_0
    return-void
.end method

.method private recycleView(ILandroid/view/View;)V
    .locals 2
    .param p1, "adapterIndex"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 469
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 470
    .local v0, "itemViewType":I
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->isItemViewTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    invoke-interface {v1, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 473
    :cond_0
    return-void
.end method

.method private releaseEdgeGlow()V
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowLeft:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowLeft:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->onRelease()Z

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowRight:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    if-eqz v0, :cond_1

    .line 1154
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowRight:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->onRelease()Z

    .line 1156
    :cond_1
    return-void
.end method

.method private removeNonVisibleChildren(I)V
    .locals 4
    .param p1, "dx"    # I

    .prologue
    .line 717
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getLeftmostChild()Landroid/view/View;

    move-result-object v0

    .line 720
    .local v0, "child":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    if-gtz v1, :cond_1

    .line 724
    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDisplayOffset:I

    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/settings/HorizontalListView;->isLastItemInAdapter(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    :goto_1
    add-int/2addr v1, v2

    iput v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDisplayOffset:I

    .line 727
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    invoke-direct {p0, v1, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->recycleView(ILandroid/view/View;)V

    .line 730
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 733
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    .line 736
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getLeftmostChild()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 724
    :cond_0
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDividerWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1

    .line 739
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v0

    .line 742
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 743
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    invoke-direct {p0, v1, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->recycleView(ILandroid/view/View;)V

    .line 744
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 745
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    goto :goto_2

    .line 748
    :cond_2
    return-void
.end method

.method private requestParentListViewToNotInterceptTouchEvents(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "disallowIntercept"    # Ljava/lang/Boolean;

    .prologue
    .line 244
    iget-boolean v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mIsParentVerticiallyScrollableViewDisallowingInterceptTouchEvent:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 245
    move-object v0, p0

    .line 247
    .local v0, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 249
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ListView;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ScrollView;

    if-eqz v1, :cond_2

    .line 250
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 251
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mIsParentVerticiallyScrollableViewDisallowingInterceptTouchEvent:Z

    .line 258
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    return-void

    .line 255
    .restart local v0    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method private reset()V
    .locals 0

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->initView()V

    .line 359
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->removeAllViewsInLayout()V

    .line 360
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->requestLayout()V

    .line 361
    return-void
.end method

.method private retrieveXmlConfiguration(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 267
    if-eqz p2, :cond_2

    .line 268
    sget-object v3, Lcom/nuance/swype/input/R$styleable;->HorizontalListView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 271
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/nuance/swype/input/R$styleable;->HorizontalListView_android_divider:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 272
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/HorizontalListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 278
    :cond_0
    sget v3, Lcom/nuance/swype/input/R$styleable;->HorizontalListView_dividerWidth:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 279
    .local v2, "dividerWidth":I
    if-eqz v2, :cond_1

    .line 280
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/HorizontalListView;->setDividerWidth(I)V

    .line 283
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 285
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "dividerWidth":I
    :cond_2
    return-void
.end method

.method private setCurrentScrollState(Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V
    .locals 1
    .param p1, "newScrollState"    # Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentScrollState:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mOnScrollStateChangedListener:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener;

    if-eqz v0, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mOnScrollStateChangedListener:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener;

    invoke-interface {v0, p1}, Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener;->onScrollStateChanged(Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 1264
    :cond_0
    iput-object p1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentScrollState:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    .line 1265
    return-void
.end method

.method public static setHorizontalRTL(Z)V
    .locals 0
    .param p0, "rtl"    # Z

    .prologue
    .line 404
    sput-boolean p0, Lcom/nuance/swype/input/settings/HorizontalListView;->isRTL:Z

    .line 405
    return-void
.end method

.method private setIAPBackgroundColor()V
    .locals 1

    .prologue
    .line 216
    sget-boolean v0, Lcom/nuance/swype/input/ThemeManager;->isInAppPurchaseEnabled:Z

    if-eqz v0, :cond_0

    .line 217
    sget v0, Lcom/nuance/swype/input/settings/ThemesCategory;->theme_color:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->setBackgroundColor(I)V

    .line 219
    :cond_0
    return-void
.end method

.method private unpressTouchedChild()V
    .locals 2

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1036
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->refreshDrawableState()V

    .line 1039
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    .line 1041
    :cond_0
    return-void
.end method

.method private updateOverscrollAnimation(I)V
    .locals 5
    .param p1, "scrolledOffset"    # I

    .prologue
    .line 1273
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowLeft:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowRight:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    if-nez v2, :cond_1

    .line 1308
    :cond_0
    :goto_0
    return-void

    .line 1276
    :cond_1
    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentX:I

    add-int v0, v2, p1

    .line 1279
    .local v0, "nextScrollPosition":I
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1281
    :cond_2
    if-gez v0, :cond_3

    .line 1284
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1287
    .local v1, "overscroll":I
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowLeft:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    int-to-float v3, v1

    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getRenderWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->onPull(F)Z

    .line 1290
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowRight:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1291
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowRight:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->onRelease()Z

    goto :goto_0

    .line 1293
    .end local v1    # "overscroll":I
    :cond_3
    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mMaxX:I

    if-le v0, v2, :cond_0

    .line 1297
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1300
    .restart local v1    # "overscroll":I
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowRight:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    int-to-float v3, v1

    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getRenderWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->onPull(F)Z

    .line 1303
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowLeft:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1304
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowLeft:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->onRelease()Z

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 983
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 984
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/HorizontalListView;->drawEdgeGlow(Landroid/graphics/Canvas;)V

    .line 985
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 991
    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 880
    iget v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 1

    .prologue
    .line 885
    iget v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 605
    .local v0, "horizontalFadingEdgeLength":I
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentX:I

    if-nez v1, :cond_0

    .line 606
    const/4 v1, 0x0

    .line 612
    :goto_0
    return v1

    .line 607
    :cond_0
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentX:I

    if-ge v1, v0, :cond_1

    .line 609
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 612
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 621
    .local v0, "horizontalFadingEdgeLength":I
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentX:I

    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mMaxX:I

    if-ne v1, v2, :cond_0

    .line 622
    const/4 v1, 0x0

    .line 628
    :goto_0
    return v1

    .line 623
    :cond_0
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mMaxX:I

    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentX:I

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_1

    .line 625
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mMaxX:I

    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 628
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentlySelectedAdapterIndex:I

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getChild(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 1001
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1002
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1005
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mBlockTouchAction:Z

    .line 1008
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1009
    sget-object v1, Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/settings/HorizontalListView;->setCurrentScrollState(Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 1011
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->unpressTouchedChild()V

    .line 1013
    iget-boolean v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mBlockTouchAction:Z

    if-nez v1, :cond_1

    .line 1015
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v1, v3}, Lcom/nuance/swype/input/settings/HorizontalListView;->getChildIndex(II)I

    move-result v0

    .line 1016
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 1018
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    .line 1020
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1022
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1023
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->refreshDrawableState()V

    .line 1028
    .end local v0    # "index":I
    :cond_1
    return v2

    .line 1005
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 977
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDraw(Landroid/graphics/Canvas;)V

    .line 978
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/HorizontalListView;->drawDividers(Landroid/graphics/Canvas;)V

    .line 979
    return-void
.end method

.method protected onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v2, 0x0

    .line 994
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mNextX:I

    neg-float v3, p3

    float-to-int v3, v3

    iget v6, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mMaxX:I

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 995
    sget-object v0, Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_FLING:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->setCurrentScrollState(Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 996
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->requestLayout()V

    .line 997
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 518
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 520
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->invalidate()V

    .line 527
    iget-boolean v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDataChanged:Z

    if-eqz v2, :cond_2

    .line 528
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentX:I

    .line 529
    .local v1, "oldCurrentX":I
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->initView()V

    .line 530
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->removeAllViewsInLayout()V

    .line 531
    iput v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mNextX:I

    .line 532
    iput-boolean v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDataChanged:Z

    .line 536
    .end local v1    # "oldCurrentX":I
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRestoreX:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 537
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRestoreX:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mNextX:I

    .line 538
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRestoreX:Ljava/lang/Integer;

    .line 542
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 544
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mNextX:I

    .line 548
    :cond_4
    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mNextX:I

    if-gez v2, :cond_7

    .line 549
    iput v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mNextX:I

    .line 552
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowLeft:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 553
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowLeft:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->determineFlingAbsorbVelocity()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->onAbsorb(I)Z

    .line 556
    :cond_5
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v2, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 557
    sget-object v2, Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/settings/HorizontalListView;->setCurrentScrollState(Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 572
    :cond_6
    :goto_1
    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentX:I

    iget v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mNextX:I

    sub-int v0, v2, v3

    .line 573
    .local v0, "dx":I
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->removeNonVisibleChildren(I)V

    .line 574
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->fillList(I)V

    .line 575
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->positionChildren(I)V

    .line 578
    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mNextX:I

    iput v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentX:I

    .line 581
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->determineMaxX()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 583
    invoke-virtual/range {p0 .. p5}, Lcom/nuance/swype/input/settings/HorizontalListView;->onLayout(ZIIII)V

    goto :goto_0

    .line 558
    .end local v0    # "dx":I
    :cond_7
    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mNextX:I

    iget v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mMaxX:I

    if-le v2, v3, :cond_6

    .line 560
    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mMaxX:I

    iput v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mNextX:I

    .line 563
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowRight:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 564
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowRight:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->determineFlingAbsorbVelocity()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->onAbsorb(I)Z

    .line 567
    :cond_8
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v2, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 568
    sget-object v2, Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/settings/HorizontalListView;->setCurrentScrollState(Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    goto :goto_1

    .line 588
    .restart local v0    # "dx":I
    :cond_9
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 590
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentScrollState:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    sget-object v3, Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_FLING:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    if-ne v2, v3, :cond_0

    .line 591
    sget-object v2, Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/settings/HorizontalListView;->setCurrentScrollState(Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    goto/16 :goto_0

    .line 596
    :cond_a
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDelayedLayout:Ljava/lang/Runnable;

    const-wide/16 v4, 0xa

    invoke-virtual {p0, v2, v4, v5}, Lcom/nuance/swype/input/settings/HorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 655
    iget v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mHeightMeasureSpec:I

    if-le v0, p2, :cond_0

    .line 656
    iget p2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mHeightMeasureSpec:I

    .line 658
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onMeasure(II)V

    .line 659
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 302
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 303
    check-cast v0, Landroid/os/Bundle;

    .line 306
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "BUNDLE_ID_CURRENT_X"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRestoreX:Ljava/lang/Integer;

    .line 309
    const-string v1, "BUNDLE_ID_PARENT_STATE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 311
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 289
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 292
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "BUNDLE_ID_PARENT_STATE"

    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 295
    const-string v1, "BUNDLE_ID_CURRENT_X"

    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentX:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 297
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 1126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1128
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1129
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->setCurrentScrollState(Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 1133
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->requestParentListViewToNotInterceptTouchEvents(Ljava/lang/Boolean;)V

    .line 1135
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->releaseEdgeGlow()V

    .line 1144
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1136
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1137
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->unpressTouchedChild()V

    .line 1138
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->releaseEdgeGlow()V

    .line 1141
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->requestParentListViewToNotInterceptTouchEvents(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public scrollTo(I)V
    .locals 4
    .param p1, "x"    # I

    .prologue
    const/4 v3, 0x0

    .line 873
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mNextX:I

    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mNextX:I

    sub-int v2, p1, v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 874
    sget-object v0, Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_FLING:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->setCurrentScrollState(Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 875
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->requestLayout()V

    .line 876
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 78
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapterDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 413
    :cond_0
    if-eqz p1, :cond_1

    .line 415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mHasNotifiedRunningLowOnData:Z

    .line 417
    iput-object p1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 418
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapterDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->initializeRecycledViewCache(I)V

    .line 422
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->reset()V

    .line 423
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 321
    if-eqz p1, :cond_0

    .line 322
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->setDividerWidth(I)V

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->setDividerWidth(I)V

    goto :goto_0
.end method

.method public setDividerWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 335
    sget-boolean v0, Lcom/nuance/swype/input/settings/HorizontalListView;->isRTL:Z

    if-eqz v0, :cond_0

    .line 336
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDividerWidth:I

    .line 342
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->requestLayout()V

    .line 343
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->invalidate()V

    .line 344
    return-void

    .line 338
    :cond_0
    iput p1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDividerWidth:I

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1211
    iput-object p1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1212
    return-void
.end method

.method public setOnScrollStateChangedListener(Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener;

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mOnScrollStateChangedListener:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener;

    .line 1252
    return-void
.end method

.method public setRunningOutOfDataListener(Lcom/nuance/swype/input/settings/HorizontalListView$RunningOutOfDataListener;I)V
    .locals 0
    .param p1, "listener"    # Lcom/nuance/swype/input/settings/HorizontalListView$RunningOutOfDataListener;
    .param p2, "numberOfItemsLeftConsideredLow"    # I

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRunningOutOfDataListener:Lcom/nuance/swype/input/settings/HorizontalListView$RunningOutOfDataListener;

    .line 1176
    iput p2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRunningOutOfDataThreshold:I

    .line 1177
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 395
    iput p1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentlySelectedAdapterIndex:I

    .line 396
    return-void
.end method
