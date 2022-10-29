.class Lcom/nuance/swype/input/japanese/JapaneseInputView$4;
.super Lcom/nuance/swype/input/KeyboardViewEx$KeyboardActionAdapter;
.source "JapaneseInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/japanese/JapaneseInputView;->showGridCandidatesView(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

.field final synthetic val$keyboard:Lcom/nuance/swype/input/KeyboardEx;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/japanese/JapaneseInputView;Lcom/nuance/swype/input/KeyboardEx;)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 2745
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$4;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iput-object p2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$4;->val$keyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx$KeyboardActionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onRelease(I)V
    .registers 3
    .param p1, "primaryCode"    # I

    .prologue
    .line 2773
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$4;->val$keyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->clearStickyKeys()V

    .line 2774
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J

    .prologue
    .line 2751
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$4;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # getter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->gridViewFunctionButtonPressed:Z
    invoke-static {v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$1400(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2769
    :cond_8
    :goto_8
    return-void

    .line 2754
    :cond_9
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$4;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->hideGridCandidatesView()V
    invoke-static {v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$1000(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V

    .line 2755
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$4;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    const/4 v2, 0x1

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->setCandidatesViewShown(Z)V
    invoke-static {v1, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$1500(Lcom/nuance/swype/input/japanese/JapaneseInputView;Z)V

    .line 2757
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$4;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # getter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->isSegmentationPopupNeeded:Z
    invoke-static {v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$1200(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2758
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$4;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->postDelayShowSegmentationPopupMessage()V
    invoke-static {v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$1300(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V

    .line 2760
    :cond_21
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$4;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    if-eqz v1, :cond_8

    .line 2761
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_28
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$4;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 2762
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$4;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2763
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 2764
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$4;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$4;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/japanese/JapaneseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1, v0, p1, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_8

    .line 2761
    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_28
.end method
