.class Lcom/nuance/swype/input/chinese/VerCandidatesListView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "VerCandidatesListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/chinese/VerCandidatesListView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/VerCandidatesListView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/VerCandidatesListView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

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
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    iput-boolean v3, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mScrolled:Z

    .line 81
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    iput v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mA:F

    .line 82
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    iput v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mV:F

    .line 83
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    invoke-virtual {v2, p4}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->pull(F)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->scrollToY(I)V

    .line 84
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getScrollY()I

    move-result v1

    iput v1, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mTargetScrollPos:I

    .line 85
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mSwipeSpeed:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;

    invoke-virtual {v0, p4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$RollAverage;->add(F)V

    .line 87
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    # invokes: Lcom/nuance/swype/input/chinese/VerCandidatesListView;->needMoreWords()Z
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->access$000(Lcom/nuance/swype/input/chinese/VerCandidatesListView;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 88
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->mGetMoreWordsHandler:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;

    invoke-interface {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;->requestMoreWords()V

    .line 92
    :cond_41
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->invalidate()V

    .line 93
    return v3
.end method
