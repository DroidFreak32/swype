.class Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$1;
.super Ljava/lang/Object;
.source "KoreanHandWritingInputView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)V
    .locals 0

    .prologue
    .line 683
    iput-object p1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 687
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    move v4, v5

    .line 734
    :goto_0
    return v4

    .line 690
    :pswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-static {v4}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$000(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 691
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;

    iget-object v2, v4, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;->mChCandidates:Ljava/util/List;

    .line 692
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .line 693
    .local v1, "chGesture":C
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 694
    if-lez v4, :cond_1

    .line 695
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 696
    .local v3, "seq":Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 697
    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 698
    .local v0, "ch":C
    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    const/16 v4, 0xa

    if-eq v0, v4, :cond_0

    const/16 v4, 0xd

    if-eq v0, v4, :cond_0

    const/16 v4, 0x20

    if-eq v0, v4, :cond_0

    const/16 v4, 0x9

    if-ne v0, v4, :cond_1

    .line 703
    :cond_0
    const/4 v2, 0x0

    .line 704
    move v1, v0

    .line 709
    .end local v0    # "ch":C
    .end local v3    # "seq":Ljava/lang/CharSequence;
    :cond_1
    if-eqz v1, :cond_2

    .line 710
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-static {v4, v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$100(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;C)V

    .line 712
    :cond_2
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-static {v4, v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$200(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;Ljava/util/List;)V

    .line 713
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-static {v4}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$300(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-static {v4}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$300(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 714
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-static {v4}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$400(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)V

    .line 715
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setNotMatchToolTipSuggestion()V

    .end local v1    # "chGesture":C
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_3
    :goto_1
    move v4, v6

    .line 734
    goto :goto_0

    .line 721
    :pswitch_1
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CharWriteEvent;

    iget-char v4, v4, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CharWriteEvent;->mChar:C

    invoke-static {v5, v4}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$100(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;C)V

    goto :goto_1

    .line 725
    :pswitch_2
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$TextWriteEvent;

    iget-object v4, v4, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$TextWriteEvent;->mText:Ljava/lang/CharSequence;

    invoke-static {v5, v4}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$500(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 729
    :pswitch_3
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-static {v4}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$600(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)V

    goto :goto_1

    .line 687
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
