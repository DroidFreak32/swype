.class public Lcom/nuance/swype/input/settings/HorizontalListView;
.super Landroid/widget/AdapterView;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/HorizontalListView$IceCreamSandwichPlus;,
        Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener;,
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

.field private static final INSERT_AT_END_OF_LIST:I = -0x1

.field private static final INSERT_AT_START_OF_LIST:I

.field private static isRTL:Z


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

.field private mHeightMeasureSpec:I

.field private mIsParentVerticiallyScrollableViewDisallowingInterceptTouchEvent:Z

.field private mLeftViewAdapterIndex:I

.field private mMaxX:I

.field protected mNextX:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

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

.field private mViewBeingTouched:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 146
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nuance/swype/input/settings/HorizontalListView;->isRTL:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 181
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    .line 109
    iput-boolean v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDataChanged:Z

    .line 112
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRect:Landroid/graphics/Rect;

    .line 115
    iput-object v4, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    .line 118
    iput v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDividerWidth:I

    .line 121
    iput-object v4, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 130
    iput-object v4, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRestoreX:Ljava/lang/Integer;

    .line 134
    const v1, 0x7fffffff

    iput v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mMaxX:I

    .line 152
    sget-object v1, Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    iput-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentScrollState:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    .line 169
    iput-boolean v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mBlockTouchAction:Z

    .line 173
    iput-boolean v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mIsParentVerticiallyScrollableViewDisallowingInterceptTouchEvent:Z

    .line 351
    new-instance v1, Lcom/nuance/swype/input/settings/HorizontalListView$2;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/settings/HorizontalListView$2;-><init>(Lcom/nuance/swype/input/settings/HorizontalListView;)V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapterDataObserver:Landroid/database/DataSetObserver;

    .line 628
    new-instance v1, Lcom/nuance/swype/input/settings/HorizontalListView$3;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/settings/HorizontalListView$3;-><init>(Lcom/nuance/swype/input/settings/HorizontalListView;)V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDelayedLayout:Ljava/lang/Runnable;

    .line 182
    new-instance v1, Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-direct {v1, p1}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowLeft:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    .line 183
    new-instance v1, Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-direct {v1, p1}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowRight:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    .line 185
    new-instance v0, Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;

    invoke-direct {v0, p0, v4}, Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;-><init>(Lcom/nuance/swype/input/settings/HorizontalListView;Lcom/nuance/swype/input/settings/HorizontalListView$1;)V

    .line 186
    .local v0, "gestureListener":Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 187
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 188
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->bindGestureDetector()V

    .line 189
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->initView()V

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/settings/HorizontalListView;->retrieveXmlConfiguration(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 191
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/HorizontalListView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 192
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/settings/HorizontalListView;->setVerticalScrollBarEnabled(Z)V

    .line 193
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$dimen;->horizontal_division_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/HorizontalListView;->setDividerWidth(I)V

    .line 194
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/settings/HorizontalListView;->setWillNotDraw(Z)V

    .line 195
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->setIAPBackgroundColor()V

    .line 196
    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/HorizontalListView;)Landroid/view/GestureDetector;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/HorizontalListView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/swype/input/settings/HorizontalListView;)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/HorizontalListView;

    .prologue
    .line 77
    iget v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    return v0
.end method

