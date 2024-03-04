.class public Lcom/nuance/swype/input/SpeechWrapper;
.super Ljava/lang/Object;
.source "SpeechWrapper.java"

# interfaces
.implements Lcom/nuance/speech/DictationEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/SpeechWrapper$5;,
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

.field private mHostView:Lcom/nuance/swype/input/InputView;

.field private mRect:Landroid/graphics/Rect;

.field private final mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

.field private mSpeechView:Lcom/nuance/speech/SpeechPopupView;

.field private mState:Lcom/nuance/swype/input/SpeechWrapper$State;

.field private final speechProvider:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "SpeechWrapper"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    new-instance v0, Lcom/nuance/swype/input/SpeechWrapper$4;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/SpeechWrapper$4;-><init>(Lcom/nuance/swype/input/SpeechWrapper;)V

    iput-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->handlerCallback:Landroid/os/Handler$Callback;

    .line 566
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    .line 62
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSpeechProvider()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->speechProvider:I

    .line 63
    new-instance v0, Lcom/nuance/speech/SpeechPopupView;

    invoke-direct {v0}, Lcom/nuance/speech/SpeechPopupView;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    .line 64
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->createSpeechResultTextBuffer()Lcom/nuance/speech/SpeechResultTextBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/SpeechWrapper;)Lcom/nuance/swype/input/InputView;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nuance/swype/input/SpeechWrapper;Lcom/nuance/swype/input/SpeechWrapper$State;)Lcom/nuance/swype/input/SpeechWrapper$State;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/SpeechWrapper;
    .param p1, "x1"    # Lcom/nuance/swype/input/SpeechWrapper$State;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mState:Lcom/nuance/swype/input/SpeechWrapper$State;

    return-object p1
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/SpeechWrapper;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/SpeechWrapper;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/SpeechWrapper;->handleResumePopupView(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/SpeechWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->startDictation()V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/SpeechWrapper;Lcom/nuance/speech/Dictation$SpeechResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/SpeechWrapper;
    .param p1, "x1"    # Lcom/nuance/speech/Dictation$SpeechResult;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/SpeechWrapper;->updateDelaySpeechResult(Lcom/nuance/speech/Dictation$SpeechResult;)V

    return-void
.end method

.method private cancelSpeechDictation()V
    .locals 3

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getDictation()Lcom/nuance/speech/Dictation;

    move-result-object v0

    .line 277
    .local v0, "dictation":Lcom/nuance/speech/Dictation;
    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getDictationState()Lcom/nuance/speech/Dictation$DictationState;

    move-result-object v1

    sget-object v2, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Inprogress:Lcom/nuance/speech/Dictation$DictationState;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Inprogress:Lcom/nuance/speech/Dictation$RecordingState;

    if-ne v1, v2, :cond_1

    .line 280
    :cond_0
    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->cancel()V

    .line 283
    :cond_1
    return-void
.end method

.method private createAlertDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 8
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x0

    .line 479
    iget-object v6, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    if-nez v6, :cond_0

    move-object v0, v5

    .line 512
    :goto_0
    return-object v0

    .line 483
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 484
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 485
    iget v6, p0, Lcom/nuance/swype/input/SpeechWrapper;->speechProvider:I

    if-nez v6, :cond_1

    sget v2, Lcom/nuance/swype/input/R$drawable;->dragon_white_icon:I

    .line 487
    .local v2, "iconResId":I
    :goto_1
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 488
    iget-object v6, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$string;->ime_name:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 489
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 490
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 491
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 492
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 493
    .local v4, "window":Landroid/view/Window;
    if-nez v4, :cond_2

    move-object v0, v5

    .line 494
    goto :goto_0

    .line 485
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v2    # "iconResId":I
    .end local v4    # "window":Landroid/view/Window;
    :cond_1
    sget v2, Lcom/nuance/swype/input/R$drawable;->sym_keyboard_speech_mic:I

    goto :goto_1

    .line 497
    .restart local v0    # "alertDialog":Landroid/app/AlertDialog;
    .restart local v2    # "iconResId":I
    .restart local v4    # "window":Landroid/view/Window;
    :cond_2
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 498
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    if-nez v3, :cond_3

    move-object v0, v5

    .line 499
    goto :goto_0

    .line 502
    :cond_3
    iget-object v6, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 503
    iget-object v6, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v6, :cond_4

    move-object v0, v5

    .line 504
    goto :goto_0

    .line 507
    :cond_4
    const/16 v5, 0x3eb

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 509
    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 510
    const/high16 v5, 0x20000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

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

    .line 803
    if-eqz p0, :cond_1

    .line 815
    :cond_0
    :goto_0
    return-object v0

    .line 806
    :cond_1
    if-eqz p2, :cond_0

    .line 810
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getSpeechConfig()Lcom/nuance/speech/SpeechConfig;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/nuance/speech/SpeechConfig;->isLanguageSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 811
    sget-object v1, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid language"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 815
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
    .line 789
    iget v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->speechProvider:I

    invoke-static {v0, p1, p2, p3}, Lcom/nuance/swype/input/SpeechWrapper;->createDictation(ILandroid/content/Context;Ljava/lang/String;Z)Lcom/nuance/speech/Dictation;

    move-result-object v0

    return-object v0
.end method

.method private createSpeechResultTextBuffer()Lcom/nuance/speech/SpeechResultTextBuffer;
    .locals 1

    .prologue
    .line 785
    iget v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->speechProvider:I

    invoke-static {v0}, Lcom/nuance/swype/input/SpeechWrapper;->createSpeechResultTextBuffer(I)Lcom/nuance/speech/SpeechResultTextBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected static createSpeechResultTextBuffer(I)Lcom/nuance/speech/SpeechResultTextBuffer;
    .locals 1
    .param p0, "speechProvider"    # I

    .prologue
    .line 793
    if-eqz p0, :cond_0

    .line 794
    const/4 v0, 0x0

    .line 797
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
    .line 404
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mAlertMessageDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 407
    :cond_0
    return-void
.end method

.method private getCurrentDictationLanguage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 105
    iget-object v4, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 106
    .local v1, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/UserPreferences;->getCurrentDictationLanguageName()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "lang":Ljava/lang/String;
    const-string v4, "default.automatic"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    iget-object v4, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 110
    iget-object v4, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v3

    .line 111
    .local v3, "langId":I
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/nuance/swype/input/InputMethods;->findCoreInputLanguage(I)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    .line 112
    .local v0, "coreLang":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v0, :cond_1

    .line 113
    iget-object v2, v0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    .line 122
    .end local v0    # "coreLang":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v3    # "langId":I
    :cond_0
    :goto_0
    return-object v2

    .line 115
    .restart local v0    # "coreLang":Lcom/nuance/swype/input/InputMethods$Language;
    .restart local v3    # "langId":I
    :cond_1
    const/4 v2, 0x0

    .line 117
    goto :goto_0

    .line 118
    .end local v0    # "coreLang":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v3    # "langId":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getCustomWordSynchronizer(Lcom/nuance/swype/input/udb/UserDictionaryIterator;)Lcom/nuance/speech/CustomWordSynchronizer;
    .locals 2
    .param p1, "iterator"    # Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    .prologue
    .line 776
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getDictation()Lcom/nuance/speech/Dictation;

    move-result-object v0

    .line 777
    .local v0, "dictation":Lcom/nuance/speech/Dictation;
    if-eqz v0, :cond_0

    .line 778
    invoke-virtual {v0, p1}, Lcom/nuance/speech/Dictation;->getCustomWordsSync(Lcom/nuance/swype/input/udb/UserDictionaryIterator;)Lcom/nuance/speech/CustomWordSynchronizer;

    move-result-object v1

    .line 781
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDictation()Lcom/nuance/speech/Dictation;
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    .line 93
    :goto_0
    return-object v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    iget-object v0, v0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getCurrentDictationLanguage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    iget-object v2, v2, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/swype/input/SpeechWrapper;->createDictation(Landroid/content/Context;Ljava/lang/String;Z)Lcom/nuance/speech/Dictation;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    goto :goto_0

    .line 93
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleResumePopupView(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/nuance/swype/input/SpeechWrapper;->showPopupSpeech()V

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/SpeechWrapper;->postDelayResumePopupView(I)V

    goto :goto_0
.end method

.method private postDelayResumePopupView(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    const/16 v3, 0x5de

    .line 365
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getDictation()Lcom/nuance/speech/Dictation;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 369
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 373
    :cond_0
    return-void
.end method

.method private removeAllPopupSpeechViewMsg()V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x5dc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 522
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x5de

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 523
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x5df

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 524
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x5e0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 525
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x5e1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 526
    return-void
.end method

.method private setSpeechWindowSize(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mRect:Landroid/graphics/Rect;

    .line 83
    return-void
.end method

.method private showNoNetworkAvailableAlertDialog()V
    .locals 5

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->dimissAlertDialog()V

    .line 411
    sget-object v1, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "showNoNetworkAvailableAlertDialog"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 413
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    if-nez v1, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 418
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/nuance/swype/input/R$string;->no_network_available:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->no_network_try_again_msg:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/nuance/swype/input/SpeechWrapper;->createAlertDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mAlertMessageDialog:Landroid/app/AlertDialog;

    .line 421
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mAlertMessageDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mAlertMessageDialog:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 423
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mAlertMessageDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    sget v3, Lcom/nuance/swype/input/R$string;->dismiss_button:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lcom/nuance/swype/input/SpeechWrapper$1;

    invoke-direct {v4, p0}, Lcom/nuance/swype/input/SpeechWrapper$1;-><init>(Lcom/nuance/swype/input/SpeechWrapper;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 434
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showNoSpeechDetectionAlertDialog()V
    .locals 5

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->dimissAlertDialog()V

    .line 441
    sget-object v1, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "showNoSpeechDetectionAlertDialog"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 442
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    if-nez v1, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 447
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/nuance/swype/input/R$string;->no_speech_detected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->no_speech_try_again_msg:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/nuance/swype/input/SpeechWrapper;->createAlertDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mAlertMessageDialog:Landroid/app/AlertDialog;

    .line 449
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mAlertMessageDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mAlertMessageDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    sget v3, Lcom/nuance/swype/input/R$string;->cancel_button:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lcom/nuance/swype/input/SpeechWrapper$2;

    invoke-direct {v4, p0}, Lcom/nuance/swype/input/SpeechWrapper$2;-><init>(Lcom/nuance/swype/input/SpeechWrapper;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 461
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mAlertMessageDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    sget v3, Lcom/nuance/swype/input/R$string;->try_again_button:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lcom/nuance/swype/input/SpeechWrapper$3;

    invoke-direct {v4, p0}, Lcom/nuance/swype/input/SpeechWrapper$3;-><init>(Lcom/nuance/swype/input/SpeechWrapper;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 471
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private startDictation()V
    .locals 5

    .prologue
    const/16 v4, 0x5e0

    .line 620
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    if-nez v0, :cond_1

    .line 621
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "startDictation() == null"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 622
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;->Failed:Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/SpeechWrapper;->updateDicationStatus(Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;)V

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Stopped:Lcom/nuance/speech/Dictation$RecordingState;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getDictationState()Lcom/nuance/speech/Dictation$DictationState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Inprogress:Lcom/nuance/speech/Dictation$DictationState;

    if-eq v0, v1, :cond_3

    .line 626
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->startRecording()Z

    move-result v0

    if-nez v0, :cond_2

    .line 627
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "startDictation().start() failed"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 628
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;->Failed:Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/SpeechWrapper;->updateDicationStatus(Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;)V

    goto :goto_0

    .line 630
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechPopupView;->switchToReadyForSpeechView()V

    goto :goto_0

    .line 635
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 636
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updateDelaySpeechResult(Lcom/nuance/speech/Dictation$SpeechResult;)V
    .locals 6
    .param p1, "result"    # Lcom/nuance/speech/Dictation$SpeechResult;

    .prologue
    .line 605
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->viewStillActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "#updateDelaySpeechResult() - update result because of pausing fro "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/nuance/swype/input/SpeechWrapper;->lastSpeechResultUpdate:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 607
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    iget-object v1, p1, Lcom/nuance/speech/Dictation$SpeechResult;->text:Ljava/lang/CharSequence;

    iget-boolean v2, p1, Lcom/nuance/speech/Dictation$SpeechResult;->streaming:Z

    iget-boolean v3, p1, Lcom/nuance/speech/Dictation$SpeechResult;->finalResult:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/input/InputView;->onUpdateSpeechText(Ljava/lang/CharSequence;ZZ)V

    .line 609
    :cond_0
    return-void
.end method

.method private updateDicationStatus(Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;)V
    .locals 4
    .param p1, "status"    # Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;

    .prologue
    const/16 v2, 0x5dc

    .line 612
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 616
    :cond_0
    return-void
.end method

.method private updateSpeechTextResult(Lcom/nuance/speech/Dictation$SpeechResult;)V
    .locals 12
    .param p1, "result"    # Lcom/nuance/speech/Dictation$SpeechResult;

    .prologue
    const/16 v9, 0x5e1

    const-wide/16 v10, 0x1f4

    .line 574
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->viewStillActive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 575
    iget-boolean v4, p1, Lcom/nuance/speech/Dictation$SpeechResult;->streaming:Z

    if-eqz v4, :cond_3

    .line 576
    iget-object v4, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 577
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 579
    .local v0, "currentTime":J
    iget-boolean v4, p1, Lcom/nuance/speech/Dictation$SpeechResult;->finalResult:Z

    if-nez v4, :cond_0

    .line 580
    iget-wide v4, p0, Lcom/nuance/swype/input/SpeechWrapper;->lastSpeechResultUpdate:J

    sub-long v2, v0, v4

    .line 584
    .local v2, "msSinceLast":J
    cmp-long v4, v2, v10

    if-ltz v4, :cond_2

    .line 585
    sget-object v4, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "#updateSpeechTextResult: streaming "

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "ms >="

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 586
    iput-wide v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->lastSpeechResultUpdate:J

    .line 599
    .end local v0    # "currentTime":J
    .end local v2    # "msSinceLast":J
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    iget-object v5, p1, Lcom/nuance/speech/Dictation$SpeechResult;->text:Ljava/lang/CharSequence;

    iget-boolean v6, p1, Lcom/nuance/speech/Dictation$SpeechResult;->streaming:Z

    iget-boolean v7, p1, Lcom/nuance/speech/Dictation$SpeechResult;->finalResult:Z

    invoke-virtual {v4, v5, v6, v7}, Lcom/nuance/swype/input/InputView;->onUpdateSpeechText(Ljava/lang/CharSequence;ZZ)V

    .line 602
    :cond_1
    :goto_1
    return-void

    .line 589
    .restart local v0    # "currentTime":J
    .restart local v2    # "msSinceLast":J
    :cond_2
    sget-object v4, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "#updateSpeechTextResult: streaming "

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "ms < "

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 590
    iget-object v4, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    sub-long v6, v10, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 594
    .end local v0    # "currentTime":J
    .end local v2    # "msSinceLast":J
    :cond_3
    iget-boolean v4, p1, Lcom/nuance/speech/Dictation$SpeechResult;->finalResult:Z

    if-eqz v4, :cond_0

    .line 595
    iget-object v4, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    if-eqz v4, :cond_0

    .line 596
    iget-object v4, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v4}, Lcom/nuance/speech/SpeechPopupView;->postSwitchSpeechPausedViewMsg()V

    goto :goto_0
.end method

.method private viewStillActive()Z
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    iget-object v0, v0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    iget-object v0, v0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addCustomWord(Lcom/nuance/swype/input/udb/UserDictionaryIterator;Lcom/nuance/swype/input/InputFieldInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "iterator"    # Lcom/nuance/swype/input/udb/UserDictionaryIterator;
    .param p2, "info"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p3, "word"    # Ljava/lang/String;

    .prologue
    .line 755
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/SpeechWrapper;->getCustomWordSynchronizer(Lcom/nuance/swype/input/udb/UserDictionaryIterator;)Lcom/nuance/speech/CustomWordSynchronizer;

    move-result-object v0

    .line 756
    .local v0, "cws":Lcom/nuance/speech/CustomWordSynchronizer;
    if-eqz v0, :cond_0

    .line 757
    invoke-virtual {v0, p2, p3}, Lcom/nuance/speech/CustomWordSynchronizer;->addCustomWord(Lcom/nuance/swype/input/InputFieldInfo;Ljava/lang/String;)V

    .line 759
    :cond_0
    return-void
.end method

.method public cancelSpeech()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mState:Lcom/nuance/swype/input/SpeechWrapper$State;

    sget-object v1, Lcom/nuance/swype/input/SpeechWrapper$State;->Started:Lcom/nuance/swype/input/SpeechWrapper$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mState:Lcom/nuance/swype/input/SpeechWrapper$State;

    sget-object v1, Lcom/nuance/swype/input/SpeechWrapper$State;->Paused:Lcom/nuance/swype/input/SpeechWrapper$State;

    if-ne v0, v1, :cond_1

    .line 262
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->dimissAlertDialog()V

    .line 263
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->removeAllPopupSpeechViewMsg()V

    .line 264
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->cancelSpeechDictation()V

    .line 265
    invoke-virtual {p0}, Lcom/nuance/swype/input/SpeechWrapper;->hidePopupSpeech()V

    .line 266
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->onCancelSpeech()V

    .line 271
    :cond_1
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper$State;->Stopped:Lcom/nuance/swype/input/SpeechWrapper$State;

    iput-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mState:Lcom/nuance/swype/input/SpeechWrapper$State;

    .line 272
    return-void
.end method

.method public clearAllCustomWords(Lcom/nuance/swype/input/udb/UserDictionaryIterator;)V
    .locals 1
    .param p1, "iterator"    # Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    .prologue
    .line 762
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/SpeechWrapper;->getCustomWordSynchronizer(Lcom/nuance/swype/input/udb/UserDictionaryIterator;)Lcom/nuance/speech/CustomWordSynchronizer;

    move-result-object v0

    .line 763
    .local v0, "cws":Lcom/nuance/speech/CustomWordSynchronizer;
    if-eqz v0, :cond_0

    .line 764
    invoke-virtual {v0}, Lcom/nuance/speech/CustomWordSynchronizer;->clearAllCustomWords()V

    .line 766
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
    .line 175
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechResultTextBuffer;->getCandidates()Ljava/util/ArrayList;

    move-result-object v0

    .line 178
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentDictation()Lcom/nuance/speech/Dictation;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    return-object v0
.end method

.method public handleDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V
    .locals 4
    .param p1, "event"    # Lcom/nuance/speech/DictationEventListener$DictationEvent;
    .param p2, "eventData"    # Ljava/lang/Object;

    .prologue
    .line 659
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nuance/swype/input/SpeechWrapper$DictationMessage;

    invoke-direct {v1, p0, p1, p2}, Lcom/nuance/swype/input/SpeechWrapper$DictationMessage;-><init>(Lcom/nuance/swype/input/SpeechWrapper;Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 660
    return-void
.end method

.method handleDictationMsg(Lcom/nuance/swype/input/SpeechWrapper$DictationMessage;)V
    .locals 4
    .param p1, "msg"    # Lcom/nuance/swype/input/SpeechWrapper$DictationMessage;

    .prologue
    .line 680
    sget-object v1, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleDictationMsg...msg.event.."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/nuance/swype/input/SpeechWrapper$DictationMessage;->event:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    invoke-virtual {v3}, Lcom/nuance/speech/DictationEventListener$DictationEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 681
    sget-object v1, Lcom/nuance/swype/input/SpeechWrapper$5;->$SwitchMap$com$nuance$speech$DictationEventListener$DictationEvent:[I

    iget-object v2, p1, Lcom/nuance/swype/input/SpeechWrapper$DictationMessage;->event:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    invoke-virtual {v2}, Lcom/nuance/speech/DictationEventListener$DictationEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 684
    :pswitch_0
    sget-object v1, Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;->Failed_Connection:Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/SpeechWrapper;->updateDicationStatus(Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;)V

    goto :goto_0

    .line 688
    :pswitch_1
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    if-eqz v1, :cond_0

    .line 689
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v1}, Lcom/nuance/speech/SpeechPopupView;->postSwitchSpeechProcessingViewMsg()V

    goto :goto_0

    .line 694
    :pswitch_2
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    if-eqz v1, :cond_0

    .line 695
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v1}, Lcom/nuance/speech/SpeechPopupView;->postSwitchSpeechPausedViewMsg()V

    goto :goto_0

    .line 700
    :pswitch_3
    iget-object v1, p1, Lcom/nuance/swype/input/SpeechWrapper$DictationMessage;->data:Ljava/lang/Object;

    check-cast v1, Lcom/nuance/speech/Dictation$SpeechResult;

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/SpeechWrapper;->updateSpeechTextResult(Lcom/nuance/speech/Dictation$SpeechResult;)V

    goto :goto_0

    .line 705
    :pswitch_4
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    if-eqz v1, :cond_0

    .line 706
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v1}, Lcom/nuance/speech/SpeechPopupView;->postSwitchSpeechPausedViewMsg()V

    goto :goto_0

    .line 711
    :pswitch_5
    sget-object v1, Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;->Canceled:Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/SpeechWrapper;->updateDicationStatus(Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;)V

    goto :goto_0

    .line 715
    :pswitch_6
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->lastSpeechResultUpdate:J

    .line 716
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    if-eqz v1, :cond_0

    .line 717
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v1}, Lcom/nuance/speech/SpeechPopupView;->startSpeech()V

    goto :goto_0

    .line 724
    :pswitch_7
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v1, :cond_1

    .line 725
    sget-object v1, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Speech_AudioLevel.. mDictation.getRecordingState().."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v3}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 727
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v1}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Inprogress:Lcom/nuance/speech/Dictation$RecordingState;

    if-ne v1, v2, :cond_0

    .line 729
    iget-object v1, p1, Lcom/nuance/swype/input/SpeechWrapper$DictationMessage;->data:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 730
    .local v0, "level":I
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v1, v0}, Lcom/nuance/speech/SpeechPopupView;->setFrame(I)V

    goto :goto_0

    .line 734
    .end local v0    # "level":I
    :pswitch_8
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    if-eqz v1, :cond_0

    .line 735
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    iget-object v1, v1, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->showDictationLanguageMenu()V

    goto/16 :goto_0

    .line 741
    :pswitch_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/SpeechWrapper;->hidePopupSpeech()V

    .line 742
    sget-object v1, Lcom/nuance/swype/input/SpeechWrapper$State;->Stopped:Lcom/nuance/swype/input/SpeechWrapper$State;

    iput-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mState:Lcom/nuance/swype/input/SpeechWrapper$State;

    goto/16 :goto_0

    .line 681
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
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 286
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v1}, Lcom/nuance/speech/SpeechPopupView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    sget-object v1, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "hidePopupSpeech"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 288
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v1}, Lcom/nuance/speech/SpeechPopupView;->dismiss()V

    .line 289
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v1, v3}, Lcom/nuance/speech/SpeechPopupView;->setDictationEngine(Lcom/nuance/speech/Dictation;)V

    .line 290
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getDictation()Lcom/nuance/speech/Dictation;

    move-result-object v0

    .line 291
    .local v0, "dictation":Lcom/nuance/speech/Dictation;
    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0, v3}, Lcom/nuance/speech/Dictation;->setDictationResultTextBuffer(Lcom/nuance/speech/SpeechResultTextBuffer;)V

    .line 293
    invoke-virtual {v0, v3}, Lcom/nuance/speech/Dictation;->setDictationEventListener(Lcom/nuance/speech/DictationEventListener;)V

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v1, v3}, Lcom/nuance/speech/SpeechPopupView;->setParentView(Lcom/nuance/swype/input/InputView;)V

    .line 297
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    if-eqz v1, :cond_1

    .line 298
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->onSpeechViewDismissed()V

    .line 301
    .end local v0    # "dictation":Lcom/nuance/speech/Dictation;
    :cond_1
    return-void
