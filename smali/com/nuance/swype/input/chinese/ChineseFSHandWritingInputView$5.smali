.class Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$5;
.super Ljava/lang/Object;
.source "ChineseFSHandWritingInputView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V
    .locals 0

    .prologue
    .line 1364
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 1368
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mContainer:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->hidePopupCandidatesView()V

    .line 1369
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridCandidateTableVisible:Z

    .line 1370
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v1, v4}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 1371
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$1500(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Lcom/nuance/swype/input/IME;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1372
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$1600(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Lcom/nuance/swype/input/IME;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    .line 1373
    .local v0, "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isMiniKeyboardMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isDockMiniKeyboardMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1374
    :cond_0
    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->requestLayout()V

    .line 1375
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v1, v4}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$1702(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;Z)Z

    .line 1378
    .end local v0    # "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$1800(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V

    .line 1379
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v1, v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$1902(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;I)I

    .line 1380
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1381
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setPointStatus(I)V

    .line 1384
    :cond_2
    return-void
.end method
