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
    .param p1, "this$0"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 175
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    move v1, v3

    .line 215
    :goto_1
    return v1

    .line 178
    :pswitch_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget v1, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 184
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->access$000(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->access$000(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget v1, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v4, v4, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_2

    move v1, v2

    .line 186
    goto :goto_1

    .line 188
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->abortKey()V

    .line 189
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v4, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget v5, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget v6, v6, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    .line 190
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .line 189
    invoke-interface {v4, v5, v1, v2, v6}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->onCandidateLongPressed(ILjava/lang/String;ILcom/nuance/swype/input/chinese/CJKCandidatesListView;)V

    goto :goto_0

    .line 193
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget v1, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-static {v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->access$000(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_4

    move v1, v2

    .line 194
    goto :goto_1

    .line 196
    :cond_4
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->access$000(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget v4, v4, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 197
    .local v0, "wdSource":I
    sget-object v4, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "onCandidateLongPressed()"

    aput-object v1, v5, v2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " called 11::  wdSource  :: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , word :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget v6, v6, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 198
    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    const/16 v1, 0xe

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 204
    :cond_5
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->abortKey()V

    .line 205
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v2, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget v4, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mSuggestions:Ljava/util/List;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget v5, v5, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTouchIndex:I

    .line 206
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$1;->this$0:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .line 205
    invoke-interface {v2, v4, v1, v0, v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->onCandidateLongPressed(ILjava/lang/String;ILcom/nuance/swype/input/chinese/CJKCandidatesListView;)V

    goto/16 :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
