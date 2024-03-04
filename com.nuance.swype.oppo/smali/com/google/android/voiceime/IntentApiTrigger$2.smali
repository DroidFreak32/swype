.class final Lcom/google/android/voiceime/IntentApiTrigger$2;
.super Ljava/lang/Object;
.source "IntentApiTrigger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voiceime/IntentApiTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/voiceime/IntentApiTrigger;


# direct methods
.method constructor <init>(Lcom/google/android/voiceime/IntentApiTrigger;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/voiceime/IntentApiTrigger$2;->this$0:Lcom/google/android/voiceime/IntentApiTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 117
    iget-object v1, p0, Lcom/google/android/voiceime/IntentApiTrigger$2;->this$0:Lcom/google/android/voiceime/IntentApiTrigger;

    iget-object v0, v1, Lcom/google/android/voiceime/IntentApiTrigger;->mLastRecognitionResult:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/google/android/voiceime/IntentApiTrigger;->mLastRecognitionResult:Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/voiceime/IntentApiTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "VoiceIntentApiTrigger"

    const-string v1, "Unable to commit recognition result, as the current input connection is null. Did someone kill the IME?"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v0, "VoiceIntentApiTrigger"

    const-string v1, "Unable to commit recognition result, as a batch edit cannot start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v3, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v3}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v4, 0x1

    iput v4, v3, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v0, "VoiceIntentApiTrigger"

    const-string v1, "Unable to commit recognition result, as extracted text is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v4, v3, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    invoke-virtual {v1, v3, v0}, Lcom/google/android/voiceime/IntentApiTrigger;->format(Landroid/view/inputmethod/ExtractedText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "VoiceIntentApiTrigger"

    const-string v1, "Unable to commit recognition result"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, v1, Lcom/google/android/voiceime/IntentApiTrigger;->mLastRecognitionResult:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    throw v0
.end method
