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
    .param p1, "this$0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 1595
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
    .line 1617
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;->val$keyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->clearStickyKeys()V

    .line 1618
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J

    .prologue
    .line 1601
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$1700(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1613
    :cond_0
    return-void

    .line 1604
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$1500(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V

    .line 1605
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$1600(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V

    .line 1606
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$1800(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1607
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$1800(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v2, v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$1900(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1608
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1, v0, p1, v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 1606
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
