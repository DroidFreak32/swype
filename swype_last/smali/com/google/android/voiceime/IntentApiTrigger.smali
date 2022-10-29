.class final Lcom/google/android/voiceime/IntentApiTrigger;
.super Ljava/lang/Object;
.source "IntentApiTrigger.java"

# interfaces
.implements Lcom/google/android/voiceime/Trigger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voiceime/IntentApiTrigger$Callback;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final mInputMethodService:Landroid/inputmethodservice/InputMethodService;

.field mLastRecognitionResult:Ljava/lang/String;

.field private final mServiceBridge:Lcom/google/android/voiceime/ServiceBridge;

.field mToken:Landroid/os/IBinder;

.field private mUpperCaseChars:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .registers 4
    .param p1, "inputMethodService"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    .line 60
    new-instance v0, Lcom/google/android/voiceime/ServiceBridge;

    new-instance v1, Lcom/google/android/voiceime/IntentApiTrigger$1;

    invoke-direct {v1, p0}, Lcom/google/android/voiceime/IntentApiTrigger$1;-><init>(Lcom/google/android/voiceime/IntentApiTrigger;)V

    invoke-direct {v0, v1}, Lcom/google/android/voiceime/ServiceBridge;-><init>(Lcom/google/android/voiceime/IntentApiTrigger$Callback;)V

    iput-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mServiceBridge:Lcom/google/android/voiceime/ServiceBridge;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mUpperCaseChars:Ljava/util/Set;

    .line 69
    iget-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mUpperCaseChars:Ljava/util/Set;

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mUpperCaseChars:Ljava/util/Set;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mUpperCaseChars:Ljava/util/Set;

    const/16 v1, 0x3f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mUpperCaseChars:Ljava/util/Set;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mHandler:Landroid/os/Handler;

    .line 75
    return-void
.end method


# virtual methods
.method final format(Landroid/view/inputmethod/ExtractedText;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "et"    # Landroid/view/inputmethod/ExtractedText;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 173
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/lit8 v0, v1, -0x1

    .line 175
    .local v0, "pos":I
    :goto_4
    if-lez v0, :cond_15

    iget-object v1, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 176
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 179
    :cond_15
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2a

    iget-object v1, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mUpperCaseChars:Ljava/util/Set;

    iget-object v2, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 180
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 183
    :cond_49
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_6f

    iget-object v1, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/lit8 v2, v2, -0x1

    .line 184
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 188
    :cond_6f
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget-object v2, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_9b

    iget-object v1, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 189
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_9b

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 192
    :cond_9b
    return-object p2
.end method

.method public final hasRecognitionResultToCommit()Z
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mLastRecognitionResult:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 204
    const/4 v0, 0x1

    .line 206
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final onDestroy()V
    .registers 4

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mServiceBridge:Lcom/google/android/voiceime/ServiceBridge;

    if-eqz v0, :cond_16

    .line 213
    iget-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mServiceBridge:Lcom/google/android/voiceime/ServiceBridge;

    iget-object v1, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    .line 1140
    iget-object v2, v0, Lcom/google/android/voiceime/ServiceBridge;->mCurrentRequest:Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;

    if-eqz v2, :cond_16

    if-eqz v1, :cond_16

    .line 1142
    :try_start_e
    iget-object v2, v0, Lcom/google/android/voiceime/ServiceBridge;->mCurrentRequest:Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1143
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/voiceime/ServiceBridge;->mCurrentRequest:Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_17

    .line 1146
    :cond_16
    :goto_16
    return-void

    :catch_17
    move-exception v0

    goto :goto_16
.end method

.method public final onStartInputView()V
    .registers 5

    .prologue
    .line 106
    const-string/jumbo v0, "VoiceIntentApiTrigger"

    const-string/jumbo v1, "#onStartInputView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mLastRecognitionResult:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 1113
    iget-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/voiceime/IntentApiTrigger$2;

    invoke-direct {v1, p0}, Lcom/google/android/voiceime/IntentApiTrigger$2;-><init>(Lcom/google/android/voiceime/IntentApiTrigger;)V

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    :cond_19
    return-void
.end method

.method public final startVoiceRecognition(Ljava/lang/String;)V
    .registers 6
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mToken:Landroid/os/IBinder;

    .line 81
    iget-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mServiceBridge:Lcom/google/android/voiceime/ServiceBridge;

    iget-object v1, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    .line 1051
    iget-object v2, v0, Lcom/google/android/voiceime/ServiceBridge;->mCurrentRequest:Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;

    if-eqz v2, :cond_22

    .line 1052
    iget-object v2, v0, Lcom/google/android/voiceime/ServiceBridge;->mCurrentRequest:Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1053
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/voiceime/ServiceBridge;->mCurrentRequest:Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;

    .line 1056
    :cond_22
    new-instance v2, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;-><init>(Lcom/google/android/voiceime/ServiceBridge;Ljava/lang/String;B)V

    iput-object v2, v0, Lcom/google/android/voiceime/ServiceBridge;->mCurrentRequest:Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;

    .line 1057
    iget-object v2, v0, Lcom/google/android/voiceime/ServiceBridge;->mCurrentRequest:Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;

    new-instance v3, Lcom/google/android/voiceime/ServiceBridge$1;

    invoke-direct {v3, v0, v1}, Lcom/google/android/voiceime/ServiceBridge$1;-><init>(Lcom/google/android/voiceime/ServiceBridge;Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;->access$300(Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;Lcom/google/android/voiceime/ServiceHelper$Callback;)V

    .line 1072
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/android/voiceime/ServiceHelper;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, v0, Lcom/google/android/voiceime/ServiceBridge;->mCurrentRequest:Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 82
    return-void
.end method