.method static synthetic access$1100(Lcom/nuance/swype/input/settings/HorizontalListView;)Landroid/view/View$OnClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/HorizontalListView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/nuance/swype/input/settings/HorizontalListView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/HorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDataChanged:Z

    return p1
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/settings/HorizontalListView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/HorizontalListView;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->unpressTouchedChild()V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/settings/HorizontalListView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/HorizontalListView;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->reset()V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/settings/HorizontalListView;Ljava/lang/Boolean;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/HorizontalListView;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/HorizontalListView;->requestParentListViewToNotInterceptTouchEvents(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/settings/HorizontalListView;Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/HorizontalListView;
    .param p1, "x1"    # Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/HorizontalListView;->setCurrentScrollState(Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/settings/HorizontalListView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/HorizontalListView;
    .param p1, "x1"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/HorizontalListView;->updateOverscrollAnimation(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/settings/HorizontalListView;II)I
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/HorizontalListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/settings/HorizontalListView;->getChildIndex(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/settings/HorizontalListView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/HorizontalListView;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mBlockTouchAction:Z

    return v0
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "viewPos"    # I

    .prologue
    .line 465
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/HorizontalListView;->getLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 466
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/nuance/swype/input/settings/HorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 467
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/HorizontalListView;->measureChild(Landroid/view/View;)V

    .line 468
    return-void
.end method

.method private bindGestureDetector()V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Lcom/nuance/swype/input/settings/HorizontalListView$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/HorizontalListView$1;-><init>(Lcom/nuance/swype/input/settings/HorizontalListView;)V

    .line 214
    .local v0, "gestureListenerHandler":Landroid/view/View$OnTouchListener;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 215
    return-void
.end method

.method private determineFlingAbsorbVelocity()F
    .registers 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/HorizontalListView$IceCreamSandwichPlus;->getCurrVelocity(Landroid/widget/Scroller;)F

    move-result v0

    return v0
.end method

.method private determineMaxX()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 654
    iget v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/settings/HorizontalListView;->isLastItemInAdapter(I)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 655
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v1

    .line 657
    .local v1, "rightView":Landroid/view/View;
    if-eqz v1, :cond_2f

    .line 658
    iget v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mMaxX:I

    .line 661
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

    .line 664
    iget v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mMaxX:I

    if-gez v3, :cond_2a

    .line 665
    iput v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mMaxX:I

    .line 668
    :cond_2a
    iget v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mMaxX:I

    if-eq v3, v0, :cond_2f

    .line 669
    const/4 v2, 0x1

    .line 674
    .end local v0    # "oldMaxX":I
    .end local v1    # "rightView":Landroid/view/View;
    :cond_2f
    return v2
.end method

.method private drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 965
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    .line 966
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 967
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 969
    :cond_e
    return-void
.end method

.method private drawDividers(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getChildCount()I

    move-result v2

    .line 920
    .local v2, "count":I
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRect:Landroid/graphics/Rect;

    .line 921
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getPaddingTop()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 922
    iget-object v4, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getRenderHeight()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 925
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    if-ge v3, v2, :cond_84

    .line 927
    add-int/lit8 v4, v2, -0x1

    if-ne v3, v4, :cond_2a

    iget v4, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/settings/HorizontalListView;->isLastItemInAdapter(I)Z

    move-result v4

    if-nez v4, :cond_81

    .line 928
    :cond_2a
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/settings/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 930
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 931
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDividerWidth:I

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 934
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getPaddingLeft()I

    move-result v5

    if-ge v4, v5, :cond_4b

    .line 935
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getPaddingLeft()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 939
    :cond_4b
    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_63

    .line 940
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 944
    :cond_63
    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 949
    if-nez v3, :cond_81

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getPaddingLeft()I

    move-result v5

    if-le v4, v5, :cond_81

    .line 950
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getPaddingLeft()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 951
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 952
    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 925
    .end local v1    # "child":Landroid/view/View;
    :cond_81
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 956
    :cond_84
    return-void
.end method

.method private drawEdgeGlow(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 882
    iget-object v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowLeft:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    if-eqz v3, :cond_46

    iget-object v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowLeft:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_46

    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->isEdgeGlowEnabled()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 885
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 886
    .local v1, "restoreCount":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getHeight()I

    move-result v0

    .line 888
    .local v0, "height":I
    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v3, v5, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 889
    neg-int v3, v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 891
    iget-object v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowLeft:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getRenderHeight()I

    move-result v4

    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getRenderWidth()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->setSize(II)V

    .line 892
    iget-object v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowLeft:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 893
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->invalidate()V

    .line 896
    :cond_42
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 912
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    :cond_45
    :goto_45
    return-void

    .line 897
    :cond_46
    iget-object v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowRight:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    if-eqz v3, :cond_45

    iget-object v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowRight:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_45

    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->isEdgeGlowEnabled()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 900
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 901
    .restart local v1    # "restoreCount":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getWidth()I

    move-result v2

    .line 903
    .local v2, "width":I
    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {p1, v3, v5, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 904
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 905
    iget-object v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowRight:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getRenderHeight()I

    move-result v4

    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getRenderWidth()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->setSize(II)V

    .line 906
    iget-object v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowRight:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 907
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->invalidate()V

    .line 910
    :cond_87
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_45
.end method

.method private fillList(I)V
    .registers 4
    .param p1, "dx"    # I

    .prologue
    .line 680
    const/4 v1, 0x0

    .line 681
    .local v1, "edge":I
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v0

    .line 682
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_b

    .line 683
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 687
    :cond_b
    invoke-direct {p0, v1, p1}, Lcom/nuance/swype/input/settings/HorizontalListView;->fillListRight(II)V

    .line 690
    const/4 v1, 0x0

    .line 691
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getLeftmostChild()Landroid/view/View;

    move-result-object v0

    .line 692
    if-eqz v0, :cond_19

    .line 693
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 697
    :cond_19
    invoke-direct {p0, v1, p1}, Lcom/nuance/swype/input/settings/HorizontalListView;->fillListLeft(II)V

    .line 698
    return-void
.end method

.method private fillListLeft(II)V
    .registers 7
    .param p1, "leftEdge"    # I
    .param p2, "dx"    # I

    .prologue
    .line 763
    :goto_0
    add-int v1, p1, p2

    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDividerWidth:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_4b

    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    if-lez v1, :cond_4b

    .line 764
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    .line 765
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    iget v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    .line 766
    invoke-direct {p0, v3}, Lcom/nuance/swype/input/settings/HorizontalListView;->getRecycledView(I)Landroid/view/View;

    move-result-object v3

    .line 765
    invoke-interface {v1, v2, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 767
    .local v0, "child":Landroid/view/View;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/settings/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 770
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    if-nez v1, :cond_3b

    .line 771
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    :goto_2b
    sub-int/2addr p1, v1

    .line 774
    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDisplayOffset:I

    add-int v1, p1, p2

    if-nez v1, :cond_43

    .line 775
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    :goto_36
    sub-int v1, v2, v1

    iput v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDisplayOffset:I

    goto :goto_0

    .line 771
    :cond_3b
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDividerWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_2b

    .line 775
    :cond_43
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDividerWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_36

    .line 777
    .end local v0    # "child":Landroid/view/View;
    :cond_4b
    return-void
.end method

.method private fillListRight(II)V
    .registers 7
    .param p1, "rightEdge"    # I
    .param p2, "dx"    # I

    .prologue
    .line 739
    :goto_0
    add-int v1, p1, p2

    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDividerWidth:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_46

    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 740
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 741
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    .line 745
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    if-gez v1, :cond_25

    .line 746
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    iput v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    .line 750
    :cond_25
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    iget v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    .line 751
    invoke-direct {p0, v3}, Lcom/nuance/swype/input/settings/HorizontalListView;->getRecycledView(I)Landroid/view/View;

    move-result-object v3

    .line 750
    invoke-interface {v1, v2, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 752
    .local v0, "child":Landroid/view/View;
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/settings/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 756
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    if-nez v1, :cond_43

    const/4 v1, 0x0

    :goto_3c
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 758
    goto :goto_0

    .line 756
    :cond_43
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDividerWidth:I

    goto :goto_3c

    .line 759
    .end local v0    # "child":Landroid/view/View;
    :cond_46
    return-void
.end method

.method private getChild(I)Landroid/view/View;
    .registers 3
    .param p1, "adapterIndex"    # I

    .prologue
    .line 819
    iget v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    if-lt p1, v0, :cond_11

    iget v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    if-gt p1, v0, :cond_11

    .line 820
    iget v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 823
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private getChildIndex(II)I
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 836
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getChildCount()I

    move-result v0

    .line 838
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_5
    if-ge v1, v0, :cond_1c

    .line 839
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 840
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 845
    .end local v1    # "index":I
    :goto_18
    return v1

    .line 838
    .restart local v1    # "index":I
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 845
    :cond_1c
    const/4 v1, -0x1

    goto :goto_18
.end method

.method private getLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .registers 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 490
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 491
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_d

    .line 494
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 498
    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_d
    return-object v0
.end method

.method private getLeftmostChild()Landroid/view/View;
    .registers 2

    .prologue
    .line 806
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getRecycledView(I)Landroid/view/View;
    .registers 4
    .param p1, "adapterIndex"    # I

    .prologue
    .line 434
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 436
    .local v0, "itemViewType":I
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->isItemViewTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 437
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 440
    :goto_1a
    return-object v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method private getRenderHeight()I
    .registers 3

    .prologue
    .line 855
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
    .registers 3

    .prologue
    .line 860
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
    .registers 2

    .prologue
    .line 811
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private initView()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 333
    iput v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    .line 334
    iput v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    .line 335
    iput v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDisplayOffset:I

    .line 336
    iput v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentX:I

    .line 337
    iput v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mNextX:I

    .line 338
    const v0, 0x7fffffff

    iput v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mMaxX:I

    .line 339
    sget-object v0, Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->setCurrentScrollState(Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 340
    return-void
.end method

.method private initializeRecycledViewCache(I)V
    .registers 5
    .param p1, "viewTypeCount"    # I

    .prologue
    .line 421
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 422
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, p1, :cond_15

    .line 423
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 425
    :cond_15
    return-void
.end method

.method private isEdgeGlowEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1231
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1236
    :cond_d
    :goto_d
    return v0

    :cond_e
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mMaxX:I

    if-lez v1, :cond_d

    const/4 v0, 0x1

    goto :goto_d
.end method

.method private isItemViewTypeValid(I)Z
    .registers 3
    .param p1, "itemViewType"    # I

    .prologue
    .line 460
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isLastItemInAdapter(I)Z
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 850
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private measureChild(Landroid/view/View;)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 476
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/HorizontalListView;->getLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 478
    .local v0, "childLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v2, :cond_24

    .line 479
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 483
    .local v1, "childWidthSpec":I
    :goto_11
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->measure(II)V

    .line 484
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mHeightMeasureSpec:I

    .line 485
    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mHeightMeasureSpec:I

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 486
    return-void

    .line 481
    .end local v1    # "childWidthSpec":I
    :cond_24
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "childWidthSpec":I
    goto :goto_11
.end method

.method private positionChildren(I)V
    .registers 12
    .param p1, "dx"    # I

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getChildCount()I

    move-result v2

    .line 783
    .local v2, "childCount":I
    if-lez v2, :cond_38

    .line 784
    iget v8, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDisplayOffset:I

    add-int/2addr v8, p1

    iput v8, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDisplayOffset:I

    .line 785
    iget v5, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDisplayOffset:I

    .line 788
    .local v5, "leftOffset":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v2, :cond_38

    .line 789
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/settings/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 790
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getPaddingLeft()I

    move-result v8

    add-int v4, v5, v8

    .line 791
    .local v4, "left":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getPaddingTop()I

    move-result v7

    .line 792
    .local v7, "top":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int v6, v4, v8

    .line 793
    .local v6, "right":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v7, v8

    .line 796
    .local v0, "bottom":I
    invoke-virtual {v1, v4, v7, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 799
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget v9, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDividerWidth:I

    add-int/2addr v8, v9

    add-int/2addr v5, v8

    .line 788
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 802
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "i":I
    .end local v4    # "left":I
    .end local v5    # "leftOffset":I
    .end local v6    # "right":I
    .end local v7    # "top":I
    :cond_38
    return-void
.end method

.method private recycleView(ILandroid/view/View;)V
    .registers 5
    .param p1, "adapterIndex"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 453
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 454
    .local v0, "itemViewType":I
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->isItemViewTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 455
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    invoke-interface {v1, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 457
    :cond_17
    return-void
.end method

.method private releaseEdgeGlow()V
    .registers 2

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowLeft:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    if-eqz v0, :cond_9

    .line 1127
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowLeft:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->onRelease()Z

    .line 1130
    :cond_9
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowRight:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    if-eqz v0, :cond_12

    .line 1131
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowRight:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->onRelease()Z

    .line 1133
    :cond_12
    return-void
.end method

.method private removeNonVisibleChildren(I)V
    .registers 6
    .param p1, "dx"    # I

    .prologue
    .line 701
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getLeftmostChild()Landroid/view/View;

    move-result-object v0

    .line 704
    .local v0, "child":Landroid/view/View;
    :goto_4
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    if-gtz v1, :cond_39

    .line 710
    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDisplayOffset:I

    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/settings/HorizontalListView;->isLastItemInAdapter(I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 711
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    :goto_1b
    add-int/2addr v1, v2

    iput v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDisplayOffset:I

    .line 714
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    invoke-direct {p0, v1, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->recycleView(ILandroid/view/View;)V

    .line 717
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 720
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    .line 723
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getLeftmostChild()Landroid/view/View;

    move-result-object v0

    goto :goto_4

    .line 711
    :cond_31
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDividerWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1b

    .line 726
    :cond_39
    :goto_39
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v0

    .line 729
    if-eqz v0, :cond_59

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_59

    .line 730
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    invoke-direct {p0, v1, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->recycleView(ILandroid/view/View;)V

    .line 731
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 732
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    goto :goto_39

    .line 735
    :cond_59
    return-void
.end method

.method private requestParentListViewToNotInterceptTouchEvents(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "disallowIntercept"    # Ljava/lang/Boolean;

    .prologue
    .line 228
    iget-boolean v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mIsParentVerticiallyScrollableViewDisallowingInterceptTouchEvent:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_32

    .line 229
    move-object v0, p0

    .line 231
    .local v0, "view":Landroid/view/View;
    :goto_9
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_32

    .line 233
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ListView;

    if-nez v1, :cond_21

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ScrollView;

    if-eqz v1, :cond_33

    .line 234
    :cond_21
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 235
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mIsParentVerticiallyScrollableViewDisallowingInterceptTouchEvent:Z

    .line 242
    .end local v0    # "view":Landroid/view/View;
    :cond_32
    return-void

    .line 239
    .restart local v0    # "view":Landroid/view/View;
    :cond_33
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_9
.end method

.method private reset()V
    .registers 1

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->initView()V

    .line 346
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->removeAllViewsInLayout()V

    .line 347
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->requestLayout()V

    .line 348
    return-void
.end method

.method private retrieveXmlConfiguration(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 251
    if-eqz p2, :cond_22

    .line 252
    sget-object v3, Lcom/nuance/swype/input/R$styleable;->HorizontalListView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 255
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/nuance/swype/input/R$styleable;->HorizontalListView_android_divider:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 256
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_13

    .line 259
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/HorizontalListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 263
    :cond_13
    sget v3, Lcom/nuance/swype/input/R$styleable;->HorizontalListView_dividerWidth:I

    const/4 v4, 0x0

    .line 264
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 265
    .local v2, "dividerWidth":I
    if-eqz v2, :cond_1f

    .line 266
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/HorizontalListView;->setDividerWidth(I)V

    .line 269
    :cond_1f
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 271
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "dividerWidth":I
    :cond_22
    return-void
.end method

.method private setCurrentScrollState(Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V
    .registers 2
    .param p1, "newScrollState"    # Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    .prologue
    .line 1177
    iput-object p1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentScrollState:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    .line 1178
    return-void
.end method

.method public static setHorizontalRTL(Z)V
    .registers 1
    .param p0, "rtl"    # Z

    .prologue
    .line 389
    sput-boolean p0, Lcom/nuance/swype/input/settings/HorizontalListView;->isRTL:Z

    .line 390
    return-void
.end method

.method private setIAPBackgroundColor()V
    .registers 2

    .prologue
    .line 199
    const v0, -0x121213

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->setBackgroundColor(I)V

    .line 200
    return-void
.end method

.method private unpressTouchedChild()V
    .registers 3

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 1032
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1033
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->refreshDrawableState()V

    .line 1036
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    .line 1038
    :cond_10
    return-void
.end method

.method private updateOverscrollAnimation(I)V
    .registers 7
    .param p1, "scrolledOffset"    # I

    .prologue
    .line 1186
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowLeft:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowRight:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    if-nez v2, :cond_9

    .line 1224
    :cond_8
    :goto_8
    return-void

    .line 1191
    :cond_9
    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentX:I

    add-int v0, v2, p1

    .line 1195
    .local v0, "nextScrollPosition":I
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1197
    :cond_19
    if-gez v0, :cond_39

    .line 1200
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1203
    .local v1, "overscroll":I
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowLeft:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    int-to-float v3, v1

    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getRenderWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->onPull(F)Z

    .line 1206
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowRight:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1207
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowRight:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->onRelease()Z

    goto :goto_8

    .line 1209
    .end local v1    # "overscroll":I
    :cond_39
    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mMaxX:I

    if-le v0, v2, :cond_8

    .line 1213
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1216
    .restart local v1    # "overscroll":I
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowRight:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    int-to-float v3, v1

    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getRenderWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->onPull(F)Z

    .line 1219
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowLeft:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1220
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowLeft:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->onRelease()Z

    goto :goto_8
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 979
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 980
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/HorizontalListView;->drawEdgeGlow(Landroid/graphics/Canvas;)V

    .line 981
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .registers 2
    .param p1, "pressed"    # Z

    .prologue
    .line 987
    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .registers 2

    .prologue
    .line 872
    iget v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mLeftViewAdapterIndex:I

    return v0
.end method

.method public getLastVisiblePosition()I
    .registers 2

    .prologue
    .line 877
    iget v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRightViewAdapterIndex:I

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .registers 4

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 592
    .local v0, "horizontalFadingEdgeLength":I
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentX:I

    if-nez v1, :cond_a

    .line 593
    const/4 v1, 0x0

    .line 600
    :goto_9
    return v1

    .line 594
    :cond_a
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentX:I

    if-ge v1, v0, :cond_14

    .line 597
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_9

    .line 600
    :cond_14
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_9
.end method

.method protected getRightFadingEdgeStrength()F
    .registers 4

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 609
    .local v0, "horizontalFadingEdgeLength":I
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentX:I

    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mMaxX:I

    if-ne v1, v2, :cond_c

    .line 610
    const/4 v1, 0x0

    .line 618
    :goto_b
    return v1

    .line 611
    :cond_c
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mMaxX:I

    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentX:I

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_1c

    .line 614
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mMaxX:I

    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_b

    .line 618
    :cond_1c
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_b
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 2

    .prologue
    .line 385
    iget v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentlySelectedAdapterIndex:I

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getChild(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDown(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 998
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_e

    .line 999
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1002
    :cond_e
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_4d

    move v1, v2

    :goto_17
    iput-boolean v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mBlockTouchAction:Z

    .line 1005
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1006
    sget-object v1, Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/settings/HorizontalListView;->setCurrentScrollState(Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 1008
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->unpressTouchedChild()V

    .line 1010
    iget-boolean v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mBlockTouchAction:Z

    if-nez v1, :cond_4c

    .line 1012
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v1, v3}, Lcom/nuance/swype/input/settings/HorizontalListView;->getChildIndex(II)I

    move-result v0

    .line 1013
    .local v0, "index":I
    if-ltz v0, :cond_4c

    .line 1015
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    .line 1017
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    if-eqz v1, :cond_4c

    .line 1019
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1020
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->refreshDrawableState()V

    .line 1025
    .end local v0    # "index":I
    :cond_4c
    return v2

    .line 1002
    :cond_4d
    const/4 v1, 0x0

    goto :goto_17
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 973
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDraw(Landroid/graphics/Canvas;)V

    .line 974
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/HorizontalListView;->drawDividers(Landroid/graphics/Canvas;)V

    .line 975
    return-void
.end method

.method protected onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 14
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v2, 0x0

    .line 991
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

    .line 992
    sget-object v0, Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_FLING:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->setCurrentScrollState(Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 993
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->requestLayout()V

    .line 994
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 12
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

    .line 504
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 506
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_a

    .line 585
    :cond_9
    :goto_9
    return-void

    .line 510
    :cond_a
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->invalidate()V

    .line 513
    iget-boolean v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDataChanged:Z

    if-eqz v2, :cond_1d

    .line 514
    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentX:I

    .line 515
    .local v1, "oldCurrentX":I
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->initView()V

    .line 516
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->removeAllViewsInLayout()V

    .line 517
    iput v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mNextX:I

    .line 518
    iput-boolean v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDataChanged:Z

    .line 522
    .end local v1    # "oldCurrentX":I
    :cond_1d
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRestoreX:Ljava/lang/Integer;

    if-eqz v2, :cond_2c

    .line 523
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRestoreX:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mNextX:I

    .line 524
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRestoreX:Ljava/lang/Integer;

    .line 528
    :cond_2c
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 530
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mNextX:I

    .line 534
    :cond_3c
    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mNextX:I

    if-gez v2, :cond_7b

    .line 535
    iput v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mNextX:I

    .line 538
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowLeft:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 539
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowLeft:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->determineFlingAbsorbVelocity()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->onAbsorb(I)Z

    .line 542
    :cond_54
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v2, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 543
    sget-object v2, Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/settings/HorizontalListView;->setCurrentScrollState(Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 559
    :cond_5e
    :goto_5e
    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentX:I

    iget v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mNextX:I

    sub-int v0, v2, v3

    .line 560
    .local v0, "dx":I
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->removeNonVisibleChildren(I)V

    .line 561
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->fillList(I)V

    .line 562
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->positionChildren(I)V

    .line 565
    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mNextX:I

    iput v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentX:I

    .line 568
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->determineMaxX()Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 570
    invoke-virtual/range {p0 .. p5}, Lcom/nuance/swype/input/settings/HorizontalListView;->onLayout(ZIIII)V

    goto :goto_9

    .line 544
    .end local v0    # "dx":I
    :cond_7b
    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mNextX:I

    iget v3, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mMaxX:I

    if-le v2, v3, :cond_5e

    .line 547
    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mMaxX:I

    iput v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mNextX:I

    .line 550
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowRight:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_97

    .line 551
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mEdgeGlowRight:Lcom/nuance/swype/input/settings/EdgeEffectCompat;

    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->determineFlingAbsorbVelocity()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/settings/EdgeEffectCompat;->onAbsorb(I)Z

    .line 554
    :cond_97
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v2, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 555
    sget-object v2, Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/settings/HorizontalListView;->setCurrentScrollState(Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    goto :goto_5e

    .line 575
    .restart local v0    # "dx":I
    :cond_a2
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_b7

    .line 577
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentScrollState:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    sget-object v3, Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_FLING:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    if-ne v2, v3, :cond_9

    .line 578
    sget-object v2, Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/settings/HorizontalListView;->setCurrentScrollState(Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    goto/16 :goto_9

    .line 583
    :cond_b7
    iget-object v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDelayedLayout:Ljava/lang/Runnable;

    const-wide/16 v4, 0xa

    invoke-virtual {p0, v2, v4, v5}, Lcom/nuance/swype/input/settings/HorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_9
.end method

.method protected onMeasure(II)V
    .registers 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 637
    iget v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mHeightMeasureSpec:I

    if-le v0, p2, :cond_6

    .line 638
    iget p2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mHeightMeasureSpec:I

    .line 640
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onMeasure(II)V

    .line 641
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 288
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_1e

    move-object v0, p1

    .line 289
    check-cast v0, Landroid/os/Bundle;

    .line 292
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "BUNDLE_ID_CURRENT_X"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mRestoreX:Ljava/lang/Integer;

    .line 295
    const-string/jumbo v1, "BUNDLE_ID_PARENT_STATE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 297
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1e
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 275
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 278
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "BUNDLE_ID_PARENT_STATE"

    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 281
    const-string/jumbo v1, "BUNDLE_ID_CURRENT_X"

    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentX:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 283
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 1103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    .line 1105
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1106
    :cond_14
    sget-object v0, Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->setCurrentScrollState(Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 1110
    :cond_19
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->requestParentListViewToNotInterceptTouchEvents(Ljava/lang/Boolean;)V

    .line 1112
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->releaseEdgeGlow()V

    .line 1121
    :cond_23
    :goto_23
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1113
    :cond_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_23

    .line 1114
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->unpressTouchedChild()V

    .line 1115
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->releaseEdgeGlow()V

    .line 1118
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->requestParentListViewToNotInterceptTouchEvents(Ljava/lang/Boolean;)V

    goto :goto_23
.end method

.method public scrollTo(I)V
    .registers 6
    .param p1, "x"    # I

    .prologue
    const/4 v3, 0x0

    .line 865
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    iget v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mNextX:I

    iget v2, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mNextX:I

    sub-int v2, p1, v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 866
    sget-object v0, Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_FLING:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->setCurrentScrollState(Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 867
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->requestLayout()V

    .line 868
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    .prologue
    .line 77
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 395
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapterDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 398
    :cond_b
    if-eqz p1, :cond_1f

    .line 401
    iput-object p1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 402
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapterDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 403
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->initializeRecycledViewCache(I)V

    .line 405
    :cond_1f
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->reset()V

    .line 406
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 307
    if-eqz p1, :cond_c

    .line 308
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->setDividerWidth(I)V

    .line 312
    :goto_b
    return-void

    .line 310
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->setDividerWidth(I)V

    goto :goto_b
.end method

.method public setDividerWidth(I)V
    .registers 3
    .param p1, "width"    # I

    .prologue
    .line 321
    sget-boolean v0, Lcom/nuance/swype/input/settings/HorizontalListView;->isRTL:Z

    if-eqz v0, :cond_e

    .line 322
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDividerWidth:I

    .line 328
    :goto_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->requestLayout()V

    .line 329
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/HorizontalListView;->invalidate()V

    .line 330
    return-void

    .line 324
    :cond_e
    iput p1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mDividerWidth:I

    goto :goto_7
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1144
    iput-object p1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1145
    return-void
.end method

.method public setSelection(I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 380
    iput p1, p0, Lcom/nuance/swype/input/settings/HorizontalListView;->mCurrentlySelectedAdapterIndex:I

    .line 381
    return-void
.end method
