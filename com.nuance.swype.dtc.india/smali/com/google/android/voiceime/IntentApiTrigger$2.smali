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
.field final synthetic this$0:Lcom/google/android/voiceime/IntentApiTrigger;


# direct methods
.method constructor <init>(Lcom/google/android/voiceime/IntentApiTrigger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/voiceime/IntentApiTrigger;

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

    .line 1123
    iget-object v0, v1, Lcom/google/android/voiceime/IntentApiTrigger;->mLastRecognitionResult:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1127
    iget-object v0, v1, Lcom/google/android/voiceime/IntentApiTrigger;->mLastRecognitionResult:Ljava/lang/String;

    .line 1129
    iget-object v2, v1, Lcom/google/android/voiceime/IntentApiTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 1131
    if-nez v2, :cond_1

    .line 1132
    const-string/jumbo v0, "VoiceIntentApiTrigger"

    const-string/jumbo v1, "Unable to commit recognition result, as the current input connection is null. Did someone kill the IME?"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :cond_0
    :goto_0
    return-void

    .line 1137
    :cond_1
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1138
    const-string/jumbo v0, "VoiceIntentApiTrigger"

    const-string/jumbo v1, "Unable to commit recognition result, as a batch edit cannot start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1143
    :cond_2
    :try_start_0
    new-instance v3, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v3}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 1144
    const/4 v4, 0x1

    iput v4, v3, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    .line 1146
    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v3

    .line 1148
    if-nez v3, :cond_3

    .line 1149
    const-string/jumbo v0, "VoiceIntentApiTrigger"

    const-string/jumbo v1, "Unable to commit recognition result, as extracted text is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1164
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 1153
    :cond_3
    :try_start_1
    iget-object v4, v3, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 1154
    invoke-virtual {v1, v3, v0}, Lcom/google/android/voiceime/IntentApiTrigger;->format(Landroid/view/inputmethod/ExtractedText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1157
    :cond_4
    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1158
    const-string/jumbo v0, "VoiceIntentApiTrigger"

    const-string/jumbo v1, "Unable to commit recognition result"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1164
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 1162
    :cond_5
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, v1, Lcom/google/android/voiceime/IntentApiTrigger;->mLastRecognitionResult:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1164
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    throw v0
.end method
