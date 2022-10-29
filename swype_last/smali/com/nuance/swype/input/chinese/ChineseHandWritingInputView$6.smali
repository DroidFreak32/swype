.class Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$6;
.super Lcom/nuance/swype/input/KeyboardViewEx$KeyboardActionAdapter;
.source "ChineseHandWritingInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->showCandidatesView(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

.field final synthetic val$keyboard:Lcom/nuance/swype/input/KeyboardEx;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;Lcom/nuance/swype/input/KeyboardEx;)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 1566
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$6;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    iput-object p2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$6;->val$keyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx$KeyboardActionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onRelease(I)V
    .registers 3
    .param p1, "primaryCode"    # I

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$6;->val$keyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->clearStickyKeys()V

    .line 1588
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J

    .prologue
    .line 1572
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$6;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->gridViewFunctionButtonPressed:Z
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$1800(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1583
    :cond_8
    return-void

    .line 1575
    :cond_9
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$6;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$6;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;
    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$1700(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->hideCandidatesGridView(Landroid/view/View;)V

    .line 1576
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$6;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->gridCandidateTableVisible:Z

    .line 1577
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$6;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 1578
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$6;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopupDataList:Ljava/util/List;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$1900(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 1579
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$6;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopupDataList:Ljava/util/List;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$1900(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1580
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$6;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$6;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1, v0, p1, v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 1578
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_22
.end method
