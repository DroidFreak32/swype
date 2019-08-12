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

    .prologue
    .line 885
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

    .line 888
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 958
    :cond_0
    :goto_0
    return v8

    .line 890
    :pswitch_0
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v5, v5, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v5, v5, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v5}, Lcom/nuance/swype/input/SpeechWrapper;->isSpeechViewShowing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 891
    :cond_1
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CharWriteEvent;

    iget-char v5, v5, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CharWriteEvent;->mChar:C

    invoke-static {v6, v5}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$000(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;C)V

    goto :goto_0

    .line 897
    :pswitch_1
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v5, v5, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v5, v5, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v5}, Lcom/nuance/swype/input/SpeechWrapper;->isSpeechViewShowing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 898
    :cond_2
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$TextWriteEvent;

    iget-object v5, v5, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$TextWriteEvent;->mText:Ljava/lang/CharSequence;

    invoke-static {v6, v5}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$100(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 905
    :pswitch_2
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v5, v5, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v5, v5, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v5}, Lcom/nuance/swype/input/SpeechWrapper;->isSpeechViewShowing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 906
    :cond_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v5}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$200(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 911
    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;

    iget-object v5, v5, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;->mChCandidates:Ljava/util/List;

    invoke-static {v6, v5}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$302(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;Ljava/util/List;)Ljava/util/List;

    .line 913
    const/4 v1, 0x0

    .line 914
    .local v1, "chGesture":C
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v5}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$300(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 915
    .local v3, "n":I
    if-lez v3, :cond_5

    .line 916
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v5}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$300(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 917
    .local v4, "seq":Ljava/lang/CharSequence;
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v5, v8, :cond_5

    .line 918
    invoke-interface {v4, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 922
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

    .line 929
    :cond_4
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$302(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;Ljava/util/List;)Ljava/util/List;

    .line 930
    move v1, v0

    .line 935
    .end local v0    # "ch":C
    .end local v4    # "seq":Ljava/lang/CharSequence;
    :cond_5
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v5}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$400(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 936
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v5}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$500(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V

    .line 938
    :cond_6
    if-eqz v1, :cond_8

    .line 939
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v5, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$000(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;C)V

    .line 951
    .end local v1    # "chGesture":C
    .end local v3    # "n":I
    :cond_7
    :goto_1
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v5, v5, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v5, v5, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v5}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->isShown()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 952
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v6}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$300(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$600(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;Ljava/util/List;)V

    goto/16 :goto_0

    .line 940
    .restart local v1    # "chGesture":C
    .restart local v3    # "n":I
    :cond_8
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v5, v5, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v5, v5, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v5}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->isShown()Z

    move-result v5

    if-nez v5, :cond_7

    .line 942
    if-lez v3, :cond_7

    .line 943
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v5}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$300(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 944
    .local v2, "first":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 945
    invoke-interface {v2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 946
    .restart local v0    # "ch":C
    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v5, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$000(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;C)V

    goto :goto_1

    .line 888
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
