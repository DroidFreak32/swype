.class public Landroid/support/v4/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;,
        Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;,
        Landroid/support/v4/widget/SlidingPaneLayout$SavedState;,
        Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;,
        Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;
    }
.end annotation


# static fields
.field private static IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;


# instance fields
.field private mCanSlide:Z

.field private mCoveredFadeColor:I

.field private final mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private mFirstLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsUnableToDrag:Z

.field private final mOverhangSize:I

.field private mPanelSlideListener$c9bd230:Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

.field private mParallaxBy:I

.field private mParallaxOffset:F

.field private final mPostedRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPreservedOpenState:Z

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mSlideOffset:F

.field private mSlideRange:I

.field private mSlideableView:Landroid/view/View;

.field private mSliderFadeColor:I

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 193
    .local v0, "deviceVersion":I
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 194
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;

    invoke-direct {v1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;-><init>()V

    sput-object v1, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    .line 200
    :goto_0
    return-void

    .line 195
    :cond_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 196
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;

    invoke-direct {v1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;-><init>()V

    sput-object v1, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    goto :goto_0

    .line 198
    :cond_1
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    invoke-direct {v1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;-><init>()V

    sput-object v1, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 245
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 249
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 252
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    const v1, -0x33333334

    iput v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    .line 182
    iput-boolean v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 184
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    .line 254
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 255
    .local v0, "density":F
    const/high16 v1, 0x42000000    # 32.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    .line 257
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 259
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->setWillNotDraw(Z)V

    .line 261
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;)V

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 262
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility$5359dc9a(Landroid/view/View;)V

    .line 264
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;

    invoke-direct {v1, p0, v3}, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;B)V

    invoke-static {p0, v2, v1}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 265
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 266
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 267
    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/widget/SlidingPaneLayout;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/SlidingPaneLayout;

    .prologue
    .line 88
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/support/v4/widget/SlidingPaneLayout;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/SlidingPaneLayout;

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/SlidingPaneLayout;

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/widget/SlidingPaneLayout;)F
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/SlidingPaneLayout;

    .prologue
    .line 88
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    return v0
.end method