.end method

.method public isAllowedShowingLanguageMenu()Z
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mAlertMessageDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mAlertMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    const/4 v0, 0x0

    .line 826
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isHighlightedTextSpeechDictated()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechResultTextBuffer;->isTextDictated()Z

    move-result v0

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResumable()Z
    .locals 2

    .prologue
    .line 239
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
    .line 201
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getDictation()Lcom/nuance/speech/Dictation;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechPopupView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpeechViewShowing()Z
    .locals 1

    .prologue
    .line 819
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
    .line 830
    invoke-virtual {p0}, Lcom/nuance/swype/input/SpeechWrapper;->isSpeechViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getSpeechResultsMode()Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-result-object v0

    sget-object v1, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->CONTINUOUS_STREAMING_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    if-ne v0, v1, :cond_0

    .line 833
    const/4 v0, 0x1

    .line 837
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onChangeLanguage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "langName"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/nuance/swype/input/UserPreferences;->setCurrentDictationLanguageName(Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getCurrentDictationLanguage()Ljava/lang/String;

    move-result-object p2

    .line 131
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->cancel()V

    .line 133
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->release()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    .line 135
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    iget-object v0, v0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/SpeechWrapper;->createDictation(Landroid/content/Context;Ljava/lang/String;Z)Lcom/nuance/speech/Dictation;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    .line 136
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    invoke-virtual {v0, v1}, Lcom/nuance/speech/Dictation;->setDictationResultTextBuffer(Lcom/nuance/speech/SpeechResultTextBuffer;)V

    .line 138
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0, v1}, Lcom/nuance/speech/SpeechPopupView;->setDictationEngine(Lcom/nuance/speech/Dictation;)V

    .line 139
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    invoke-virtual {v0, v1}, Lcom/nuance/speech/Dictation;->setDictationResultTextBuffer(Lcom/nuance/speech/SpeechResultTextBuffer;)V

    .line 140
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0, p0}, Lcom/nuance/speech/Dictation;->setDictationEventListener(Lcom/nuance/speech/DictationEventListener;)V

    .line 141
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->isEndOfSpeechDetectionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/speech/Dictation;->setEndofSpeechDetection(Z)V

    .line 143
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechPopupView;->refreshLanguageLabel()V

    .line 144
    invoke-virtual {p0}, Lcom/nuance/swype/input/SpeechWrapper;->restartDictation()V

    .line 147
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 193
    iput-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    .line 194
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->release()V

    .line 196
    iput-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    .line 198
    :cond_0
    return-void
