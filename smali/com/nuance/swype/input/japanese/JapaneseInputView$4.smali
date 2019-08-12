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
    .locals 0

    .prologue
    .line 2910
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$4;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iput-object p2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$4;->val$keyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx$KeyboardActionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onRelease(I)V
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 2938
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$4;->val$keyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->clearStickyKeys()V

    .line 2939
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J

    .prologue
    .line 2916
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$4;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$700(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2934
    :cond_0
    :goto_0
    return-void

    .line 2919
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$4;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$400(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V

    .line 2920
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$4;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$800(Lcom/nuance/swype/input/japanese/JapaneseInputView;Z)V

    .line 2922
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$4;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$600(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2923
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$4;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showSegmentationPopup()V

    .line 2925
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$4;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 2926
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$4;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2927
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$4;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/japanese/JapaneseInputView;->mWordList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2928
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2929
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$4;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$4;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-static {v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$900(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_0

    .line 2926
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
