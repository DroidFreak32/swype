.class Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;
.super Ljava/lang/Object;
.source "JapaneseHandWritingInputView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .prologue
    .line 880
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 883
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 950
    :cond_0
    :goto_0
    return v8

    .line 885
    :pswitch_0
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v5, v5, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v5, v5, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v5}, Lcom/nuance/swype/input/SpeechWrapper;->isSpeechViewShowing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 888
    :cond_1
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CharWriteEvent;

    iget-char v5, v5, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CharWriteEvent;->mChar:C

    invoke-static {v6, v5}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$000(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;C)V

    goto :goto_0

    .line 892
    :pswitch_1
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v5, v5, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v5, v5, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v5}, Lcom/nuance/swype/input/SpeechWrapper;->isSpeechViewShowing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 895
    :cond_2
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$TextWriteEvent;

    iget-object v5, v5, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$TextWriteEvent;->mText:Ljava/lang/CharSequence;

    invoke-static {v6, v5}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$100(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 900
    :pswitch_2
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v5, v5, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v5, v5, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v5}, Lcom/nuance/swype/input/SpeechWrapper;->isSpeechViewShowing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 903
    :cond_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v5}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$200(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 906
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;

    iget-object v5, v5, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;->mChCandidates:Ljava/util/List;

    invoke-static {v6, v5}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$302(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;Ljava/util/List;)Ljava/util/List;

    .line 908
    const/4 v1, 0x0

    .line 909
    .local v1, "chGesture":C
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v5}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$300(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 910
    .local v3, "n":I
    if-lez v3, :cond_5

    .line 911
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v5}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$300(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v6, v5}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$400(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 912
    .local v4, "seq":Ljava/lang/CharSequence;
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v5, v8, :cond_5

    .line 913
    invoke-interface {v4, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 917
    .local v0, "ch":C
    const/16 v5, 0x8

    if-eq v0, v5, :cond_4

    const/16 v5, 0xa

    if-eq v0, v5, :cond_4

    const/16 v5, 0xd

    if-eq v0, v5, :cond_4

    const/16 v5, 0x20

    if-eq v0, v5, :cond_4

    const/16 v5, 0x9

    if-ne v0, v5, :cond_5

    .line 924
    :cond_4
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$302(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;Ljava/util/List;)Ljava/util/List;

    .line 925
    move v1, v0

    .line 930
    .end local v0    # "ch":C
    .end local v4    # "seq":Ljava/lang/CharSequence;
    :cond_5
    if-eqz v1, :cond_7

    .line 931
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v5, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$000(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;C)V

    .line 943
    .end local v1    # "chGesture":C
    .end local v3    # "n":I
    :cond_6
    :goto_1
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v5, v5, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v5, v5, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v5}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->isShown()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 944
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v6}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$300(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$500(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;Ljava/util/List;)V

    goto/16 :goto_0

    .line 932
    .restart local v1    # "chGesture":C
    .restart local v3    # "n":I
    :cond_7
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v5, v5, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v5, v5, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v5}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->isShown()Z

    move-result v5

    if-nez v5, :cond_6

    .line 934
    if-lez v3, :cond_6

    .line 935
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v5}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$300(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v6, v5}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$400(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 936
    .local v2, "first":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 937
    invoke-interface {v2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 938
    .restart local v0    # "ch":C
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v5, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$000(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;C)V

    goto :goto_1

    .line 883
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
