.class public Lcom/nuance/swype/input/SpeechWrapper;
.super Ljava/lang/Object;
.source "SpeechWrapper.java"

# interfaces
.implements Lcom/nuance/speech/DictationEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/SpeechWrapper$DictationMessage;,
        Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;,
        Lcom/nuance/swype/input/SpeechWrapper$State;
    }
.end annotation


# static fields
.field static final MSG_DELAY_UPATE_SPEECH_RESULT:I = 0x5e1

.field static final MSG_RESUME_SPEECH_POPUP_VIEW:I = 0x5de

.field static final MSG_RETRY_SPEECH:I = 0x5df

.field static final MSG_SHOW_DICTATION_FAILED:I = 0x5dc

.field static final MSG_START_DICTATION:I = 0x5e0

.field public static final SPEECH_PROVIDER_DRAGON:I = 0x0

.field public static final SPEECH_PROVIDER_GOOGLE:I = 0x1

.field public static final SPEECH_PROVIDER_NONE:I = 0x63

.field static final TIME_RESTORE_SPEECH_POPUP_DELAY:I = 0x1

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final handlerCallback:Landroid/os/Handler$Callback;

.field private lastSpeechResultUpdate:J

.field private mAlertMessageDialog:Landroid/app/AlertDialog;

.field private mDictation:Lcom/nuance/speech/Dictation;

.field private final mHandler:Landroid/os/Handler;

.field private mHostViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/swype/input/InputView;",
            ">;"
        }
    .end annotation
.end field

.field private mRect:Landroid/graphics/Rect;

.field private final mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

.field private mSpeechView:Lcom/nuance/speech/SpeechPopupView;

.field private mState:Lcom/nuance/swype/input/SpeechWrapper$State;

