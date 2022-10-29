.class public Landroid/support/v7/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    }
.end annotation


# instance fields
.field private mBaselineAligned:Z

.field private mBaselineAlignedChildIndex:I

.field private mBaselineChildTop:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I

.field private mShowDividers:I

.field private mTotalLength:I

.field private mUseLargestChild:Z

.field private mWeightSum:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 148
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    iput-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 104
    iput v7, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 111
    iput v6, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 115
    const v3, 0x800033

    iput v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 150
    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v3, p3, v6}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 153
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    sget v3, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {v0, v3, v7}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v2

    .line 154
    .local v2, "index":I
    if-ltz v2, :cond_22

    .line 155
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->setOrientation(I)V

    .line 158
    :cond_22
    sget v3, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {v0, v3, v7}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v2

    .line 159
    if-ltz v2, :cond_2d

    .line 160
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->setGravity(I)V

    .line 163
    :cond_2d
    sget v3, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {v0, v3, v4}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 164
    .local v1, "baselineAligned":Z
    if-nez v1, :cond_38

    .line 165
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    .line 168
    :cond_38
    sget v3, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_weightSum:I

    .line 2120
    iget-object v4, v0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v4, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 168
    iput v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    .line 170
    sget v3, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    .line 171
    invoke-virtual {v0, v3, v7}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 173
    sget v3, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {v0, v3, v6}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 175
    sget v3, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_divider:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    sget v3, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_showDividers:I

    invoke-virtual {v0, v3, v6}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    .line 177
    sget v3, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {v0, v3, v6}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 2206
    iget-object v3, v0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 180
    return-void
.end method

.method private drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I

    .prologue
    .line 357
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 358
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 357
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 359
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 360
    return-void
.end method

.method private drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I

    .prologue
    .line 363
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v2, p2

    .line 364
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 363
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 365
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 366
    return-void
.end method

.method private forceUniformWidth(II)V
    .registers 12
    .param p1, "count"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 888
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 890
    .local v2, "uniformMeasureSpec":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_c
    if-ge v6, p1, :cond_38

    .line 10499
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 892
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_35

    .line 893
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 895
    .local v7, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_35

    .line 898
    iget v8, v7, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 899
    .local v8, "oldHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    .line 902
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 903
    iput v8, v7, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 890
    .end local v7    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v8    # "oldHeight":I
    :cond_35
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 907
    .end local v1    # "child":Landroid/view/View;
    :cond_38
    return-void
.end method

.method private static getChildrenSkipCount$5359dca7()I
    .registers 1

    .prologue
    .line 1341
    const/4 v0, 0x0

    return v0
.end method

.method private static getLocationOffset$3c7ec8d0()I
    .registers 1

    .prologue
    .line 1383
    const/4 v0, 0x0

    return v0
.end method

.method private static getNextLocationOffset$3c7ec8d0()I
    .registers 1

    .prologue
    .line 1395
    const/4 v0, 0x0

    return v0
.end method

.method private hasDividerBeforeChildAt(I)Z
    .registers 6
    .param p1, "childIndex"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 559
    if-nez p1, :cond_d

    .line 560
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_b

    .line 573
    :cond_a
    :goto_a
    return v0

    :cond_b
    move v0, v2

    .line 560
    goto :goto_a

    .line 561
    :cond_d
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v3

    if-ne p1, v3, :cond_1b

    .line 562
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_a

    move v0, v2

    goto :goto_a

    .line 563
    :cond_1b
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_37

    .line 564
    const/4 v0, 0x0

    .line 565
    .local v0, "hasVisibleViewBefore":Z
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_24
    if-ltz v1, :cond_a

    .line 566
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_34

    .line 567
    const/4 v0, 0x1

    .line 568
    goto :goto_a

    .line 565
    :cond_34
    add-int/lit8 v1, v1, -0x1

    goto :goto_24

    .end local v0    # "hasVisibleViewBefore":Z
    .end local v1    # "i":I
    :cond_37
    move v0, v2

    .line 573
    goto :goto_a
.end method

.method private measureChildBeforeLayout$12802926(Landroid/view/View;IIII)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "totalWidth"    # I
    .param p4, "heightMeasureSpec"    # I
    .param p5, "totalHeight"    # I

    .prologue
    .line 1371
    invoke-virtual/range {p0 .. p5}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1373
    return-void
.end method

