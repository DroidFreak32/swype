.class Lcom/nuance/swype/input/AlphaHandWritingInputView$3;
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
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/AlphaHandWritingInputView;

    .prologue
    .line 1392
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1395
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_2e

    .line 1409
    const/4 v0, 0x0

    .line 1411
    :goto_6
    return v0

    .line 1397
    :sswitch_7
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    # invokes: Lcom/nuance/swype/input/AlphaHandWritingInputView;->showHowToUseToast()V
    invoke-static {v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->access$700(Lcom/nuance/swype/input/AlphaHandWritingInputView;)V

    .line 1411
    :goto_c
    const/4 v0, 0x1

    goto :goto_6

    .line 1401
    :sswitch_e
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->isResumable()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1402
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->flushCurrentActiveWord()V

    .line 1404
    :cond_23
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->setSpeechViewHost()V

    .line 1405
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->resumeSpeech()V

    goto :goto_c

    .line 1395
    :sswitch_data_2e
    .sparse-switch
        0xb -> :sswitch_e
        0x1f7 -> :sswitch_7
    .end sparse-switch
.end method