.field private final speechProvider:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "SpeechWrapper"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    new-instance v0, Lcom/nuance/swype/input/SpeechWrapper$4;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/SpeechWrapper$4;-><init>(Lcom/nuance/swype/input/SpeechWrapper;)V

    iput-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->handlerCallback:Landroid/os/Handler$Callback;

    .line 592
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    .line 64
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSpeechProvider()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->speechProvider:I

    .line 65
    new-instance v0, Lcom/nuance/speech/SpeechPopupView;

    invoke-direct {v0}, Lcom/nuance/speech/SpeechPopupView;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    .line 66
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->createSpeechResultTextBuffer()Lcom/nuance/speech/SpeechResultTextBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/SpeechWrapper;)Lcom/nuance/swype/input/InputView;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getHostView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/nuance/swype/input/SpeechWrapper;Lcom/nuance/swype/input/SpeechWrapper$State;)Lcom/nuance/swype/input/SpeechWrapper$State;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/SpeechWrapper;
    .param p1, "x1"    # Lcom/nuance/swype/input/SpeechWrapper$State;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mState:Lcom/nuance/swype/input/SpeechWrapper$State;

    return-object p1
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/SpeechWrapper;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/SpeechWrapper;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/SpeechWrapper;->handleResumePopupView(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/SpeechWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->startDictation()V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/SpeechWrapper;Lcom/nuance/speech/Dictation$SpeechResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/SpeechWrapper;
    .param p1, "x1"    # Lcom/nuance/speech/Dictation$SpeechResult;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/SpeechWrapper;->updateDelaySpeechResult(Lcom/nuance/speech/Dictation$SpeechResult;)V

    return-void
.end method

.method private cancelSpeechDictation()V
    .locals 3

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getDictation()Lcom/nuance/speech/Dictation;

    move-result-object v0

    .line 292
    .local v0, "dictation":Lcom/nuance/speech/Dictation;
    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getDictationState()Lcom/nuance/speech/Dictation$DictationState;

    move-result-object v1

    sget-object v2, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Inprogress:Lcom/nuance/speech/Dictation$DictationState;

    if-eq v1, v2, :cond_0

    .line 294
    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Inprogress:Lcom/nuance/speech/Dictation$RecordingState;

    if-ne v1, v2, :cond_1

    .line 295
    :cond_0
    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->cancel()V

    .line 298
    :cond_1
    return-void
.end method

.method private createAlertDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 9
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x0

    .line 504
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getHostView()Lcom/nuance/swype/input/InputView;

    move-result-object v2

    .line 505
    .local v2, "hostView":Lcom/nuance/swype/input/InputView;
    if-nez v2, :cond_0

    move-object v0, v6

    .line 538
    :goto_0
    return-object v0

    .line 509
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 510
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 511
    iget v7, p0, Lcom/nuance/swype/input/SpeechWrapper;->speechProvider:I

    if-nez v7, :cond_1

    sget v3, Lcom/nuance/swype/input/R$drawable;->speech_dragon_grey:I

    .line 513
    .local v3, "iconResId":I
    :goto_1
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 514
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getHostView()Lcom/nuance/swype/input/InputView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/nuance/swype/input/R$string;->ime_name:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 515
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 516
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 517
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 518
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 519
    .local v5, "window":Landroid/view/Window;
    if-nez v5, :cond_2

    move-object v0, v6

    .line 520
    goto :goto_0

    .line 511
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v3    # "iconResId":I
    .end local v5    # "window":Landroid/view/Window;
    :cond_1
    sget v3, Lcom/nuance/swype/input/R$drawable;->sym_keyboard_speech_mic_white:I

    goto :goto_1

    .line 523
    .restart local v0    # "alertDialog":Landroid/app/AlertDialog;
    .restart local v3    # "iconResId":I
    .restart local v5    # "window":Landroid/view/Window;
    :cond_2
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 524
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    if-nez v4, :cond_3

    move-object v0, v6

    .line 525
    goto :goto_0

    .line 528
    :cond_3
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    iput-object v7, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 529
    iget-object v7, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v7, :cond_4

    move-object v0, v6

    .line 530
    goto :goto_0

    .line 533
    :cond_4
    const/16 v6, 0x3eb

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 535
    invoke-virtual {v5, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 536
    const/high16 v6, 0x20000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method protected static createDictation(ILandroid/content/Context;Ljava/lang/String;Z)Lcom/nuance/speech/Dictation;
    .locals 4
    .param p0, "speechProvider"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "langName"    # Ljava/lang/String;
    .param p3, "isExploredByTouch"    # Z

    .prologue
    const/4 v0, 0x0

    .line 832
    if-eqz p0, :cond_1

    .line 844
    :cond_0
    :goto_0
    return-object v0

    .line 835
    :cond_1
    if-eqz p2, :cond_0

    .line 839
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getSpeechConfig()Lcom/nuance/speech/SpeechConfig;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/nuance/speech/SpeechConfig;->isLanguageSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 840
    sget-object v1, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a valid language"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 844
    :cond_2
    new-instance v0, Lcom/nuance/speech/dragon/DragonDictation;

    invoke-direct {v0, p1, p2, p3}, Lcom/nuance/speech/dragon/DragonDictation;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private createDictation(Landroid/content/Context;Ljava/lang/String;Z)Lcom/nuance/speech/Dictation;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "langName"    # Ljava/lang/String;
    .param p3, "isExploredByTouch"    # Z

    .prologue
    .line 818
    iget v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->speechProvider:I

    invoke-static {v0, p1, p2, p3}, Lcom/nuance/swype/input/SpeechWrapper;->createDictation(ILandroid/content/Context;Ljava/lang/String;Z)Lcom/nuance/speech/Dictation;

    move-result-object v0

    return-object v0
.end method

.method private createSpeechResultTextBuffer()Lcom/nuance/speech/SpeechResultTextBuffer;
    .locals 1

    .prologue
    .line 814
    iget v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->speechProvider:I

    invoke-static {v0}, Lcom/nuance/swype/input/SpeechWrapper;->createSpeechResultTextBuffer(I)Lcom/nuance/speech/SpeechResultTextBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected static createSpeechResultTextBuffer(I)Lcom/nuance/speech/SpeechResultTextBuffer;
    .locals 1
    .param p0, "speechProvider"    # I

    .prologue
    .line 822
    if-eqz p0, :cond_0

    .line 823
    const/4 v0, 0x0

    .line 826
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;

    invoke-direct {v0}, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;-><init>()V

    goto :goto_0
.end method

.method private dimissAlertDialog()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mAlertMessageDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 429
    :cond_0
    return-void
.end method

.method private getCurrentDictationLanguage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getHostView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 120
    .local v1, "hostView":Lcom/nuance/swype/input/InputView;
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 121
    .local v2, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    .line 122
    invoke-virtual {v5}, Lcom/nuance/swype/input/UserPreferences;->getCurrentDictationLanguageName()Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "lang":Ljava/lang/String;
    const-string/jumbo v5, "default.automatic"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 124
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 125
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v4

    .line 126
    .local v4, "langId":I
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/nuance/swype/input/InputMethods;->findCoreInputLanguage(I)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    .line 127
    .local v0, "coreLang":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v0, :cond_1

    .line 128
    iget-object v3, v0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    .line 137
    .end local v0    # "coreLang":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v4    # "langId":I
    :cond_0
    :goto_0
    return-object v3

    .line 130
    .restart local v0    # "coreLang":Lcom/nuance/swype/input/InputMethods$Language;
    .restart local v4    # "langId":I
    :cond_1
    const/4 v3, 0x0

    .line 132
    goto :goto_0

    .line 133
    .end local v0    # "coreLang":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v4    # "langId":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getCustomWordSynchronizer(Lcom/nuance/swype/input/udb/UserDictionaryIterator;)Lcom/nuance/speech/CustomWordSynchronizer;
    .locals 2
    .param p1, "iterator"    # Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    .prologue
    .line 805
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getDictation()Lcom/nuance/speech/Dictation;

    move-result-object v0

    .line 806
    .local v0, "dictation":Lcom/nuance/speech/Dictation;
    if-eqz v0, :cond_0

    .line 807
    invoke-virtual {v0, p1}, Lcom/nuance/speech/Dictation;->getCustomWordsSync(Lcom/nuance/swype/input/udb/UserDictionaryIterator;)Lcom/nuance/speech/CustomWordSynchronizer;

    move-result-object v1

    .line 810
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDictation()Lcom/nuance/speech/Dictation;
    .locals 4

    .prologue
    .line 99
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    .line 107
    :goto_0
    return-object v1

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getHostView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 103
    .local v0, "hostView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getCurrentDictationLanguage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    .line 105
    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v3

    .line 104
    invoke-direct {p0, v1, v2, v3}, Lcom/nuance/swype/input/SpeechWrapper;->createDictation(Landroid/content/Context;Ljava/lang/String;Z)Lcom/nuance/speech/Dictation;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    goto :goto_0

    .line 107
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDictationNoCreate()Lcom/nuance/speech/Dictation;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    return-object v0
.end method

.method private getHostView()Lcom/nuance/swype/input/InputView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostViewWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/InputView;

    .line 83
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleResumePopupView(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getHostView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 395
    .local v0, "hostView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 398
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getSpeechPopupRectInWindowCoord()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/SpeechWrapper;->setSpeechWindowSize(Landroid/graphics/Rect;)V

    .line 399
    invoke-virtual {p0}, Lcom/nuance/swype/input/SpeechWrapper;->showPopupSpeech()V

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/SpeechWrapper;->postDelayResumePopupView(I)V

    goto :goto_0
.end method

.method private postDelayResumePopupView(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    const/16 v3, 0x5de

    .line 383
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getDictation()Lcom/nuance/speech/Dictation;

    move-result-object v0

    .line 384
    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 387
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    .line 388
    invoke-virtual {v1, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p1

    .line 387
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 391
    :cond_0
    return-void
.end method

.method private removeAllPopupSpeechViewMsg()V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x5dc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 548
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x5de

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 549
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x5df

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 550
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x5e0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 551
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x5e1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 552
    return-void
.end method

.method private setSpeechWindowSize(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mRect:Landroid/graphics/Rect;

    .line 92
    return-void
.end method

.method private showNoNetworkAvailableAlertDialog()V
    .locals 6

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->dimissAlertDialog()V

    .line 433
    sget-object v2, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v3, "showNoNetworkAvailableAlertDialog"

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 434
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getHostView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 435
    .local v0, "hostView":Lcom/nuance/swype/input/InputView;
    if-nez v0, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 440
    .local v1, "res":Landroid/content/res/Resources;
    sget v2, Lcom/nuance/swype/input/R$string;->no_network_available:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->no_network_try_again_msg:I

    .line 441
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 440
    invoke-direct {p0, v2, v3}, Lcom/nuance/swype/input/SpeechWrapper;->createAlertDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mAlertMessageDialog:Landroid/app/AlertDialog;

    .line 443
    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mAlertMessageDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 444
    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mAlertMessageDialog:Landroid/app/AlertDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 445
    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mAlertMessageDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x2

    sget v4, Lcom/nuance/swype/input/R$string;->dismiss_button:I

    .line 446
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/nuance/swype/input/SpeechWrapper$1;

    invoke-direct {v5, p0}, Lcom/nuance/swype/input/SpeechWrapper$1;-><init>(Lcom/nuance/swype/input/SpeechWrapper;)V

    .line 445
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 457
    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showNoSpeechDetectionAlertDialog()V
    .locals 6

    .prologue
    .line 463
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->dimissAlertDialog()V

    .line 464
    sget-object v2, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v3, "showNoSpeechDetectionAlertDialog"

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 465
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getHostView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 466
    .local v0, "hostView":Lcom/nuance/swype/input/InputView;
    if-nez v0, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 471
    .local v1, "res":Landroid/content/res/Resources;
    sget v2, Lcom/nuance/swype/input/R$string;->no_speech_detected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->no_speech_try_again_msg:I

    .line 472
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 471
    invoke-direct {p0, v2, v3}, Lcom/nuance/swype/input/SpeechWrapper;->createAlertDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mAlertMessageDialog:Landroid/app/AlertDialog;

    .line 473
    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mAlertMessageDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 474
    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mAlertMessageDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x2

    sget v4, Lcom/nuance/swype/input/R$string;->cancel_button:I

    .line 475
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/nuance/swype/input/SpeechWrapper$2;

    invoke-direct {v5, p0}, Lcom/nuance/swype/input/SpeechWrapper$2;-><init>(Lcom/nuance/swype/input/SpeechWrapper;)V

    .line 474
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 486
    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mAlertMessageDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    sget v4, Lcom/nuance/swype/input/R$string;->try_again_button:I

    .line 487
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/nuance/swype/input/SpeechWrapper$3;

    invoke-direct {v5, p0}, Lcom/nuance/swype/input/SpeechWrapper$3;-><init>(Lcom/nuance/swype/input/SpeechWrapper;)V

    .line 486
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 497
    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private startDictation()V
    .locals 5

    .prologue
    const/16 v4, 0x5e0

    .line 648
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    if-nez v0, :cond_1

    .line 649
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v1, "startDictation() == null"

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 650
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;->Failed:Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/SpeechWrapper;->updateDicationStatus(Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;)V

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Stopped:Lcom/nuance/speech/Dictation$RecordingState;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    .line 653
    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getDictationState()Lcom/nuance/speech/Dictation$DictationState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Inprogress:Lcom/nuance/speech/Dictation$DictationState;

    if-eq v0, v1, :cond_3

    .line 654
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->startRecording()Z

    move-result v0

    if-nez v0, :cond_2

    .line 655
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v1, "startDictation().start() failed"

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 656
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;->Failed:Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/SpeechWrapper;->updateDicationStatus(Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;)V

    goto :goto_0

    .line 658
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechPopupView;->switchToReadyForSpeechView()V

    goto :goto_0

    .line 663
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 664
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updateDelaySpeechResult(Lcom/nuance/speech/Dictation$SpeechResult;)V
    .locals 8
    .param p1, "result"    # Lcom/nuance/speech/Dictation$SpeechResult;

    .prologue
    .line 633
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->viewStillActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "#updateDelaySpeechResult() - update result because of pausing fro "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/nuance/swype/input/SpeechWrapper;->lastSpeechResultUpdate:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 635
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getHostView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/speech/Dictation$SpeechResult;->text:Ljava/lang/CharSequence;

    iget-boolean v2, p1, Lcom/nuance/speech/Dictation$SpeechResult;->streaming:Z

    iget-boolean v3, p1, Lcom/nuance/speech/Dictation$SpeechResult;->finalResult:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/input/InputView;->onUpdateSpeechText(Ljava/lang/CharSequence;ZZ)V

    .line 637
    :cond_0
    return-void
.end method

.method private updateDicationStatus(Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;)V
    .locals 4
    .param p1, "status"    # Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;

    .prologue
    const/16 v2, 0x5dc

    .line 640
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    .line 642
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5

    .line 641
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 644
    :cond_0
    return-void
.end method

.method private updateSpeechTextResult(Lcom/nuance/speech/Dictation$SpeechResult;)V
    .locals 14
    .param p1, "result"    # Lcom/nuance/speech/Dictation$SpeechResult;

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x1f4

    .line 601
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getHostView()Lcom/nuance/swype/input/InputView;

    move-result-object v2

    .line 602
    .local v2, "hostView":Lcom/nuance/swype/input/InputView;
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->viewStillActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 603
    iget-boolean v3, p1, Lcom/nuance/speech/Dictation$SpeechResult;->streaming:Z

    if-eqz v3, :cond_3

    .line 604
    iget-object v3, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x5e1

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 605
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 607
    .local v0, "currentTime":J
    iget-boolean v3, p1, Lcom/nuance/speech/Dictation$SpeechResult;->finalResult:Z

    if-nez v3, :cond_0

    .line 611
    iget-wide v6, p0, Lcom/nuance/swype/input/SpeechWrapper;->lastSpeechResultUpdate:J

    sub-long v4, v0, v6

    .line 612
    .local v4, "msSinceLast":J
    cmp-long v3, v4, v8

    if-ltz v3, :cond_2

    .line 613
    sget-object v3, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "#updateSpeechTextResult: streaming "

    aput-object v7, v6, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v11

    const-string/jumbo v7, "ms >="

    aput-object v7, v6, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v13

    invoke-interface {v3, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 614
    iput-wide v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->lastSpeechResultUpdate:J

    .line 627
    .end local v0    # "currentTime":J
    .end local v4    # "msSinceLast":J
    :cond_0
    :goto_0
    iget-object v3, p1, Lcom/nuance/speech/Dictation$SpeechResult;->text:Ljava/lang/CharSequence;

    iget-boolean v6, p1, Lcom/nuance/speech/Dictation$SpeechResult;->streaming:Z

    iget-boolean v7, p1, Lcom/nuance/speech/Dictation$SpeechResult;->finalResult:Z

    invoke-virtual {v2, v3, v6, v7}, Lcom/nuance/swype/input/InputView;->onUpdateSpeechText(Ljava/lang/CharSequence;ZZ)V

    .line 630
    :cond_1
    :goto_1
    return-void

    .line 617
    .restart local v0    # "currentTime":J
    .restart local v4    # "msSinceLast":J
    :cond_2
    sget-object v3, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "#updateSpeechTextResult: streaming "

    aput-object v7, v6, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v11

    const-string/jumbo v7, "ms < "

    aput-object v7, v6, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v13

    invoke-interface {v3, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 618
    iget-object v3, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x5e1

    invoke-virtual {v6, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    sub-long/2addr v8, v4

    invoke-virtual {v3, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 622
    .end local v0    # "currentTime":J
    .end local v4    # "msSinceLast":J
    :cond_3
    iget-boolean v3, p1, Lcom/nuance/speech/Dictation$SpeechResult;->finalResult:Z

    if-eqz v3, :cond_0

    .line 623
    iget-object v3, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    if-eqz v3, :cond_0

    .line 624
    iget-object v3, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v3}, Lcom/nuance/speech/SpeechPopupView;->postSwitchSpeechPausedViewMsg()V

    goto :goto_0
.end method

.method private viewStillActive()Z
    .locals 2

    .prologue
    .line 595
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getHostView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 596
    .local v0, "hostView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addCustomWord(Lcom/nuance/swype/input/udb/UserDictionaryIterator;Lcom/nuance/swype/input/InputFieldInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "iterator"    # Lcom/nuance/swype/input/udb/UserDictionaryIterator;
    .param p2, "info"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p3, "word"    # Ljava/lang/String;

    .prologue
    .line 784
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/SpeechWrapper;->getCustomWordSynchronizer(Lcom/nuance/swype/input/udb/UserDictionaryIterator;)Lcom/nuance/speech/CustomWordSynchronizer;

    move-result-object v0

    .line 785
    .local v0, "cws":Lcom/nuance/speech/CustomWordSynchronizer;
    if-eqz v0, :cond_0

    .line 786
    invoke-virtual {v0, p2, p3}, Lcom/nuance/speech/CustomWordSynchronizer;->addCustomWord(Lcom/nuance/swype/input/InputFieldInfo;Ljava/lang/String;)V

    .line 788
    :cond_0
    return-void
.end method

.method public cancelSpeech()V
    .locals 3

    .prologue
    .line 275
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mState:Lcom/nuance/swype/input/SpeechWrapper$State;

    sget-object v2, Lcom/nuance/swype/input/SpeechWrapper$State;->Started:Lcom/nuance/swype/input/SpeechWrapper$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mState:Lcom/nuance/swype/input/SpeechWrapper$State;

    sget-object v2, Lcom/nuance/swype/input/SpeechWrapper$State;->Paused:Lcom/nuance/swype/input/SpeechWrapper$State;

    if-ne v1, v2, :cond_1

    .line 276
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->dimissAlertDialog()V

    .line 277
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->removeAllPopupSpeechViewMsg()V

    .line 278
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->cancelSpeechDictation()V

    .line 279
    invoke-virtual {p0}, Lcom/nuance/swype/input/SpeechWrapper;->hidePopupSpeech()V

    .line 280
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getHostView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 281
    .local v0, "hostView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->onCancelSpeech()V

    .line 286
    .end local v0    # "hostView":Lcom/nuance/swype/input/InputView;
    :cond_1
    sget-object v1, Lcom/nuance/swype/input/SpeechWrapper$State;->Stopped:Lcom/nuance/swype/input/SpeechWrapper$State;

    iput-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mState:Lcom/nuance/swype/input/SpeechWrapper$State;

    .line 287
    return-void
.end method

.method public clearAllCustomWords(Lcom/nuance/swype/input/udb/UserDictionaryIterator;)V
    .locals 1
    .param p1, "iterator"    # Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    .prologue
    .line 791
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/SpeechWrapper;->getCustomWordSynchronizer(Lcom/nuance/swype/input/udb/UserDictionaryIterator;)Lcom/nuance/speech/CustomWordSynchronizer;

    move-result-object v0

    .line 792
    .local v0, "cws":Lcom/nuance/speech/CustomWordSynchronizer;
    if-eqz v0, :cond_0

    .line 793
    invoke-virtual {v0}, Lcom/nuance/speech/CustomWordSynchronizer;->clearAllCustomWords()V

    .line 795
    :cond_0
    return-void
.end method

.method public getAlternateCandidates()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechResultTextBuffer;->getCandidates()Ljava/util/ArrayList;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentDictation()Lcom/nuance/speech/Dictation;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    return-object v0
.end method

.method public handleDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V
    .locals 4
    .param p1, "event"    # Lcom/nuance/speech/DictationEventListener$DictationEvent;
    .param p2, "eventData"    # Ljava/lang/Object;

    .prologue
    .line 687
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/swype/input/SpeechWrapper$DictationMessage;

    invoke-direct {v1, p0, p1, p2}, Lcom/nuance/swype/input/SpeechWrapper$DictationMessage;-><init>(Lcom/nuance/swype/input/SpeechWrapper;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 688
    return-void
.end method

.method handleDictationMsg(Lcom/nuance/swype/input/SpeechWrapper$DictationMessage;)V
    .locals 8
    .param p1, "msg"    # Lcom/nuance/swype/input/SpeechWrapper$DictationMessage;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 708
    sget-object v2, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "handleDictationMsg...msg.event.."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/nuance/swype/input/SpeechWrapper$DictationMessage;->event:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    invoke-virtual {v5}, Lcom/nuance/speech/DictationEventListener$DictationEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 709
    sget-object v2, Lcom/nuance/swype/input/SpeechWrapper$5;->$SwitchMap$com$nuance$speech$DictationEventListener$DictationEvent:[I

    iget-object v3, p1, Lcom/nuance/swype/input/SpeechWrapper$DictationMessage;->event:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    invoke-virtual {v3}, Lcom/nuance/speech/DictationEventListener$DictationEvent;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 712
    :pswitch_0
    sget-object v2, Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;->Failed_Connection:Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/SpeechWrapper;->updateDicationStatus(Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;)V

    goto :goto_0

    .line 716
    :pswitch_1
    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    if-eqz v2, :cond_0

    .line 717
    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v2}, Lcom/nuance/speech/SpeechPopupView;->postSwitchSpeechProcessingViewMsg()V

    goto :goto_0

    .line 722
    :pswitch_2
    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    if-eqz v2, :cond_0

    .line 723
    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v2}, Lcom/nuance/speech/SpeechPopupView;->postSwitchSpeechPausedViewMsg()V

    goto :goto_0

    .line 728
    :pswitch_3
    iget-object v2, p1, Lcom/nuance/swype/input/SpeechWrapper$DictationMessage;->data:Ljava/lang/Object;

    check-cast v2, Lcom/nuance/speech/Dictation$SpeechResult;

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/SpeechWrapper;->updateSpeechTextResult(Lcom/nuance/speech/Dictation$SpeechResult;)V

    goto :goto_0

    .line 733
    :pswitch_4
    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    if-eqz v2, :cond_0

    .line 734
    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v2}, Lcom/nuance/speech/SpeechPopupView;->postSwitchSpeechPausedViewMsg()V

    goto :goto_0

    .line 739
    :pswitch_5
    sget-object v2, Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;->Canceled:Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/SpeechWrapper;->updateDicationStatus(Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;)V

    goto :goto_0

    .line 743
    :pswitch_6
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->lastSpeechResultUpdate:J

    .line 744
    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    if-eqz v2, :cond_0

    .line 745
    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v2}, Lcom/nuance/speech/SpeechPopupView;->startSpeech()V

    goto :goto_0

    .line 752
    :pswitch_7
    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v2, :cond_1

    .line 753
    sget-object v2, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Speech_AudioLevel.. mDictation.getRecordingState().."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v5}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 755
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    .line 756
    invoke-virtual {v2}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v2

    sget-object v3, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Inprogress:Lcom/nuance/speech/Dictation$RecordingState;

    if-ne v2, v3, :cond_0

    .line 757
    iget-object v2, p1, Lcom/nuance/swype/input/SpeechWrapper$DictationMessage;->data:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 758
    .local v1, "level":I
    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v2, v1}, Lcom/nuance/speech/SpeechPopupView;->setFrame(I)V

    goto/16 :goto_0

    .line 762
    .end local v1    # "level":I
    :pswitch_8
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getHostView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 763
    .local v0, "hostView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    .line 764
    iget-object v2, v0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->showDictationLanguageMenu()V

    goto/16 :goto_0

    .line 768
    .end local v0    # "hostView":Lcom/nuance/swype/input/InputView;
    :pswitch_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/SpeechWrapper;->hidePopupSpeech()V

    .line 769
    sget-object v2, Lcom/nuance/swype/input/SpeechWrapper$State;->Stopped:Lcom/nuance/swype/input/SpeechWrapper$State;

    iput-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mState:Lcom/nuance/swype/input/SpeechWrapper$State;

    goto/16 :goto_0

    .line 709
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected hidePopupSpeech()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 301
    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v2}, Lcom/nuance/speech/SpeechPopupView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    sget-object v2, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "hidePopupSpeech"

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 303
    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v2}, Lcom/nuance/speech/SpeechPopupView;->dismiss()V

    .line 304
    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v2, v6}, Lcom/nuance/speech/SpeechPopupView;->setDictationEngine(Lcom/nuance/speech/Dictation;)V

    .line 305
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getDictation()Lcom/nuance/speech/Dictation;

    move-result-object v0

    .line 306
    .local v0, "dictation":Lcom/nuance/speech/Dictation;
    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0, v6}, Lcom/nuance/speech/Dictation;->setDictationResultTextBuffer(Lcom/nuance/speech/SpeechResultTextBuffer;)V

    .line 308
    invoke-virtual {v0, v6}, Lcom/nuance/speech/Dictation;->setDictationEventListener(Lcom/nuance/speech/DictationEventListener;)V

    .line 310
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v2, v6}, Lcom/nuance/speech/SpeechPopupView;->setParentView(Lcom/nuance/swype/input/InputView;)V

    .line 312
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getHostView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 313
    .local v1, "hostView":Lcom/nuance/swype/input/InputView;
    if-eqz v1, :cond_1

    .line 314
    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    if-nez v2, :cond_2

    const-string/jumbo v2, "null"

    :goto_0
    invoke-static {v2}, Lcom/nuance/swype/usagedata/UsageData;->recordVoiceUsageEvent(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->onSpeechViewDismissed()V

    .line 319
    .end local v0    # "dictation":Lcom/nuance/speech/Dictation;
    .end local v1    # "hostView":Lcom/nuance/swype/input/InputView;
    :cond_1
    return-void

    .line 314
    .restart local v0    # "dictation":Lcom/nuance/speech/Dictation;
    .restart local v1    # "hostView":Lcom/nuance/swype/input/InputView;
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    .line 315
    invoke-virtual {v2}, Lcom/nuance/speech/Dictation;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public isAllowedShowingLanguageMenu()Z
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mAlertMessageDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHighlightedTextSpeechDictated()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechResultTextBuffer;->isTextDictated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResumable()Z
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mState:Lcom/nuance/swype/input/SpeechWrapper$State;

    sget-object v1, Lcom/nuance/swype/input/SpeechWrapper$State;->Paused:Lcom/nuance/swype/input/SpeechWrapper$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpeechDictationInProgress()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechPopupView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpeechViewShowing()Z
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechPopupView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamingDictation()Z
    .locals 2

    .prologue
    .line 855
    invoke-virtual {p0}, Lcom/nuance/swype/input/SpeechWrapper;->isSpeechViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getSpeechResultsMode()Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-result-object v0

    sget-object v1, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->CONTINUOUS_STREAMING_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    if-ne v0, v1, :cond_0

    .line 858
    const/4 v0, 0x1

    .line 862
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onChangeLanguage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "langName"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/nuance/swype/input/UserPreferences;->setCurrentDictationLanguageName(Ljava/lang/String;)V

    .line 144
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getCurrentDictationLanguage()Ljava/lang/String;

    move-result-object p2

    .line 146
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v1}, Lcom/nuance/speech/Dictation;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v1}, Lcom/nuance/speech/Dictation;->cancel()V

    .line 148
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v1}, Lcom/nuance/speech/Dictation;->release()V

    .line 149
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    .line 150
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getHostView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 151
    .local v0, "hostView":Lcom/nuance/swype/input/InputView;
    iget-object v1, v0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/nuance/swype/input/SpeechWrapper;->createDictation(Landroid/content/Context;Ljava/lang/String;Z)Lcom/nuance/speech/Dictation;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    .line 152
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    invoke-virtual {v1, v2}, Lcom/nuance/speech/Dictation;->setDictationResultTextBuffer(Lcom/nuance/speech/SpeechResultTextBuffer;)V

    .line 154
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v1, v2}, Lcom/nuance/speech/SpeechPopupView;->setDictationEngine(Lcom/nuance/speech/Dictation;)V

    .line 155
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    invoke-virtual {v1, v2}, Lcom/nuance/speech/Dictation;->setDictationResultTextBuffer(Lcom/nuance/speech/SpeechResultTextBuffer;)V

    .line 156
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v1, p0}, Lcom/nuance/speech/Dictation;->setDictationEventListener(Lcom/nuance/speech/DictationEventListener;)V

    .line 157
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    .line 158
    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->isEndOfSpeechDetectionEnabled()Z

    move-result v2

    .line 157
    invoke-virtual {v1, v2}, Lcom/nuance/speech/Dictation;->setEndofSpeechDetection(Z)V

    .line 159
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v1}, Lcom/nuance/speech/SpeechPopupView;->refreshLanguageLabel()V

    .line 160
    invoke-virtual {p0}, Lcom/nuance/swype/input/SpeechWrapper;->restartDictation()V

    .line 163
    .end local v0    # "hostView":Lcom/nuance/swype/input/InputView;
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 205
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechPopupView;->clearMessages()V

    .line 207
    iput-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->release()V

    .line 211
    iput-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    .line 213
    :cond_1
    return-void
