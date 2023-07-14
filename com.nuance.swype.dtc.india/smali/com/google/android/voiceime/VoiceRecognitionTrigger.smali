.class public final Lcom/google/android/voiceime/VoiceRecognitionTrigger;
.super Ljava/lang/Object;
.source "VoiceRecognitionTrigger.java"


# instance fields
.field private mImeTrigger:Lcom/google/android/voiceime/ImeTrigger;

.field private final mInputMethodService:Landroid/inputmethodservice/InputMethodService;

.field private mIntentApiTrigger:Lcom/google/android/voiceime/IntentApiTrigger;

.field public mTrigger:Lcom/google/android/voiceime/Trigger;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 1
    .param p1, "inputMethodService"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    .line 46
    invoke-virtual {p0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->getTrigger()Lcom/google/android/voiceime/Trigger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    .line 47
    return-void
.end method


# virtual methods
.method public final getTrigger()Lcom/google/android/voiceime/Trigger;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50
    iget-object v2, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    .line 1111
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_1

    .line 1116
    invoke-static {v2}, Lcom/google/android/voiceime/ImeTrigger;->getInputMethodManager(Landroid/inputmethodservice/InputMethodService;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 1115
    invoke-static {v2}, Lcom/google/android/voiceime/ImeTrigger;->getVoiceImeInputMethodInfo(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    .line 1118
    if-eqz v2, :cond_1

    .line 1122
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    if-lez v2, :cond_1

    move v2, v0

    .line 50
    :goto_0
    if-eqz v2, :cond_2

    .line 2067
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mImeTrigger:Lcom/google/android/voiceime/ImeTrigger;

    if-nez v0, :cond_0

    .line 2068
    new-instance v0, Lcom/google/android/voiceime/ImeTrigger;

    iget-object v1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {v0, v1}, Lcom/google/android/voiceime/ImeTrigger;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mImeTrigger:Lcom/google/android/voiceime/ImeTrigger;

    .line 2070
    :cond_0
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mImeTrigger:Lcom/google/android/voiceime/ImeTrigger;

    .line 55
    :goto_1
    return-object v0

    :cond_1
    move v2, v1

    .line 1122
    goto :goto_0

    .line 52
    :cond_2
    iget-object v2, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    .line 2085
    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2086
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 2088
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 52
    :goto_2
    if-eqz v0, :cond_5

    .line 3060
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mIntentApiTrigger:Lcom/google/android/voiceime/IntentApiTrigger;

    if-nez v0, :cond_3

    .line 3061
    new-instance v0, Lcom/google/android/voiceime/IntentApiTrigger;

    iget-object v1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {v0, v1}, Lcom/google/android/voiceime/IntentApiTrigger;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mIntentApiTrigger:Lcom/google/android/voiceime/IntentApiTrigger;

    .line 3063
    :cond_3
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mIntentApiTrigger:Lcom/google/android/voiceime/IntentApiTrigger;

    goto :goto_1

    :cond_4
    move v0, v1

    .line 2088
    goto :goto_2

    .line 55
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method
