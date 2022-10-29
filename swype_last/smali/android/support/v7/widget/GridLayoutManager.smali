.class public Landroid/support/v7/widget/GridLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/GridLayoutManager$LayoutParams;,
        Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;,
        Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    }
.end annotation


# instance fields
.field mCachedBorders:[I

.field final mDecorInsets:Landroid/graphics/Rect;

.field mPendingSpanCountChange:Z

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 84
    invoke-direct {p0, p2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I
    .param p3, "orientation"    # I
    .param p4, "reverseLayout"    # Z

    .prologue
    .line 96
    invoke-direct {p0, p1, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 97
    invoke-direct {p0, p2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 44
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 55
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 56
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 57
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v1}, Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 59
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 72
    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v0

    .line 73
    .local v0, "properties":Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;
    iget v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-direct {p0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 74
    return-void
.end method

.method private assignSpans$1d107c69(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;IZ)V
    .registers 15
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "count"    # I
    .param p4, "layingOutInPrimaryDirection"    # Z

    .prologue
    const/4 v9, 0x1

    .line 747
    if-eqz p4, :cond_49

    .line 748
    const/4 v6, 0x0

    .line 749
    .local v6, "start":I
    move v1, p3

    .line 750
    .local v1, "end":I
    const/4 v0, 0x1

    .line 756
    .local v0, "diff":I
    :goto_6
    iget v8, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-ne v8, v9, :cond_4e

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 757
    iget v8, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    add-int/lit8 v4, v8, -0x1

    .line 758
    .local v4, "span":I
    const/4 v5, -0x1

    .line 763
    .local v5, "spanDiff":I
    :goto_15
    move v2, v6

    .local v2, "i":I
    :goto_16
    if-eq v2, v1, :cond_55

    .line 764
    iget-object v8, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v7, v8, v2

    .line 765
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 766
    .local v3, "params":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    invoke-static {v7}, Landroid/support/v7/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    invoke-direct {p0, p1, p2, v8}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v8

    # setter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static {v3, v8}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$102(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;I)I

    .line 767
    const/4 v8, -0x1

    if-ne v5, v8, :cond_51

    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v8

    if-le v8, v9, :cond_51

    .line 768
    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    sub-int v8, v4, v8

    # setter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static {v3, v8}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$002(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;I)I

    .line 772
    :goto_41
    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v8

    mul-int/2addr v8, v5

    add-int/2addr v4, v8

    .line 763
    add-int/2addr v2, v0

    goto :goto_16

    .line 752
    .end local v0    # "diff":I
    .end local v1    # "end":I
    .end local v2    # "i":I
    .end local v3    # "params":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    .end local v4    # "span":I
    .end local v5    # "spanDiff":I
    .end local v6    # "start":I
    .end local v7    # "view":Landroid/view/View;
    :cond_49
    add-int/lit8 v6, p3, -0x1

    .line 753
    .restart local v6    # "start":I
    const/4 v1, -0x1

    .line 754
    .restart local v1    # "end":I
    const/4 v0, -0x1

    .restart local v0    # "diff":I
    goto :goto_6

    .line 760
    :cond_4e
    const/4 v4, 0x0

    .line 761
    .restart local v4    # "span":I
    const/4 v5, 0x1

    .restart local v5    # "spanDiff":I
    goto :goto_15

    .line 770
    .restart local v2    # "i":I
    .restart local v3    # "params":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    .restart local v7    # "view":Landroid/view/View;
    :cond_51
    # setter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static {v3, v4}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$002(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;I)I

    goto :goto_41

    .line 774
    .end local v3    # "params":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    .end local v7    # "view":Landroid/view/View;
    :cond_55
    return-void
.end method

.method private calculateItemBorders(I)V
    .registers 10
    .param p1, "totalSpace"    # I

    .prologue
    const/4 v3, 0x0

    .line 309
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v6, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 25320
    if-eqz v0, :cond_13

    array-length v1, v0

    add-int/lit8 v2, v6, 0x1

    if-ne v1, v2, :cond_13

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    if-eq v1, p1, :cond_17

    .line 25322
    :cond_13
    add-int/lit8 v0, v6, 0x1

    new-array v0, v0, [I

    .line 25324
    :cond_17
    aput v3, v0, v3

    .line 25325
    div-int v2, p1, v6

    .line 25326
    rem-int v7, p1, v6

    .line 25329
    const/4 v1, 0x1

    move v4, v1

    move v5, v3

    :goto_20
    if-gt v4, v6, :cond_33

    .line 25331
    add-int/2addr v3, v7

    .line 25332
    if-lez v3, :cond_36

    sub-int v1, v6, v3

    if-ge v1, v7, :cond_36

    .line 25333
    add-int/lit8 v1, v2, 0x1

    .line 25334
    sub-int/2addr v3, v6

    .line 25336
    :goto_2c
    add-int/2addr v5, v1

    .line 25337
    aput v5, v0, v4

    .line 25329
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_20

    .line 309
    :cond_33
    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    .line 310
    return-void

    :cond_36
    move v1, v2

    goto :goto_2c
.end method

.method private ensureViewSet()V
    .registers 3

    .prologue
    .line 354
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-eq v0, v1, :cond_11

    .line 355
    :cond_b
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 357
    :cond_11
    return-void
.end method

.method private getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I
    .registers 8
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "viewPosition"    # I

    .prologue
    .line 440
    .line 27567
    iget-boolean v1, p2, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    .line 440
    if-nez v1, :cond_b

    .line 441
    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-static {p3, v1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v1

    .line 452
    :goto_a
    return v1

    .line 443
    :cond_b
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    .line 444
    .local v0, "adapterPosition":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2a

    .line 449
    const-string/jumbo v1, "GridLayoutManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Cannot find span size for pre layout position. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/4 v1, 0x0

    goto :goto_a

    .line 452
    :cond_2a
    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v1

    goto :goto_a
.end method

.method private getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I
    .registers 9
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "pos"    # I

    .prologue
    const/4 v3, -0x1

    .line 456
    .line 28567
    iget-boolean v2, p2, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    .line 456
    if-nez v2, :cond_e

    .line 457
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v2, p3, v3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v1

    .line 473
    :cond_d
    :goto_d
    return v1

    .line 459
    :cond_e
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 460
    .local v1, "cached":I
    if-ne v1, v3, :cond_d

    .line 463
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    .line 464
    .local v0, "adapterPosition":I
    if-ne v0, v3, :cond_34

    .line 469
    const-string/jumbo v2, "GridLayoutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/4 v1, 0x0

    goto :goto_d

    .line 473
    :cond_34
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget v3, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v2, v0, v3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v1

    goto :goto_d
.end method

.method private getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I
    .registers 9
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "pos"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 477
    .line 29567
    iget-boolean v2, p2, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    .line 477
    if-nez v2, :cond_8

    move v0, v1

    .line 494
    :cond_7
    :goto_7
    return v0

    .line 480
    :cond_8
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 481
    .local v0, "cached":I
    if-ne v0, v3, :cond_7

    .line 484
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v2

    .line 485
    if-ne v2, v3, :cond_2e

    .line 490
    const-string/jumbo v2, "GridLayoutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 492
    goto :goto_7

    :cond_2e
    move v0, v1

    .line 494
    goto :goto_7
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZZ)V
    .registers 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "capBothSpecs"    # Z
    .param p5, "alreadyMeasured"    # Z

    .prologue
    const/4 v1, 0x1

    .line 709
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 710
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 711
    .local v0, "lp":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    if-nez p4, :cond_12

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-ne v2, v1, :cond_24

    .line 712
    :cond_12
    iget v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-static {p2, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;->updateSpecWithExtra(III)I

    move-result p2

    .line 715
    :cond_24
    if-nez p4, :cond_2a

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-nez v2, :cond_3c

    .line 716
    :cond_2a
    iget v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-static {p3, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;->updateSpecWithExtra(III)I

    move-result p3

    .line 720
    :cond_3c
    if-eqz p5, :cond_62

    .line 34722
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz v2, :cond_5a

    .line 34723
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v2, p2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 34724
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v2, p3, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v2

    if-nez v2, :cond_60

    .line 725
    .local v1, "measure":Z
    :cond_5a
    :goto_5a
    if-eqz v1, :cond_5f

    .line 726
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 729
    :cond_5f
    return-void

    .line 34724
    .end local v1    # "measure":Z
    :cond_60
    const/4 v1, 0x0

    goto :goto_5a

    .line 723
    :cond_62
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/GridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v1

    .restart local v1    # "measure":Z
    goto :goto_5a
.end method

.method private setSpanCount(I)V
    .registers 5
    .param p1, "spanCount"    # I

    .prologue
    .line 796
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ne p1, v0, :cond_5

    .line 807
    :goto_4
    return-void

    .line 799
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 800
    if-gtz p1, :cond_20

    .line 801
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Span count should be at least 1. Provided "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 804
    :cond_20
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 805
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 34846
    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 806
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->requestLayout()V

    goto :goto_4
.end method

.method private updateMeasurements()V
    .registers 4

    .prologue
    .line 275
    .line 22313
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    .line 275
    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 22429
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 276
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v2

    sub-int v0, v1, v2

    .line 280
    .local v0, "totalSpace":I
    :goto_12
    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 281
    return-void

    .line 22438
    .end local v0    # "totalSpace":I
    :cond_16
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 278
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingTop()I

    move-result v2

    sub-int v0, v1, v2

    .restart local v0    # "totalSpace":I
    goto :goto_12
.end method

.method private static updateSpecWithExtra(III)I
    .registers 6
    .param p0, "spec"    # I
    .param p1, "startInset"    # I
    .param p2, "endInset"    # I

    .prologue
    .line 732
    if-nez p1, :cond_5

    if-nez p2, :cond_5

    .line 740
    .end local p0    # "spec":I
    :cond_4
    :goto_4
    return p0

    .line 735
    .restart local p0    # "spec":I
    :cond_5
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 736
    .local v0, "mode":I
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_11

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_4

    .line 737
    :cond_11
    const/4 v1, 0x0

    .line 738
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 737
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_4
.end method


# virtual methods
.method public final checkLayoutParams(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .registers 3
    .param p1, "lp"    # Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .prologue
    .line 251
    instance-of v0, p1, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    return v0
.end method

.method final findReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;III)Landroid/view/View;
    .registers 15
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "itemCount"    # I

    .prologue
    .line 407
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->ensureLayoutState()V

    .line 408
    const/4 v4, 0x0

    .line 409
    .local v4, "invalidMatch":Landroid/view/View;
    const/4 v5, 0x0

    .line 410
    .local v5, "outOfBoundsMatch":Landroid/view/View;
    iget-object v8, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    .line 411
    .local v1, "boundsStart":I
    iget-object v8, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    .line 412
    .local v0, "boundsEnd":I
    if-le p4, p3, :cond_3c

    const/4 v2, 0x1

    .line 413
    .local v2, "diff":I
    :goto_14
    move v3, p3

    .local v3, "i":I
    :goto_15
    if-eq v3, p4, :cond_52

    .line 414
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 415
    .local v7, "view":Landroid/view/View;
    invoke-static {v7}, Landroid/support/v7/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 416
    .local v6, "position":I
    if-ltz v6, :cond_3a

    if-ge v6, p5, :cond_3a

    .line 417
    invoke-direct {p0, p1, p2, v6}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v8

    .line 418
    if-nez v8, :cond_3a

    .line 421
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 26864
    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v8

    .line 421
    if-eqz v8, :cond_3e

    .line 422
    if-nez v4, :cond_3a

    .line 423
    move-object v4, v7

    .line 413
    :cond_3a
    :goto_3a
    add-int/2addr v3, v2

    goto :goto_15

    .line 412
    .end local v2    # "diff":I
    .end local v3    # "i":I
    .end local v6    # "position":I
    .end local v7    # "view":Landroid/view/View;
    :cond_3c
    const/4 v2, -0x1

    goto :goto_14

    .line 425
    .restart local v2    # "diff":I
    .restart local v3    # "i":I
    .restart local v6    # "position":I
    .restart local v7    # "view":Landroid/view/View;
    :cond_3e
    iget-object v8, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8, v7}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    if-ge v8, v0, :cond_4e

    iget-object v8, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 426
    invoke-virtual {v8, v7}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    if-ge v8, v1, :cond_55

    .line 427
    :cond_4e
    if-nez v5, :cond_3a

    .line 428
    move-object v5, v7

    goto :goto_3a

    .line 435
    .end local v6    # "position":I
    .end local v7    # "view":Landroid/view/View;
    :cond_52
    if-eqz v5, :cond_56

    move-object v7, v5

    :cond_55
    :goto_55
    return-object v7

    :cond_56
    move-object v7, v4

    goto :goto_55
.end method

.method public final generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .registers 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 226
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_c

    .line 227
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    .line 230
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    goto :goto_b
.end method

.method public final generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 237
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .registers 3
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 242
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    .line 243
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 245
    :goto_b
    return-object v0

    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b
.end method

.method public final getColumnCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 131
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 132
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 139
    :goto_7
    return v0

    .line 134
    :cond_8
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_10

    .line 135
    const/4 v0, 0x0

    goto :goto_7

    .line 139
    :cond_10
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public final getRowCountForAccessibility(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 4
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 117
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_7

    .line 118
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 125
    :goto_6
    return v0

    .line 120
    :cond_7
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_f

    .line 121
    const/4 v0, 0x0

    goto :goto_6

    .line 125
    :cond_f
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method final layoutChunk(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$LayoutState;Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;)V
    .registers 43
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "layoutState"    # Landroid/support/v7/widget/LinearLayoutManager$LayoutState;
    .param p4, "result"    # Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    .prologue
    .line 500
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getModeInOther()I

    move-result v29

    .line 501
    .local v29, "otherDirSpecMode":I
    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v0, v29

    if-eq v0, v5, :cond_bf

    const/16 v20, 0x1

    .line 502
    .local v20, "flexibleInOtherDir":Z
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_c3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    aget v19, v5, v10

    .line 506
    .local v19, "currentOtherDirSize":I
    :goto_20
    if-eqz v20, :cond_25

    .line 507
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 509
    :cond_25
    move-object/from16 v0, p3

    iget v5, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    const/4 v10, 0x1

    if-ne v5, v10, :cond_c7

    const/16 v24, 0x1

    .line 511
    .local v24, "layingOutInPrimaryDirection":Z
    :goto_2e
    const/16 v18, 0x0

    .line 513
    .local v18, "count":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v33, v0

    .line 514
    .local v33, "remainingSpan":I
    if-nez v24, :cond_56

    .line 515
    move-object/from16 v0, p3

    iget v5, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v5}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v22

    .line 516
    .local v22, "itemSpanIndex":I
    move-object/from16 v0, p3

    iget v5, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v5}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v23

    .line 517
    .local v23, "itemSpanSize":I
    add-int v33, v22, v23

    .line 519
    .end local v22    # "itemSpanIndex":I
    .end local v23    # "itemSpanSize":I
    :cond_56
    :goto_56
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v0, v18

    if-ge v0, v5, :cond_e3

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->hasMore(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v5

    if-eqz v5, :cond_e3

    if-lez v33, :cond_e3

    .line 520
    move-object/from16 v0, p3

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    move/from16 v32, v0

    .line 521
    .local v32, "pos":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSize(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v36

    .line 522
    .local v36, "spanSize":I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v0, v36

    if-le v0, v5, :cond_cb

    .line 523
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Item at position "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v32

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " requires "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " spans but GridLayoutManager has only "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " spans."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 501
    .end local v18    # "count":I
    .end local v19    # "currentOtherDirSize":I
    .end local v20    # "flexibleInOtherDir":Z
    .end local v24    # "layingOutInPrimaryDirection":Z
    .end local v32    # "pos":I
    .end local v33    # "remainingSpan":I
    .end local v36    # "spanSize":I
    :cond_bf
    const/16 v20, 0x0

    goto/16 :goto_10

    .line 502
    .restart local v20    # "flexibleInOtherDir":Z
    :cond_c3
    const/16 v19, 0x0

    goto/16 :goto_20

    .line 509
    .restart local v19    # "currentOtherDirSize":I
    :cond_c7
    const/16 v24, 0x0

    goto/16 :goto_2e

    .line 527
    .restart local v18    # "count":I
    .restart local v24    # "layingOutInPrimaryDirection":Z
    .restart local v32    # "pos":I
    .restart local v33    # "remainingSpan":I
    .restart local v36    # "spanSize":I
    :cond_cb
    sub-int v33, v33, v36

    .line 528
    if-ltz v33, :cond_e3

    .line 531
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->next(Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v6

    .line 532
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_e3

    .line 536
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aput-object v6, v5, v18

    .line 537
    add-int/lit8 v18, v18, 0x1

    .line 538
    goto/16 :goto_56

    .line 540
    .end local v6    # "view":Landroid/view/View;
    .end local v32    # "pos":I
    .end local v36    # "spanSize":I
    :cond_e3
    if-nez v18, :cond_eb

    .line 541
    const/4 v5, 0x1

    move-object/from16 v0, p4

    iput-boolean v5, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 689
    :goto_ea
    return-void

    .line 545
    :cond_eb
    const/16 v27, 0x0

    .line 546
    .local v27, "maxSize":I
    const/16 v28, 0x0

    .line 549
    .local v28, "maxSizeInOther":F
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v18

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;->assignSpans$1d107c69(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;IZ)V

    .line 550
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_fe
    move/from16 v0, v21

    move/from16 v1, v18

    if-ge v0, v1, :cond_1ee

    .line 551
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v6, v5, v21

    .line 552
    .restart local v6    # "view":Landroid/view/View;
    move-object/from16 v0, p3

    iget-object v5, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v5, :cond_1b8

    .line 553
    if-eqz v24, :cond_1af

    .line 30012
    const/4 v5, -0x1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v6, v5, v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 566
    :goto_119
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 567
    .local v26, "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static/range {v26 .. v26}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v10

    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static/range {v26 .. v26}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v11

    add-int/2addr v10, v11

    aget v5, v5, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    .line 568
    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static/range {v26 .. v26}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v11

    aget v10, v10, v11

    sub-int v10, v5, v10

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-nez v5, :cond_1cc

    move-object/from16 v0, v26

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    :goto_145
    const/4 v12, 0x0

    .line 567
    move/from16 v0, v29

    invoke-static {v10, v0, v11, v5, v12}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v7

    .line 571
    .local v7, "spec":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 572
    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getMode()I

    move-result v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v14, 0x1

    if-ne v5, v14, :cond_1d2

    move-object/from16 v0, v26

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    :goto_168
    const/4 v14, 0x1

    .line 571
    invoke-static {v10, v11, v12, v5, v14}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v8

    .line 575
    .local v8, "mainSpec":I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v10, 0x1

    if-ne v5, v10, :cond_1d9

    .line 577
    move-object/from16 v0, v26

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    const/4 v10, -0x1

    if-ne v5, v10, :cond_1d7

    const/4 v9, 0x1

    .line 578
    .local v9, "applyInsets":Z
    :goto_17c
    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Landroid/support/v7/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZZ)V

    .line 584
    :goto_182
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v35

    .line 585
    .local v35, "size":I
    move/from16 v0, v35

    move/from16 v1, v27

    if-le v0, v1, :cond_192

    .line 586
    move/from16 v27, v35

    .line 588
    :cond_192
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v10, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v5, v10

    .line 589
    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static/range {v26 .. v26}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v10

    int-to-float v10, v10

    div-float v30, v5, v10

    .line 590
    .local v30, "otherSize":F
    cmpl-float v5, v30, v28

    if-lez v5, :cond_1ab

    .line 591
    move/from16 v28, v30

    .line 550
    :cond_1ab
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_fe

    .line 31012
    .end local v7    # "spec":I
    .end local v8    # "mainSpec":I
    .end local v9    # "applyInsets":Z
    .end local v26    # "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    .end local v30    # "otherSize":F
    .end local v35    # "size":I
    :cond_1af
    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v6, v5, v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    goto/16 :goto_119

    .line 559
    :cond_1b8
    if-eqz v24, :cond_1c3

    .line 31989
    const/4 v5, -0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-super {v0, v6, v5, v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    goto/16 :goto_119

    .line 32989
    :cond_1c3
    const/4 v5, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-super {v0, v6, v5, v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    goto/16 :goto_119

    .line 568
    .restart local v26    # "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    :cond_1cc
    move-object/from16 v0, v26

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    goto/16 :goto_145

    .line 572
    .restart local v7    # "spec":I
    :cond_1d2
    move-object/from16 v0, v26

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    goto :goto_168

    .line 577
    .restart local v8    # "mainSpec":I
    :cond_1d7
    const/4 v9, 0x0

    goto :goto_17c

    .line 581
    :cond_1d9
    move-object/from16 v0, v26

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    const/4 v10, -0x1

    if-ne v5, v10, :cond_1ec

    const/4 v9, 0x1

    .line 582
    .restart local v9    # "applyInsets":Z
    :goto_1e1
    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object v11, v6

    move v12, v8

    move v13, v7

    move v14, v9

    invoke-direct/range {v10 .. v15}, Landroid/support/v7/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZZ)V

    goto :goto_182

    .line 581
    .end local v9    # "applyInsets":Z
    :cond_1ec
    const/4 v9, 0x0

    goto :goto_1e1

    .line 594
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "spec":I
    .end local v8    # "mainSpec":I
    .end local v26    # "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    :cond_1ee
    if-eqz v20, :cond_2a4

    .line 33702
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    int-to-float v5, v5

    mul-float v5, v5, v28

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 33704
    move/from16 v0, v19

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/support/v7/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 598
    const/16 v27, 0x0

    .line 599
    const/16 v21, 0x0

    :goto_20a
    move/from16 v0, v21

    move/from16 v1, v18

    if-ge v0, v1, :cond_2a4

    .line 600
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v6, v5, v21

    .line 601
    .restart local v6    # "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 602
    .restart local v26    # "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static/range {v26 .. v26}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v10

    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static/range {v26 .. v26}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v11

    add-int/2addr v10, v11

    aget v5, v5, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    .line 603
    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static/range {v26 .. v26}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v11

    aget v10, v10, v11

    sub-int v10, v5, v10

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-nez v5, :cond_28f

    move-object/from16 v0, v26

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    :goto_244
    const/4 v14, 0x0

    .line 602
    invoke-static {v10, v11, v12, v5, v14}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v7

    .line 605
    .restart local v7    # "spec":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 606
    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getMode()I

    move-result v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v14, 0x1

    if-ne v5, v14, :cond_294

    move-object/from16 v0, v26

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    :goto_265
    const/4 v14, 0x1

    .line 605
    invoke-static {v10, v11, v12, v5, v14}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v8

    .line 608
    .restart local v8    # "mainSpec":I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v10, 0x1

    if-ne v5, v10, :cond_299

    .line 609
    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v10, p0

    move-object v11, v6

    move v12, v7

    move v13, v8

    invoke-direct/range {v10 .. v15}, Landroid/support/v7/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZZ)V

    .line 613
    :goto_27b
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v35

    .line 614
    .restart local v35    # "size":I
    move/from16 v0, v35

    move/from16 v1, v27

    if-le v0, v1, :cond_28b

    .line 615
    move/from16 v27, v35

    .line 599
    :cond_28b
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_20a

    .line 603
    .end local v7    # "spec":I
    .end local v8    # "mainSpec":I
    .end local v35    # "size":I
    :cond_28f
    move-object/from16 v0, v26

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    goto :goto_244

    .line 606
    .restart local v7    # "spec":I
    :cond_294
    move-object/from16 v0, v26

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    goto :goto_265

    .line 611
    .restart local v8    # "mainSpec":I
    :cond_299
    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v10, p0

    move-object v11, v6

    move v12, v8

    move v13, v7

    invoke-direct/range {v10 .. v15}, Landroid/support/v7/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZZ)V

    goto :goto_27b

    .line 621
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "spec":I
    .end local v8    # "mainSpec":I
    .end local v26    # "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    :cond_2a4
    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v0, v27

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 623
    .local v13, "maxMeasureSpec":I
    const/16 v21, 0x0

    :goto_2ae
    move/from16 v0, v21

    move/from16 v1, v18

    if-ge v0, v1, :cond_31c

    .line 624
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v6, v5, v21

    .line 625
    .restart local v6    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    move/from16 v0, v27

    if-eq v5, v0, :cond_309

    .line 626
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 627
    .restart local v26    # "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static/range {v26 .. v26}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v10

    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static/range {v26 .. v26}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v11

    add-int/2addr v10, v11

    aget v5, v5, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    .line 628
    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static/range {v26 .. v26}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v11

    aget v10, v10, v11

    sub-int v10, v5, v10

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-nez v5, :cond_30c

    move-object/from16 v0, v26

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    :goto_2f4
    const/4 v14, 0x0

    .line 627
    invoke-static {v10, v11, v12, v5, v14}, Landroid/support/v7/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v7

    .line 630
    .restart local v7    # "spec":I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v10, 0x1

    if-ne v5, v10, :cond_311

    .line 631
    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v10, p0

    move-object v11, v6

    move v12, v7

    invoke-direct/range {v10 .. v15}, Landroid/support/v7/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZZ)V

    .line 623
    .end local v7    # "spec":I
    .end local v26    # "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    :cond_309
    :goto_309
    add-int/lit8 v21, v21, 0x1

    goto :goto_2ae

    .line 628
    .restart local v26    # "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    :cond_30c
    move-object/from16 v0, v26

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    goto :goto_2f4

    .line 633
    .restart local v7    # "spec":I
    :cond_311
    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v11, p0

    move-object v12, v6

    move v14, v7

    invoke-direct/range {v11 .. v16}, Landroid/support/v7/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZZ)V

    goto :goto_309

    .line 638
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "spec":I
    .end local v26    # "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    :cond_31c
    move/from16 v0, v27

    move-object/from16 v1, p4

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 640
    const/16 v25, 0x0

    .local v25, "left":I
    const/16 v34, 0x0

    .local v34, "right":I
    const/16 v37, 0x0

    .local v37, "top":I
    const/16 v17, 0x0

    .line 641
    .local v17, "bottom":I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v10, 0x1

    if-ne v5, v10, :cond_3bd

    .line 642
    move-object/from16 v0, p3

    iget v5, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v10, -0x1

    if-ne v5, v10, :cond_3b4

    .line 643
    move-object/from16 v0, p3

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move/from16 v17, v0

    .line 644
    sub-int v37, v17, v27

    .line 658
    :goto_340
    const/16 v21, 0x0

    :goto_342
    move/from16 v0, v21

    move/from16 v1, v18

    if-ge v0, v1, :cond_40f

    .line 659
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v6, v5, v21

    .line 660
    .restart local v6    # "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 661
    .local v31, "params":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v10, 0x1

    if-ne v5, v10, :cond_3f3

    .line 662
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v5

    if-eqz v5, :cond_3d8

    .line 663
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static/range {v31 .. v31}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v11

    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static/range {v31 .. v31}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v12

    add-int/2addr v11, v12

    aget v10, v10, v11

    add-int v34, v5, v10

    .line 664
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v5

    sub-int v25, v34, v5

    .line 675
    :goto_380
    move/from16 v0, v25

    move/from16 v1, v37

    move/from16 v2, v34

    move/from16 v3, v17

    invoke-static {v6, v0, v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 33864
    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v5

    .line 683
    if-nez v5, :cond_39f

    .line 33875
    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v5

    .line 683
    if-eqz v5, :cond_3a4

    .line 684
    :cond_39f
    const/4 v5, 0x1

    move-object/from16 v0, p4

    iput-boolean v5, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 686
    :cond_3a4
    move-object/from16 v0, p4

    iget-boolean v5, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    invoke-virtual {v6}, Landroid/view/View;->isFocusable()Z

    move-result v10

    or-int/2addr v5, v10

    move-object/from16 v0, p4

    iput-boolean v5, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 658
    add-int/lit8 v21, v21, 0x1

    goto :goto_342

    .line 646
    .end local v6    # "view":Landroid/view/View;
    .end local v31    # "params":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    :cond_3b4
    move-object/from16 v0, p3

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move/from16 v37, v0

    .line 647
    add-int v17, v37, v27

    goto :goto_340

    .line 650
    :cond_3bd
    move-object/from16 v0, p3

    iget v5, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v10, -0x1

    if-ne v5, v10, :cond_3ce

    .line 651
    move-object/from16 v0, p3

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move/from16 v34, v0

    .line 652
    sub-int v25, v34, v27

    goto/16 :goto_340

    .line 654
    :cond_3ce
    move-object/from16 v0, p3

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    move/from16 v25, v0

    .line 655
    add-int v34, v25, v27

    goto/16 :goto_340

    .line 666
    .restart local v6    # "view":Landroid/view/View;
    .restart local v31    # "params":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    :cond_3d8
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static/range {v31 .. v31}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v11

    aget v10, v10, v11

    add-int v25, v5, v10

    .line 667
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v5

    add-int v34, v25, v5

    goto :goto_380

    .line 670
    :cond_3f3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingTop()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static/range {v31 .. v31}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v11

    aget v10, v10, v11

    add-int v37, v5, v10

    .line 671
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v5

    add-int v17, v37, v5

    goto/16 :goto_380

    .line 688
    .end local v6    # "view":Landroid/view/View;
    .end local v31    # "params":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    :cond_40f
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    const/4 v10, 0x0

    invoke-static {v5, v10}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_ea
.end method

.method final onAnchorReady(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V
    .registers 9
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;
    .param p4, "itemDirection"    # I

    .prologue
    const/4 v0, 0x1

    .line 345
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->onAnchorReady(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 346
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 347
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-lez v1, :cond_4b

    .line 25567
    iget-boolean v1, p2, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    .line 347
    if-nez v1, :cond_4b

    .line 26377
    if-ne p4, v0, :cond_2e

    .line 26379
    :goto_13
    iget v1, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v1

    .line 26380
    if-eqz v0, :cond_30

    .line 26382
    :goto_1b
    if-lez v1, :cond_4b

    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    if-lez v0, :cond_4b

    .line 26383
    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 26384
    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v1

    goto :goto_1b

    .line 26377
    :cond_2e
    const/4 v0, 0x0

    goto :goto_13

    .line 26388
    :cond_30
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 26389
    iget v0, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    move v2, v0

    move v0, v1

    .line 26391
    :goto_3a
    if-ge v2, v3, :cond_49

    .line 26392
    add-int/lit8 v1, v2, 0x1

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v1

    .line 26393
    if-le v1, v0, :cond_49

    .line 26394
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    .line 26399
    goto :goto_3a

    .line 26400
    :cond_49
    iput v2, p3, Landroid/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 350
    :cond_4b
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->ensureViewSet()V

    .line 351
    return-void
.end method

.method public final onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .registers 28
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "focusDirection"    # I
    .param p3, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 981
    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/widget/GridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v14

    .line 982
    .local v14, "prevFocusedChild":Landroid/view/View;
    if-nez v14, :cond_8

    .line 983
    const/4 v3, 0x0

    .line 1047
    :cond_7
    :goto_7
    return-object v3

    .line 985
    :cond_8
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 986
    .local v10, "lp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static {v10}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v16

    .line 987
    .local v16, "prevSpanStart":I
    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static {v10}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v21

    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static {v10}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v22

    add-int v15, v21, v22

    .line 988
    .local v15, "prevSpanEnd":I
    invoke-super/range {p0 .. p4}, Landroid/support/v7/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v21

    .line 989
    if-nez v21, :cond_24

    .line 990
    const/4 v3, 0x0

    goto :goto_7

    .line 994
    :cond_24
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v21

    .line 995
    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_af

    const/16 v21, 0x1

    :goto_36
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mShouldReverseLayout:Z

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_b2

    const/16 v21, 0x1

    .line 997
    :goto_44
    if-eqz v21, :cond_b5

    .line 998
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v21

    add-int/lit8 v17, v21, -0x1

    .line 999
    .local v17, "start":I
    const/4 v8, -0x1

    .line 1000
    .local v8, "inc":I
    const/4 v9, -0x1

    .line 1006
    .local v9, "limit":I
    :goto_4e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_bd

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v21

    if-eqz v21, :cond_bd

    const/4 v13, 0x1

    .line 1007
    .local v13, "preferLastSpan":Z
    :goto_63
    const/16 v18, 0x0

    .line 1008
    .local v18, "weakCandidate":Landroid/view/View;
    const/16 v20, -0x1

    .line 1009
    .local v20, "weakCandidateSpanIndex":I
    const/16 v19, 0x0

    .line 1011
    .local v19, "weakCandidateOverlap":I
    move/from16 v7, v17

    .local v7, "i":I
    :goto_6b
    if-eq v7, v9, :cond_e4

    .line 1012
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1013
    .local v3, "candidate":Landroid/view/View;
    if-eq v3, v14, :cond_e4

    .line 1016
    invoke-virtual {v3}, Landroid/view/View;->isFocusable()Z

    move-result v21

    if-eqz v21, :cond_ad

    .line 1019
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 1020
    .local v5, "candidateLp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static {v5}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v6

    .line 1021
    .local v6, "candidateStart":I
    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static {v5}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v21

    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I
    invoke-static {v5}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$100(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v22

    add-int v4, v21, v22

    .line 1022
    .local v4, "candidateEnd":I
    move/from16 v0, v16

    if-ne v6, v0, :cond_95

    if-eq v4, v15, :cond_7

    .line 1025
    :cond_95
    const/4 v2, 0x0

    .line 1026
    .local v2, "assignAsWeek":Z
    if-nez v18, :cond_bf

    .line 1027
    const/4 v2, 0x1

    .line 1040
    :cond_99
    :goto_99
    if-eqz v2, :cond_ad

    .line 1041
    move-object/from16 v18, v3

    .line 1042
    # getter for: Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I
    invoke-static {v5}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->access$000(Landroid/support/v7/widget/GridLayoutManager$LayoutParams;)I

    move-result v20

    .line 1043
    invoke-static {v4, v15}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 1044
    move/from16 v0, v16

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v22

    sub-int v19, v21, v22

    .line 1011
    .end local v2    # "assignAsWeek":Z
    .end local v4    # "candidateEnd":I
    .end local v5    # "candidateLp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    .end local v6    # "candidateStart":I
    :cond_ad
    add-int/2addr v7, v8

    goto :goto_6b

    .line 995
    .end local v3    # "candidate":Landroid/view/View;
    .end local v7    # "i":I
    .end local v8    # "inc":I
    .end local v9    # "limit":I
    .end local v13    # "preferLastSpan":Z
    .end local v17    # "start":I
    .end local v18    # "weakCandidate":Landroid/view/View;
    .end local v19    # "weakCandidateOverlap":I
    .end local v20    # "weakCandidateSpanIndex":I
    :cond_af
    const/16 v21, 0x0

    goto :goto_36

    :cond_b2
    const/16 v21, 0x0

    goto :goto_44

    .line 1002
    :cond_b5
    const/16 v17, 0x0

    .line 1003
    .restart local v17    # "start":I
    const/4 v8, 0x1

    .line 1004
    .restart local v8    # "inc":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v9

    .restart local v9    # "limit":I
    goto :goto_4e

    .line 1006
    :cond_bd
    const/4 v13, 0x0

    goto :goto_63

    .line 1029
    .restart local v2    # "assignAsWeek":Z
    .restart local v3    # "candidate":Landroid/view/View;
    .restart local v4    # "candidateEnd":I
    .restart local v5    # "candidateLp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    .restart local v6    # "candidateStart":I
    .restart local v7    # "i":I
    .restart local v13    # "preferLastSpan":Z
    .restart local v18    # "weakCandidate":Landroid/view/View;
    .restart local v19    # "weakCandidateOverlap":I
    .restart local v20    # "weakCandidateSpanIndex":I
    :cond_bf
    move/from16 v0, v16

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1030
    .local v11, "maxStart":I
    invoke-static {v4, v15}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 1031
    sub-int v12, v21, v11

    .line 1032
    .local v12, "overlap":I
    move/from16 v0, v19

    if-le v12, v0, :cond_d1

    .line 1033
    const/4 v2, 0x1

    goto :goto_99

    .line 1034
    :cond_d1
    move/from16 v0, v19

    if-ne v12, v0, :cond_99

    move/from16 v0, v20

    if-le v6, v0, :cond_e1

    const/16 v21, 0x1

    :goto_db
    move/from16 v0, v21

    if-ne v13, v0, :cond_99

    .line 1036
    const/4 v2, 0x1

    goto :goto_99

    .line 1034
    :cond_e1
    const/16 v21, 0x0

    goto :goto_db

    .end local v2    # "assignAsWeek":Z
    .end local v3    # "candidate":Landroid/view/View;
    .end local v4    # "candidateEnd":I
    .end local v5    # "candidateLp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    .end local v6    # "candidateStart":I
    .end local v11    # "maxStart":I
    .end local v12    # "overlap":I
    :cond_e4
    move-object/from16 v3, v18

    .line 1047
    goto/16 :goto_7
.end method

.method public final onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 14
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 145
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 146
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v5, v1, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    if-nez v5, :cond_e

    .line 147
    invoke-super {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 163
    :goto_d
    return-void

    :cond_e
    move-object v0, v1

    .line 150
    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 10893
    .local v0, "glp":Landroid/support/v7/widget/GridLayoutManager$LayoutParams;
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    .line 151
    invoke-direct {p0, p1, p2, v5}, Landroid/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;I)I

    move-result v2

    .line 152
    .local v2, "spanGroupIndex":I
    iget v5, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    if-nez v5, :cond_36

    .line 11123
    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 11133
    iget v6, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 154
    iget v7, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-le v7, v4, :cond_2e

    .line 12133
    iget v7, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 156
    iget v8, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ne v7, v8, :cond_2e

    move v3, v4

    .line 153
    :cond_2e
    invoke-static {v5, v6, v2, v4, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain$430787b1(IIIIZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_d

    .line 13123
    :cond_36
    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 13133
    iget v6, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 160
    iget v7, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-le v7, v4, :cond_45

    .line 14133
    iget v7, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 161
    iget v8, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ne v7, v8, :cond_45

    move v3, v4

    .line 158
    :cond_45
    invoke-static {v2, v4, v5, v6, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain$430787b1(IIIIZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public final onItemsAdded$5927c743(II)V
    .registers 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 200
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 17846
    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 201
    return-void
.end method

.method public final onItemsChanged$57043c5d()V
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 18846
    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 206
    return-void
.end method

.method public final onItemsMoved$342e6be0(II)V
    .registers 4
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 21846
    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 222
    return-void
.end method

.method public final onItemsRemoved$5927c743(II)V
    .registers 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 210
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 19846
    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 211
    return-void
.end method

.method public final onItemsUpdated$783f8c5f$5927c743(II)V
    .registers 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 216
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 20846
    iget-object v0, v0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 217
    return-void
.end method

.method public final onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 9
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 167
    .line 14567
    iget-boolean v0, p2, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    .line 167
    if-eqz v0, :cond_2e

    .line 15189
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v2

    .line 15190
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, v2, :cond_2e

    .line 15191
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 15893
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    .line 15193
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 16133
    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 15193
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 15194
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 17123
    iget v0, v0, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 15194
    invoke-virtual {v4, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 15190
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 170
    :cond_2e
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 17184
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 17185
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 175
    return-void
.end method

.method public final onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 3
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 181
    return-void
.end method

.method public final scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "dx"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 362
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 363
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->ensureViewSet()V

    .line 364
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public final scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "dy"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 370
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 371
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->ensureViewSet()V

    .line 372
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public final setMeasuredDimension(Landroid/graphics/Rect;II)V
    .registers 12
    .param p1, "childrenBounds"    # Landroid/graphics/Rect;
    .param p2, "wSpec"    # I
    .param p3, "hSpec"    # I

    .prologue
    .line 285
    iget-object v6, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    if-nez v6, :cond_7

    .line 286
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 289
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingRight()I

    move-result v7

    add-int v1, v6, v7

    .line 290
    .local v1, "horizontalPadding":I
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v7

    add-int v4, v6, v7

    .line 291
    .local v4, "verticalPadding":I
    iget v6, p0, Landroid/support/v7/widget/GridLayoutManager;->mOrientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_48

    .line 292
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int v2, v6, v4

    .line 22589
    .local v2, "usedHeight":I
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v6

    .line 293
    invoke-static {p3, v2, v6}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result v0

    .line 294
    .local v0, "height":I
    iget-object v6, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget-object v7, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    add-int/2addr v6, v1

    .line 23582
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v7

    .line 294
    invoke-static {p2, v6, v7}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result v5

    .line 302
    .end local v2    # "usedHeight":I
    .local v5, "width":I
    :goto_44
    invoke-virtual {p0, v5, v0}, Landroid/support/v7/widget/GridLayoutManager;->setMeasuredDimension(II)V

    .line 303
    return-void

    .line 297
    .end local v0    # "height":I
    .end local v5    # "width":I
    :cond_48
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int v3, v6, v1

    .line 24582
    .local v3, "usedWidth":I
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v6

    .line 298
    invoke-static {p2, v3, v6}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result v5

    .line 299
    .restart local v5    # "width":I
    iget-object v6, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget-object v7, p0, Landroid/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    add-int/2addr v6, v4

    .line 24589
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v7

    .line 299
    invoke-static {p3, v6, v7}, Landroid/support/v7/widget/GridLayoutManager;->chooseSize(III)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_44
.end method

.method public final setStackFromEnd(Z)V
    .registers 4
    .param p1, "stackFromEnd"    # Z

    .prologue
    .line 106
    if-eqz p1, :cond_b

    .line 107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_b
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 112
    return-void
.end method

.method public final supportsPredictiveItemAnimations()Z
    .registers 2

    .prologue
    .line 1052
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_a

    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
