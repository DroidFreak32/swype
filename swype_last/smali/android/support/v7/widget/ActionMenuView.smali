.class public Landroid/support/v7/widget/ActionMenuView;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "ActionMenuView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;
.implements Landroid/support/v7/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActionMenuView$LayoutParams;,
        Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;,
        Landroid/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;,
        Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# instance fields
.field private mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field private mOnMenuItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 80
    .local v0, "density":F
    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    .line 81
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 82
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 83
    iput v2, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    .line 84
    return-void
.end method

.method static synthetic access$200(Landroid/support/v7/widget/ActionMenuView;)Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuView;

    .prologue
    .line 45
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    return-object v0
.end method

.method private static generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .registers 2

    .prologue
    .line 579
    new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>()V

    .line 581
    .local v0, "params":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 582
    return-object v0
.end method

.method private generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 587
    new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected static generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .registers 3
    .param p0, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 592
    if-eqz p0, :cond_1c

    .line 593
    instance-of v1, p0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_16

    new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    check-cast p0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .end local p0    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p0}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/support/v7/widget/ActionMenuView$LayoutParams;)V

    .line 596
    .local v0, "result":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .restart local p0    # "p":Landroid/view/ViewGroup$LayoutParams;
    :goto_d
    iget v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I

    .end local p0    # "p":Landroid/view/ViewGroup$LayoutParams;
    if-gtz v1, :cond_15

    .line 597
    const/16 v1, 0x10

    iput v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 601
    .end local v0    # "result":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_15
    :goto_15
    return-object v0

    .line 593
    .restart local p0    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_16
    new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d

    .line 601
    :cond_1c
    invoke-static {}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_15
.end method

.method public static generateOverflowButtonLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .registers 2

    .prologue
    .line 611
    invoke-static {}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 612
    .local v0, "result":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 613
    return-object v0
.end method

.method private hasSupportDividerBeforeChildAt(I)Z
    .registers 6
    .param p1, "childIndex"    # I

    .prologue
    .line 718
    if-nez p1, :cond_4

    .line 719
    const/4 v2, 0x0

    .line 730
    :cond_3
    :goto_3
    return v2

    .line 721
    :cond_4
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 722
    .local v1, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 723
    .local v0, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 724
    .local v2, "result":Z
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_21

    instance-of v3, v1, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_21

    .line 725
    check-cast v1, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    .end local v1    # "childBefore":Landroid/view/View;
    invoke-interface {v1}, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/lit8 v2, v3, 0x0

    .line 727
    :cond_21
    if-lez p1, :cond_3

    instance-of v3, v0, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_3

    .line 728
    check-cast v0, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0}, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_3
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .registers 18
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    .prologue
    .line 402
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 404
    .local v8, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sub-int v2, v11, p4

    .line 406
    .local v2, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 407
    .local v1, "childHeightMode":I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 409
    .local v3, "childHeightSpec":I
    instance-of v11, p0, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz v11, :cond_61

    move-object v11, p0

    check-cast v11, Landroid/support/v7/view/menu/ActionMenuItemView;

    move-object v7, v11

    .line 411
    .local v7, "itemView":Landroid/support/v7/view/menu/ActionMenuItemView;
    :goto_1c
    if-eqz v7, :cond_63

    invoke-virtual {v7}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_63

    const/4 v6, 0x1

    .line 413
    .local v6, "hasText":Z
    :goto_25
    const/4 v0, 0x0

    .line 414
    .local v0, "cellsUsed":I
    if-lez p2, :cond_4a

    if-eqz v6, :cond_2d

    const/4 v11, 0x2

    if-lt p2, v11, :cond_4a

    .line 415
    :cond_2d
    mul-int v11, p1, p2

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 417
    .local v4, "childWidthSpec":I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 419
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 420
    .local v9, "measuredWidth":I
    div-int v0, v9, p1

    .line 421
    rem-int v11, v9, p1

    if-eqz v11, :cond_44

    add-int/lit8 v0, v0, 0x1

    .line 422
    :cond_44
    if-eqz v6, :cond_4a

    const/4 v11, 0x2

    if-ge v0, v11, :cond_4a

    const/4 v0, 0x2

    .line 425
    .end local v4    # "childWidthSpec":I
    .end local v9    # "measuredWidth":I
    :cond_4a
    iget-boolean v11, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_65

    if-eqz v6, :cond_65

    const/4 v5, 0x1

    .line 426
    .local v5, "expandable":Z
    :goto_51
    iput-boolean v5, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 428
    iput v0, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 429
    mul-int v10, v0, p1

    .line 430
    .local v10, "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V

    .line 432
    return v0

    .line 409
    .end local v0    # "cellsUsed":I
    .end local v5    # "expandable":Z
    .end local v6    # "hasText":Z
    .end local v7    # "itemView":Landroid/support/v7/view/menu/ActionMenuItemView;
    .end local v10    # "targetWidth":I
    :cond_61
    const/4 v7, 0x0

    goto :goto_1c

    .line 411
    .restart local v7    # "itemView":Landroid/support/v7/view/menu/ActionMenuItemView;
    :cond_63
    const/4 v6, 0x0

    goto :goto_25

    .line 425
    .restart local v0    # "cellsUsed":I
    .restart local v6    # "hasText":Z
    :cond_65
    const/4 v5, 0x0

    goto :goto_51
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 606
    if-eqz p1, :cond_8

    instance-of v0, p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 734
    const/4 v0, 0x0

    return v0