.method static synthetic access$400(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/SlidingPaneLayout;

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Landroid/support/v4/widget/SlidingPaneLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/widget/SlidingPaneLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    return p1
.end method

.method static synthetic access$600(Landroid/support/v4/widget/SlidingPaneLayout;I)V
    .locals 3
    .param p0, "x0"    # Landroid/support/v4/widget/SlidingPaneLayout;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v1

    iget v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    sub-int v1, p1, v1

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    :cond_0
    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener$c9bd230:Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener$c9bd230:Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    :cond_2
    return-void
.end method

.method static synthetic access$700(Landroid/support/v4/widget/SlidingPaneLayout;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/SlidingPaneLayout;

    .prologue
    .line 88
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    return v0
.end method

.method static synthetic access$900(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/widget/SlidingPaneLayout;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    return-void
.end method

.method private closePane$5359dc96$134632()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 828
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->smoothSlideTo$254957c(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 829
    :cond_0
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 830
    const/4 v0, 0x1

    .line 832
    :cond_1
    return v0
.end method

.method private dimChildView(Landroid/view/View;FI)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "mag"    # F
    .param p3, "fadeColor"    # I

    .prologue
    const/4 v6, 0x2

    .line 925
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 927
    .local v2, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    const/4 v3, 0x0

    cmpl-float v3, p2, v3

    if-lez v3, :cond_3

    if-eqz p3, :cond_3

    .line 928
    const/high16 v3, -0x1000000

    and-int/2addr v3, p3

    ushr-int/lit8 v3, v3, 0x18

    .line 929
    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v3, v3

    .line 930
    shl-int/lit8 v3, v3, 0x18

    const v4, 0xffffff

    and-int/2addr v4, p3

    or-int v0, v3, v4

    .line 931
    .local v0, "color":I
    iget-object v3, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_0

    .line 932
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    .line 934
    :cond_0
    iget-object v3, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v0, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 935
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I

    move-result v3

    if-eq v3, v6, :cond_1

    .line 936
    iget-object v3, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-static {p1, v6, v3}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 938
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    .line 947
    .end local v0    # "color":I
    :cond_2
    :goto_0
    return-void

    .line 939
    :cond_3
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 940
    iget-object v3, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_4

    .line 941
    iget-object v3, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 943
    :cond_4
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 944
    .local v1, "dlr":Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private invalidateChildRegion(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 991
    sget-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;->invalidateChildRegion(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 992
    return-void
.end method

.method private parallaxOtherViews(F)V
    .locals 11
    .param p1, "slideOffset"    # F

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    .line 1071
    iget-object v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1072
    .local v6, "slideLp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    iget-boolean v8, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v8, :cond_1

    iget v8, v6, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    if-gtz v8, :cond_1

    const/4 v1, 0x1

    .line 1073
    .local v1, "dimViews":Z
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v0

    .line 1074
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 1075
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1076
    .local v7, "v":Landroid/view/View;
    iget-object v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eq v7, v8, :cond_0

    .line 1078
    iget v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float v8, v10, v8

    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v5, v8

    .line 1079
    .local v5, "oldOffset":I
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    .line 1080
    sub-float v8, v10, p1

    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v4, v8

    .line 1081
    .local v4, "newOffset":I
    sub-int v2, v5, v4

    .line 1083
    .local v2, "dx":I
    invoke-virtual {v7, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1085
    if-eqz v1, :cond_0

    .line 1086
    iget v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float v8, v10, v8

    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    invoke-direct {p0, v7, v8, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 1074
    .end local v2    # "dx":I
    .end local v4    # "newOffset":I
    .end local v5    # "oldOffset":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1072
    .end local v0    # "childCount":I
    .end local v1    # "dimViews":Z
    .end local v3    # "i":I
    .end local v7    # "v":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1089
    .restart local v0    # "childCount":I
    .restart local v1    # "dimViews":Z
    .restart local v3    # "i":I
    :cond_2
    return-void
.end method

.method private smoothSlideTo$254957c(F)Z
    .locals 6
    .param p1, "slideOffset"    # F

    .prologue
    const/4 v2, 0x0

    .line 1001
    iget-boolean v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v3, :cond_1

    .line 1016
    :cond_0
    :goto_0
    return v2

    .line 1006
    :cond_1
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1008
    .local v0, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v3

    iget v4, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    .line 1009
    int-to-float v3, v3

    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 1011
    .local v1, "x":I
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v3, v4, v1, v5}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1012
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->setAllChildrenVisible()V

    .line 1013
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1014
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1147
    instance-of v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling$138603()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_1

    .line 1023
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    .line 1029
    :cond_0
    :goto_0
    return-void

    .line 1027
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0
.end method

.method final dispatchOnPanelClosed$3c7ec8c3()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener$c9bd230:Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener$c9bd230:Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    .line 344
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    .line 345
    return-void
.end method

.method final dispatchOnPanelOpened$3c7ec8c3()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener$c9bd230:Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener$c9bd230:Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    .line 337
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    .line 338
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x1

    .line 1053
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1055
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v6

    if-le v6, v7, :cond_1

    invoke-virtual {p0, v7}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1056
    .local v3, "shadowView":Landroid/view/View;
    :goto_0
    if-eqz v3, :cond_0

    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_2

    .line 1068
    :cond_0
    :goto_1
    return-void

    .line 1055
    .end local v3    # "shadowView":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1061
    .restart local v3    # "shadowView":Landroid/view/View;
    :cond_2
    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 1062
    .local v4, "shadowWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1063
    .local v2, "right":I
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1064
    .local v5, "top":I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1065
    .local v0, "bottom":I
    sub-int v1, v2, v4

    .line 1066
    .local v1, "left":I
    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1, v5, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1067
    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 951
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 953
    .local v1, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->save(I)I

    move-result v3

    .line 955
    .local v3, "save":I
    iget-boolean v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v4, :cond_0

    iget-boolean v4, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 957
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 958
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 959
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 962
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_3

    .line 963
    iget-boolean v4, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v4, :cond_4

    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 966
    invoke-virtual {p2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 967
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 969
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 970
    .local v0, "cache":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 971
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 972
    const/4 v2, 0x0

    .line 985
    .end local v0    # "cache":Landroid/graphics/Bitmap;
    .local v2, "result":Z
    :goto_0
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 987
    return v2

    .line 974
    .end local v2    # "result":Z
    .restart local v0    # "cache":Landroid/graphics/Bitmap;
    :cond_2
    const-string v4, "SlidingPaneLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "drawChild: child view "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " returned null drawing cache"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    .end local v0    # "cache":Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    .restart local v2    # "result":Z
    goto :goto_0

    .line 978
    .end local v2    # "result":Z
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 979
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1135
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1152
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1140
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    return-object v0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method final isDimmed(Landroid/view/View;)Z
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1126
    if-nez p1, :cond_1

    .line 1130
    :cond_0
    :goto_0
    return v1

    .line 1129
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1130
    .local v0, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 414
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 415
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 416
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 420
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 421
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 423
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 424
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;

    .line 425
    invoke-virtual {v2}, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;->run()V

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    :cond_0
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 428
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 728
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 731
    .local v0, "action":I
    iget-boolean v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v8, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v8

    if-le v8, v9, :cond_0

    .line 733
    invoke-virtual {p0, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 734
    .local v4, "secondChild":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 735
    iget-object v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    invoke-static {v4, v8, v11}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v8

    if-nez v8, :cond_3

    move v8, v9

    :goto_0
    iput-boolean v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 740
    .end local v4    # "secondChild":Landroid/view/View;
    :cond_0
    iget-boolean v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    if-eqz v8, :cond_4

    if-eqz v0, :cond_4

    .line 741
    :cond_1
    iget-object v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v8}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 742
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 783
    :cond_2
    :goto_1
    return v10

    .restart local v4    # "secondChild":Landroid/view/View;
    :cond_3
    move v8, v10

    .line 735
    goto :goto_0

    .line 745
    .end local v4    # "secondChild":Landroid/view/View;
    :cond_4
    const/4 v8, 0x3

    if-eq v0, v8, :cond_5

    if-ne v0, v9, :cond_6

    .line 746
    :cond_5
    iget-object v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v8}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    goto :goto_1

    .line 750
    :cond_6
    const/4 v3, 0x0

    .line 752
    .local v3, "interceptTap":Z
    packed-switch v0, :pswitch_data_0

    .line 781
    :cond_7
    :goto_2
    :pswitch_0
    iget-object v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v8, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 783
    if-nez v8, :cond_8

    if-eqz v3, :cond_2

    :cond_8
    move v10, v9

    goto :goto_1

    .line 754
    :pswitch_1
    iput-boolean v10, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 755
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 756
    .local v6, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 757
    .local v7, "y":F
    iput v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 758
    iput v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    .line 760
    iget-object v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int v11, v6

    float-to-int v12, v7

    invoke-static {v8, v11, v12}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v8}, Landroid/support/v4/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 762
    const/4 v3, 0x1

    goto :goto_2

    .line 768
    .end local v6    # "x":F
    .end local v7    # "y":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 769
    .restart local v6    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 770
    .restart local v7    # "y":F
    iget v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 771
    .local v1, "adx":F
    iget v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float v8, v7, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 772
    .local v2, "ady":F
    iget-object v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v8}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v5

    .line 773
    .local v5, "slop":I
    int-to-float v8, v5

    cmpl-float v8, v1, v8

    if-lez v8, :cond_7

    cmpl-float v8, v2, v1

    if-lez v8, :cond_7

    .line 774
    iget-object v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v8}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 775
    iput-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    goto :goto_1

    .line 752
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 24
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 640
    sub-int v19, p4, p2

    .line 641
    .local v19, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v15

    .line 642
    .local v15, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v16

    .line 643
    .local v16, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v17

    .line 645
    .local v17, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v6

    .line 646
    .local v6, "childCount":I
    move/from16 v20, v15

    .line 647
    .local v20, "xStart":I
    move v13, v15

    .line 649
    .local v13, "nextXStart":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 650
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    const/high16 v21, 0x3f800000    # 1.0f

    :goto_0
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 653
    :cond_0
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v6, :cond_6

    .line 654
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 656
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 657
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 662
    .local v11, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 663
    .local v9, "childWidth":I
    const/4 v14, 0x0

    .line 665
    .local v14, "offset":I
    iget-boolean v0, v11, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 666
    iget v0, v11, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v21, v0

    iget v0, v11, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v22, v0

    add-int v12, v21, v22

    .line 667
    .local v12, "margin":I
    sub-int v21, v19, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    sub-int v21, v21, v20

    sub-int v18, v21, v12

    .line 669
    .local v18, "range":I
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    .line 670
    iget v0, v11, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v21, v0

    add-int v21, v21, v20

    add-int v21, v21, v18

    div-int/lit8 v22, v9, 0x2

    add-int v21, v21, v22

    sub-int v22, v19, v16

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    const/16 v21, 0x1

    :goto_2
    move/from16 v0, v21

    iput-boolean v0, v11, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 672
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    iget v0, v11, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v22, v0

    add-int v21, v21, v22

    add-int v20, v20, v21

    .line 680
    .end local v12    # "margin":I
    .end local v18    # "range":I
    :goto_3
    sub-int v7, v20, v14

    .line 681
    .local v7, "childLeft":I
    add-int v8, v7, v9

    .line 682
    .local v8, "childRight":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    add-int v5, v17, v21

    .line 684
    .local v5, "childBottom":I
    move/from16 v0, v17

    invoke-virtual {v4, v7, v0, v8, v5}, Landroid/view/View;->layout(IIII)V

    .line 686
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v21

    add-int v13, v13, v21

    .line 653
    .end local v5    # "childBottom":I
    .end local v7    # "childLeft":I
    .end local v8    # "childRight":I
    .end local v9    # "childWidth":I
    .end local v11    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .end local v14    # "offset":I
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 650
    .end local v4    # "child":Landroid/view/View;
    .end local v10    # "i":I
    :cond_2
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 670
    .restart local v4    # "child":Landroid/view/View;
    .restart local v9    # "childWidth":I
    .restart local v10    # "i":I
    .restart local v11    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .restart local v12    # "margin":I
    .restart local v14    # "offset":I
    .restart local v18    # "range":I
    :cond_3
    const/16 v21, 0x0

    goto :goto_2

    .line 673
    .end local v12    # "margin":I
    .end local v18    # "range":I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 674
    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v14, v0

    .line 675
    :cond_5
    move/from16 v20, v13

    goto :goto_3

    .line 689
    .end local v4    # "child":Landroid/view/View;
    .end local v9    # "childWidth":I
    .end local v11    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .end local v14    # "offset":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    .line 690
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 691
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 692
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    .line 694
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 703
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    .line 706
    :cond_9
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 707
    return-void

    .line 699
    :cond_a
    const/4 v10, 0x0

    :goto_4
    if-ge v10, v6, :cond_8

    .line 700
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 699
    add-int/lit8 v10, v10, 0x1

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 28
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 432
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 433
    .local v22, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v24

    .line 434
    .local v24, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 435
    .local v11, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 437
    .local v12, "heightSize":I
    const/high16 v26, 0x40000000    # 2.0f

    move/from16 v0, v22

    move/from16 v1, v26

    if-eq v0, v1, :cond_4

    .line 438
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v26

    if-eqz v26, :cond_3

    .line 443
    const/high16 v26, -0x80000000

    move/from16 v0, v22

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 444
    if-nez v22, :cond_0

    .line 446
    const/16 v24, 0x12c

    .line 466
    :cond_0
    :goto_0
    const/4 v15, 0x0

    .line 467
    .local v15, "layoutHeight":I
    const/16 v17, -0x1

    .line 468
    .local v17, "maxLayoutHeight":I
    sparse-switch v11, :sswitch_data_0

    .line 477
    :goto_1
    const/16 v21, 0x0

    .line 478
    .local v21, "weightSum":F
    const/4 v3, 0x0

    .line 479
    .local v3, "canSlide":Z
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v26

    sub-int v26, v24, v26

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v27

    sub-int v23, v26, v27

    .line 480
    .local v23, "widthRemaining":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v5

    .line 482
    .local v5, "childCount":I
    const/16 v26, 0x2

    move/from16 v0, v26

    if-le v5, v0, :cond_1

    .line 483
    const-string v26, "SlidingPaneLayout"

    const-string v27, "onMeasure: More than two child views are not supported."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_1
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 491
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v5, :cond_e

    .line 492
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 493
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 495
    .local v16, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 496
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 491
    :cond_2
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 450
    .end local v3    # "canSlide":Z
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childCount":I
    .end local v14    # "i":I
    .end local v15    # "layoutHeight":I
    .end local v16    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .end local v17    # "maxLayoutHeight":I
    .end local v21    # "weightSum":F
    .end local v23    # "widthRemaining":I
    :cond_3
    new-instance v26, Ljava/lang/IllegalStateException;

    const-string v27, "Width must have an exact value or MATCH_PARENT"

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 452
    :cond_4
    if-nez v11, :cond_0

    .line 453
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v26

    if-eqz v26, :cond_5

    .line 457
    if-nez v11, :cond_0

    .line 458
    const/high16 v11, -0x80000000

    .line 459
    const/16 v12, 0x12c

    goto :goto_0

    .line 462
    :cond_5
    new-instance v26, Ljava/lang/IllegalStateException;

    const-string v27, "Height must not be UNSPECIFIED"

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 470
    .restart local v15    # "layoutHeight":I
    .restart local v17    # "maxLayoutHeight":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v26

    sub-int v26, v12, v26

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v27

    sub-int v17, v26, v27

    move/from16 v15, v17

    .line 471
    goto :goto_1

    .line 473
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v26

    sub-int v26, v12, v26

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v27

    sub-int v17, v26, v27

    goto/16 :goto_1

    .line 500
    .restart local v3    # "canSlide":Z
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "childCount":I
    .restart local v14    # "i":I
    .restart local v16    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .restart local v21    # "weightSum":F
    .restart local v23    # "widthRemaining":I
    :cond_6
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_7

    .line 501
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v26, v0

    add-float v21, v21, v26

    .line 505
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 509
    :cond_7
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v27, v0

    add-int v13, v26, v27

    .line 510
    .local v13, "horizontalMargin":I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    .line 511
    sub-int v26, v24, v13

    const/high16 v27, -0x80000000

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 521
    .local v9, "childWidthSpec":I
    :goto_4
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 522
    const/high16 v26, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 529
    .local v7, "childHeightSpec":I
    :goto_5
    invoke-virtual {v4, v9, v7}, Landroid/view/View;->measure(II)V

    .line 530
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 531
    .local v8, "childWidth":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 533
    .local v6, "childHeight":I
    const/high16 v26, -0x80000000

    move/from16 v0, v26

    if-ne v11, v0, :cond_8

    if-le v6, v15, :cond_8

    .line 534
    move/from16 v0, v17

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 537
    :cond_8
    sub-int v23, v23, v8

    .line 538
    if-gez v23, :cond_d

    const/16 v26, 0x1

    :goto_6
    move/from16 v0, v26

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    or-int v3, v3, v26

    .line 539
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 540
    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    goto/16 :goto_3

    .line 513
    .end local v6    # "childHeight":I
    .end local v7    # "childHeightSpec":I
    .end local v8    # "childWidth":I
    .end local v9    # "childWidthSpec":I
    :cond_9
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 514
    sub-int v26, v24, v13

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .restart local v9    # "childWidthSpec":I
    goto :goto_4

    .line 517
    .end local v9    # "childWidthSpec":I
    :cond_a
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .restart local v9    # "childWidthSpec":I
    goto :goto_4

    .line 523
    :cond_b
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    .line 524
    const/high16 v26, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7    # "childHeightSpec":I
    goto :goto_5

    .line 526
    .end local v7    # "childHeightSpec":I
    :cond_c
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7    # "childHeightSpec":I
    goto :goto_5

    .line 538
    .restart local v6    # "childHeight":I
    .restart local v8    # "childWidth":I
    :cond_d
    const/16 v26, 0x0

    goto :goto_6

    .line 545
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "childHeight":I
    .end local v7    # "childHeightSpec":I
    .end local v8    # "childWidth":I
    .end local v9    # "childWidthSpec":I
    .end local v13    # "horizontalMargin":I
    .end local v16    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    :cond_e
    if-nez v3, :cond_f

    const/16 v26, 0x0

    cmpl-float v26, v21, v26

    if-lez v26, :cond_1c

    .line 546
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    move/from16 v26, v0

    sub-int v10, v24, v26

    .line 548
    .local v10, "fixedPanelWidthLimit":I
    const/4 v14, 0x0

    :goto_7
    if-ge v14, v5, :cond_1c

    .line 549
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 551
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_11

    .line 552
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 557
    .restart local v16    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_11

    .line 558
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v26, v0

    if-nez v26, :cond_12

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_12

    const/16 v20, 0x1

    .line 562
    .local v20, "skippedFirstPass":Z
    :goto_8
    if-eqz v20, :cond_13

    const/16 v18, 0x0

    .line 563
    .local v18, "measuredWidth":I
    :goto_9
    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    if-eq v4, v0, :cond_17

    .line 564
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v26, v0

    if-gez v26, :cond_11

    move/from16 v0, v18

    if-gt v0, v10, :cond_10

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_11

    .line 568
    :cond_10
    if-eqz v20, :cond_16

    .line 571
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_14

    .line 572
    const/high16 v26, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 585
    .restart local v7    # "childHeightSpec":I
    :goto_a
    const/high16 v26, 0x40000000    # 2.0f

    move/from16 v0, v26

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 587
    .restart local v9    # "childWidthSpec":I
    invoke-virtual {v4, v9, v7}, Landroid/view/View;->measure(II)V

    .line 548
    .end local v7    # "childHeightSpec":I
    .end local v9    # "childWidthSpec":I
    .end local v16    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .end local v18    # "measuredWidth":I
    .end local v20    # "skippedFirstPass":Z
    :cond_11
    :goto_b
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_7

    .line 558
    .restart local v16    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    :cond_12
    const/16 v20, 0x0

    goto :goto_8

    .line 562
    .restart local v20    # "skippedFirstPass":Z
    :cond_13
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    goto :goto_9

    .line 574
    .restart local v18    # "measuredWidth":I
    :cond_14
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_15

    .line 575
    const/high16 v26, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7    # "childHeightSpec":I
    goto :goto_a

    .line 578
    .end local v7    # "childHeightSpec":I
    :cond_15
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7    # "childHeightSpec":I
    goto :goto_a

    .line 582
    .end local v7    # "childHeightSpec":I
    :cond_16
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7    # "childHeightSpec":I
    goto :goto_a

    .line 589
    .end local v7    # "childHeightSpec":I
    :cond_17
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_11

    .line 591
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v26, v0

    if-nez v26, :cond_1a

    .line 593
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_18

    .line 594
    const/high16 v26, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 608
    .restart local v7    # "childHeightSpec":I
    :goto_c
    if-eqz v3, :cond_1b

    .line 610
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v27, v0

    add-int v13, v26, v27

    .line 611
    .restart local v13    # "horizontalMargin":I
    sub-int v19, v24, v13

    .line 612
    .local v19, "newWidth":I
    const/high16 v26, 0x40000000    # 2.0f

    move/from16 v0, v19

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 614
    .restart local v9    # "childWidthSpec":I
    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    .line 615
    invoke-virtual {v4, v9, v7}, Landroid/view/View;->measure(II)V

    goto/16 :goto_b

    .line 596
    .end local v7    # "childHeightSpec":I
    .end local v9    # "childWidthSpec":I
    .end local v13    # "horizontalMargin":I
    .end local v19    # "newWidth":I
    :cond_18
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_19

    .line 597
    const/high16 v26, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7    # "childHeightSpec":I
    goto :goto_c

    .line 600
    .end local v7    # "childHeightSpec":I
    :cond_19
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7    # "childHeightSpec":I
    goto :goto_c

    .line 604
    .end local v7    # "childHeightSpec":I
    :cond_1a
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7    # "childHeightSpec":I
    goto :goto_c

    .line 619
    :cond_1b
    const/16 v26, 0x0

    move/from16 v0, v26

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 620
    .local v25, "widthToDistribute":I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v26, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v26, v26, v27

    div-float v26, v26, v21

    move/from16 v0, v26

    float-to-int v2, v0

    .line 621
    .local v2, "addedWidth":I
    add-int v26, v18, v2

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 623
    .restart local v9    # "childWidthSpec":I
    invoke-virtual {v4, v9, v7}, Landroid/view/View;->measure(II)V

    goto/16 :goto_b

    .line 629
    .end local v2    # "addedWidth":I
    .end local v4    # "child":Landroid/view/View;
    .end local v7    # "childHeightSpec":I
    .end local v9    # "childWidthSpec":I
    .end local v10    # "fixedPanelWidthLimit":I
    .end local v16    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .end local v18    # "measuredWidth":I
    .end local v20    # "skippedFirstPass":Z
    .end local v25    # "widthToDistribute":I
    :cond_1c
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v15}, Landroid/support/v4/widget/SlidingPaneLayout;->setMeasuredDimension(II)V

    .line 630
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v26

    if-eqz v26, :cond_1d

    if-nez v3, :cond_1d

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    .line 635
    :cond_1d
    return-void

    .line 468
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1167
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    .line 1168
    .local v0, "ss":Landroid/support/v4/widget/SlidingPaneLayout$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1170
    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    if-eqz v1, :cond_2

    .line 1171
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-nez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->smoothSlideTo$254957c(F)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 1175
    :cond_1
    :goto_0
    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    iput-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 1176
    return-void

    .line 1173
    :cond_2
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane$5359dc96$134632()Z

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 1157
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1159
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1160
    .local v0, "ss":Landroid/support/v4/widget/SlidingPaneLayout$SavedState;
    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    .line 1162
    return-object v0

    .line 1160
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 711
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 713
    if-eq p1, p3, :cond_0

    .line 714
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 716
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 788
    iget-boolean v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v5, :cond_0

    .line 789
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 817
    :goto_0
    return v5

    .line 792
    :cond_0
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v5, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 794
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 795
    and-int/lit16 v5, v5, 0xff

    packed-switch v5, :pswitch_data_0

    .line 817
    :cond_1
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 799
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 800
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 801
    .local v4, "y":F
    iput v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 802
    iput v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    goto :goto_1

    .line 807
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_1
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/support/v4/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 808
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 809
    .restart local v3    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 810
    .restart local v4    # "y":F
    iget v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float v0, v3, v5

    .line 811
    .local v0, "dx":F
    iget v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float v1, v4, v5

    .line 812
    .local v1, "dy":F
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v5}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v2

    .line 813
    .local v2, "slop":I
    mul-float v5, v0, v0

    mul-float v6, v1, v1

    add-float/2addr v5, v6

    mul-int v6, v2, v2

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int v6, v3

    float-to-int v7, v4

    invoke-static {v5, v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 816
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane$5359dc96$134632()Z

    goto :goto_1

    .line 795
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 720
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 721
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_0

    .line 722
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 724
    :cond_0
    return-void

    .line 722
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final setAllChildrenVisible()V
    .locals 5

    .prologue
    .line 389
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 390
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 391
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 392
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 389
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 395
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 313
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    .line 314
    return-void
.end method

.method public setPanelSlideListener$14b5545(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    .prologue
    .line 324
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener$c9bd230:Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    .line 325
    return-void
.end method

.method public setParallaxDistance(I)V
    .locals 0
    .param p1, "parallaxBy"    # I

    .prologue
    .line 277
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    .line 278
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->requestLayout()V

    .line 279
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1038
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 1039
    return-void
.end method

.method public setShadowResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1048
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1049
    return-void
.end method

.method public setSliderFadeColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 296
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    .line 297
    return-void
.end method

.method final updateObscuredViewsVisibility(Landroid/view/View;)V
    .locals 20
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 348
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v12

    .line 349
    .local v12, "leftBound":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v19

    sub-int v14, v18, v19

    .line 350
    .local v14, "rightBound":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v16

    .line 351
    .local v16, "topBound":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getHeight()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v19

    sub-int v3, v18, v19

    .line 356
    .local v3, "bottomBound":I
    if-eqz p1, :cond_3

    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/ViewCompat;->isOpaque(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v18, 0x1

    :goto_0
    if-eqz v18, :cond_3

    .line 357
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 358
    .local v11, "left":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v13

    .line 359
    .local v13, "right":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v15

    .line 360
    .local v15, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 365
    .local v2, "bottom":I
    :goto_1
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v5

    .local v5, "childCount":I
    :goto_2
    if-ge v10, v5, :cond_5

    .line 366
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 368
    .local v4, "child":Landroid/view/View;
    move-object/from16 v0, p1

    if-eq v4, v0, :cond_5

    .line 370
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v18

    move/from16 v0, v18

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 374
    .local v7, "clampedChildLeft":I
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 375
    .local v9, "clampedChildTop":I
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v18

    move/from16 v0, v18

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 376
    .local v8, "clampedChildRight":I
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v18

    move/from16 v0, v18

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 378
    .local v6, "clampedChildBottom":I
    if-lt v7, v11, :cond_4

    if-lt v9, v15, :cond_4

    if-gt v8, v13, :cond_4

    if-gt v6, v2, :cond_4

    .line 380
    const/16 v17, 0x4

    .line 384
    .local v17, "vis":I
    :goto_3
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 365
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 356
    .end local v2    # "bottom":I
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childCount":I
    .end local v6    # "clampedChildBottom":I
    .end local v7    # "clampedChildLeft":I
    .end local v8    # "clampedChildRight":I
    .end local v9    # "clampedChildTop":I
    .end local v10    # "i":I
    .end local v11    # "left":I
    .end local v13    # "right":I
    .end local v15    # "top":I
    .end local v17    # "vis":I
    :cond_0
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x12

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/16 v18, 0x1

    goto :goto_0

    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    :cond_2
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 362
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "bottom":I
    move v15, v2

    .restart local v15    # "top":I
    move v13, v2

    .restart local v13    # "right":I
    move v11, v2

    .restart local v11    # "left":I
    goto :goto_1

    .line 382
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "childCount":I
    .restart local v6    # "clampedChildBottom":I
    .restart local v7    # "clampedChildLeft":I
    .restart local v8    # "clampedChildRight":I
    .restart local v9    # "clampedChildTop":I
    .restart local v10    # "i":I
    :cond_4
    const/16 v17, 0x0

    .restart local v17    # "vis":I
    goto :goto_3

    .line 386
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "clampedChildBottom":I
    .end local v7    # "clampedChildLeft":I
    .end local v8    # "clampedChildRight":I
    .end local v9    # "clampedChildTop":I
    .end local v17    # "vis":I
    :cond_5
    return-void
.end method
