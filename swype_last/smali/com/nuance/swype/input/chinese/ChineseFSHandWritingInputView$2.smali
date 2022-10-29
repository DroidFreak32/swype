.class Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$2;
.super Ljava/lang/Object;
.source "ChineseFSHandWritingInputView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 783
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 785
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_4e

    .line 804
    :goto_5
    const/4 v0, 0x1

    return v0

    .line 787
    :sswitch_7
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$100(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$100(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 788
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showHowToUseToast()V

    goto :goto_5

    .line 790
    :cond_21
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0x1f7

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5

    .line 795
    :sswitch_2d
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->isResumable()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 796
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->flushCurrentActiveWord()V

    .line 798
    :cond_42
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setSpeechViewHost()V
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$200(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V

    .line 799
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->resumeSpeech()V

    goto :goto_5

    .line 785
    nop

    :sswitch_data_4e
    .sparse-switch
        0xb -> :sswitch_2d
        0x1f7 -> :sswitch_7
    .end sparse-switch
.end method