.end method

.method public pauseSpeech()V
    .locals 2

    .prologue
    .line 252
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "pauseSpeech"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 253
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mState:Lcom/nuance/swype/input/SpeechWrapper$State;

    sget-object v1, Lcom/nuance/swype/input/SpeechWrapper$State;->Started:Lcom/nuance/swype/input/SpeechWrapper$State;

    if-ne v0, v1, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->dimissAlertDialog()V

    .line 255
    invoke-virtual {p0}, Lcom/nuance/swype/input/SpeechWrapper;->hidePopupSpeech()V

    .line 256
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper$State;->Paused:Lcom/nuance/swype/input/SpeechWrapper$State;

    iput-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mState:Lcom/nuance/swype/input/SpeechWrapper$State;

    .line 258
    :cond_0
    return-void
.end method

.method postRetrySpeechMsg()V
    .locals 4

    .prologue
    const/16 v1, 0x5df

    .line 516
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 517
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 518
    return-void
.end method

.method public removeCustomWord(Lcom/nuance/swype/input/udb/UserDictionaryIterator;Lcom/nuance/swype/input/InputFieldInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "iterator"    # Lcom/nuance/swype/input/udb/UserDictionaryIterator;
    .param p2, "info"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p3, "word"    # Ljava/lang/String;

    .prologue
    .line 748
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/SpeechWrapper;->getCustomWordSynchronizer(Lcom/nuance/swype/input/udb/UserDictionaryIterator;)Lcom/nuance/speech/CustomWordSynchronizer;

    move-result-object v0

    .line 749
    .local v0, "cws":Lcom/nuance/speech/CustomWordSynchronizer;
    if-eqz v0, :cond_0

    .line 750
    invoke-virtual {v0, p2, p3}, Lcom/nuance/speech/CustomWordSynchronizer;->removeCustomWord(Lcom/nuance/swype/input/InputFieldInfo;Ljava/lang/String;)V

    .line 752
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
    .line 769
    .local p2, "words":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/SpeechWrapper;->getCustomWordSynchronizer(Lcom/nuance/swype/input/udb/UserDictionaryIterator;)Lcom/nuance/speech/CustomWordSynchronizer;

    move-result-object v0

    .line 770
    .local v0, "cws":Lcom/nuance/speech/CustomWordSynchronizer;
    if-eqz v0, :cond_0

    .line 771
    invoke-virtual {v0, p2}, Lcom/nuance/speech/CustomWordSynchronizer;->removeCustomWords(Ljava/util/Set;)V

    .line 773
    :cond_0
    return-void
.end method

.method public restartDictation()V
    .locals 4

    .prologue
    .line 642
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    if-nez v0, :cond_0

    .line 643
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;->Failed:Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/SpeechWrapper;->updateDicationStatus(Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;)V

    .line 656
    :goto_0
    return-void

    .line 646
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "restartDictation.. mDictation.getRecordingState().."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v2}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 647
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "restartDictation.. mDictation.getDictationState().."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v2}, Lcom/nuance/speech/Dictation;->getDictationState()Lcom/nuance/speech/Dictation$DictationState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 648
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Stopped:Lcom/nuance/speech/Dictation$RecordingState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getDictationState()Lcom/nuance/speech/Dictation$DictationState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Inprogress:Lcom/nuance/speech/Dictation$DictationState;

    if-eq v0, v1, :cond_1

    .line 651
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->cancel()V

    .line 652
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x5e0

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->canelCustomWordSync()V

    goto :goto_0
