.class Lcom/nuance/speech/SpeechPopupView$9;
.super Ljava/lang/Object;
.source "SpeechPopupView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/speech/SpeechPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/speech/SpeechPopupView;


# direct methods
.method constructor <init>(Lcom/nuance/speech/SpeechPopupView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/speech/SpeechPopupView;

    .prologue
    .line 655
    iput-object p1, p0, Lcom/nuance/speech/SpeechPopupView$9;->this$0:Lcom/nuance/speech/SpeechPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 658
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_26

    .line 679
    const/4 v0, 0x0

    .line 681
    :goto_6
    return v0

    .line 661
    :pswitch_7
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView$9;->this$0:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechPopupView;->stopRecording()V

    .line 681
    :goto_c
    const/4 v0, 0x1

    goto :goto_6

    .line 665
    :pswitch_e
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView$9;->this$0:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechPopupView;->cancelDictation()V

    goto :goto_c

    .line 669
    :pswitch_14
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView$9;->this$0:Lcom/nuance/speech/SpeechPopupView;

    # invokes: Lcom/nuance/speech/SpeechPopupView;->switchToSpeechProcessingView()V
    invoke-static {v0}, Lcom/nuance/speech/SpeechPopupView;->access$400(Lcom/nuance/speech/SpeechPopupView;)V

    goto :goto_c

    .line 673
    :pswitch_1a
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView$9;->this$0:Lcom/nuance/speech/SpeechPopupView;

    # invokes: Lcom/nuance/speech/SpeechPopupView;->switchToSpeechPausedView()V
    invoke-static {v0}, Lcom/nuance/speech/SpeechPopupView;->access$500(Lcom/nuance/speech/SpeechPopupView;)V

    goto :goto_c

    .line 676
    :pswitch_20
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView$9;->this$0:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechPopupView;->onDictationViewClicked()V

    goto :goto_c

    .line 658
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_7
        :pswitch_e
        :pswitch_1a
        :pswitch_14
        :pswitch_20
    .end packed-switch
.end method
