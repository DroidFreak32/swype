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

    .prologue
    .line 267
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
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 271
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->access$100(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 272
    :cond_0
    const/4 v0, 0x0

    .line 286
    :goto_0
    return v0

    .line 274
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iput-boolean v0, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mScrolled:Z

    .line 275
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iput v2, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mA:F

    .line 276
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iput v2, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mV:F

    .line 277
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v3, p3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->pull(F)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollToX(I)V

    .line 278
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v2

    iput v2, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTargetScrollPos:I

    .line 279
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSwipeSpeed:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;

    invoke-virtual {v1, p3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->add(F)V

    .line 280
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 281
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->access$200(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 282
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;

    invoke-interface {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;->requestMoreWords()V

    .line 285
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$2;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    goto :goto_0
.end method
