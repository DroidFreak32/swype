.class public Landroid/support/v7/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# instance fields
.field private mAllowStacking:Z

.field private mLastWidthSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 47
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/res/ConfigurationHelper;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v2

    const/16 v3, 0x140

    if-lt v2, v3, :cond_25

    const/4 v0, 0x1

    .line 49
    .local v0, "allowStackingDefault":Z
    :goto_13
    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 50
    .local v1, "ta":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout_allowStacking:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 52
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    return-void

    .line 47
    .end local v0    # "allowStackingDefault":Z
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    :cond_25
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private isStacked()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 133
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private setStacked(Z)V
    .registers 5
    .param p1, "stacked"    # Z

    .prologue
    .line 118
    if-eqz p1, :cond_2d

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ButtonBarLayout;->setOrientation(I)V

    .line 119
    if-eqz p1, :cond_2f

    const/4 v2, 0x5

    :goto_9
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ButtonBarLayout;->setGravity(I)V

    .line 120
    sget v2, Landroid/support/v7/appcompat/R$id;->spacer:I

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 121
    .local v1, "spacer":Landroid/view/View;
    if-eqz v1, :cond_1b

    .line 122
    if-eqz p1, :cond_32

    const/16 v2, 0x8

    :goto_18
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    :cond_1b
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v2

    .line 127
    add-int/lit8 v0, v2, -0x2

    .local v0, "i":I
    :goto_21
    if-ltz v0, :cond_34

    .line 128
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 127
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    .line 118
    .end local v0    # "i":I
    .end local v1    # "spacer":Landroid/view/View;
    :cond_2d
    const/4 v2, 0x0

    goto :goto_3

    .line 119
    :cond_2f
    const/16 v2, 0x50

    goto :goto_9

    .line 122
    .restart local v1    # "spacer":Landroid/view/View;
    :cond_32
    const/4 v2, 0x4

    goto :goto_18

    .line 130
    .restart local v0    # "i":I
    :cond_34
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 67
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 68
    .local v6, "widthSize":I
    iget-boolean v8, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v8, :cond_19

    .line 69
    iget v8, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    if-le v6, v8, :cond_17

    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 71
    invoke-direct {p0, v5}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 73
    :cond_17
    iput v6, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    .line 75
    :cond_19
    const/4 v4, 0x0

    .line 80
    .local v4, "needsRemeasure":Z
    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v8

    if-nez v8, :cond_5a

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v8, v9, :cond_5a

    .line 81
    const/high16 v8, -0x80000000

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 83
    .local v3, "initialWidthMeasureSpec":I
    const/4 v4, 0x1

    .line 87
    :goto_2f
    invoke-super {p0, v3, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 88
    iget-boolean v8, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eqz v8, :cond_54

    invoke-direct {p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v8

    if-nez v8, :cond_54

    .line 91
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-lt v8, v9, :cond_5c

    .line 93
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMeasuredWidthAndState(Landroid/view/View;)I

    move-result v8

    .line 94
    const/high16 v9, -0x1000000

    and-int/2addr v8, v9

    .line 95
    const/high16 v9, 0x1000000

    if-ne v8, v9, :cond_4e

    move v5, v7

    .line 106
    .local v5, "stack":Z
    :cond_4e
    :goto_4e
    if-eqz v5, :cond_54

    .line 107
    invoke-direct {p0, v7}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 109
    const/4 v4, 0x1

    .line 112
    .end local v5    # "stack":Z
    :cond_54
    if-eqz v4, :cond_59

    .line 113
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 115
    :cond_59
    return-void

    .line 85
    .end local v3    # "initialWidthMeasureSpec":I
    :cond_5a
    move v3, p1

    .restart local v3    # "initialWidthMeasureSpec":I
    goto :goto_2f

    .line 99
    :cond_5c
    const/4 v0, 0x0

    .line 100
    .local v0, "childWidthTotal":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_62
    if-ge v2, v1, :cond_70

    .line 101
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v0, v8

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    .line 103
    :cond_70
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingLeft()I

    move-result v8

    add-int/2addr v8, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    if-le v8, v6, :cond_7d

    move v5, v7

    .restart local v5    # "stack":Z
    :cond_7d
    goto :goto_4e
.end method

.method public setAllowStacking(Z)V
    .registers 4
    .param p1, "allowStacking"    # Z

    .prologue
    .line 56
    iget-boolean v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eq v0, p1, :cond_18

    .line 57
    iput-boolean p1, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    .line 58
    iget-boolean v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-nez v0, :cond_15

    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    .line 61
    :cond_15
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->requestLayout()V

    .line 63
    :cond_18
    return-void
.end method
