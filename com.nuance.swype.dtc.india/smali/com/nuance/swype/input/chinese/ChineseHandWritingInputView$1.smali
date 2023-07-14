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
    .param p1, "this$0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 724
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 726
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 740
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 728
    :sswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->showHowToUseToast()V

    goto :goto_0

    .line 731
    :sswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->isResumable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->flushCurrentActiveWord()V

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$000(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V

    .line 735
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$100(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V

    goto :goto_0

    .line 726
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_1
        0x1f7 -> :sswitch_0
    .end sparse-switch
.end method
