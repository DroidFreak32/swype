.class public Landroid/support/v4/view/PagerTitleStrip;
.super Landroid/view/ViewGroup;
.source "PagerTitleStrip.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$Decor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/PagerTitleStrip$PageListener;,
        Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplIcs;,
        Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplBase;,
        Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;
    }
.end annotation


# static fields
.field private static final ATTRS:[I

.field private static final IMPL:Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;

.field private static final TEXT_ATTRS:[I


# instance fields
.field mCurrText:Landroid/widget/TextView;

.field private mGravity:I

.field private mLastKnownCurrentPage:I

.field private mLastKnownPositionOffset:F

.field mNextText:Landroid/widget/TextView;

.field private mNonPrimaryAlpha:I

.field private final mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

.field mPager:Landroid/support/v4/view/ViewPager;

.field mPrevText:Landroid/widget/TextView;

.field mScaledTextSpacing:I

.field mTextColor:I

.field private mUpdatingPositions:Z

.field private mUpdatingText:Z

.field private mWatchingAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/view/PagerAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->ATTRS:[I

    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101038c

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->TEXT_ATTRS:[I

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 101
    new-instance v0, Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplIcs;

    invoke-direct {v0}, Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplIcs;-><init>()V

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->IMPL:Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    new-instance v0, Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplBase;

    invoke-direct {v0}, Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplBase;-><init>()V

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->IMPL:Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;

    goto :goto_0

    .line 65
    nop

    :array_0
    .array-data 4
        0x1010034
        0x1010095
        0x1010098
        0x10100af
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/view/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v7, -0x1

    iput v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 54
    const/high16 v7, -0x40800000    # -1.0f

    iput v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 61
    new-instance v7, Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-direct {v7, p0, v9}, Landroid/support/v4/view/PagerTitleStrip$PageListener;-><init>(Landroid/support/v4/view/PagerTitleStrip;B)V

    iput-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    .line 118
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 119
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 120
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 122
    sget-object v7, Landroid/support/v4/view/PagerTitleStrip;->ATTRS:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 123
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 124
    .local v4, "textAppearance":I
    if-eqz v4, :cond_0

    .line 125
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v7, p1, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 126
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v7, p1, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 127
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v7, p1, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 129
    :cond_0
    const/4 v7, 0x1

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 130
    .local v6, "textSize":I
    if-eqz v6, :cond_1

    .line 131
    int-to-float v7, v6

    invoke-virtual {p0, v9, v7}, Landroid/support/v4/view/PagerTitleStrip;->setTextSize(IF)V

    .line 133
    :cond_1
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 134
    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 135
    .local v5, "textColor":I
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    .end local v5    # "textColor":I
    :cond_2
    const/4 v7, 0x3

    const/16 v8, 0x50

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    iput v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mGravity:I

    .line 140
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    iput v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    .line 143
    const v7, 0x3f19999a    # 0.6f

    invoke-virtual {p0, v7}, Landroid/support/v4/view/PagerTitleStrip;->setNonPrimaryAlpha(F)V

    .line 145
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 146
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 147
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 149
    const/4 v1, 0x0

    .line 150
    .local v1, "allCaps":Z
    if-eqz v4, :cond_3

    .line 151
    sget-object v7, Landroid/support/v4/view/PagerTitleStrip;->TEXT_ATTRS:[I

    invoke-virtual {p1, v4, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 152
    .local v3, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v9, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 153
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    .end local v3    # "ta":Landroid/content/res/TypedArray;
    :cond_3
    if-eqz v1, :cond_4

    .line 157
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-static {v7}, Landroid/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    .line 158
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-static {v7}, Landroid/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    .line 159
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-static {v7}, Landroid/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    .line 166
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v2, v7, Landroid/util/DisplayMetrics;->density:F

    .line 167
    .local v2, "density":F
    const/high16 v7, 0x41800000    # 16.0f

    mul-float/2addr v7, v2

    float-to-int v7, v7

    iput v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    .line 168
    return-void

    .line 161
    .end local v2    # "density":F
    :cond_4
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->setSingleLine()V

    .line 162
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->setSingleLine()V

    .line 163
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->setSingleLine()V

    goto :goto_0
.end method

.method static synthetic access$100(Landroid/support/v4/view/PagerTitleStrip;)F
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/view/PagerTitleStrip;

    .prologue
    .line 45
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    return v0
.end method

.method private static setSingleLineAllCaps(Landroid/widget/TextView;)V
    .locals 1
    .param p0, "text"    # Landroid/widget/TextView;

    .prologue
    .line 108
    sget-object v0, Landroid/support/v4/view/PagerTitleStrip;->IMPL:Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    .line 109
    return-void
.end method


# virtual methods
.method getMinHeight()I
    .locals 2

    .prologue
    .line 462
    const/4 v1, 0x0

    .line 463
    .local v1, "minHeight":I
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 464
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 467
    :cond_0
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 242
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 244
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 245
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/support/v4/view/ViewPager;

    if-nez v3, :cond_0

    .line 246
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "PagerTitleStrip must be a direct child of a ViewPager."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v1, v2

    .line 250
    check-cast v1, Landroid/support/v4/view/ViewPager;

    .line 251
    .local v1, "pager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 253
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 254
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 255
    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    .line 256
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/PagerAdapter;

    :goto_0
    invoke-virtual {p0, v3, v0}, Landroid/support/v4/view/PagerTitleStrip;->updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 257
    return-void

    .line 256
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 261
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 262
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 264
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 265
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 266
    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    .line 268
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v0, 0x0

    .line 455
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_1

    .line 456
    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_0

    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 457
    .local v0, "offset":F
    :cond_0
    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 459
    .end local v0    # "offset":F
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 422
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 423
    .local v8, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 424
    .local v3, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 425
    .local v9, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 427
    .local v4, "heightSize":I
    const/high16 v10, 0x40000000    # 2.0f

    if-eq v8, v10, :cond_0

    .line 428
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Must measure with an exact width"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 431
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getMinHeight()I

    move-result v5

    .line 433
    .local v5, "minHeight":I
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v10

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v11

    add-int v6, v10, v11

    .line 435
    .local v6, "padding":I
    sub-int v0, v4, v6

    .line 437
    .local v0, "childHeight":I
    int-to-float v10, v9

    const v11, 0x3f4ccccd    # 0.8f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const/high16 v11, -0x80000000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 439
    .local v2, "childWidthSpec":I
    const/high16 v10, -0x80000000

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 441
    .local v1, "childHeightSpec":I
    iget-object v10, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v10, v2, v1}, Landroid/widget/TextView;->measure(II)V

    .line 442
    iget-object v10, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v10, v2, v1}, Landroid/widget/TextView;->measure(II)V

    .line 443
    iget-object v10, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v10, v2, v1}, Landroid/widget/TextView;->measure(II)V

    .line 445
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v3, v10, :cond_1

    .line 446
    invoke-virtual {p0, v9, v4}, Landroid/support/v4/view/PagerTitleStrip;->setMeasuredDimension(II)V

    .line 451
    :goto_0
    return-void

    .line 448
    :cond_1
    iget-object v10, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    .line 449
    .local v7, "textHeight":I
    add-int v10, v7, v6

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {p0, v9, v10}, Landroid/support/v4/view/PagerTitleStrip;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    if-nez v0, :cond_0

    .line 311
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 313
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 236
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mGravity:I

    .line 237
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    .line 238
    return-void
.end method

.method public setNonPrimaryAlpha(F)V
    .locals 4
    .param p1, "alpha"    # F

    .prologue
    .line 193
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I

    .line 194
    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I

    shl-int/lit8 v1, v1, 0x18

    iget v2, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int v0, v1, v2

    .line 195
    .local v0, "transparentColor":I
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    return-void
.end method

.method public setTextColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 206
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    .line 207
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I

    shl-int/lit8 v1, v1, 0x18

    iget v2, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int v0, v1, v2

    .line 209
    .local v0, "transparentColor":I
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 224
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 225
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 226
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 227
    return-void
.end method

.method public setTextSpacing(I)V
    .locals 0
    .param p1, "spacingPixels"    # I

    .prologue
    .line 176
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    .line 177
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    .line 178
    return-void
.end method

.method final updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
    .locals 1
    .param p1, "oldAdapter"    # Landroid/support/v4/view/PagerAdapter;
    .param p2, "newAdapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    .line 316
    if-eqz p1, :cond_0

    .line 317
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    .line 320
    :cond_0
    if-eqz p2, :cond_1

    .line 321
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 322
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    .line 324
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    .line 325
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 326
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 327
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V

    .line 328
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    .line 330
    :cond_2
    return-void
.end method

.method final updateText(ILandroid/support/v4/view/PagerAdapter;)V
    .locals 10
    .param p1, "currentItem"    # I
    .param p2, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    const/high16 v9, -0x80000000

    const/4 v6, 0x0

    .line 271
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    .line 272
    .local v3, "itemCount":I
    :goto_0
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    .line 274
    const/4 v4, 0x0

    .line 275
    .local v4, "text":Ljava/lang/CharSequence;
    if-lez p1, :cond_0

    if-eqz p2, :cond_0

    .line 276
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p2, v7}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 278
    :cond_0
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v8, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    if-eqz p2, :cond_4

    if-ge p1, v3, :cond_4

    invoke-virtual {p2, p1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v7

    :goto_1
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    const/4 v4, 0x0

    .line 284
    add-int/lit8 v7, p1, 0x1

    if-ge v7, v3, :cond_1

    if-eqz p2, :cond_1

    .line 285
    add-int/lit8 v7, p1, 0x1

    invoke-virtual {p2, v7}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 287
    :cond_1
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    move-result v8

    sub-int v5, v7, v8

    .line 291
    .local v5, "width":I
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v8

    sub-int v0, v7, v8

    .line 292
    .local v0, "childHeight":I
    int-to-float v7, v5

    const v8, 0x3f4ccccd    # 0.8f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 294
    .local v2, "childWidthSpec":I
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 295
    .local v1, "childHeightSpec":I
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v7, v2, v1}, Landroid/widget/TextView;->measure(II)V

    .line 296
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v7, v2, v1}, Landroid/widget/TextView;->measure(II)V

    .line 297
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v7, v2, v1}, Landroid/widget/TextView;->measure(II)V

    .line 299
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 301
    iget-boolean v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    if-nez v7, :cond_2

    .line 302
    iget v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    invoke-virtual {p0, p1, v7, v6}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 305
    :cond_2
    iput-boolean v6, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    .line 306
    return-void

    .end local v0    # "childHeight":I
    .end local v1    # "childHeightSpec":I
    .end local v2    # "childWidthSpec":I
    .end local v3    # "itemCount":I
    .end local v4    # "text":Ljava/lang/CharSequence;
    .end local v5    # "width":I
    :cond_3
    move v3, v6

    .line 271
    goto :goto_0

    .line 280
    .restart local v3    # "itemCount":I
    .restart local v4    # "text":Ljava/lang/CharSequence;
    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method

