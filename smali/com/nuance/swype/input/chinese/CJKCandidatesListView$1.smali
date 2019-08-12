.class Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;
.super Ljava/lang/Object;
.source "CJKCandidatesListView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/chinese/CJKCandidatesListView;
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
    .line 156
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 159
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 181
    :cond_0
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 161
    :pswitch_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget v1, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->access$000(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->access$000(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget v1, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->access$000(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 166
    const/4 v1, 0x0

    goto :goto_1

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->access$000(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget v2, v2, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 170
    .local v0, "wdSource":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->abortKey()V

    .line 174
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v2, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget v3, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget v4, v4, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-interface {v2, v3, v1, v0, v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->onCandidateLongPressed(ILjava/lang/String;ILcom/nuance/swype/input/chinese/CJKCandidatesListView;)V

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
