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
    .param p1, "this$0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1099
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1114
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1101
    :sswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$800(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V

    goto :goto_0

    .line 1105
    :sswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->isResumable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->flushCurrentActiveWord()V

    .line 1108
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$900(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V

    .line 1109
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$1000(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V

    goto :goto_0

    .line 1099
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_1
        0x1f9 -> :sswitch_0
    .end sparse-switch
.end method
