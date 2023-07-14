.class final Lcom/google/android/voiceime/IntentApiTrigger$1;
.super Ljava/lang/Object;
.source "IntentApiTrigger.java"

# interfaces
.implements Lcom/google/android/voiceime/IntentApiTrigger$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voiceime/IntentApiTrigger;-><init>(Landroid/inputmethodservice/InputMethodService;)V
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
    .line 60
    iput-object p1, p0, Lcom/google/android/voiceime/IntentApiTrigger$1;->this$0:Lcom/google/android/voiceime/IntentApiTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRecognitionResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "recognitionResult"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v1, p0, Lcom/google/android/voiceime/IntentApiTrigger$1;->this$0:Lcom/google/android/voiceime/IntentApiTrigger;

    .line 1097
    iput-object p1, v1, Lcom/google/android/voiceime/IntentApiTrigger;->mLastRecognitionResult:Ljava/lang/String;

    .line 2092
    iget-object v0, v1, Lcom/google/android/voiceime/IntentApiTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    const-string/jumbo v2, "input_method"

    .line 2093
    invoke-virtual {v0, v2}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1100
    iget-object v1, v1, Lcom/google/android/voiceime/IntentApiTrigger;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 65
    return-void
.end method