.end method

.method public resumeSpeech(Lcom/nuance/swype/input/InputView;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "view"    # Lcom/nuance/swype/input/InputView;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 221
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "resumeSpeech"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mState:Lcom/nuance/swype/input/SpeechWrapper$State;

    if-eqz v0, :cond_0

    .line 223
    sget-object v1, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "mState is..."

    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mState:Lcom/nuance/swype/input/SpeechWrapper$State;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper$State;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mState:Lcom/nuance/swype/input/SpeechWrapper$State;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper$State;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mState:Lcom/nuance/swype/input/SpeechWrapper$State;

    sget-object v1, Lcom/nuance/swype/input/SpeechWrapper$State;->Paused:Lcom/nuance/swype/input/SpeechWrapper$State;

    if-ne v0, v1, :cond_2

    .line 226
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/SpeechWrapper;->setHost(Lcom/nuance/swype/input/InputView;)V

    .line 227
    iput-object p2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mRect:Landroid/graphics/Rect;

    .line 228
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "rect.left.."

    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "..rect.top.."

    iget v4, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "..rect.right.."

    iget v6, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "..rect.bottom.."

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    iget-object v1, v1, Lcom/nuance/swype/input/InputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0, v1}, Lcom/nuance/speech/SpeechResultTextBuffer;->setFieldInputInfo(Lcom/nuance/swype/input/InputFieldInfo;)V

    .line 235
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/SpeechWrapper;->postDelayResumePopupView(I)V

    .line 237
    :cond_2
    return-void

    .line 223
    :cond_3
    const-string v0, "Stopped"

    goto :goto_0