.end method

.method public pauseSpeech()V
    .locals 4

    .prologue
    .line 266
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "pauseSpeech"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mState:Lcom/nuance/swype/input/SpeechWrapper$State;

    sget-object v1, Lcom/nuance/swype/input/SpeechWrapper$State;->Started:Lcom/nuance/swype/input/SpeechWrapper$State;

    if-ne v0, v1, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->dimissAlertDialog()V

    .line 269
    invoke-virtual {p0}, Lcom/nuance/swype/input/SpeechWrapper;->hidePopupSpeech()V

    .line 270
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper$State;->Paused:Lcom/nuance/swype/input/SpeechWrapper$State;

    iput-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mState:Lcom/nuance/swype/input/SpeechWrapper$State;

    .line 272
    :cond_0
    return-void
.end method

.method postRetrySpeechMsg()V
    .locals 4

    .prologue
    const/16 v1, 0x5df

    .line 542
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 543
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 544
    return-void
.end method

.method public removeCustomWord(Lcom/nuance/swype/input/udb/UserDictionaryIterator;Lcom/nuance/swype/input/InputFieldInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "iterator"    # Lcom/nuance/swype/input/udb/UserDictionaryIterator;
    .param p2, "info"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p3, "word"    # Ljava/lang/String;

    .prologue
    .line 777
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/SpeechWrapper;->getCustomWordSynchronizer(Lcom/nuance/swype/input/udb/UserDictionaryIterator;)Lcom/nuance/speech/CustomWordSynchronizer;

    move-result-object v0

    .line 778
    .local v0, "cws":Lcom/nuance/speech/CustomWordSynchronizer;
    if-eqz v0, :cond_0

    .line 779
    invoke-virtual {v0, p2, p3}, Lcom/nuance/speech/CustomWordSynchronizer;->removeCustomWord(Lcom/nuance/swype/input/InputFieldInfo;Ljava/lang/String;)V

    .line 781
    :cond_0
    return-void
.end method

.method public removeCustomWords(Lcom/nuance/swype/input/udb/UserDictionaryIterator;Ljava/util/Set;)V
    .locals 1
    .param p1, "iterator"    # Lcom/nuance/swype/input/udb/UserDictionaryIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/swype/input/udb/UserDictionaryIterator;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 798
    .local p2, "words":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/SpeechWrapper;->getCustomWordSynchronizer(Lcom/nuance/swype/input/udb/UserDictionaryIterator;)Lcom/nuance/speech/CustomWordSynchronizer;

    move-result-object v0

    .line 799
    .local v0, "cws":Lcom/nuance/speech/CustomWordSynchronizer;
    if-eqz v0, :cond_0

    .line 800
    invoke-virtual {v0, p2}, Lcom/nuance/speech/CustomWordSynchronizer;->removeCustomWords(Ljava/util/Set;)V

    .line 802
    :cond_0
    return-void
.end method

.method public restartDictation()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 670
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    if-nez v0, :cond_0

    .line 671
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;->Failed:Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/SpeechWrapper;->updateDicationStatus(Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;)V

    .line 684
    :goto_0
    return-void

    .line 674
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "restartDictation.. mDictation.getRecordingState().."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v3}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 675
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "restartDictation.. mDictation.getDictationState().."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v3}, Lcom/nuance/speech/Dictation;->getDictationState()Lcom/nuance/speech/Dictation$DictationState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 676
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Stopped:Lcom/nuance/speech/Dictation$RecordingState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    .line 677
    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getDictationState()Lcom/nuance/speech/Dictation$DictationState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Inprogress:Lcom/nuance/speech/Dictation$DictationState;

    if-eq v0, v1, :cond_1

    .line 679
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->cancel()V

    .line 680
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x5e0

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->canelCustomWordSync()V

    goto :goto_0