.end method

.method protected final bridge synthetic generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .registers 2

    .prologue
    .line 45
    invoke-static {}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 45
    invoke-static {}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .registers 3

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .registers 3

    .prologue
    .line 45
    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 45
    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 640
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v1, :cond_40

    .line 641
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 642
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 643
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    new-instance v2, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0, v3}, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroid/support/v7/widget/ActionMenuView;B)V

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 644
    new-instance v1, Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 645
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 3152
    iput-boolean v4, v1, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 3153
    iput-boolean v4, v1, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 646
    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_43

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 4148
    :goto_30
    iput-object v1, v2, Landroid/support/v7/view/menu/BaseMenuPresenter;->mCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 648
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 649
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->setMenuView(Landroid/support/v7/widget/ActionMenuView;)V

    .line 652
    .end local v0    # "context":Landroid/content/Context;
    :cond_40
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v1

    .line 646
    .restart local v0    # "context":Landroid/content/Context;
    :cond_43
    new-instance v1, Landroid/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v1, p0, v3}, Landroid/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>(Landroid/support/v7/widget/ActionMenuView;B)V

    goto :goto_30
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 563
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 564
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 2175
    iget-object v1, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v1, :cond_10

    .line 2176
    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2178
    :goto_f
    return-object v0

    .line 2177
    :cond_10
    iget-boolean v1, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    if-eqz v1, :cond_17

    .line 2178
    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_f

    .line 2180
    :cond_17
    const/4 v0, 0x0

    .line 564
    goto :goto_f
.end method

.method public getPopupTheme()I
    .registers 2

    .prologue
    .line 110
    iget v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    return v0
.end method

.method public getWindowAnimations()I
    .registers 2

    .prologue
    .line 623
    const/4 v0, 0x0

    return v0
.end method