.end method

.method public setHost(Lcom/nuance/swype/input/InputView;)V
    .locals 2
    .param p1, "view"    # Lcom/nuance/swype/input/InputView;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    .line 69
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getCurrentDictationLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->release()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    .line 75
    :cond_0
    return-void
.end method

.method showDictationFailed(Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;)V
    .locals 2
    .param p1, "status"    # Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;

    .prologue
    .line 384
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper$5;->$SwitchMap$com$nuance$swype$input$SpeechWrapper$RecognitionStatus:[I

    invoke-virtual {p1}, Lcom/nuance/swype/input/SpeechWrapper$RecognitionStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 397
    :goto_0
    :pswitch_0
    return-void

    .line 396
    :pswitch_1
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->showNoNetworkAvailableAlertDialog()V

    goto :goto_0

    .line 384
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected showPopupSpeech()V
    .locals 12

    .prologue
    .line 304
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "showPopupSpeech"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechPopupView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 306
    const/4 v7, 0x0

    .line 307
    .local v7, "isSameSize":Z
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v4, v0, v1

    .line 308
    .local v4, "w":I
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v5, v0, v1

    .line 309
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

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechPopupView;->getPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 311
    const/4 v7, 0x1

    .line 313
    :cond_0
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 314
    .local v8, "location":[I
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechPopupView;->getPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 315
    const/4 v0, 0x1

    aget v0, v8, v0

    .line 317
    if-eqz v0, :cond_2

    if-eqz v7, :cond_2

    .line 318
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "showPopupSpeech - already have one"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    .line 361
    .end local v4    # "w":I
    .end local v5    # "h":I
    .end local v7    # "isSameSize":Z
    .end local v8    # "location":[I
    :cond_1
    :goto_0
    return-void

    .line 321
    .restart local v4    # "w":I
    .restart local v5    # "h":I
    .restart local v7    # "isSameSize":Z
    .restart local v8    # "location":[I
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechPopupView;->dismiss()V

    .line 325
    .end local v4    # "w":I
    .end local v5    # "h":I
    .end local v7    # "isSameSize":Z
    .end local v8    # "location":[I
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->getDictation()Lcom/nuance/speech/Dictation;

    move-result-object v6

    .line 327
    .local v6, "dictation":Lcom/nuance/speech/Dictation;
    if-eqz v6, :cond_1

    .line 328
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    if-nez v0, :cond_4

    .line 329
    new-instance v0, Lcom/nuance/speech/SpeechPopupView;

    invoke-direct {v0}, Lcom/nuance/speech/SpeechPopupView;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    .line 332
    :cond_4
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v0, v6}, Lcom/nuance/speech/SpeechPopupView;->setDictationEngine(Lcom/nuance/speech/Dictation;)V

    .line 333
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    invoke-virtual {v6, v0}, Lcom/nuance/speech/Dictation;->setDictationResultTextBuffer(Lcom/nuance/speech/SpeechResultTextBuffer;)V

    .line 334
    invoke-virtual {v6, p0}, Lcom/nuance/speech/Dictation;->setDictationEventListener(Lcom/nuance/speech/DictationEventListener;)V

    .line 335
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isEndOfSpeechDetectionEnabled()Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/nuance/speech/Dictation;->setEndofSpeechDetection(Z)V

    .line 338
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0, v1}, Lcom/nuance/speech/SpeechPopupView;->setParentView(Lcom/nuance/swype/input/InputView;)V

    .line 339
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper$State;->Started:Lcom/nuance/swype/input/SpeechWrapper$State;

    iput-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mState:Lcom/nuance/swype/input/SpeechWrapper$State;

    .line 341
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v4, v0, v1

    .line 342
    .restart local v4    # "w":I
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v5, v0, v1

    .line 343
    .restart local v5    # "h":I
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 344
    .local v2, "x":I
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 345
    .local v3, "y":I
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "showPopupSpeech show popup"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 348
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechView:Lcom/nuance/speech/SpeechPopupView;

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/speech/SpeechPopupView;->show(IIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->onSpeechViewShowedUp()V

    .line 354
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Stopped:Lcom/nuance/speech/Dictation$RecordingState;

    if-ne v0, v1, :cond_5

    .line 355
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x5e0

    const-wide/16 v10, 0x5

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 358
    :cond_5
    invoke-virtual {v6}, Lcom/nuance/speech/Dictation;->canelCustomWordSync()V

    goto/16 :goto_0
.end method

.method public speechChooseCandidate(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    invoke-virtual {v0, p1}, Lcom/nuance/speech/SpeechResultTextBuffer;->chooseCandidate(I)V

    .line 186
    :cond_0
    return-void
.end method

.method public startSpeech(Lcom/nuance/swype/input/InputView;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "view"    # Lcom/nuance/swype/input/InputView;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/SpeechWrapper;->setHost(Lcom/nuance/swype/input/InputView;)V

    .line 213
    iput-object p2, p0, Lcom/nuance/swype/input/SpeechWrapper;->mRect:Landroid/graphics/Rect;

    .line 214
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper;->mHostView:Lcom/nuance/swype/input/InputView;

    iget-object v1, v1, Lcom/nuance/swype/input/InputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0, v1}, Lcom/nuance/speech/SpeechResultTextBuffer;->setFieldInputInfo(Lcom/nuance/swype/input/InputFieldInfo;)V

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/SpeechWrapper;->showPopupSpeech()V

    .line 218
    return-void
.end method

.method public stopSpeech()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mState:Lcom/nuance/swype/input/SpeechWrapper$State;

    sget-object v1, Lcom/nuance/swype/input/SpeechWrapper$State;->Started:Lcom/nuance/swype/input/SpeechWrapper$State;

    if-ne v0, v1, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->dimissAlertDialog()V

    .line 244
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->removeAllPopupSpeechViewMsg()V

    .line 245
    invoke-direct {p0}, Lcom/nuance/swype/input/SpeechWrapper;->cancelSpeechDictation()V

    .line 246
    invoke-virtual {p0}, Lcom/nuance/swype/input/SpeechWrapper;->hidePopupSpeech()V

    .line 247
    sget-object v0, Lcom/nuance/swype/input/SpeechWrapper$State;->Stopped:Lcom/nuance/swype/input/SpeechWrapper$State;

    iput-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mState:Lcom/nuance/swype/input/SpeechWrapper$State;

    .line 249
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
    .line 151
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/speech/SpeechResultTextBuffer;->updateSelection(Landroid/view/inputmethod/InputConnection;IIIIII)V

    .line 155
    :cond_0
    return-void
.end method

.method public updateText(Ljava/lang/String;II)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "cursorBegin"    # I
    .param p3, "cursorEnd"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/nuance/swype/input/SpeechWrapper;->mSpeechResultTextBuffer:Lcom/nuance/speech/SpeechResultTextBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/speech/SpeechResultTextBuffer;->updateText(Ljava/lang/String;II)V

    .line 164
    :cond_0
    return-void
.end method
