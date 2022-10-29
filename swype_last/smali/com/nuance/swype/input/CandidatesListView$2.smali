.class Lcom/nuance/swype/input/CandidatesListView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CandidatesListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/CandidatesListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/CandidatesListView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/CandidatesListView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/CandidatesListView;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/nuance/swype/input/CandidatesListView$2;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 274
    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView$2;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    # invokes: Lcom/nuance/swype/input/CandidatesListView;->getMaxScroll()I
    invoke-static {v2}, Lcom/nuance/swype/input/CandidatesListView;->access$100(Lcom/nuance/swype/input/CandidatesListView;)I

    move-result v2

    if-gtz v2, :cond_14

    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView$2;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    # invokes: Lcom/nuance/swype/input/CandidatesListView;->getMinScroll()I
    invoke-static {v2}, Lcom/nuance/swype/input/CandidatesListView;->access$200(Lcom/nuance/swype/input/CandidatesListView;)I

    move-result v2

    if-ltz v2, :cond_14

    .line 292
    :cond_13
    :goto_13
    return v0

    .line 278
    :cond_14
    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView$2;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    iget-boolean v2, v2, Lcom/nuance/swype/input/CandidatesListView;->mScroll:Z

    if-eqz v2, :cond_13

    .line 282
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView$2;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    iput-boolean v1, v0, Lcom/nuance/swype/input/CandidatesListView;->mScrolled:Z

    .line 283
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView$2;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    iput v3, v0, Lcom/nuance/swype/input/CandidatesListView;->mA:F

    .line 284
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView$2;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    iput v3, v0, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    .line 285
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView$2;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView$2;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView$2;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v3, p3}, Lcom/nuance/swype/input/CandidatesListView;->pull(F)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/CandidatesListView;->scrollToX(I)V

    .line 286
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView$2;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView$2;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v2

    iput v2, v0, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    .line 287
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView$2;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v0, v0, Lcom/nuance/swype/input/CandidatesListView;->mSwipeSpeed:Lcom/nuance/swype/input/CandidatesListView$RollAverage;

    invoke-virtual {v0, p3}, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->add(F)V

    .line 289
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView$2;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    # getter for: Lcom/nuance/swype/input/CandidatesListView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/nuance/swype/input/CandidatesListView;->access$300(Lcom/nuance/swype/input/CandidatesListView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 291
    iget-object v0, p0, Lcom/nuance/swype/input/CandidatesListView$2;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    move v0, v1

    .line 292
    goto :goto_13
.end method
