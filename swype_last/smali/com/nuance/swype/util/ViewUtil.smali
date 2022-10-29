.class public final Lcom/nuance/swype/util/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# direct methods
.method public static forceLayout(Landroid/view/View;)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 42
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1b

    move-object v1, p0

    .line 43
    check-cast v1, Landroid/view/ViewGroup;

    .line 44
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 45
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_f
    if-ge v2, v0, :cond_1b

    .line 46
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/util/ViewUtil;->forceLayout(Landroid/view/View;)V

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 49
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "idx":I
    :cond_1b
    return-void
.end method

.method public static getDefaultSizePreferMin(II)I
    .registers 5
    .param p0, "minSize"    # I
    .param p1, "measureSpec"    # I

    .prologue
    .line 58
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 59
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 61
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_14

    .line 66
    move v0, p0

    .line 79
    .local v0, "result":I
    :goto_c
    return v0

    .line 71
    .end local v0    # "result":I
    :sswitch_d
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 72
    .restart local v0    # "result":I
    goto :goto_c

    .line 76
    .end local v0    # "result":I
    :sswitch_12
    move v0, v2

    .restart local v0    # "result":I
    goto :goto_c

    .line 61
    :sswitch_data_14
    .sparse-switch
        -0x80000000 -> :sswitch_d
        0x40000000 -> :sswitch_12
    .end sparse-switch
.end method

.method public static getHorPadding(Landroid/view/View;)I
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getVerPadding(Landroid/view/View;)I
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static resetView(Landroid/view/View;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 15
    if-eqz p0, :cond_10

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 17
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_d

    .line 18
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 21
    :cond_d
    invoke-static {p0}, Lcom/nuance/swype/util/ViewUtil;->forceLayout(Landroid/view/View;)V

    .line 23
    :cond_10
    return-void
.end method