.method updateTextPositions(IFZ)V
    .locals 42
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "force"    # Z

    .prologue
    .line 333
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    move/from16 v39, v0

    move/from16 v0, p1

    move/from16 v1, v39

    if-eq v0, v1, :cond_2

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v39

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V

    .line 339
    :cond_0
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v34

    .line 342
    .local v34, "prevWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v17

    .line 343
    .local v17, "currWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v25

    .line 344
    .local v25, "nextWidth":I
    div-int/lit8 v18, v17, 0x2

    .line 346
    .local v18, "halfCurrWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I

    move-result v36

    .line 347
    .local v36, "stripWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getHeight()I

    move-result v35

    .line 348
    .local v35, "stripHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    move-result v27

    .line 349
    .local v27, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    move-result v28

    .line 350
    .local v28, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v29

    .line 351
    .local v29, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v26

    .line 352
    .local v26, "paddingBottom":I
    add-int v37, v27, v18

    .line 353
    .local v37, "textPaddedLeft":I
    add-int v38, v28, v18

    .line 354
    .local v38, "textPaddedRight":I
    sub-int v39, v36, v37

    sub-int v10, v39, v38

    .line 356
    .local v10, "contentWidth":I
    const/high16 v39, 0x3f000000    # 0.5f

    add-float v13, p2, v39

    .line 357
    .local v13, "currOffset":F
    const/high16 v39, 0x3f800000    # 1.0f

    cmpl-float v39, v13, v39

    if-lez v39, :cond_1

    .line 358
    const/high16 v39, 0x3f800000    # 1.0f

    sub-float v13, v13, v39

    .line 360
    :cond_1
    sub-int v39, v36, v38

    int-to-float v0, v10

    move/from16 v40, v0

    mul-float v40, v40, v13

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v40, v0

    sub-int v39, v39, v40

    .line 361
    sub-int v12, v39, v18

    .line 362
    .local v12, "currLeft":I
    add-int v14, v12, v17

    .line 364
    .local v14, "currRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/widget/TextView;->getBaseline()I

    move-result v30

    .line 365
    .local v30, "prevBaseline":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/widget/TextView;->getBaseline()I

    move-result v11

    .line 366
    .local v11, "currBaseline":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/widget/TextView;->getBaseline()I

    move-result v21

    .line 367
    .local v21, "nextBaseline":I
    move/from16 v0, v30

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v39

    move/from16 v0, v39

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 368
    .local v19, "maxBaseline":I
    sub-int v33, v19, v30

    .line 369
    .local v33, "prevTopOffset":I
    sub-int v16, v19, v11

    .line 370
    .local v16, "currTopOffset":I
    sub-int v24, v19, v21

    .line 371
    .local v24, "nextTopOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v39

    add-int v7, v33, v39

    .line 372
    .local v7, "alignedPrevHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v39

    add-int v5, v16, v39

    .line 373
    .local v5, "alignedCurrHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v39

    add-int v6, v24, v39

    .line 374
    .local v6, "alignedNextHeight":I
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v39

    move/from16 v0, v39

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 377
    .local v20, "maxTextHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mGravity:I

    move/from16 v39, v0

    and-int/lit8 v39, v39, 0x70

    .line 382
    sparse-switch v39, :sswitch_data_0

    .line 385
    add-int v32, v29, v33

    .line 386
    .local v32, "prevTop":I
    add-int v15, v29, v16

    .line 387
    .local v15, "currTop":I
    add-int v23, v29, v24

    .line 404
    .local v23, "nextTop":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v40

    add-int v40, v40, v15

    move-object/from16 v0, v39

    move/from16 v1, v40

    invoke-virtual {v0, v12, v15, v14, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 407
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    move/from16 v39, v0

    sub-int v39, v12, v39

    sub-int v39, v39, v34

    move/from16 v0, v27

    move/from16 v1, v39

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v31

    .line 408
    .local v31, "prevLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v39, v0

    add-int v40, v31, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v41

    add-int v41, v41, v32

    move-object/from16 v0, v39

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v40

    move/from16 v4, v41

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 411
    sub-int v39, v36, v28

    sub-int v39, v39, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    move/from16 v40, v0

    add-int v40, v40, v14

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 413
    .local v22, "nextLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v39, v0

    add-int v40, v22, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v41

    add-int v41, v41, v23

    move-object/from16 v0, v39

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v40

    move/from16 v4, v41

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 416
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 417
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    .line 418
    .end local v5    # "alignedCurrHeight":I
    .end local v6    # "alignedNextHeight":I
    .end local v7    # "alignedPrevHeight":I
    .end local v10    # "contentWidth":I
    .end local v11    # "currBaseline":I
    .end local v12    # "currLeft":I
    .end local v13    # "currOffset":F
    .end local v14    # "currRight":I
    .end local v15    # "currTop":I
    .end local v16    # "currTopOffset":I
    .end local v17    # "currWidth":I
    .end local v18    # "halfCurrWidth":I
    .end local v19    # "maxBaseline":I
    .end local v20    # "maxTextHeight":I
    .end local v21    # "nextBaseline":I
    .end local v22    # "nextLeft":I
    .end local v23    # "nextTop":I
    .end local v24    # "nextTopOffset":I
    .end local v25    # "nextWidth":I
    .end local v26    # "paddingBottom":I
    .end local v27    # "paddingLeft":I
    .end local v28    # "paddingRight":I
    .end local v29    # "paddingTop":I
    .end local v30    # "prevBaseline":I
    .end local v31    # "prevLeft":I
    .end local v32    # "prevTop":I
    .end local v33    # "prevTopOffset":I
    .end local v34    # "prevWidth":I
    .end local v35    # "stripHeight":I
    .end local v36    # "stripWidth":I
    .end local v37    # "textPaddedLeft":I
    .end local v38    # "textPaddedRight":I
    :goto_1
    return-void

    .line 335
    :cond_2
    if-nez p3, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    move/from16 v39, v0

    cmpl-float v39, p2, v39

    if-nez v39, :cond_0

    goto :goto_1

    .line 390
    .restart local v5    # "alignedCurrHeight":I
    .restart local v6    # "alignedNextHeight":I
    .restart local v7    # "alignedPrevHeight":I
    .restart local v10    # "contentWidth":I
    .restart local v11    # "currBaseline":I
    .restart local v12    # "currLeft":I
    .restart local v13    # "currOffset":F
    .restart local v14    # "currRight":I
    .restart local v16    # "currTopOffset":I
    .restart local v17    # "currWidth":I
    .restart local v18    # "halfCurrWidth":I
    .restart local v19    # "maxBaseline":I
    .restart local v20    # "maxTextHeight":I
    .restart local v21    # "nextBaseline":I
    .restart local v24    # "nextTopOffset":I
    .restart local v25    # "nextWidth":I
    .restart local v26    # "paddingBottom":I
    .restart local v27    # "paddingLeft":I
    .restart local v28    # "paddingRight":I
    .restart local v29    # "paddingTop":I
    .restart local v30    # "prevBaseline":I
    .restart local v33    # "prevTopOffset":I
    .restart local v34    # "prevWidth":I
    .restart local v35    # "stripHeight":I
    .restart local v36    # "stripWidth":I
    .restart local v37    # "textPaddedLeft":I
    .restart local v38    # "textPaddedRight":I
    :sswitch_0
    sub-int v39, v35, v29

    sub-int v39, v39, v26

    .line 391
    sub-int v39, v39, v20

    div-int/lit8 v9, v39, 0x2

    .line 392
    .local v9, "centeredTop":I
    add-int v32, v9, v33

    .line 393
    .restart local v32    # "prevTop":I
    add-int v15, v9, v16

    .line 394
    .restart local v15    # "currTop":I
    add-int v23, v9, v24

    .line 395
    .restart local v23    # "nextTop":I
    goto/16 :goto_0

    .line 397
    .end local v9    # "centeredTop":I
    .end local v15    # "currTop":I
    .end local v23    # "nextTop":I
    .end local v32    # "prevTop":I
    :sswitch_1
    sub-int v39, v35, v26

    sub-int v8, v39, v20

    .line 398
    .local v8, "bottomGravTop":I
    add-int v32, v8, v33

    .line 399
    .restart local v32    # "prevTop":I
    add-int v15, v8, v16

    .line 400
    .restart local v15    # "currTop":I
    add-int v23, v8, v24

    .restart local v23    # "nextTop":I
    goto/16 :goto_0

    .line 382
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method
