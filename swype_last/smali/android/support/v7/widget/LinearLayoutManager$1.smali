.class final Landroid/support/v7/widget/LinearLayoutManager$1;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/LinearLayoutManager;->smoothScrollToPosition$7d69765f(Landroid/support/v7/widget/RecyclerView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/LinearLayoutManager;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Landroid/support/v7/widget/LinearLayoutManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 427
    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager$1;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 7
    .param p1, "targetPosition"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 430
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager$1;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    .line 1439
    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v3

    if-nez v3, :cond_d

    .line 1440
    const/4 v0, 0x0

    .line 1445
    :goto_c
    return-object v0

    .line 1442
    :cond_d
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 1443
    if-ge p1, v3, :cond_18

    move v0, v1

    :cond_18
    iget-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v0, v3, :cond_1d

    const/4 v1, -0x1

    .line 1444
    :cond_1d
    iget v0, v2, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_28

    .line 1445
    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, v1

    invoke-direct {v0, v1, v4}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_c

    .line 1447
    :cond_28
    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, v1

    invoke-direct {v0, v4, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_c
.end method
