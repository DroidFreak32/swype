.class Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$1;
.super Ljava/lang/Object;
.source "ChineseHandWritingInputView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V
    .locals 0

    .prologue
    .line 660
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 662
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 680
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 664
    :sswitch_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->showHowToUseToast()V

    goto :goto_0

    .line 667
    :sswitch_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v1}, Lcom/nuance/swype/input/SpeechWrapper;->isResumable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 668
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->flushCurrentActiveWord()V

    .line 670
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$000(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V

    .line 671
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$100(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V

    goto :goto_0

    .line 674
    :sswitch_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$200(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Lcom/nuance/swype/input/IME;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 675
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$300(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Lcom/nuance/swype/input/IME;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    .line 676
    .local v0, "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    if-eqz v1, :cond_0

    .line 677
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->refreshHandwritingPadWidth()V

    .line 678
    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->requestLayout()V

    goto :goto_0

    .line 662
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_1
        0xe -> :sswitch_2
        0x1f7 -> :sswitch_0
    .end sparse-switch
.end method
