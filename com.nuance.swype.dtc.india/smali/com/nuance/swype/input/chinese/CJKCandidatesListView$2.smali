.class Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CJKCandidatesListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

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
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 314
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v2, v2, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v2, v2, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->access$100(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)I

    move-result v2

    if-gtz v2, :cond_1

    .line 334
    :cond_0
    :goto_0
    return v0

    .line 318
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-boolean v2, v2, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mScroll:Z

    if-eqz v2, :cond_0

    .line 322
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iput-boolean v1, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mScrolled:Z

    .line 323
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iput v3, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mA:F

    .line 324
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iput v3, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    .line 325
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v3, p3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->pull(F)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollToX(I)V

    .line 326
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v2

    iput v2, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    .line 327
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSwipeSpeed:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;

    invoke-virtual {v0, p3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->add(F)V

    .line 328
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 329
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->access$200(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;

    invoke-interface {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;->requestMoreWords()V

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    move v0, v1

    .line 334
    goto :goto_0
.end method