.end method

.method public resumeSpeech(Lcom/nuance/swype/input/InputView;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "view"    # Lcom/nuance/swype/input/InputView;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 235
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "resumeSpeech"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mState:Lcom/nuance/swype/input/SpeechWrapper$State;

    if-eqz v0, :cond_0

    .line 237
    sget-object v1, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v0, "mState is..."

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mState:Lcom/nuance/swype/input/SpeechWrapper$State;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper$State;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mState:Lcom/nuance/swype/input/SpeechWrapper$State;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper$State;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v4

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mState:Lcom/nuance/swype/input/SpeechWrapper$State;

    sget-object v1, Lcom/nuance/swype/input/SpeechWrapper$State;->Paused:Lcom/nuance/swype/input/SpeechWrapper$State;

    if-ne v0, v1, :cond_2

    .line 240
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/SpeechWrapper;->setHost(Lcom/nuance/swype/input/InputView;)V

    .line 241
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/SpeechWrapper;->setSpeechWindowSize(Landroid/graphics/Rect;)V

    .line 242
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "rect.left.."

    aput-object v2, v1, v3

    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "..rect.top.."

    aput-object v2, v1, v5

    const/4 v2, 0x3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "..rect.right.."

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p2, Landroid/graphics/Rect;->right:I

    .line 243
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "..rect.bottom.."

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 242
    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getHostView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/swype/input/InputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0, v1}, Lcom/nuance/speech/SpeechResultTextBuffer;->setFieldInputInfo(Lcom/nuance/swype/input/InputFieldInfo;)V

    .line 249
    :cond_1
    invoke-direct {p0, v4}, Lcom/nuance/swype/input/SpeechWrapper;->postDelayResumePopupView(I)V

    .line 251
    :cond_2
    return-void

    .line 237
    :cond_3
    const-string/jumbo v0, "Stopped"

    goto :goto_0
