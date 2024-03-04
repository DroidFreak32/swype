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
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/nuance/swype/input/CandidatesListView$2;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 250
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView$2;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    invoke-static {v1}, Lcom/nuance/swype/input/CandidatesListView;->access$100(Lcom/nuance/swype/input/CandidatesListView;)I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView$2;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    invoke-static {v1}, Lcom/nuance/swype/input/CandidatesListView;->access$200(Lcom/nuance/swype/input/CandidatesListView;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 251
    const/4 v0, 0x0

    .line 264
    :goto_0
    return v0

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView$2;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    iput-boolean v0, v1, Lcom/nuance/swype/input/CandidatesListView;->mScrolled:Z

    .line 255
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView$2;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    iput v2, v1, Lcom/nuance/swype/input/CandidatesListView;->mA:F

    .line 256
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView$2;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    iput v2, v1, Lcom/nuance/swype/input/CandidatesListView;->mV:F

    .line 257
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView$2;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView$2;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/swype/input/CandidatesListView$2;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v3, p3}, Lcom/nuance/swype/input/CandidatesListView;->pull(F)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/CandidatesListView;->scrollToX(I)V

    .line 258
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView$2;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v2, p0, Lcom/nuance/swype/input/CandidatesListView$2;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/CandidatesListView;->getScrollX()I

    move-result v2

    iput v2, v1, Lcom/nuance/swype/input/CandidatesListView;->mTargetScrollX:I

    .line 259
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView$2;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v1, v1, Lcom/nuance/swype/input/CandidatesListView;->mSwipeSpeed:Lcom/nuance/swype/input/CandidatesListView$RollAverage;

    invoke-virtual {v1, p3}, Lcom/nuance/swype/input/CandidatesListView$RollAverage;->add(F)V

    .line 261
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView$2;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    invoke-static {v1}, Lcom/nuance/swype/input/CandidatesListView;->access$300(Lcom/nuance/swype/input/CandidatesListView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 263
    iget-object v1, p0, Lcom/nuance/swype/input/CandidatesListView$2;->this$0:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/CandidatesListView;->invalidate()V

    goto :goto_0
.end method
