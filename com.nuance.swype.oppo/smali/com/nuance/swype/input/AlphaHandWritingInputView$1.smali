.class Lcom/nuance/swype/input/AlphaHandWritingInputView$1;
.super Ljava/lang/Object;
.source "AlphaHandWritingInputView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/AlphaHandWritingInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/AlphaHandWritingInputView;)V
    .locals 0

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 1104
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v2, v3

    .line 1148
    :goto_0
    return v2

    .line 1106
    :pswitch_0
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    invoke-static {v2}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->access$000(Lcom/nuance/swype/input/AlphaHandWritingInputView;)V

    .line 1148
    :cond_0
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1110
    :pswitch_1
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    invoke-static {v2}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->access$100(Lcom/nuance/swype/input/AlphaHandWritingInputView;)Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->getRecognitionMode()I

    move-result v2

    if-nez v2, :cond_1

    .line 1115
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;

    iget-object v0, v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;->mCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1116
    .local v0, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v2

    if-lez v2, :cond_0

    .line 1117
    invoke-virtual {v0, v3}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1118
    .local v1, "first":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->handleChar(C)V

    goto :goto_1

    .line 1121
    .end local v0    # "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    .end local v1    # "first":Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    iget-object v2, v2, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v2}, Lcom/nuance/swype/input/SpeechWrapper;->isSpeechViewShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1122
    :cond_2
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;

    iget-object v2, v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;->mCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v3, v2}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateCandidatesList(Lcom/nuance/input/swypecorelib/Candidates;)V

    goto :goto_1

    .line 1129
    :pswitch_2
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CharWriteEvent;

    iget-char v2, v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CharWriteEvent;->mChar:C

    invoke-virtual {v3, v2}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->handleChar(C)V

    goto :goto_1

    .line 1133
    :pswitch_3
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$TextWriteEvent;

    iget-object v2, v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$TextWriteEvent;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->handleText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1137
    :pswitch_4
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$InstantGestureWriteEvent;

    iget-char v4, v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$InstantGestureWriteEvent;->mGestureChar:C

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$InstantGestureWriteEvent;

    iget-object v2, v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$InstantGestureWriteEvent;->mCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v3, v4, v2}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->handleInstantGestureChar(CLcom/nuance/input/swypecorelib/Candidates;)V

    goto :goto_1

    .line 1142
    :pswitch_5
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->showStartOfWordCandidateList()V

    goto :goto_1

    .line 1104
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method