.method private measureHorizontal(II)V
    .registers 52
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 921
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 922
    const/16 v36, 0x0

    .line 923
    .local v36, "maxHeight":I
    const/16 v19, 0x0

    .line 924
    .local v19, "childState":I
    const/4 v11, 0x0

    .line 925
    .local v11, "alternativeMaxHeight":I
    const/16 v44, 0x0

    .line 926
    .local v44, "weightedMaxHeight":I
    const/4 v10, 0x1

    .line 927
    .local v10, "allFillParent":Z
    const/16 v41, 0x0

    .line 929
    .local v41, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v21

    .line 931
    .local v21, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v45

    .line 932
    .local v45, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    .line 934
    .local v25, "heightMode":I
    const/16 v32, 0x0

    .line 935
    .local v32, "matchHeight":Z
    const/16 v39, 0x0

    .line 937
    .local v39, "skippedMeasure":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    if-nez v2, :cond_39

    .line 938
    :cond_2b
    const/4 v2, 0x4

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 939
    const/4 v2, 0x4

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 942
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    move-object/from16 v34, v0

    .line 943
    .local v34, "maxAscent":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    move-object/from16 v35, v0

    .line 945
    .local v35, "maxDescent":[I
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    aput v7, v34, v6

    aput v7, v34, v5

    aput v7, v34, v4

    aput v7, v34, v2

    .line 946
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    aput v7, v35, v6

    aput v7, v35, v5

    aput v7, v35, v4

    aput v7, v35, v2

    .line 948
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 949
    .local v13, "baselineAligned":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    move/from16 v42, v0

    .line 951
    .local v42, "useLargestChild":Z
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v45

    if-ne v0, v2, :cond_92

    const/16 v28, 0x1

    .line 953
    .local v28, "isExactly":Z
    :goto_71
    const/high16 v29, -0x80000000

    .line 956
    .local v29, "largestChildWidth":I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_75
    move/from16 v0, v26

    move/from16 v1, v21

    if-ge v0, v1, :cond_236

    .line 11499
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 959
    .local v3, "child":Landroid/view/View;
    if-nez v3, :cond_95

    .line 960
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    add-int/lit8 v2, v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 956
    :goto_8f
    add-int/lit8 v26, v26, 0x1

    goto :goto_75

    .line 951
    .end local v3    # "child":Landroid/view/View;
    .end local v26    # "i":I
    .end local v28    # "isExactly":Z
    .end local v29    # "largestChildWidth":I
    :cond_92
    const/16 v28, 0x0

    goto :goto_71

    .line 964
    .restart local v3    # "child":Landroid/view/View;
    .restart local v26    # "i":I
    .restart local v28    # "isExactly":Z
    .restart local v29    # "largestChildWidth":I
    :cond_95
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_177

    .line 969
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 970
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 974
    :cond_b4
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 976
    .local v30, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    move-object/from16 v0, v30

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v41, v41, v2

    .line 978
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v45

    if-ne v0, v2, :cond_19c

    move-object/from16 v0, v30

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v2, :cond_19c

    move-object/from16 v0, v30

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_19c

    .line 982
    if-eqz v28, :cond_17b

    .line 983
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, v30

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move-object/from16 v0, v30

    iget v5, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 995
    :goto_e9
    if-eqz v13, :cond_198

    .line 996
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .line 997
    .local v24, "freeSpec":I
    move/from16 v0, v24

    move/from16 v1, v24

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1040
    .end local v24    # "freeSpec":I
    :cond_f8
    :goto_f8
    const/16 v33, 0x0

    .line 1041
    .local v33, "matchHeightLocally":Z
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v25

    if-eq v0, v2, :cond_10b

    move-object/from16 v0, v30

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_10b

    .line 1045
    const/16 v32, 0x1

    .line 1046
    const/16 v33, 0x1

    .line 1049
    :cond_10b
    move-object/from16 v0, v30

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    move-object/from16 v0, v30

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v31, v2, v4

    .line 1050
    .local v31, "margin":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v17, v2, v31

    .line 1052
    .local v17, "childHeight":I
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v2

    .line 1051
    move/from16 v0, v19

    invoke-static {v0, v2}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v19

    .line 1054
    if-eqz v13, :cond_152

    .line 1055
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v15

    .line 1056
    .local v15, "childBaseline":I
    const/4 v2, -0x1

    if-eq v15, v2, :cond_152

    .line 1059
    move-object/from16 v0, v30

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v2, :cond_21c

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    :goto_138
    and-int/lit8 v2, v2, 0x70

    .line 1061
    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, -0x2

    shr-int/lit8 v27, v2, 0x1

    .line 1064
    .local v27, "index":I
    aget v2, v34, v27

    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v34, v27

    .line 1065
    aget v2, v35, v27

    sub-int v4, v17, v15

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v35, v27

    .line 1069
    .end local v15    # "childBaseline":I
    .end local v27    # "index":I
    :cond_152
    move/from16 v0, v36

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1071
    if-eqz v10, :cond_222

    move-object/from16 v0, v30

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_222

    const/4 v10, 0x1

    .line 1072
    :goto_164
    move-object/from16 v0, v30

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_229

    .line 1077
    if-eqz v33, :cond_225

    .end local v31    # "margin":I
    :goto_16f
    move/from16 v0, v44

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v44

    .line 1084
    .end local v17    # "childHeight":I
    .end local v30    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v33    # "matchHeightLocally":Z
    :cond_177
    :goto_177
    add-int/lit8 v26, v26, 0x0

    goto/16 :goto_8f

    .line 985
    .restart local v30    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    :cond_17b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v40, v0

    .line 986
    .local v40, "totalLength":I
    move-object/from16 v0, v30

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int v2, v2, v40

    move-object/from16 v0, v30

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    move/from16 v0, v40

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto/16 :goto_e9

    .line 999
    .end local v40    # "totalLength":I
    :cond_198
    const/16 v39, 0x1

    goto/16 :goto_f8

    .line 1002
    :cond_19c
    const/high16 v37, -0x80000000

    .line 1004
    .local v37, "oldWidth":I
    move-object/from16 v0, v30

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v2, :cond_1b4

    move-object/from16 v0, v30

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1b4

    .line 1009
    const/16 v37, 0x0

    .line 1010
    const/4 v2, -0x2

    move-object/from16 v0, v30

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1017
    :cond_1b4
    const/4 v2, 0x0

    cmpl-float v2, v41, v2

    if-nez v2, :cond_1fb

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_1bd
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildBeforeLayout$12802926(Landroid/view/View;IIII)V

    .line 1021
    const/high16 v2, -0x80000000

    move/from16 v0, v37

    if-eq v0, v2, :cond_1d3

    .line 1022
    move/from16 v0, v37

    move-object/from16 v1, v30

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1025
    :cond_1d3
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1026
    .local v20, "childWidth":I
    if-eqz v28, :cond_1fd

    .line 1027
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, v30

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int v4, v4, v20

    move-object/from16 v0, v30

    iget v5, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 1028
    add-int/lit8 v4, v4, 0x0

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1035
    :goto_1ef
    if-eqz v42, :cond_f8

    .line 1036
    move/from16 v0, v20

    move/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v29

    goto/16 :goto_f8

    .line 1017
    .end local v20    # "childWidth":I
    :cond_1fb
    const/4 v5, 0x0

    goto :goto_1bd

    .line 1030
    .restart local v20    # "childWidth":I
    :cond_1fd
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v40, v0

    .line 1031
    .restart local v40    # "totalLength":I
    add-int v2, v40, v20

    move-object/from16 v0, v30

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v30

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    .line 1032
    add-int/lit8 v2, v2, 0x0

    .line 1031
    move/from16 v0, v40

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_1ef

    .line 1059
    .end local v20    # "childWidth":I
    .end local v37    # "oldWidth":I
    .end local v40    # "totalLength":I
    .restart local v15    # "childBaseline":I
    .restart local v17    # "childHeight":I
    .restart local v31    # "margin":I
    .restart local v33    # "matchHeightLocally":Z
    :cond_21c
    move-object/from16 v0, v30

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    goto/16 :goto_138

    .line 1071
    .end local v15    # "childBaseline":I
    :cond_222
    const/4 v10, 0x0

    goto/16 :goto_164

    :cond_225
    move/from16 v31, v17

    .line 1077
    goto/16 :goto_16f

    .line 1080
    :cond_229
    if-eqz v33, :cond_233

    .end local v31    # "margin":I
    :goto_22b
    move/from16 v0, v31

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto/16 :goto_177

    .restart local v31    # "margin":I
    :cond_233
    move/from16 v31, v17

    goto :goto_22b

    .line 1087
    .end local v3    # "child":Landroid/view/View;
    .end local v17    # "childHeight":I
    .end local v30    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v31    # "margin":I
    .end local v33    # "matchHeightLocally":Z
    :cond_236
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v2, :cond_253

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_253

    .line 1088
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1093
    :cond_253
    const/4 v2, 0x1

    aget v2, v34, v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_26b

    const/4 v2, 0x0

    aget v2, v34, v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_26b

    const/4 v2, 0x2

    aget v2, v34, v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_26b

    const/4 v2, 0x3

    aget v2, v34, v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2a3

    .line 1097
    :cond_26b
    const/4 v2, 0x3

    aget v2, v34, v2

    const/4 v4, 0x0

    aget v4, v34, v4

    const/4 v5, 0x1

    aget v5, v34, v5

    const/4 v6, 0x2

    aget v6, v34, v6

    .line 1099
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1098
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1097
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1100
    .local v12, "ascent":I
    const/4 v2, 0x3

    aget v2, v35, v2

    const/4 v4, 0x0

    aget v4, v35, v4

    const/4 v5, 0x1

    aget v5, v35, v5

    const/4 v6, 0x2

    aget v6, v35, v6

    .line 1102
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1101
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1100
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 1103
    .local v23, "descent":I
    add-int v2, v12, v23

    move/from16 v0, v36

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1106
    .end local v12    # "ascent":I
    .end local v23    # "descent":I
    :cond_2a3
    if-eqz v42, :cond_31a

    const/high16 v2, -0x80000000

    move/from16 v0, v45

    if-eq v0, v2, :cond_2ad

    if-nez v45, :cond_31a

    .line 1108
    :cond_2ad
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1110
    const/16 v26, 0x0

    :goto_2b4
    move/from16 v0, v26

    move/from16 v1, v21

    if-ge v0, v1, :cond_31a

    .line 12499
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1113
    .restart local v3    # "child":Landroid/view/View;
    if-nez v3, :cond_2d1

    .line 1114
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    add-int/lit8 v2, v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1110
    :goto_2ce
    add-int/lit8 v26, v26, 0x1

    goto :goto_2b4

    .line 1118
    :cond_2d1
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_2dc

    .line 1119
    add-int/lit8 v26, v26, 0x0

    .line 1120
    goto :goto_2ce

    .line 1124
    :cond_2dc
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 1125
    .restart local v30    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    if-eqz v28, :cond_2fb

    .line 1126
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, v30

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int v4, v4, v29

    move-object/from16 v0, v30

    iget v5, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 1127
    add-int/lit8 v4, v4, 0x0

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_2ce

    .line 1129
    :cond_2fb
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v40, v0

    .line 1130
    .restart local v40    # "totalLength":I
    add-int v2, v40, v29

    move-object/from16 v0, v30

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v30

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    .line 1131
    add-int/lit8 v2, v2, 0x0

    .line 1130
    move/from16 v0, v40

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_2ce

    .line 1137
    .end local v3    # "child":Landroid/view/View;
    .end local v30    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v40    # "totalLength":I
    :cond_31a
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1139
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1142
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1145
    const/4 v4, 0x0

    move/from16 v0, p1

    invoke-static {v2, v0, v4}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v46

    .line 1146
    .local v46, "widthSizeAndState":I
    const v2, 0xffffff

    and-int v2, v2, v46

    .line 1151
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v22, v2, v4

    .line 1152
    .local v22, "delta":I
    if-nez v39, :cond_353

    if-eqz v22, :cond_5b1

    const/4 v2, 0x0

    cmpl-float v2, v41, v2

    if-lez v2, :cond_5b1

    .line 1153
    :cond_353
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_491

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    move/from16 v43, v0

    .line 1155
    .local v43, "weightSum":F
    :goto_362
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    aput v7, v34, v6

    aput v7, v34, v5

    aput v7, v34, v4

    aput v7, v34, v2

    .line 1156
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    aput v7, v35, v6

    aput v7, v35, v5

    aput v7, v35, v4

    aput v7, v35, v2

    .line 1157
    const/16 v36, -0x1

    .line 1159
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1161
    const/16 v26, 0x0

    :goto_385
    move/from16 v0, v26

    move/from16 v1, v21

    if-ge v0, v1, :cond_4d1

    .line 13499
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1164
    .restart local v3    # "child":Landroid/view/View;
    if-eqz v3, :cond_48d

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_48d

    .line 1169
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 1171
    .restart local v30    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    move-object/from16 v0, v30

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    move/from16 v16, v0

    .line 1172
    .local v16, "childExtra":F
    const/4 v2, 0x0

    cmpl-float v2, v16, v2

    if-lez v2, :cond_40c

    .line 1174
    move/from16 v0, v22

    int-to-float v2, v0

    mul-float v2, v2, v16

    div-float v2, v2, v43

    float-to-int v0, v2

    move/from16 v38, v0

    .line 1175
    .local v38, "share":I
    sub-float v43, v43, v16

    .line 1176
    sub-int v22, v22, v38

    .line 1180
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, v30

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v30

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v30

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 1178
    move/from16 v0, p2

    invoke-static {v0, v2, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v18

    .line 1185
    .local v18, "childHeightMeasureSpec":I
    move-object/from16 v0, v30

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v2, :cond_3e5

    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v45

    if-eq v0, v2, :cond_495

    .line 1188
    :cond_3e5
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v20, v2, v38

    .line 1189
    .restart local v20    # "childWidth":I
    if-gez v20, :cond_3ef

    .line 1190
    const/16 v20, 0x0

    :cond_3ef
    move/from16 v38, v20

    move-object v14, v3

    .line 1198
    .end local v3    # "child":Landroid/view/View;
    .end local v20    # "childWidth":I
    .end local v38    # "share":I
    .local v14, "child":Landroid/view/View;
    :goto_3f2
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v38

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move/from16 v0, v18

    invoke-virtual {v14, v2, v0}, Landroid/view/View;->measure(II)V

    .line 1205
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v2

    const/high16 v4, -0x1000000

    and-int/2addr v2, v4

    .line 1204
    move/from16 v0, v19

    invoke-static {v0, v2}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v19

    .line 1208
    .end local v14    # "child":Landroid/view/View;
    .end local v18    # "childHeightMeasureSpec":I
    :cond_40c
    if-eqz v28, :cond_49f

    .line 1209
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    move-object/from16 v0, v30

    iget v5, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    move-object/from16 v0, v30

    iget v5, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 1210
    add-int/lit8 v4, v4, 0x0

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1217
    :goto_427
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v25

    if-eq v0, v2, :cond_4c3

    move-object/from16 v0, v30

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_4c3

    const/16 v33, 0x1

    .line 1220
    .restart local v33    # "matchHeightLocally":Z
    :goto_436
    move-object/from16 v0, v30

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    move-object/from16 v0, v30

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v31, v2, v4

    .line 1221
    .restart local v31    # "margin":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v17, v2, v31

    .line 1222
    .restart local v17    # "childHeight":I
    move/from16 v0, v36

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1223
    if-eqz v33, :cond_4c7

    .end local v31    # "margin":I
    :goto_450
    move/from16 v0, v31

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1226
    if-eqz v10, :cond_4ca

    move-object/from16 v0, v30

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_4ca

    const/4 v10, 0x1

    .line 1228
    :goto_460
    if-eqz v13, :cond_48d

    .line 1229
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v15

    .line 1230
    .restart local v15    # "childBaseline":I
    const/4 v2, -0x1

    if-eq v15, v2, :cond_48d

    .line 1232
    move-object/from16 v0, v30

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v2, :cond_4cc

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    :goto_473
    and-int/lit8 v2, v2, 0x70

    .line 1234
    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, -0x2

    shr-int/lit8 v27, v2, 0x1

    .line 1237
    .restart local v27    # "index":I
    aget v2, v34, v27

    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v34, v27

    .line 1238
    aget v2, v35, v27

    sub-int v4, v17, v15

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v35, v27

    .line 1161
    .end local v15    # "childBaseline":I
    .end local v16    # "childExtra":F
    .end local v17    # "childHeight":I
    .end local v27    # "index":I
    .end local v30    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v33    # "matchHeightLocally":Z
    :cond_48d
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_385

    .end local v43    # "weightSum":F
    :cond_491
    move/from16 v43, v41

    .line 1153
    goto/16 :goto_362

    .line 1198
    .restart local v3    # "child":Landroid/view/View;
    .restart local v16    # "childExtra":F
    .restart local v18    # "childHeightMeasureSpec":I
    .restart local v30    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .restart local v38    # "share":I
    .restart local v43    # "weightSum":F
    :cond_495
    if-lez v38, :cond_49a

    move-object v14, v3

    .end local v3    # "child":Landroid/view/View;
    .restart local v14    # "child":Landroid/view/View;
    goto/16 :goto_3f2

    .end local v14    # "child":Landroid/view/View;
    .restart local v3    # "child":Landroid/view/View;
    :cond_49a
    const/16 v38, 0x0

    move-object v14, v3

    .end local v3    # "child":Landroid/view/View;
    .restart local v14    # "child":Landroid/view/View;
    goto/16 :goto_3f2

    .line 1212
    .end local v14    # "child":Landroid/view/View;
    .end local v18    # "childHeightMeasureSpec":I
    .end local v38    # "share":I
    :cond_49f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v40, v0

    .line 1213
    .restart local v40    # "totalLength":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v2, v2, v40

    move-object/from16 v0, v30

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v30

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    .line 1214
    add-int/lit8 v2, v2, 0x0

    .line 1213
    move/from16 v0, v40

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto/16 :goto_427

    .line 1217
    .end local v40    # "totalLength":I
    :cond_4c3
    const/16 v33, 0x0

    goto/16 :goto_436

    .restart local v17    # "childHeight":I
    .restart local v31    # "margin":I
    .restart local v33    # "matchHeightLocally":Z
    :cond_4c7
    move/from16 v31, v17

    .line 1223
    goto :goto_450

    .line 1226
    .end local v31    # "margin":I
    :cond_4ca
    const/4 v10, 0x0

    goto :goto_460

    .line 1232
    .restart local v15    # "childBaseline":I
    :cond_4cc
    move-object/from16 v0, v30

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    goto :goto_473

    .line 1245
    .end local v15    # "childBaseline":I
    .end local v16    # "childExtra":F
    .end local v17    # "childHeight":I
    .end local v30    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .end local v33    # "matchHeightLocally":Z
    :cond_4d1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1250
    const/4 v2, 0x1

    aget v2, v34, v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_4fb

    const/4 v2, 0x0

    aget v2, v34, v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_4fb

    const/4 v2, 0x2

    aget v2, v34, v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_4fb

    const/4 v2, 0x3

    aget v2, v34, v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_533

    .line 1254
    :cond_4fb
    const/4 v2, 0x3

    aget v2, v34, v2

    const/4 v4, 0x0

    aget v4, v34, v4

    const/4 v5, 0x1

    aget v5, v34, v5

    const/4 v6, 0x2

    aget v6, v34, v6

    .line 1256
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1255
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1254
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1257
    .restart local v12    # "ascent":I
    const/4 v2, 0x3

    aget v2, v35, v2

    const/4 v4, 0x0

    aget v4, v35, v4

    const/4 v5, 0x1

    aget v5, v35, v5

    const/4 v6, 0x2

    aget v6, v35, v6

    .line 1259
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1258
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1257
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 1260
    .restart local v23    # "descent":I
    add-int v2, v12, v23

    move/from16 v0, v36

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1289
    .end local v12    # "ascent":I
    .end local v23    # "descent":I
    .end local v43    # "weightSum":F
    :cond_533
    if-nez v10, :cond_53d

    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v25

    if-eq v0, v2, :cond_53d

    .line 1290
    move/from16 v36, v11

    .line 1293
    :cond_53d
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    add-int v2, v2, v36

    .line 1296
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1298
    const/high16 v2, -0x1000000

    and-int v2, v2, v19

    or-int v2, v2, v46

    shl-int/lit8 v4, v19, 0x10

    .line 1299
    move/from16 v0, v36

    move/from16 v1, p2

    invoke-static {v0, v1, v4}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v4

    .line 1298
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    .line 1302
    if-eqz v32, :cond_5fe

    .line 15311
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getMeasuredHeight()I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 15313
    const/4 v2, 0x0

    move/from16 v47, v2

    :goto_574
    move/from16 v0, v47

    move/from16 v1, v21

    if-ge v0, v1, :cond_5fe

    .line 15499
    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 15315
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_5ac

    .line 15316
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 15318
    iget v4, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_5ac

    .line 15321
    iget v0, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v48, v0

    .line 15322
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iput v4, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 15325
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move/from16 v6, p1

    invoke-virtual/range {v4 .. v9}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 15326
    move/from16 v0, v48

    iput v0, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 15313
    :cond_5ac
    add-int/lit8 v2, v47, 0x1

    move/from16 v47, v2

    goto :goto_574

    .line 1263
    :cond_5b1
    move/from16 v0, v44

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1267
    if-eqz v42, :cond_533

    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v45

    if-eq v0, v2, :cond_533

    .line 1268
    const/16 v26, 0x0

    :goto_5c1
    move/from16 v0, v26

    move/from16 v1, v21

    if-ge v0, v1, :cond_533

    .line 14499
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1271
    .restart local v3    # "child":Landroid/view/View;
    if-eqz v3, :cond_5fb

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_5fb

    .line 1276
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 1278
    iget v2, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1279
    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_5fb

    .line 1280
    const/high16 v2, 0x40000000    # 2.0f

    .line 1281
    move/from16 v0, v29

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1282
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1280
    invoke-virtual {v3, v2, v4}, Landroid/view/View;->measure(II)V

    .line 1268
    :cond_5fb
    add-int/lit8 v26, v26, 0x1

    goto :goto_5c1

    .line 1305
    .end local v3    # "child":Landroid/view/View;
    :cond_5fe
    return-void
.end method

.method private static setChildFrame(Landroid/view/View;IIII)V
    .registers 7
    .param p0, "child"    # Landroid/view/View;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1639
    add-int v0, p1, p3

    add-int v1, p2, p4

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1640
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1735
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .registers 4

    .prologue
    const/4 v2, -0x2

    .line 1718
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    if-nez v0, :cond_b

    .line 1719
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    .line 1723
    :goto_a
    return-object v0

    .line 1720
    :cond_b
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 1721
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    goto :goto_a

    .line 1723
    :cond_17
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1705
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1728
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()I
    .registers 9

    .prologue
    const/4 v5, -0x1

    .line 417
    iget v6, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-gez v6, :cond_a

    .line 418
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v5

    .line 465
    :cond_9
    :goto_9
    return v5

    .line 421
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v6

    iget v7, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-gt v6, v7, :cond_1b

    .line 422
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 426
    :cond_1b
    iget v6, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 427
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 429
    .local v1, "childBaseline":I
    if-ne v1, v5, :cond_34

    .line 430
    iget v6, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-eqz v6, :cond_9

    .line 436
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 446
    :cond_34
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 448
    .local v2, "childTop":I
    iget v5, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_46

    .line 449
    iget v5, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v4, v5, 0x70

    .line 450
    .local v4, "majorGravity":I
    const/16 v5, 0x30

    if-eq v4, v5, :cond_46

    .line 451
    sparse-switch v4, :sswitch_data_7e

    .line 464
    .end local v4    # "majorGravity":I
    :cond_46
    :goto_46
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 465
    .local v3, "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    iget v5, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v5, v2

    add-int/2addr v5, v1

    goto :goto_9

    .line 453
    .end local v3    # "lp":Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .restart local v4    # "majorGravity":I
    :sswitch_51
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v2, v5, v6

    .line 454
    goto :goto_46

    .line 457
    :sswitch_64
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    goto :goto_46

    .line 451
    :sswitch_data_7e
    .sparse-switch
        0x10 -> :sswitch_64
        0x50 -> :sswitch_51
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .registers 2

    .prologue
    .line 474
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .registers 2

    .prologue
    .line 263
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .registers 2

    .prologue
    .line 272
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 1661
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .registers 2

    .prologue
    .line 207
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    return v0
.end method

.method getVirtualChildCount()I
    .registers 2

    .prologue
    .line 512
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .registers 2

    .prologue
    .line 523
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v5, 0x8

    const/4 v0, 0x0

    .line 277
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_8

    .line 286
    :cond_7
    :goto_7
    return-void

    .line 281
    :cond_8
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6a

    .line 2289
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v2

    move v1, v0

    .line 2290
    :goto_12
    if-ge v1, v2, :cond_3e

    .line 2499
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2293
    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v5, :cond_3a

    .line 2294
    invoke-direct {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2295
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 2296
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    sub-int v0, v3, v0

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v0, v3

    .line 2297
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 2290
    :cond_3a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    .line 2302
    :cond_3e
    invoke-direct {p0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2303
    add-int/lit8 v0, v2, -0x1

    .line 3499
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2305
    if-nez v1, :cond_5c

    .line 2306
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v0, v1

    .line 2311
    :goto_58
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    goto :goto_7

    .line 2308
    :cond_5c
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 2309
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    goto :goto_58

    .line 4316
    :cond_6a
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v2

    .line 4317
    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    move v1, v0

    .line 4318
    :goto_73
    if-ge v1, v2, :cond_a9

    .line 4499
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4321
    if-eqz v4, :cond_99

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v5, :cond_99

    .line 4322
    invoke-direct {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 4323
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 4325
    if-eqz v3, :cond_9d

    .line 4326
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v0, v4

    .line 4330
    :goto_96
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 4318
    :cond_99
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_73

    .line 4328
    :cond_9d
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int v0, v4, v0

    iget v4, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v0, v4

    goto :goto_96

    .line 4335
    :cond_a9
    invoke-direct {p0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4336
    add-int/lit8 v0, v2, -0x1

    .line 5499
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4338
    if-nez v1, :cond_cf

    .line 4339
    if-eqz v3, :cond_c2

    .line 4340
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    .line 4352
    :goto_bd
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    goto/16 :goto_7

    .line 4342
    :cond_c2
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v0, v1

    goto :goto_bd

    .line 4345
    :cond_cf
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 4346
    if-eqz v3, :cond_e3

    .line 4347
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int v0, v1, v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v0, v1

    goto :goto_bd

    .line 4349
    :cond_e3
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    goto :goto_bd
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1739
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_12

    .line 1740
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1741
    const-class v0, Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1743
    :cond_12
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1746
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_12

    .line 1747
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1748
    const-class v0, Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1750
    :cond_12
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 29
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1400
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_bd

    .line 16420
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v8

    .line 16426
    sub-int v3, p4, p2

    .line 16427
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v4

    sub-int v9, v3, v4

    .line 16430
    sub-int/2addr v3, v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v4

    sub-int v10, v3, v4

    .line 16432
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    .line 16434
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    .line 16435
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    const v5, 0x800007

    and-int/2addr v5, v4

    .line 16437
    sparse-switch v3, :sswitch_data_1e6

    .line 16450
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v3

    .line 16454
    :goto_33
    const/4 v7, 0x0

    move v6, v3

    :goto_35
    if-ge v7, v11, :cond_1d6

    .line 17499
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 16456
    if-nez v12, :cond_62

    .line 16457
    add-int/lit8 v6, v6, 0x0

    move v3, v7

    .line 16454
    :goto_42
    add-int/lit8 v7, v3, 0x1

    goto :goto_35

    .line 16440
    :sswitch_45
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v3

    add-int v3, v3, p5

    sub-int v3, v3, p3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v3, v4

    .line 16441
    goto :goto_33

    .line 16445
    :sswitch_53
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v3

    sub-int v4, p5, p3

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 16446
    goto :goto_33

    .line 16458
    :cond_62
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1e2

    .line 16459
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 16460
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 16463
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 16465
    iget v4, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 16466
    if-gez v4, :cond_7d

    move v4, v5

    .line 16469
    :cond_7d
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v15

    .line 16470
    invoke-static {v4, v15}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    .line 16472
    and-int/lit8 v4, v4, 0x7

    sparse-switch v4, :sswitch_data_1f0

    .line 16484
    iget v4, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v4, v8

    .line 16488
    :goto_8d
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v15

    if-eqz v15, :cond_9a

    .line 16489
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v6, v15

    .line 16492
    :cond_9a
    iget v15, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v6, v15

    .line 16493
    add-int/lit8 v15, v6, 0x0

    invoke-static {v12, v4, v15, v13, v14}, Landroid/support/v7/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 16495
    iget v3, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v14

    add-int/lit8 v3, v3, 0x0

    add-int/2addr v6, v3

    .line 16497
    add-int/lit8 v3, v7, 0x0

    goto :goto_42

    .line 16474
    :sswitch_ab
    sub-int v4, v10, v13

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v8

    iget v15, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v4, v15

    iget v15, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v15

    .line 16476
    goto :goto_8d

    .line 16479
    :sswitch_b7
    sub-int v4, v9, v13

    iget v15, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v15

    .line 16480
    goto :goto_8d

    .line 17515
    :cond_bd
    invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v5

    .line 17516
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v8

    .line 17522
    sub-int v3, p5, p3

    .line 17523
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int v12, v3, v4

    .line 17526
    sub-int/2addr v3, v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int v13, v3, v4

    .line 17528
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v14

    .line 17530
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    const v4, 0x800007

    and-int/2addr v3, v4

    .line 17531
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v11, v4, 0x70

    .line 17533
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 17535
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    move-object/from16 v16, v0

    .line 17536
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    move-object/from16 v17, v0

    .line 17538
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    .line 17539
    invoke-static {v3, v4}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    sparse-switch v3, :sswitch_data_1fa

    .line 17552
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v9

    .line 17556
    :goto_105
    const/4 v4, 0x0

    .line 17557
    const/4 v3, 0x1

    .line 17559
    if-eqz v5, :cond_1de

    .line 17560
    add-int/lit8 v4, v14, -0x1

    .line 17561
    const/4 v3, -0x1

    move v5, v4

    move v4, v3

    .line 17564
    :goto_10e
    const/4 v10, 0x0

    :goto_10f
    if-ge v10, v14, :cond_1d6

    .line 17565
    mul-int v3, v4, v10

    add-int v18, v5, v3

    .line 18499
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 17568
    if-nez v19, :cond_144

    .line 17569
    add-int/lit8 v9, v9, 0x0

    move v3, v10

    .line 17564
    :goto_122
    add-int/lit8 v10, v3, 0x1

    goto :goto_10f

    .line 17542
    :sswitch_125
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v3

    add-int v3, v3, p4

    sub-int v3, v3, p2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v9, v3, v4

    .line 17543
    goto :goto_105

    .line 17547
    :sswitch_134
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v3

    sub-int v4, p4, p2

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    add-int v9, v3, v4

    .line 17548
    goto :goto_105

    .line 17570
    :cond_144
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-eq v3, v6, :cond_1db

    .line 17571
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 17572
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    .line 17573
    const/4 v6, -0x1

    .line 17576
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 17578
    if-eqz v15, :cond_169

    iget v7, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v7, v0, :cond_169

    .line 17579
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBaseline()I

    move-result v6

    .line 17582
    :cond_169
    iget v7, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 17583
    if-gez v7, :cond_16e

    move v7, v11

    .line 17587
    :cond_16e
    and-int/lit8 v7, v7, 0x70

    sparse-switch v7, :sswitch_data_204

    move v6, v8

    .line 17623
    :goto_174
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v7

    if-eqz v7, :cond_1d7

    .line 17624
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v7, v9

    .line 17627
    :goto_183
    iget v9, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v7, v9

    .line 17628
    add-int/lit8 v9, v7, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v9, v6, v1, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 17630
    iget v3, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int v3, v3, v20

    .line 17631
    add-int/lit8 v3, v3, 0x0

    add-int v9, v7, v3

    .line 17633
    add-int/lit8 v3, v10, 0x0

    goto :goto_122

    .line 17589
    :sswitch_19c
    iget v7, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    .line 17590
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v6, v0, :cond_1d9

    .line 17591
    const/16 v22, 0x1

    aget v22, v16, v22

    sub-int v6, v22, v6

    add-int/2addr v6, v7

    goto :goto_174

    .line 17607
    :sswitch_1ad
    sub-int v6, v13, v21

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v8

    iget v7, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    .line 17609
    goto :goto_174

    .line 17612
    :sswitch_1b9
    sub-int v7, v12, v21

    iget v0, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    move/from16 v22, v0

    sub-int v7, v7, v22

    .line 17613
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v6, v0, :cond_1d9

    .line 17614
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    sub-int v6, v22, v6

    .line 17615
    const/16 v22, 0x2

    aget v22, v17, v22

    sub-int v6, v22, v6

    sub-int v6, v7, v6

    .line 17616
    goto :goto_174

    .line 1405
    :cond_1d6
    return-void

    :cond_1d7
    move v7, v9

    goto :goto_183

    :cond_1d9
    move v6, v7

    goto :goto_174

    :cond_1db
    move v3, v10

    goto/16 :goto_122

    :cond_1de
    move v5, v4

    move v4, v3

    goto/16 :goto_10e

    :cond_1e2
    move v3, v7

    goto/16 :goto_42

    .line 16437
    nop

    :sswitch_data_1e6
    .sparse-switch
        0x10 -> :sswitch_53
        0x50 -> :sswitch_45
    .end sparse-switch

    .line 16472
    :sswitch_data_1f0
    .sparse-switch
        0x1 -> :sswitch_ab
        0x5 -> :sswitch_b7
    .end sparse-switch

    .line 17539
    :sswitch_data_1fa
    .sparse-switch
        0x1 -> :sswitch_134
        0x5 -> :sswitch_125
    .end sparse-switch

    .line 17587
    :sswitch_data_204
    .sparse-switch
        0x10 -> :sswitch_1ad
        0x30 -> :sswitch_19c
        0x50 -> :sswitch_1b9
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 30
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 544
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3ac

    .line 5588
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 5589
    const/16 v18, 0x0

    .line 5590
    const/16 v17, 0x0

    .line 5591
    const/16 v16, 0x0

    .line 5592
    const/4 v15, 0x0

    .line 5593
    const/4 v14, 0x1

    .line 5594
    const/4 v5, 0x0

    .line 5596
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v21

    .line 5598
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 5599
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 5601
    const/4 v10, 0x0

    .line 5602
    const/4 v12, 0x0

    .line 5604
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    move/from16 v24, v0

    .line 5605
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    move/from16 v25, v0

    .line 5607
    const/high16 v11, -0x80000000

    .line 5610
    const/16 v19, 0x0

    :goto_33
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_18d

    .line 6499
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5613
    if-nez v4, :cond_52

    .line 5614
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    add-int/lit8 v3, v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v3, v19

    .line 5610
    :goto_4f
    add-int/lit8 v19, v3, 0x1

    goto :goto_33

    .line 5618
    :cond_52
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-eq v3, v6, :cond_3cb

    .line 5623
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 5624
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 5627
    :cond_71
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 5629
    iget v3, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v13, v5, v3

    .line 5631
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-ne v0, v3, :cond_c8

    iget v3, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v3, :cond_c8

    iget v3, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_c8

    .line 5635
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 5636
    iget v5, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v5, v3

    iget v6, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 5637
    const/4 v12, 0x1

    move v8, v11

    move v11, v12

    .line 5676
    :goto_a2
    if-ltz v24, :cond_b2

    add-int/lit8 v3, v19, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_b2

    .line 5677
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 5683
    :cond_b2
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_11d

    iget v3, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_11d

    .line 5684
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5639
    :cond_c8
    const/high16 v3, -0x80000000

    .line 5641
    iget v5, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v5, :cond_d9

    iget v5, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_d9

    .line 5646
    const/4 v3, 0x0

    .line 5647
    const/4 v5, -0x2

    iput v5, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    :cond_d9
    move/from16 v20, v3

    .line 5654
    const/4 v6, 0x0

    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-nez v3, :cond_11b

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_e5
    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v8}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildBeforeLayout$12802926(Landroid/view/View;IIII)V

    .line 5658
    const/high16 v3, -0x80000000

    move/from16 v0, v20

    if-eq v0, v3, :cond_f8

    .line 5659
    move/from16 v0, v20

    iput v0, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 5662
    :cond_f8
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 5663
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 5664
    add-int v6, v5, v3

    iget v7, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    iget v7, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    .line 5665
    add-int/lit8 v6, v6, 0x0

    .line 5664
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 5667
    if-eqz v25, :cond_3c7

    .line 5668
    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v8, v11

    move v11, v12

    goto :goto_a2

    .line 5654
    :cond_11b
    const/4 v8, 0x0

    goto :goto_e5

    .line 5690
    :cond_11d
    const/4 v3, 0x0

    .line 5691
    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v5, :cond_3c4

    iget v5, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3c4

    .line 5696
    const/4 v5, 0x1

    .line 5697
    const/4 v3, 0x1

    .line 5700
    :goto_12b
    iget v6, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v7, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    .line 5701
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v6

    .line 5702
    move/from16 v0, v18

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 5704
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v4

    .line 5703
    move/from16 v0, v17

    invoke-static {v0, v4}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v10

    .line 5706
    if-eqz v14, :cond_177

    iget v4, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v14, -0x1

    if-ne v4, v14, :cond_177

    const/4 v4, 0x1

    .line 5707
    :goto_14d
    iget v9, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    const/4 v14, 0x0

    cmpl-float v9, v9, v14

    if-lez v9, :cond_17b

    .line 5712
    if-eqz v3, :cond_179

    move v3, v6

    :goto_157
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v6, v13

    move v7, v4

    move/from16 v9, v16

    move v4, v11

    move v11, v12

    move/from16 v26, v8

    move v8, v3

    move/from16 v3, v26

    .line 5719
    :goto_166
    add-int/lit8 v12, v19, 0x0

    move v14, v7

    move v15, v8

    move/from16 v16, v9

    move/from16 v17, v10

    move/from16 v18, v11

    move v11, v3

    move v10, v5

    move v3, v12

    move v5, v6

    move v12, v4

    goto/16 :goto_4f

    .line 5706
    :cond_177
    const/4 v4, 0x0

    goto :goto_14d

    :cond_179
    move v3, v7

    .line 5712
    goto :goto_157

    .line 5715
    :cond_17b
    if-eqz v3, :cond_18b

    :goto_17d
    move/from16 v0, v16

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v6, v13

    move v7, v4

    move v9, v3

    move v4, v11

    move v3, v8

    move v8, v15

    move v11, v12

    goto :goto_166

    :cond_18b
    move v6, v7

    goto :goto_17d

    .line 5722
    :cond_18d
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v3, :cond_1aa

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_1aa

    .line 5723
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 5726
    :cond_1aa
    if-eqz v25, :cond_1fd

    const/high16 v3, -0x80000000

    move/from16 v0, v23

    if-eq v0, v3, :cond_1b4

    if-nez v23, :cond_1fd

    .line 5728
    :cond_1b4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 5730
    const/4 v4, 0x0

    :goto_1ba
    move/from16 v0, v21

    if-ge v4, v0, :cond_1fd

    .line 7499
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5733
    if-nez v3, :cond_1d4

    .line 5734
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    add-int/lit8 v3, v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move v3, v4

    .line 5730
    :goto_1d1
    add-int/lit8 v4, v3, 0x1

    goto :goto_1ba

    .line 5738
    :cond_1d4
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1df

    .line 5739
    add-int/lit8 v3, v4, 0x0

    .line 5740
    goto :goto_1d1

    .line 5744
    :cond_1df
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 5746
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 5747
    add-int v7, v6, v11

    iget v8, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v7

    .line 5748
    add-int/lit8 v3, v3, 0x0

    .line 5747
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move v3, v4

    goto :goto_1d1

    .line 5753
    :cond_1fd
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 5755
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 5758
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 5761
    const/4 v4, 0x0

    move/from16 v0, p2

    invoke-static {v3, v0, v4}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v19

    .line 5762
    const v3, 0xffffff

    and-int v3, v3, v19

    .line 5767
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v6, v3, v4

    .line 5768
    if-nez v12, :cond_236

    if-eqz v6, :cond_364

    const/4 v3, 0x0

    cmpl-float v3, v5, v3

    if-lez v3, :cond_364

    .line 5769
    :cond_236
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_243

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    .line 5771
    :cond_243
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 5773
    const/4 v3, 0x0

    move v15, v3

    move v12, v14

    move/from16 v13, v16

    move/from16 v11, v17

    move/from16 v14, v18

    :goto_251
    move/from16 v0, v21

    if-ge v15, v0, :cond_318

    .line 8499
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5776
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_3bc

    .line 5780
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 5782
    iget v8, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 5783
    const/4 v4, 0x0

    cmpl-float v4, v8, v4

    if-lez v4, :cond_3b7

    .line 5785
    int-to-float v4, v6

    mul-float/2addr v4, v8

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 5786
    sub-float v8, v5, v8

    .line 5787
    sub-int v9, v6, v4

    .line 5790
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 5789
    move/from16 v0, p1

    invoke-static {v0, v5, v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v5

    .line 5795
    iget v6, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v6, :cond_299

    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v6, :cond_30b

    .line 5798
    :cond_299
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v4, v6

    .line 5799
    if-gez v4, :cond_2a1

    .line 5800
    const/4 v4, 0x0

    :cond_2a1
    move-object v6, v7

    .line 5808
    :goto_2a2
    const/high16 v16, 0x40000000    # 2.0f

    .line 5809
    move/from16 v0, v16

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 5808
    invoke-virtual {v6, v5, v4}, Landroid/view/View;->measure(II)V

    .line 5815
    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v4

    and-int/lit16 v4, v4, -0x100

    .line 5814
    invoke-static {v11, v4}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v4

    move v5, v9

    move v6, v4

    move v4, v8

    .line 5819
    :goto_2ba
    iget v8, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v9, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v8, v9

    .line 5820
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v8

    .line 5821
    invoke-static {v14, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 5823
    const/high16 v14, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v14, :cond_312

    iget v14, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_312

    const/4 v14, 0x1

    .line 5826
    :goto_2d7
    if-eqz v14, :cond_314

    :goto_2d9
    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 5829
    if-eqz v12, :cond_316

    iget v8, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v12, -0x1

    if-ne v8, v12, :cond_316

    const/4 v8, 0x1

    .line 5831
    :goto_2e5
    move-object/from16 v0, p0

    iget v12, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 5832
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v12

    iget v13, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v7, v13

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v7

    .line 5833
    add-int/lit8 v3, v3, 0x0

    .line 5832
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move v3, v9

    move v7, v11

    .line 5773
    :goto_300
    add-int/lit8 v9, v15, 0x1

    move v15, v9

    move v12, v8

    move v13, v3

    move v11, v6

    move v14, v7

    move v6, v5

    move v5, v4

    goto/16 :goto_251

    .line 5808
    :cond_30b
    if-lez v4, :cond_30f

    move-object v6, v7

    goto :goto_2a2

    :cond_30f
    const/4 v4, 0x0

    move-object v6, v7

    goto :goto_2a2

    .line 5823
    :cond_312
    const/4 v14, 0x0

    goto :goto_2d7

    :cond_314
    move v8, v9

    .line 5826
    goto :goto_2d9

    .line 5829
    :cond_316
    const/4 v8, 0x0

    goto :goto_2e5

    .line 5837
    :cond_318
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move v3, v13

    move/from16 v17, v11

    move v4, v14

    move v14, v12

    .line 5869
    :goto_32f
    if-nez v14, :cond_3b0

    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v5, :cond_3b0

    .line 5873
    :goto_337
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 5876
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 5878
    move/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v3, v0, v1}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    .line 5881
    if-eqz v10, :cond_363

    .line 5882
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->forceUniformWidth(II)V

    .line 549
    :cond_363
    :goto_363
    return-void

    .line 5840
    :cond_364
    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 5846
    if-eqz v25, :cond_3b2

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v3, :cond_3b2

    .line 5847
    const/4 v3, 0x0

    move v4, v3

    :goto_374
    move/from16 v0, v21

    if-ge v4, v0, :cond_3b2

    .line 9499
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 5850
    if-eqz v5, :cond_3a8

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-eq v3, v6, :cond_3a8

    .line 5855
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 5857
    iget v3, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 5858
    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_3a8

    .line 5860
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    .line 5862
    invoke-static {v11, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 5859
    invoke-virtual {v5, v3, v6}, Landroid/view/View;->measure(II)V

    .line 5847
    :cond_3a8
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_374

    .line 547
    :cond_3ac
    invoke-direct/range {p0 .. p2}, Landroid/support/v7/widget/LinearLayoutCompat;->measureHorizontal(II)V

    goto :goto_363

    :cond_3b0
    move v3, v4

    goto :goto_337

    :cond_3b2
    move v3, v13

    move/from16 v4, v18

    goto/16 :goto_32f

    :cond_3b7
    move v4, v5

    move v5, v6

    move v6, v11

    goto/16 :goto_2ba

    :cond_3bc
    move v4, v5

    move v8, v12

    move v3, v13

    move v7, v14

    move v5, v6

    move v6, v11

    goto/16 :goto_300

    :cond_3c4
    move v5, v10

    goto/16 :goto_12b

    :cond_3c7
    move v8, v11

    move v11, v12

    goto/16 :goto_a2

    :cond_3cb
    move v3, v11

    move v4, v12

    move v6, v5

    move v7, v14

    move v8, v15

    move/from16 v9, v16

    move v5, v10

    move/from16 v11, v18

    move/from16 v10, v17

    goto/16 :goto_166
.end method

.method public setBaselineAligned(Z)V
    .registers 2
    .param p1, "baselineAligned"    # Z

    .prologue
    .line 386
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 387
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .registers 5
    .param p1, "i"    # I

    .prologue
    .line 482
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_29

    .line 483
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "base aligned child index out of range (0, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_29
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 487
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 227
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_6

    .line 240
    :goto_5
    return-void

    .line 230
    :cond_6
    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 231
    if-eqz p1, :cond_20

    .line 232
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 233
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 238
    :goto_16
    if-nez p1, :cond_19

    const/4 v0, 0x1

    :cond_19
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->setWillNotDraw(Z)V

    .line 239
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    goto :goto_5

    .line 235
    :cond_20
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 236
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    goto :goto_16
.end method

.method public setDividerPadding(I)V
    .registers 2
    .param p1, "padding"    # I

    .prologue
    .line 252
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 253
    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .param p1, "gravity"    # I

    .prologue
    .line 1673
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    if-eq v0, p1, :cond_19

    .line 1674
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_e

    .line 1675
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 1678
    :cond_e
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_14

    .line 1679
    or-int/lit8 p1, p1, 0x30

    .line 1682
    :cond_14
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 1683
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    .line 1685
    :cond_19
    return-void
.end method

.method public setHorizontalGravity(I)V
    .registers 5
    .param p1, "horizontalGravity"    # I

    .prologue
    const v2, 0x800007

    .line 1688
    and-int v0, p1, v2

    .line 1689
    .local v0, "gravity":I
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/2addr v1, v2

    if-eq v1, v0, :cond_16

    .line 1690
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    const v2, -0x800008

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 1691
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    .line 1693
    :cond_16
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 412
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 413
    return-void
.end method

.method public setOrientation(I)V
    .registers 3
    .param p1, "orientation"    # I

    .prologue
    .line 1648
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    if-eq v0, p1, :cond_9

    .line 1649
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    .line 1650
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    .line 1652
    :cond_9
    return-void
.end method

.method public setShowDividers(I)V
    .registers 3
    .param p1, "showDividers"    # I

    .prologue
    .line 190
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    if-eq p1, v0, :cond_7

    .line 191
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    .line 193
    :cond_7
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    .line 194
    return-void
.end method

.method public setVerticalGravity(I)V
    .registers 4
    .param p1, "verticalGravity"    # I

    .prologue
    .line 1696
    and-int/lit8 v0, p1, 0x70

    .line 1697
    .local v0, "gravity":I
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_12

    .line 1698
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 1699
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    .line 1701
    :cond_12
    return-void
.end method

.method public setWeightSum(F)V
    .registers 3
    .param p1, "weightSum"    # F

    .prologue
    .line 539
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    .line 540
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method
