.class Lcom/nuance/swype/input/chinese/ChineseInputView$7;
.super Ljava/lang/Object;
.source "ChineseInputView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/chinese/ChineseInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .locals 0

    .prologue
    .line 3622
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3625
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 3664
    :cond_0
    :goto_0
    return v5

    .line 3628
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_5

    .line 3629
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;

    iget-object v3, v3, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;->mChCandidates:Ljava/util/List;

    invoke-static {v4, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$2302(Lcom/nuance/swype/input/chinese/ChineseInputView;Ljava/util/List;)Ljava/util/List;

    .line 3630
    const/4 v1, 0x0

    .line 3631
    .local v1, "chGesture":C
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$2300(Lcom/nuance/swype/input/chinese/ChineseInputView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 3632
    if-lez v3, :cond_2

    .line 3633
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$2300(Lcom/nuance/swype/input/chinese/ChineseInputView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 3634
    .local v2, "seq":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 3635
    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 3636
    .local v0, "ch":C
    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    const/16 v3, 0xa

    if-eq v0, v3, :cond_1

    const/16 v3, 0xd

    if-eq v0, v3, :cond_1

    const/16 v3, 0x20

    if-eq v0, v3, :cond_1

    const/16 v3, 0x9

    if-ne v0, v3, :cond_2

    .line 3639
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$2302(Lcom/nuance/swype/input/chinese/ChineseInputView;Ljava/util/List;)Ljava/util/List;

    .line 3640
    move v1, v0

    .line 3644
    .end local v0    # "ch":C
    .end local v2    # "seq":Ljava/lang/CharSequence;
    :cond_2
    if-eqz v1, :cond_4

    .line 3645
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v3, v3, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 3646
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$2400(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    .line 3648
    :cond_3
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v3, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$2500(Lcom/nuance/swype/input/chinese/ChineseInputView;C)V

    .line 3650
    :cond_4
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$2600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 3652
    .end local v1    # "chGesture":C
    :cond_5
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v3, v3, Lcom/nuance/swype/input/chinese/ChineseInputView;->mDefaultWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 3653
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$2400(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    .line 3655
    :cond_6
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v3, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setWritingRecognitionDone(Z)V

    .line 3656
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v3, v6, v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$100(Lcom/nuance/swype/input/chinese/ChineseInputView;ZZ)V

    .line 3657
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$2300(Lcom/nuance/swype/input/chinese/ChineseInputView;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$2300(Lcom/nuance/swype/input/chinese/ChineseInputView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3658
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$7;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setNotMatchToolTipSuggestion()V

    goto/16 :goto_0

    .line 3625
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
