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
    .param p1, "this$0"    # Lcom/nuance/swype/input/AlphaHandWritingInputView;

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1219
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v2, v3

    .line 1267
    :goto_0
    return v2

    .line 1221
    :pswitch_0
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    invoke-static {v2}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->access$000(Lcom/nuance/swype/input/AlphaHandWritingInputView;)V

    :cond_0
    :goto_1
    move v2, v4

    .line 1267
    goto :goto_0

    .line 1225
    :pswitch_1
    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v4, [Ljava/lang/Object;

    const-string/jumbo v6, "writeEventCallback MSG_HANDLE_SUGGESTION_CANDIDATES "

    aput-object v6, v5, v3

    invoke-interface {v2, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1226
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    iget-boolean v2, v2, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mShowInternalCandidates:Z

    if-nez v2, :cond_1

    .line 1231
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;

    iget-object v0, v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;->mCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1232
    .local v0, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v2

    if-lez v2, :cond_0

    .line 1233
    invoke-virtual {v0, v3}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1234
    .local v1, "first":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v2, v3}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->access$100(Lcom/nuance/swype/input/AlphaHandWritingInputView;C)V

    goto :goto_1

    .line 1237
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

    .line 1240
    :cond_2
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;

    iget-object v2, v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;->mCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-static {v3, v2}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->access$200(Lcom/nuance/swype/input/AlphaHandWritingInputView;Lcom/nuance/input/swypecorelib/Candidates;)V

    goto :goto_1

    .line 1245
    :pswitch_2
    sget-object v5, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v2, "writeEventCallback MSG_HANDLE_CHAR: "

    aput-object v2, v6, v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CharWriteEvent;

    iget-char v2, v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CharWriteEvent;->mChar:C

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v6, v4

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1246
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CharWriteEvent;

    iget-char v2, v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CharWriteEvent;->mChar:C

    invoke-static {v3, v2}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->access$100(Lcom/nuance/swype/input/AlphaHandWritingInputView;C)V

    goto :goto_1

    .line 1250
    :pswitch_3
    sget-object v5, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v2, "writeEventCallback MSG_HANDLE_TEXT: "

    aput-object v2, v6, v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$TextWriteEvent;

    iget-object v2, v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$TextWriteEvent;->mText:Ljava/lang/CharSequence;

    aput-object v2, v6, v4

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1251
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$TextWriteEvent;

    iget-object v2, v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$TextWriteEvent;->mText:Ljava/lang/CharSequence;

    invoke-static {v3, v2}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->access$300(Lcom/nuance/swype/input/AlphaHandWritingInputView;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1255
    :pswitch_4
    sget-object v5, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v2, "writeEventCallback MSG_HANDLE_INSTANT_GESTURE_CHAR: "

    aput-object v2, v6, v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$InstantGestureWriteEvent;

    iget-char v2, v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$InstantGestureWriteEvent;->mGestureChar:C

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v6, v4

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1256
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$InstantGestureWriteEvent;

    iget-char v5, v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$InstantGestureWriteEvent;->mGestureChar:C

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$InstantGestureWriteEvent;

    iget-object v2, v2, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$InstantGestureWriteEvent;->mCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-static {v3, v5, v2}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->access$400(Lcom/nuance/swype/input/AlphaHandWritingInputView;CLcom/nuance/input/swypecorelib/Candidates;)V

    goto/16 :goto_1

    .line 1261
    :pswitch_5
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    invoke-static {v2}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->access$500(Lcom/nuance/swype/input/AlphaHandWritingInputView;)V

    goto/16 :goto_1

    .line 1219
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
