.class Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$3;
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
    .line 1083
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1087
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1106
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1089
    :sswitch_0
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$800(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V

    goto :goto_0

    .line 1093
    :sswitch_1
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v1}, Lcom/nuance/swype/input/SpeechWrapper;->isResumable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1094
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->flushCurrentActiveWord()V

    .line 1096
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$900(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V

    .line 1097
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$1000(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V

    goto :goto_0

    .line 1100
    :sswitch_2
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$1100(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)Lcom/nuance/swype/input/IME;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1101
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$1200(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)Lcom/nuance/swype/input/IME;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    .line 1102
    .local v0, "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    if-eqz v1, :cond_0

    .line 1103
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->refreshHandwritingPadWidth()V

    .line 1104
    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->requestLayout()V

    goto :goto_0

    .line 1087
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_1
        0xe -> :sswitch_2
        0x1f9 -> :sswitch_0
    .end sparse-switch
.end method