.end method

.method public setHost(Lcom/nuance/swype/input/InputView;)V
    .locals 2
    .param p1, "view"    # Lcom/nuance/swype/input/InputView;

    .prologue
    .line 70
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 71
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getHostView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    .line 72
    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getCurrentDictationLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->release()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    .line 77
    :cond_0
    return-void
.end method

.method showDictationFailed(Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;)V
    .locals 2
    .param p1, "status"    # Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;

    .prologue
    .line 406
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper$5;->$SwitchMap$com$nuance$swype$input$SpeechWrapper$RecognitionStatus:[I

    invoke-virtual {p1}, Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 423
    :goto_0
    :pswitch_0
    return-void

    .line 418
    :pswitch_1
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->showNoNetworkAvailableAlertDialog()V

    goto :goto_0

    .line 406
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected showPopupSpeech()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 322
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v10, v12, [Ljava/lang/Object;

    const-string/jumbo v11, "showPopupSpeech"

    aput-object v11, v10, v1

    invoke-interface {v0, v10}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 323
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechPopupView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    const/4 v8, 0x0

    .line 325
    .local v8, "isSameSize":Z
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/nuance/swype/input/SpeechWrapper;->mRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int v4, v0, v10

    .line 326
    .local v4, "w":I
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Lcom/nuance/swype/input/SpeechWrapper;->mRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int v5, v0, v10

    .line 327
    .local v5, "h":I
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechPopupView;->getPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    .line 328
    invoke-virtual {v0}, Lcom/nuance/speech/SpeechPopupView;->getPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 329
    const/4 v8, 0x1

    .line 331
    :cond_0
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 332
    .local v9, "location":[I
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechPopupView;->getPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 333
    aget v0, v9, v12

    .line 335
    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    .line 336
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v1, "showPopupSpeech - already have one"

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    .line 379
    .end local v4    # "w":I
    .end local v5    # "h":I
    .end local v8    # "isSameSize":Z
    .end local v9    # "location":[I
    :cond_1
    :goto_0
    return-void

    .line 339
    .restart local v4    # "w":I
    .restart local v5    # "h":I
    .restart local v8    # "isSameSize":Z
    .restart local v9    # "location":[I
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechPopupView;->dismiss()V

    .line 343
    .end local v4    # "w":I
    .end local v5    # "h":I
    .end local v8    # "isSameSize":Z
    .end local v9    # "location":[I
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getDictation()Lcom/nuance/speech/Dictation;

    move-result-object v6

    .line 345
    .local v6, "dictation":Lcom/nuance/speech/Dictation;
    if-eqz v6, :cond_1

    .line 346
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    if-nez v0, :cond_4

    .line 347
    new-instance v0, Lcom/nuance/speech/SpeechPopupView;

    invoke-direct {v0}, Lcom/nuance/speech/SpeechPopupView;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    .line 349
    :cond_4
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getHostView()Lcom/nuance/swype/input/InputView;

    move-result-object v7

    .line 350
    .local v7, "hostView":Lcom/nuance/swype/input/InputView;
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v0, v6}, Lcom/nuance/speech/SpeechPopupView;->setDictationEngine(Lcom/nuance/speech/Dictation;)V

    .line 351
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    invoke-virtual {v6, v0}, Lcom/nuance/speech/Dictation;->setDictationResultTextBuffer(Lcom/nuance/speech/SpeechResultTextBuffer;)V

    .line 352
    invoke-virtual {v6, p0}, Lcom/nuance/speech/Dictation;->setDictationEventListener(Lcom/nuance/speech/DictationEventListener;)V

    .line 353
    invoke-virtual {v7}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isEndOfSpeechDetectionEnabled()Z

    move-result v0

    .line 353
    invoke-virtual {v6, v0}, Lcom/nuance/speech/Dictation;->setEndofSpeechDetection(Z)V

    .line 356
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v0, v7}, Lcom/nuance/speech/SpeechPopupView;->setParentView(Lcom/nuance/swype/input/InputView;)V

    .line 357
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper$State;->Started:Lcom/nuance/swype/input/SpeechWrapper$State;

    iput-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mState:Lcom/nuance/swype/input/SpeechWrapper$State;

    .line 359
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/nuance/swype/input/SpeechWrapper;->mRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int v4, v0, v10

    .line 360
    .restart local v4    # "w":I
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Lcom/nuance/swype/input/SpeechWrapper;->mRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int v5, v0, v10

    .line 361
    .restart local v5    # "h":I
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 362
    .local v2, "x":I
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 364
    .local v3, "y":I
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v10, v12, [Ljava/lang/Object;

    const-string/jumbo v11, "showPopupSpeech show popup"

    aput-object v11, v10, v1

    invoke-interface {v0, v10}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 366
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/speech/SpeechPopupView;->show(IIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    invoke-virtual {v7}, Lcom/nuance/swype/input/InputView;->onSpeechViewShowedUp()V

    .line 372
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Stopped:Lcom/nuance/speech/Dictation$RecordingState;

    if-ne v0, v1, :cond_5

    .line 373
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x5e0

    const-wide/16 v10, 0x5

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 376
    :cond_5
    invoke-virtual {v6}, Lcom/nuance/speech/Dictation;->canelCustomWordSync()V

    goto/16 :goto_0
.end method

.method public speechChooseCandidate(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    invoke-virtual {v0, p1}, Lcom/nuance/speech/SpeechResultTextBuffer;->chooseCandidate(I)V

    .line 198
    :cond_0
    return-void
.end method

.method public startSpeech(Lcom/nuance/swype/input/InputView;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "view"    # Lcom/nuance/swype/input/InputView;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/SpeechWrapper;->setHost(Lcom/nuance/swype/input/InputView;)V

    .line 227
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/SpeechWrapper;->setSpeechWindowSize(Landroid/graphics/Rect;)V

    .line 228
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getHostView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/swype/input/InputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0, v1}, Lcom/nuance/speech/SpeechResultTextBuffer;->setFieldInputInfo(Lcom/nuance/swype/input/InputFieldInfo;)V

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/SpeechWrapper;->showPopupSpeech()V

    .line 232
    return-void
.end method

.method public stopSpeech()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mState:Lcom/nuance/swype/input/SpeechWrapper$State;

    sget-object v1, Lcom/nuance/swype/input/SpeechWrapper$State;->Started:Lcom/nuance/swype/input/SpeechWrapper$State;

    if-ne v0, v1, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->dimissAlertDialog()V

    .line 258
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->removeAllPopupSpeechViewMsg()V

    .line 259
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->cancelSpeechDictation()V

    .line 260
    invoke-virtual {p0}, Lcom/nuance/swype/input/SpeechWrapper;->hidePopupSpeech()V

    .line 261
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper$State;->Stopped:Lcom/nuance/swype/input/SpeechWrapper$State;

    iput-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mState:Lcom/nuance/swype/input/SpeechWrapper$State;

    .line 263
    :cond_0
    return-void
.end method

.method public updateSelection(Landroid/view/inputmethod/InputConnection;IIIIII)V
    .locals 8
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "oldSelStart"    # I
    .param p3, "oldSelEnd"    # I
    .param p4, "newSelStart"    # I
    .param p5, "newSelEnd"    # I
    .param p6, "candidatesStart"    # I
    .param p7, "candidatesEnd"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/speech/SpeechResultTextBuffer;->updateSelection(Landroid/view/inputmethod/InputConnection;IIIIII)V

    .line 171
    :cond_0
    return-void
.end method

.method public updateText(Ljava/lang/String;II)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "cursorBegin"    # I
    .param p3, "cursorEnd"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/speech/SpeechResultTextBuffer;->updateText(Ljava/lang/String;II)V

    .line 180
    :cond_0
    return-void
.end method