.method public final invokeItem(Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .registers 4
    .param p1, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;

    .prologue
    .line 618
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_9

    .line 125
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 128
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_25

    .line 129
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 131
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 132
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 133
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 136
    :cond_25
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 542
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 1709
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_c

    .line 1710
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 544
    :cond_c
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 36
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 437
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    move/from16 v28, v0

    if-nez v28, :cond_c

    .line 438
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 538
    :cond_b
    :goto_b
    return-void

    .line 442
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v6

    .line 443
    .local v6, "childCount":I
    sub-int v28, p5, p3

    div-int/lit8 v14, v28, 0x2

    .line 444
    .local v14, "midVertical":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getDividerWidth()I

    move-result v7

    .line 447
    .local v7, "dividerWidth":I
    const/4 v15, 0x0

    .line 448
    .local v15, "nonOverflowCount":I
    sub-int v28, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v29

    sub-int v28, v28, v29

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v29

    sub-int v27, v28, v29

    .line 449
    .local v27, "widthRemaining":I
    const/4 v8, 0x0

    .line 450
    .local v8, "hasOverflow":Z
    invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v11

    .line 451
    .local v11, "isLayoutRtl":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2d
    if-ge v10, v6, :cond_b9

    .line 452
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 453
    .local v25, "v":Landroid/view/View;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_83

    .line 457
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 458
    .local v17, "p":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v28, v0

    if-eqz v28, :cond_9b

    .line 459
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 460
    .local v16, "overflowWidth":I
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/support/v7/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v28

    if-eqz v28, :cond_5d

    .line 461
    add-int v16, v16, v7

    .line 463
    :cond_5d
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 466
    .local v9, "height":I
    if-eqz v11, :cond_86

    .line 467
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v28

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v29, v0

    add-int v12, v28, v29

    .line 468
    .local v12, "l":I
    add-int v18, v12, v16

    .line 473
    .local v18, "r":I
    :goto_71
    div-int/lit8 v28, v9, 0x2

    sub-int v24, v14, v28

    .line 474
    .local v24, "t":I
    add-int v5, v24, v9

    .line 475
    .local v5, "b":I
    move-object/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v18

    invoke-virtual {v0, v12, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 477
    sub-int v27, v27, v16

    .line 478
    const/4 v8, 0x1

    .line 451
    .end local v5    # "b":I
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v16    # "overflowWidth":I
    .end local v17    # "p":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v18    # "r":I
    .end local v24    # "t":I
    :cond_83
    :goto_83
    add-int/lit8 v10, v10, 0x1

    goto :goto_2d

    .line 470
    .restart local v9    # "height":I
    .restart local v16    # "overflowWidth":I
    .restart local v17    # "p":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_86
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v29

    sub-int v28, v28, v29

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v29, v0

    sub-int v18, v28, v29

    .line 471
    .restart local v18    # "r":I
    sub-int v12, v18, v16

    .restart local v12    # "l":I
    goto :goto_71

    .line 480
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v16    # "overflowWidth":I
    .end local v18    # "r":I
    :cond_9b
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v29, v0

    add-int v19, v28, v29

    .line 482
    .local v19, "size":I
    sub-int v27, v27, v19

    .line 483
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/support/v7/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    .line 486
    add-int/lit8 v15, v15, 0x1

    goto :goto_83

    .line 490
    .end local v17    # "p":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v19    # "size":I
    .end local v25    # "v":Landroid/view/View;
    :cond_b9
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v6, v0, :cond_f0

    if-nez v8, :cond_f0

    .line 492
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 493
    .restart local v25    # "v":Landroid/view/View;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    .line 494
    .local v26, "width":I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 495
    .restart local v9    # "height":I
    sub-int v28, p4, p2

    div-int/lit8 v28, v28, 0x2

    .line 496
    div-int/lit8 v29, v26, 0x2

    sub-int v12, v28, v29

    .line 497
    .restart local v12    # "l":I
    div-int/lit8 v28, v9, 0x2

    sub-int v24, v14, v28

    .line 498
    .restart local v24    # "t":I
    add-int v28, v12, v26

    add-int v29, v24, v9

    move-object/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_b

    .line 502
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v24    # "t":I
    .end local v25    # "v":Landroid/view/View;
    .end local v26    # "width":I
    :cond_f0
    if-eqz v8, :cond_161

    const/16 v28, 0x0

    :goto_f4
    sub-int v20, v15, v28

    .line 503
    .local v20, "spacerCount":I
    const/16 v29, 0x0

    if-lez v20, :cond_164

    div-int v28, v27, v20

    :goto_fc
    move/from16 v0, v29

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 505
    .local v21, "spacerSize":I
    if-eqz v11, :cond_167

    .line 506
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v29

    sub-int v23, v28, v29

    .line 507
    .local v23, "startRight":I
    const/4 v10, 0x0

    :goto_111
    if-ge v10, v6, :cond_b

    .line 508
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 509
    .restart local v25    # "v":Landroid/view/View;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 510
    .local v13, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_15e

    iget-boolean v0, v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v28, v0

    if-nez v28, :cond_15e

    .line 514
    iget v0, v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v28, v0

    sub-int v23, v23, v28

    .line 515
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    .line 516
    .restart local v26    # "width":I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 517
    .restart local v9    # "height":I
    div-int/lit8 v28, v9, 0x2

    sub-int v24, v14, v28

    .line 518
    .restart local v24    # "t":I
    sub-int v28, v23, v26

    add-int v29, v24, v9

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v24

    move/from16 v3, v23

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 519
    iget v0, v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v28, v0

    add-int v28, v28, v26

    add-int v28, v28, v21

    sub-int v23, v23, v28

    .line 507
    .end local v9    # "height":I
    .end local v24    # "t":I
    .end local v26    # "width":I
    :cond_15e
    add-int/lit8 v10, v10, 0x1

    goto :goto_111

    .line 502
    .end local v13    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v20    # "spacerCount":I
    .end local v21    # "spacerSize":I
    .end local v23    # "startRight":I
    .end local v25    # "v":Landroid/view/View;
    :cond_161
    const/16 v28, 0x1

    goto :goto_f4

    .line 503
    .restart local v20    # "spacerCount":I
    :cond_164
    const/16 v28, 0x0

    goto :goto_fc

    .line 522
    .restart local v21    # "spacerSize":I
    :cond_167
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v22

    .line 523
    .local v22, "startLeft":I
    const/4 v10, 0x0

    :goto_16c
    if-ge v10, v6, :cond_b

    .line 524
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 525
    .restart local v25    # "v":Landroid/view/View;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 526
    .restart local v13    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_1b9

    iget-boolean v0, v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v28, v0

    if-nez v28, :cond_1b9

    .line 530
    iget v0, v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v28, v0

    add-int v22, v22, v28

    .line 531
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    .line 532
    .restart local v26    # "width":I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 533
    .restart local v9    # "height":I
    div-int/lit8 v28, v9, 0x2

    sub-int v24, v14, v28

    .line 534
    .restart local v24    # "t":I
    add-int v28, v22, v26

    add-int v29, v24, v9

    move-object/from16 v0, v25

    move/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 535
    iget v0, v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v28, v0

    add-int v28, v28, v26

    add-int v28, v28, v21

    add-int v22, v22, v28

    .line 523
    .end local v9    # "height":I
    .end local v24    # "t":I
    .end local v26    # "width":I
    :cond_1b9
    add-int/lit8 v10, v10, 0x1

    goto :goto_16c
.end method

.method protected onMeasure(II)V
    .registers 41
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 145
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    .line 146
    .local v8, "wasFormatted":Z
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    if-ne v10, v11, :cond_8b

    const/4 v10, 0x1

    :goto_d
    move-object/from16 v0, p0

    iput-boolean v10, v0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    .line 148
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eq v8, v10, :cond_1c

    .line 149
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 154
    :cond_1c
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 155
    .local v9, "widthSize":I
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v10, :cond_3e

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v10, :cond_3e

    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v9, v10, :cond_3e

    .line 156
    move-object/from16 v0, p0

    iput v9, v0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 157
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 160
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v6

    .line 161
    .local v6, "childCount":I
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v10, :cond_35d

    if-lez v6, :cond_35d

    .line 1176
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v27

    .line 1177
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 1178
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    .line 1180
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v12

    add-int/2addr v11, v12

    .line 1181
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingTop()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingBottom()I

    move-result v13

    add-int v23, v12, v13

    .line 1183
    const/4 v12, -0x2

    move/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v1, v12}, Landroid/support/v7/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v28

    .line 1186
    sub-int v29, v10, v11

    .line 1189
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    div-int v13, v29, v10

    .line 1190
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    rem-int v10, v29, v10

    .line 1192
    if-nez v13, :cond_8d

    .line 1194
    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1, v10}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 1195
    :goto_8a
    return-void

    .line 146
    .end local v6    # "childCount":I
    .end local v9    # "widthSize":I
    :cond_8b
    const/4 v10, 0x0

    goto :goto_d

    .line 1198
    .restart local v6    # "childCount":I
    .restart local v9    # "widthSize":I
    :cond_8d
    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    div-int/2addr v10, v13

    add-int v30, v11, v10

    .line 1201
    const/16 v20, 0x0

    .line 1202
    const/16 v19, 0x0

    .line 1203
    const/4 v14, 0x0

    .line 1204
    const/4 v11, 0x0

    .line 1205
    const/4 v15, 0x0

    .line 1208
    const-wide/16 v16, 0x0

    .line 1210
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v31

    .line 1211
    const/4 v10, 0x0

    move/from16 v22, v10

    :goto_a4
    move/from16 v0, v22

    move/from16 v1, v31

    if-ge v0, v1, :cond_155

    .line 1212
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1213
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v18, 0x8

    move/from16 v0, v18

    if-eq v10, v0, :cond_39d

    .line 1215
    instance-of v0, v12, Landroid/support/v7/view/menu/ActionMenuItemView;

    move/from16 v24, v0

    .line 1216
    add-int/lit8 v18, v11, 0x1

    .line 1218
    if-eqz v24, :cond_d8

    .line 1221
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v12, v10, v11, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 1224
    :cond_d8
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 1225
    const/4 v11, 0x0

    iput-boolean v11, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 1226
    const/4 v11, 0x0

    iput v11, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 1227
    const/4 v11, 0x0

    iput v11, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 1228
    const/4 v11, 0x0

    iput-boolean v11, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 1229
    const/4 v11, 0x0

    iput v11, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 1230
    const/4 v11, 0x0

    iput v11, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 1231
    if-eqz v24, :cond_151

    move-object v11, v12

    check-cast v11, Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual {v11}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_151

    const/4 v11, 0x1

    :goto_fc
    iput-boolean v11, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 1234
    iget-boolean v11, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v11, :cond_153

    const/4 v11, 0x1

    .line 1236
    :goto_103
    move/from16 v0, v30

    move/from16 v1, v28

    move/from16 v2, v23

    invoke-static {v12, v0, v11, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v24

    .line 1239
    move/from16 v0, v19

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 1240
    iget-boolean v11, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-eqz v11, :cond_39a

    add-int/lit8 v11, v14, 0x1

    .line 1241
    :goto_11b
    iget-boolean v10, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v10, :cond_397

    const/4 v10, 0x1

    .line 1243
    :goto_120
    sub-int v15, v13, v24

    .line 1244
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    move/from16 v0, v20

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1245
    const/4 v12, 0x1

    move/from16 v0, v24

    if-ne v0, v12, :cond_387

    const/4 v12, 0x1

    shl-int v12, v12, v22

    int-to-long v12, v12

    or-long v12, v12, v16

    move/from16 v16, v14

    move/from16 v17, v15

    move v14, v11

    move v15, v10

    move-wide v10, v12

    move/from16 v13, v19

    move/from16 v12, v18

    .line 1211
    :goto_142
    add-int/lit8 v18, v22, 0x1

    move/from16 v22, v18

    move/from16 v19, v13

    move/from16 v20, v16

    move/from16 v13, v17

    move-wide/from16 v16, v10

    move v11, v12

    goto/16 :goto_a4

    .line 1231
    :cond_151
    const/4 v11, 0x0

    goto :goto_fc

    :cond_153
    move v11, v13

    .line 1234
    goto :goto_103

    .line 1250
    :cond_155
    if-eqz v15, :cond_1a4

    const/4 v10, 0x2

    if-ne v11, v10, :cond_1a4

    const/4 v10, 0x1

    move v12, v10

    .line 1255
    :goto_15c
    const/16 v22, 0x0

    move-wide/from16 v24, v16

    move/from16 v23, v13

    .line 1256
    :goto_162
    if-lez v14, :cond_24c

    if-lez v23, :cond_24c

    .line 1257
    const v18, 0x7fffffff

    .line 1258
    const-wide/16 v16, 0x0

    .line 1259
    const/4 v13, 0x0

    .line 1260
    const/4 v10, 0x0

    move/from16 v26, v10

    :goto_16f
    move/from16 v0, v26

    move/from16 v1, v31

    if-ge v0, v1, :cond_1ba

    .line 1261
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1262
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 1265
    iget-boolean v0, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v32, v0

    if-eqz v32, :cond_382

    .line 1268
    iget v0, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v18

    if-ge v0, v1, :cond_1a7

    .line 1269
    iget v13, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 1270
    const/4 v10, 0x1

    shl-int v10, v10, v26

    int-to-long v0, v10

    move-wide/from16 v16, v0

    .line 1271
    const/4 v10, 0x1

    .line 1260
    :goto_19c
    add-int/lit8 v18, v26, 0x1

    move/from16 v26, v18

    move/from16 v18, v13

    move v13, v10

    goto :goto_16f

    .line 1250
    :cond_1a4
    const/4 v10, 0x0

    move v12, v10

    goto :goto_15c

    .line 1272
    :cond_1a7
    iget v10, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v0, v18

    if-ne v10, v0, :cond_382

    .line 1273
    const/4 v10, 0x1

    shl-int v10, v10, v26

    int-to-long v0, v10

    move-wide/from16 v32, v0

    or-long v16, v16, v32

    .line 1274
    add-int/lit8 v10, v13, 0x1

    move/from16 v13, v18

    goto :goto_19c

    .line 1279
    :cond_1ba
    or-long v24, v24, v16

    .line 1281
    move/from16 v0, v23

    if-gt v13, v0, :cond_24c

    .line 1284
    add-int/lit8 v26, v18, 0x1

    .line 1286
    const/4 v10, 0x0

    move/from16 v18, v10

    move/from16 v13, v23

    move-wide/from16 v22, v24

    :goto_1c9
    move/from16 v0, v18

    move/from16 v1, v31

    if-ge v0, v1, :cond_243

    .line 1287
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 1288
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 1289
    const/16 v25, 0x1

    shl-int v25, v25, v18

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v32, v0

    and-long v32, v32, v16

    const-wide/16 v34, 0x0

    cmp-long v25, v32, v34

    if-nez v25, :cond_203

    .line 1291
    iget v10, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v0, v26

    if-ne v10, v0, :cond_37f

    const/4 v10, 0x1

    shl-int v10, v10, v18

    int-to-long v0, v10

    move-wide/from16 v24, v0

    or-long v22, v22, v24

    move v10, v13

    .line 1286
    :goto_1fd
    add-int/lit8 v13, v18, 0x1

    move/from16 v18, v13

    move v13, v10

    goto :goto_1c9

    .line 1295
    :cond_203
    if-eqz v12, :cond_230

    iget-boolean v0, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v25, v0

    if-eqz v25, :cond_230

    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v13, v0, :cond_230

    .line 1297
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v25, v0

    add-int v25, v25, v30

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1299
    :cond_230
    iget v0, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    iput v0, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 1300
    const/16 v24, 0x1

    move/from16 v0, v24

    iput-boolean v0, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 1301
    add-int/lit8 v10, v13, -0x1

    goto :goto_1fd

    .line 1304
    :cond_243
    const/4 v10, 0x1

    move-wide/from16 v24, v22

    move/from16 v22, v10

    move/from16 v23, v13

    .line 1305
    goto/16 :goto_162

    :cond_24c
    move-wide/from16 v16, v24

    .line 1310
    if-nez v15, :cond_2f6

    const/4 v10, 0x1

    if-ne v11, v10, :cond_2f6

    const/4 v10, 0x1

    .line 1311
    :goto_254
    if-lez v23, :cond_31c

    const-wide/16 v12, 0x0

    cmp-long v12, v16, v12

    if-eqz v12, :cond_31c

    add-int/lit8 v11, v11, -0x1

    move/from16 v0, v23

    if-lt v0, v11, :cond_269

    if-nez v10, :cond_269

    const/4 v11, 0x1

    move/from16 v0, v19

    if-le v0, v11, :cond_31c

    .line 1313
    :cond_269
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->bitCount(J)I

    move-result v11

    int-to-float v11, v11

    .line 1315
    if-nez v10, :cond_37c

    .line 1317
    const-wide/16 v12, 0x1

    and-long v12, v12, v16

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-eqz v10, :cond_28e

    .line 1318
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 1319
    iget-boolean v10, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v10, :cond_28e

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float/2addr v11, v10

    .line 1321
    :cond_28e
    const/4 v10, 0x1

    add-int/lit8 v12, v31, -0x1

    shl-int/2addr v10, v12

    int-to-long v12, v10

    and-long v12, v12, v16

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-eqz v10, :cond_37c

    .line 1322
    add-int/lit8 v10, v31, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 1323
    iget-boolean v10, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v10, :cond_37c

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float v10, v11, v10

    .line 1327
    :goto_2b1
    const/4 v11, 0x0

    cmpl-float v11, v10, v11

    if-lez v11, :cond_2f9

    mul-int v11, v23, v30

    int-to-float v11, v11

    div-float v10, v11, v10

    float-to-int v10, v10

    move v11, v10

    .line 1330
    :goto_2bd
    const/4 v10, 0x0

    move v13, v10

    move/from16 v12, v22

    :goto_2c1
    move/from16 v0, v31

    if-ge v13, v0, :cond_31e

    .line 1331
    const/4 v10, 0x1

    shl-int/2addr v10, v13

    int-to-long v14, v10

    and-long v14, v14, v16

    const-wide/16 v18, 0x0

    cmp-long v10, v14, v18

    if-eqz v10, :cond_31a

    .line 1333
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1334
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 1335
    instance-of v14, v14, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz v14, :cond_2fc

    .line 1337
    iput v11, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 1338
    const/4 v12, 0x1

    iput-boolean v12, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 1339
    if-nez v13, :cond_2f0

    iget-boolean v12, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v12, :cond_2f0

    .line 1342
    neg-int v12, v11

    div-int/lit8 v12, v12, 0x2

    iput v12, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 1344
    :cond_2f0
    const/4 v10, 0x1

    .line 1330
    :goto_2f1
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    move v12, v10

    goto :goto_2c1

    .line 1310
    :cond_2f6
    const/4 v10, 0x0

    goto/16 :goto_254

    .line 1327
    :cond_2f9
    const/4 v10, 0x0

    move v11, v10

    goto :goto_2bd

    .line 1345
    :cond_2fc
    iget-boolean v14, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v14, :cond_30c

    .line 1346
    iput v11, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 1347
    const/4 v12, 0x1

    iput-boolean v12, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 1348
    neg-int v12, v11

    div-int/lit8 v12, v12, 0x2

    iput v12, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 1349
    const/4 v10, 0x1

    goto :goto_2f1

    .line 1354
    :cond_30c
    if-eqz v13, :cond_312

    .line 1355
    div-int/lit8 v14, v11, 0x2

    iput v14, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 1357
    :cond_312
    add-int/lit8 v14, v31, -0x1

    if-eq v13, v14, :cond_31a

    .line 1358
    div-int/lit8 v14, v11, 0x2

    iput v14, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    :cond_31a
    move v10, v12

    goto :goto_2f1

    :cond_31c
    move/from16 v12, v22

    .line 1367
    :cond_31e
    if-eqz v12, :cond_34c

    .line 1368
    const/4 v10, 0x0

    move v11, v10

    :goto_322
    move/from16 v0, v31

    if-ge v11, v0, :cond_34c

    .line 1369
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1370
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 1372
    iget-boolean v13, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-eqz v13, :cond_348

    .line 1374
    iget v13, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int v13, v13, v30

    iget v10, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    add-int/2addr v10, v13

    .line 1375
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    move/from16 v0, v28

    invoke-virtual {v12, v10, v0}, Landroid/view/View;->measure(II)V

    .line 1368
    :cond_348
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_322

    .line 1380
    :cond_34c
    const/high16 v10, 0x40000000    # 2.0f

    move/from16 v0, v27

    if-eq v0, v10, :cond_379

    .line 1384
    :goto_352
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    goto/16 :goto_8a

    .line 165
    :cond_35d
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_35e
    if-ge v7, v6, :cond_374

    .line 166
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 167
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 168
    const/4 v11, 0x0

    iput v11, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v11, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 165
    add-int/lit8 v7, v7, 0x1

    goto :goto_35e

    .line 170
    :cond_374
    invoke-super/range {p0 .. p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    goto/16 :goto_8a

    .end local v7    # "i":I
    :cond_379
    move/from16 v20, v21

    goto :goto_352

    :cond_37c
    move v10, v11

    goto/16 :goto_2b1

    :cond_37f
    move v10, v13

    goto/16 :goto_1fd

    :cond_382
    move v10, v13

    move/from16 v13, v18

    goto/16 :goto_19c

    :cond_387
    move/from16 v12, v18

    move/from16 v13, v19

    move-wide/from16 v36, v16

    move/from16 v16, v14

    move/from16 v17, v15

    move v15, v10

    move v14, v11

    move-wide/from16 v10, v36

    goto/16 :goto_142

    :cond_397
    move v10, v15

    goto/16 :goto_120

    :cond_39a
    move v11, v14

    goto/16 :goto_11b

    :cond_39d
    move v12, v11

    move-wide/from16 v10, v16

    move/from16 v16, v20

    move/from16 v17, v13

    move/from16 v13, v19

    goto/16 :goto_142
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .registers 3
    .param p1, "exclusive"    # Z

    .prologue
    .line 739
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 4162
    iput-boolean p1, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 740
    return-void
.end method

.method public setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
    .registers 3
    .param p1, "pcb"    # Landroid/support/v7/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Landroid/support/v7/view/menu/MenuBuilder$Callback;

    .prologue
    .line 660
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 661
    iput-object p2, p0, Landroid/support/v7/widget/ActionMenuView;->mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    .line 662
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    .prologue
    .line 139
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    .line 140
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 552
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 553
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 2166
    iget-object v1, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v1, :cond_f

    .line 2167
    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_e
    return-void

    .line 2169
    :cond_f
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 2170
    iput-object p1, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_e
.end method

.method public setOverflowReserved(Z)V
    .registers 2
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 574
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuView;->mReserveOverflow:Z

    .line 575
    return-void
.end method

.method public setPopupTheme(I)V
    .registers 4
    .param p1, "resId"    # I

    .prologue
    .line 94
    iget v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_e

    .line 95
    iput p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    .line 96
    if-nez p1, :cond_f

    .line 97
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 102
    :cond_e
    :goto_e
    return-void

    .line 99
    :cond_f
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_e
.end method

.method public setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V
    .registers 3
    .param p1, "presenter"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .prologue
    .line 118
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 119
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->setMenuView(Landroid/support/v7/widget/ActionMenuView;)V

    .line 120
    return-void
.end method
