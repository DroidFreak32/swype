.class Lcom/nuance/swype/input/SpeechWrapper$4;
.super Ljava/lang/Object;
.source "SpeechWrapper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/SpeechWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/SpeechWrapper;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/SpeechWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 561
    iput-object p1, p0, Lcom/nuance/swype/input/SpeechWrapper$4;->this$0:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 564
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 586
    :pswitch_0
    const/4 v0, 0x0

    .line 588
    :goto_0
    return v0

    .line 566
    :pswitch_1
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper$4;->this$0:Lcom/nuance/swype/input/SpeechWrapper;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/SpeechWrapper;->showDictationFailed(Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;)V

    .line 588
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 570
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper$4;->this$0:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-static {v0, p1}, Lcom/nuance/swype/input/SpeechWrapper;->access$200(Lcom/nuance/swype/input/SpeechWrapper;Landroid/os/Message;)V

    goto :goto_1

    .line 574
    :pswitch_3
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper$4;->this$0:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->showPopupSpeech()V

    goto :goto_1

    .line 578
    :pswitch_4
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper$4;->this$0:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-static {v0}, Lcom/nuance/swype/input/SpeechWrapper;->access$300(Lcom/nuance/swype/input/SpeechWrapper;)V

    goto :goto_1

    .line 582
    :pswitch_5
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper$4;->this$0:Lcom/nuance/swype/input/SpeechWrapper;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/speech/Dictation$SpeechResult;

    invoke-static {v1, v0}, Lcom/nuance/swype/input/SpeechWrapper;->access$400(Lcom/nuance/swype/input/SpeechWrapper;Lcom/nuance/speech/Dictation$SpeechResult;)V

    goto :goto_1

    .line 564
    :pswitch_data_0
    .packed-switch 0x5dc
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
