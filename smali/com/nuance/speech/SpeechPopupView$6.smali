.class Lcom/nuance/speech/SpeechPopupView$6;
.super Ljava/lang/Object;
.source "SpeechPopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/speech/SpeechPopupView;->switchToSpeechProcessingView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/speech/SpeechPopupView;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/nuance/speech/SpeechPopupView;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/nuance/speech/SpeechPopupView$6;->this$0:Lcom/nuance/speech/SpeechPopupView;

    iput-object p2, p0, Lcom/nuance/speech/SpeechPopupView$6;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 445
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView$6;->this$0:Lcom/nuance/speech/SpeechPopupView;

    invoke-static {v0}, Lcom/nuance/speech/SpeechPopupView;->access$100(Lcom/nuance/speech/SpeechPopupView;)Lcom/nuance/speech/Dictation;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView$6;->this$0:Lcom/nuance/speech/SpeechPopupView;

    invoke-static {v0}, Lcom/nuance/speech/SpeechPopupView;->access$100(Lcom/nuance/speech/SpeechPopupView;)Lcom/nuance/speech/Dictation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Stopped:Lcom/nuance/speech/Dictation$RecordingState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView$6;->this$0:Lcom/nuance/speech/SpeechPopupView;

    invoke-static {v0}, Lcom/nuance/speech/SpeechPopupView;->access$100(Lcom/nuance/speech/SpeechPopupView;)Lcom/nuance/speech/Dictation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getDictationState()Lcom/nuance/speech/Dictation$DictationState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Inprogress:Lcom/nuance/speech/Dictation$DictationState;

    if-ne v0, v1, :cond_1

    .line 447
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView$6;->val$handler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 448
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView$6;->this$0:Lcom/nuance/speech/SpeechPopupView;

    invoke-static {v0}, Lcom/nuance/speech/SpeechPopupView;->access$200(Lcom/nuance/speech/SpeechPopupView;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 449
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView$6;->this$0:Lcom/nuance/speech/SpeechPopupView;

    invoke-static {v0}, Lcom/nuance/speech/SpeechPopupView;->access$200(Lcom/nuance/speech/SpeechPopupView;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView$6;->this$0:Lcom/nuance/speech/SpeechPopupView;

    invoke-static {v0}, Lcom/nuance/speech/SpeechPopupView;->access$200(Lcom/nuance/speech/SpeechPopupView;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 452
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView$6;->this$0:Lcom/nuance/speech/SpeechPopupView;

    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Processing:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    invoke-static {v0, v1}, Lcom/nuance/speech/SpeechPopupView;->access$300(Lcom/nuance/speech/SpeechPopupView;Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V

    .line 454
    :cond_1
    return-void
.end method
