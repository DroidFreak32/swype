.class Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;
.super Lcom/nuance/swype/input/KeyboardViewEx$KeyboardActionAdapter;
.source "ChineseFSHandWritingInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showPopupCandidatesView(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

.field final synthetic val$keyboard:Lcom/nuance/swype/input/KeyboardEx;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;Lcom/nuance/swype/input/KeyboardEx;)V
    .locals 0

    .prologue
    .line 1418
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    iput-object p2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;->val$keyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx$KeyboardActionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onRelease(I)V
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;->val$keyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->clearStickyKeys()V

    .line 1456
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 1424
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$2000(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1451
    :cond_0
    return-void

    .line 1427
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->hidePopupCandidatesView()V

    .line 1428
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridCandidateTableVisible:Z

    .line 1429
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v2, v5}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 1430
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$2100(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Lcom/nuance/swype/input/IME;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1431
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$2200(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Lcom/nuance/swype/input/IME;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    .line 1432
    .local v0, "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isMiniKeyboardMode()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isDockMiniKeyboardMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1433
    :cond_2
    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->requestLayout()V

    .line 1434
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v2, v5}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$1702(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;Z)Z

    .line 1438
    .end local v0    # "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$1800(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V

    .line 1440
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v2, v4}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$1902(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;I)I

    .line 1441
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1442
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setPointStatus(I)V

    .line 1444
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$2300(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1445
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$2300(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1446
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$2400(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-result-object v3

    invoke-virtual {v2, v1, p1, v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 1444
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
