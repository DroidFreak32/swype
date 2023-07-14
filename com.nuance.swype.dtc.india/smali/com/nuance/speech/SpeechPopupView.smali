.class public Lcom/nuance/speech/SpeechPopupView;
.super Ljava/lang/Object;
.source "SpeechPopupView.java"

# interfaces
.implements Lcom/nuance/swype/input/accessibility/IGestureViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/speech/SpeechPopupView$PopupDismissListener;,
        Lcom/nuance/speech/SpeechPopupView$PopupViewState;
    }
.end annotation


# static fields
.field static final MSG_CANCEL_DICTATION:I = 0x2

.field static final MSG_STOP_RECORDING:I = 0x1

.field static final MSG_SWITCH_TO_PAUSED_VIEW:I = 0x3

.field static final MSG_SWITCH_TO_PROCESSING_VIEW:I = 0x4

.field static final MSG_SWITCH_VIEWS:I = 0x5

.field private static final SPECTRUM_FRAMES_COUNT:I = 0x6

.field private static final SPECTRUM_FRAMES_RESIDS:[I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation
.end field

.field private static final SPEECH_LOCK_TAG:Ljava/lang/String; = "DRAGON_SPEECH_LOCK"

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private dottingLine:Ljava/lang/StringBuilder;

.field private final handlerCallback:Landroid/os/Handler$Callback;

.field private mChooseLanguageButton:Landroid/widget/Button;

.field private mDictation:Lcom/nuance/speech/Dictation;

.field private mDictationLabelButton:Landroid/widget/Button;

.field private mDictationView:Landroid/view/View;

.field private mGravity:I

.field final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mKeyboardButton:Landroid/widget/ImageButton;

.field private mParentView:Lcom/nuance/swype/input/InputView;

.field protected mPopupViewState:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mProcessingLabelButton:Landroid/widget/Button;

.field private mSpeechSpectrumView:Landroid/widget/ImageView;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWidth:I

.field private mX:I

.field private mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const-string/jumbo v0, "SpeechPopup"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 92
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/nuance/swype/input/R$drawable;->speech_vis01:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/nuance/swype/input/R$drawable;->speech_vis02:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/nuance/swype/input/R$drawable;->speech_vis03:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/nuance/swype/input/R$drawable;->speech_vis04:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/nuance/swype/input/R$drawable;->speech_vis05:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/nuance/swype/input/R$drawable;->speech_vis06:I

    aput v2, v0, v1

    sput-object v0, Lcom/nuance/speech/SpeechPopupView;->SPECTRUM_FRAMES_RESIDS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Connecting:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    iput-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupViewState:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mParentView:Lcom/nuance/swype/input/InputView;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->dottingLine:Ljava/lang/StringBuilder;

    .line 655
    new-instance v0, Lcom/nuance/speech/SpeechPopupView$9;

    invoke-direct {v0, p0}, Lcom/nuance/speech/SpeechPopupView$9;-><init>(Lcom/nuance/speech/SpeechPopupView;)V

    iput-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->handlerCallback:Landroid/os/Handler$Callback;

    .line 685
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/speech/SpeechPopupView;)Lcom/nuance/speech/Dictation;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/speech/SpeechPopupView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/speech/SpeechPopupView;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/speech/SpeechPopupView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->dottingLine:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/speech/SpeechPopupView;Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/speech/SpeechPopupView;
    .param p1, "x1"    # Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/nuance/speech/SpeechPopupView;->updateView(Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/speech/SpeechPopupView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/speech/SpeechPopupView;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/nuance/speech/SpeechPopupView;->switchToSpeechProcessingView()V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/speech/SpeechPopupView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/speech/SpeechPopupView;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/nuance/speech/SpeechPopupView;->switchToSpeechPausedView()V

    return-void
.end method

.method private clearAreaAboveTheKeyboard()V
    .locals 4

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/nuance/speech/SpeechPopupView;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v1

    .line 611
    .local v1, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 612
    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 613
    .local v0, "currentView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getScrubGesturView()Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;

    move-result-object v2

    .line 615
    .local v2, "scrubGestureView":Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;
    if-eqz v2, :cond_0

    .line 616
    invoke-virtual {v2}, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->removeAllGestureViewListener()V

    .line 617
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->useForVoiceUI(Z)V

    .line 618
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->cleanupScrubGesture()V

    .line 622
    .end local v0    # "currentView":Lcom/nuance/swype/input/InputView;
    .end local v2    # "scrubGestureView":Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;
    :cond_0
    return-void
.end method

.method private clearSpectrum()V
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/speech/SpeechPopupView;->setFrame(I)V

    .line 369
    return-void
.end method

.method private coverAreaAboveTheKeyboard()V
    .locals 4

    .prologue
    .line 625
    invoke-direct {p0}, Lcom/nuance/speech/SpeechPopupView;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v1

    .line 626
    .local v1, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 627
    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 628
    .local v0, "currentView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    .line 629
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getScrubGesturView()Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;

    move-result-object v2

    .line 630
    .local v2, "scrubGestureView":Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;
    if-eqz v2, :cond_0

    .line 631
    invoke-virtual {v2, p0}, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->addGestureViewListener(Lcom/nuance/swype/input/accessibility/IGestureViewListener;)V

    .line 632
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->useForVoiceUI(Z)V

    .line 633
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->showScrubGestureView()V

    .line 637
    .end local v0    # "currentView":Lcom/nuance/swype/input/InputView;
    .end local v2    # "scrubGestureView":Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;
    :cond_0
    return-void
.end method

.method private createViews(IIII)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 103
    sget-object v3, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "createViews...width.."

    aput-object v5, v4, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    const-string/jumbo v6, "..height.."

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 105
    iput p1, p0, Lcom/nuance/speech/SpeechPopupView;->mX:I

    .line 106
    iput p2, p0, Lcom/nuance/speech/SpeechPopupView;->mY:I

    .line 107
    iput p3, p0, Lcom/nuance/speech/SpeechPopupView;->mWidth:I

    .line 108
    iput p4, p0, Lcom/nuance/speech/SpeechPopupView;->mHeight:I

    .line 110
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mParentView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 111
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 112
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/nuance/swype/input/R$layout;->speech_recording:I

    invoke-virtual {v2, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationView:Landroid/view/View;

    .line 113
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setClickable(Z)V

    .line 114
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationView:Landroid/view/View;

    new-instance v4, Lcom/nuance/speech/SpeechPopupView$1;

    invoke-direct {v4, p0}, Lcom/nuance/speech/SpeechPopupView$1;-><init>(Lcom/nuance/speech/SpeechPopupView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationView:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->spectrum_recording:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mSpeechSpectrumView:Landroid/widget/ImageView;

    .line 120
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationView:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->back_to_keyboard:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mKeyboardButton:Landroid/widget/ImageButton;

    .line 121
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mKeyboardButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/nuance/speech/SpeechPopupView$2;

    invoke-direct {v4, p0}, Lcom/nuance/speech/SpeechPopupView$2;-><init>(Lcom/nuance/speech/SpeechPopupView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationView:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->recording_label:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationLabelButton:Landroid/widget/Button;

    .line 129
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationLabelButton:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setClickable(Z)V

    .line 131
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationLabelButton:Landroid/widget/Button;

    new-instance v4, Lcom/nuance/speech/SpeechPopupView$3;

    invoke-direct {v4, p0}, Lcom/nuance/speech/SpeechPopupView$3;-><init>(Lcom/nuance/speech/SpeechPopupView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationView:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->processing_label:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mProcessingLabelButton:Landroid/widget/Button;

    .line 146
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mProcessingLabelButton:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setClickable(Z)V

    .line 149
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationView:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->choose_language:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mChooseLanguageButton:Landroid/widget/Button;

    .line 150
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mChooseLanguageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/nuance/speech/SpeechPopupView;->getLanguageDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mChooseLanguageButton:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setClickable(Z)V

    .line 153
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mChooseLanguageButton:Landroid/widget/Button;

    new-instance v4, Lcom/nuance/speech/SpeechPopupView$4;

    invoke-direct {v4, p0}, Lcom/nuance/speech/SpeechPopupView$4;-><init>(Lcom/nuance/speech/SpeechPopupView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_0

    .line 162
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 163
    iput-object v9, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 165
    :cond_0
    new-instance v3, Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationView:Landroid/view/View;

    iget v5, p0, Lcom/nuance/speech/SpeechPopupView;->mWidth:I

    iget v6, p0, Lcom/nuance/speech/SpeechPopupView;->mHeight:I

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 166
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/nuance/speech/SpeechPopupView;->mX:I

    iget v5, p0, Lcom/nuance/speech/SpeechPopupView;->mY:I

    iget v6, p0, Lcom/nuance/speech/SpeechPopupView;->mWidth:I

    iget v7, p0, Lcom/nuance/speech/SpeechPopupView;->mHeight:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 168
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mParentView:Lcom/nuance/swype/input/InputView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mParentView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 169
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/nuance/speech/SpeechPopupView;->mParentView:Lcom/nuance/swype/input/InputView;

    iget v5, p0, Lcom/nuance/speech/SpeechPopupView;->mGravity:I

    iget v6, p0, Lcom/nuance/speech/SpeechPopupView;->mX:I

    iget v7, p0, Lcom/nuance/speech/SpeechPopupView;->mY:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 170
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v4, Lcom/nuance/speech/SpeechPopupView$PopupDismissListener;

    invoke-direct {v4, v0}, Lcom/nuance/speech/SpeechPopupView$PopupDismissListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 173
    :cond_1
    invoke-direct {p0}, Lcom/nuance/speech/SpeechPopupView;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v1

    .line 174
    .local v1, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationView:Landroid/view/View;

    new-instance v4, Lcom/nuance/speech/SpeechPopupView$5;

    invoke-direct {v4, p0}, Lcom/nuance/speech/SpeechPopupView$5;-><init>(Lcom/nuance/speech/SpeechPopupView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 182
    :cond_2
    invoke-direct {p0}, Lcom/nuance/speech/SpeechPopupView;->switchToConnectingView()V

    .line 183
    return-void
.end method

.method private getIME()Lcom/nuance/swype/input/IME;
    .locals 4

    .prologue
    .line 640
    const/4 v2, 0x0

    .line 641
    .local v2, "ime":Lcom/nuance/swype/input/IME;
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mParentView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 642
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 643
    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 644
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    .line 648
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    :cond_0
    return-object v2
.end method

.method private switchToConnectingView()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 468
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v1, :cond_0

    .line 469
    sget-object v1, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "switchToConnectingView...getRecordingState().."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v4}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 470
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v1}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Stopped:Lcom/nuance/speech/Dictation$RecordingState;

    if-ne v1, v2, :cond_1

    .line 472
    sget-object v1, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "switchToConnectingView"

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 473
    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Connecting:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    invoke-virtual {p0, v1}, Lcom/nuance/speech/SpeechPopupView;->setPopupViewState(Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V

    .line 474
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->dottingLine:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 475
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->dottingLine:Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 476
    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Connecting:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    invoke-direct {p0, v1}, Lcom/nuance/speech/SpeechPopupView;->updateView(Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V

    .line 477
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 480
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/nuance/speech/SpeechPopupView$7;

    invoke-direct {v1, p0, v0}, Lcom/nuance/speech/SpeechPopupView$7;-><init>(Lcom/nuance/speech/SpeechPopupView;Landroid/os/Handler;)V

    .line 493
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 500
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v1}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Inprogress:Lcom/nuance/speech/Dictation$RecordingState;

    if-ne v1, v2, :cond_0

    .line 497
    invoke-direct {p0}, Lcom/nuance/speech/SpeechPopupView;->switchToListeningView()V

    goto :goto_0
.end method

.method private switchToListeningView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 513
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v1, :cond_0

    .line 515
    sget-object v1, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "switchToListeningView"

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 516
    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Listening:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    invoke-virtual {p0, v1}, Lcom/nuance/speech/SpeechPopupView;->setPopupViewState(Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V

    .line 517
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v1}, Lcom/nuance/speech/Dictation;->getSpeechResultsMode()Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-result-object v1

    sget-object v2, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->CONTINUOUS_STREAMING_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    if-ne v1, v2, :cond_1

    .line 518
    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Listening:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    invoke-direct {p0, v1}, Lcom/nuance/speech/SpeechPopupView;->updateView(Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->dottingLine:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 521
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->dottingLine:Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 522
    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Listening:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    invoke-direct {p0, v1}, Lcom/nuance/speech/SpeechPopupView;->updateView(Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V

    .line 523
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 526
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/nuance/speech/SpeechPopupView$8;

    invoke-direct {v1, p0, v0}, Lcom/nuance/speech/SpeechPopupView$8;-><init>(Lcom/nuance/speech/SpeechPopupView;Landroid/os/Handler;)V

    .line 538
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private switchToSpeechPausedView()V
    .locals 4

    .prologue
    .line 417
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v0, :cond_0

    .line 419
    sget-object v0, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "switchToSpeechPausedView"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 420
    sget-object v0, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Paused:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    invoke-virtual {p0, v0}, Lcom/nuance/speech/SpeechPopupView;->setPopupViewState(Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V

    .line 421
    sget-object v0, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Paused:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    invoke-direct {p0, v0}, Lcom/nuance/speech/SpeechPopupView;->updateView(Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V

    .line 423
    :cond_0
    return-void
.end method

.method private switchToSpeechProcessingView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 427
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v1, :cond_0

    .line 429
    sget-object v1, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "switchToSpeechProcessingView"

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 430
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v1}, Lcom/nuance/speech/Dictation;->getDictationState()Lcom/nuance/speech/Dictation$DictationState;

    move-result-object v1

    sget-object v2, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Inprogress:Lcom/nuance/speech/Dictation$DictationState;

    if-ne v1, v2, :cond_3

    .line 432
    sget-object v1, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "switchToSpeechProcessingView"

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 433
    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Processing:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    invoke-virtual {p0, v1}, Lcom/nuance/speech/SpeechPopupView;->setPopupViewState(Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V

    .line 434
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v1}, Lcom/nuance/speech/Dictation;->getSpeechResultsMode()Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-result-object v1

    sget-object v2, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->CONTINUOUS_STREAMING_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    if-ne v1, v2, :cond_1

    .line 435
    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Processing:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    invoke-direct {p0, v1}, Lcom/nuance/speech/SpeechPopupView;->updateView(Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->dottingLine:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    .line 438
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->dottingLine:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 440
    :cond_2
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->dottingLine:Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 441
    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Processing:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    invoke-direct {p0, v1}, Lcom/nuance/speech/SpeechPopupView;->updateView(Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V

    .line 442
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 445
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/nuance/speech/SpeechPopupView$6;

    invoke-direct {v1, p0, v0}, Lcom/nuance/speech/SpeechPopupView$6;-><init>(Lcom/nuance/speech/SpeechPopupView;Landroid/os/Handler;)V

    .line 458
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 461
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_3
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v1}, Lcom/nuance/speech/Dictation;->getDictationState()Lcom/nuance/speech/Dictation$DictationState;

    move-result-object v1

    sget-object v2, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Stopped:Lcom/nuance/speech/Dictation$DictationState;

    if-ne v1, v2, :cond_0

    .line 462
    invoke-direct {p0}, Lcom/nuance/speech/SpeechPopupView;->switchToSpeechPausedView()V

    goto :goto_0
.end method

.method private updateView(Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V
    .locals 8
    .param p1, "state"    # Lcom/nuance/speech/SpeechPopupView$PopupViewState;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/16 v7, 0x80

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 544
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mParentView:Lcom/nuance/swype/input/InputView;

    if-nez v1, :cond_0

    .line 607
    :goto_0
    return-void

    .line 547
    :cond_0
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mParentView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 548
    .local v0, "context":Landroid/content/Context;
    sget-object v4, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v2, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "updateView...state..."

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "mWakeLock is not null ? .."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 549
    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Listening:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 550
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 551
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 552
    sget-object v1, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v2, [Ljava/lang/Object;

    const-string/jumbo v5, "mWakeLock is released..."

    aput-object v5, v4, v3

    invoke-interface {v1, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 556
    :cond_1
    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Listening:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    if-ne p1, v1, :cond_7

    .line 557
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationLabelButton:Landroid/widget/Button;

    sget v4, Lcom/nuance/swype/input/R$string;->voice_pause:I

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 558
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v1}, Lcom/nuance/speech/Dictation;->getSpeechResultsMode()Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-result-object v1

    sget-object v4, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->CONTINUOUS_STREAMING_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    if-ne v1, v4, :cond_6

    .line 559
    :cond_2
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mProcessingLabelButton:Landroid/widget/Button;

    const-string/jumbo v4, " "

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 563
    :goto_2
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mSpeechSpectrumView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$drawable;->speech_ready:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 564
    invoke-direct {p0}, Lcom/nuance/speech/SpeechPopupView;->coverAreaAboveTheKeyboard()V

    .line 565
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_3

    .line 566
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 567
    sget-object v1, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "mWakeLock is acquired..."

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 602
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationLabelButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->invalidate()V

    .line 603
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mProcessingLabelButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isShown()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 604
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mProcessingLabelButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->invalidate()V

    .line 606
    :cond_4
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mSpeechSpectrumView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    goto/16 :goto_0

    :cond_5
    move v1, v3

    .line 548
    goto/16 :goto_1

    .line 561
    :cond_6
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mProcessingLabelButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/nuance/speech/SpeechPopupView;->dottingLine:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 569
    :cond_7
    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Processing:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    if-ne p1, v1, :cond_a

    .line 570
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationLabelButton:Landroid/widget/Button;

    sget v3, Lcom/nuance/swype/input/R$string;->voice_speak:I

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 571
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v1}, Lcom/nuance/speech/Dictation;->getSpeechResultsMode()Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-result-object v1

    sget-object v3, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->CONTINUOUS_STREAMING_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    if-ne v1, v3, :cond_9

    .line 572
    :cond_8
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mProcessingLabelButton:Landroid/widget/Button;

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 576
    :goto_4
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mSpeechSpectrumView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$drawable;->speech_paused:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 577
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mSpeechSpectrumView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 578
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 579
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 580
    invoke-direct {p0}, Lcom/nuance/speech/SpeechPopupView;->clearAreaAboveTheKeyboard()V

    goto :goto_3

    .line 574
    :cond_9
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mProcessingLabelButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->dottingLine:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 581
    :cond_a
    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Paused:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    if-ne p1, v1, :cond_b

    .line 582
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationLabelButton:Landroid/widget/Button;

    sget v3, Lcom/nuance/swype/input/R$string;->voice_speak:I

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 583
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mProcessingLabelButton:Landroid/widget/Button;

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 584
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mSpeechSpectrumView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$drawable;->speech_paused:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 585
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mSpeechSpectrumView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 586
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 587
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 588
    invoke-direct {p0}, Lcom/nuance/speech/SpeechPopupView;->clearAreaAboveTheKeyboard()V

    goto/16 :goto_3

    .line 589
    :cond_b
    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Ready:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    if-ne p1, v1, :cond_c

    .line 590
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationLabelButton:Landroid/widget/Button;

    sget v2, Lcom/nuance/swype/input/R$string;->voice_speak_now:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 591
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mProcessingLabelButton:Landroid/widget/Button;

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mSpeechSpectrumView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$drawable;->speech_ready:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 594
    :cond_c
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationLabelButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->dottingLine:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mProcessingLabelButton:Landroid/widget/Button;

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 596
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mSpeechSpectrumView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$drawable;->speech_connecting:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 597
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mSpeechSpectrumView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 598
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 599
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    goto/16 :goto_3
.end method


# virtual methods
.method cancelDictation()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->cancel()V

    .line 326
    :cond_0
    return-void
.end method

.method public clearMessages()V
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 719
    return-void
.end method

.method public dismiss()V
    .locals 4

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/nuance/speech/SpeechPopupView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 349
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 351
    sget-object v0, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "dismiss... mWakeLock is released and set to null..."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 355
    :cond_0
    return-void
.end method

.method getLanguageDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mParentView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSpeechConfig()Lcom/nuance/speech/SpeechConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    .line 234
    invoke-virtual {v1}, Lcom/nuance/speech/Dictation;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/speech/SpeechConfig;->getLanguageAbbrDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPopupViewState()Lcom/nuance/speech/SpeechPopupView$PopupViewState;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupViewState:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    return-object v0
.end method

.method public getPopupWindow()Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onBackToKeyboardButtonClick()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 238
    invoke-direct {p0}, Lcom/nuance/speech/SpeechPopupView;->clearAreaAboveTheKeyboard()V

    .line 239
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Inprogress:Lcom/nuance/speech/Dictation$RecordingState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    .line 242
    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getDictationState()Lcom/nuance/speech/Dictation$DictationState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Inprogress:Lcom/nuance/speech/Dictation$DictationState;

    if-ne v0, v1, :cond_1

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    sget-object v1, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Speech_Session_Ended:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/speech/Dictation;->dispatchDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    .line 250
    :cond_2
    return-void
.end method

.method onDictationViewClicked()V
    .locals 4

    .prologue
    .line 292
    sget-object v0, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onDictationViewClicked.."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 293
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupViewState:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Listening:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    if-ne v0, v1, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/nuance/speech/SpeechPopupView;->onTapToPauseButtonClicked()V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupViewState:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Processing:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    if-ne v0, v1, :cond_2

    .line 296
    invoke-virtual {p0}, Lcom/nuance/speech/SpeechPopupView;->onTapToSpeakButtonClicked()V

    goto :goto_0

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupViewState:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Paused:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    if-ne v0, v1, :cond_3

    .line 298
    invoke-virtual {p0}, Lcom/nuance/speech/SpeechPopupView;->onTapToSpeakButtonClicked()V

    goto :goto_0

    .line 299
    :cond_3
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupViewState:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Ready:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    if-ne v0, v1, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/nuance/speech/SpeechPopupView;->onTapToPauseButtonClicked()V

    goto :goto_0
.end method

.method public onGestureViewHoverEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 714
    invoke-virtual {p0, p1}, Lcom/nuance/speech/SpeechPopupView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 715
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 706
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Stopped:Lcom/nuance/speech/Dictation$RecordingState;

    if-eq v0, v1, :cond_0

    .line 707
    invoke-virtual {p0}, Lcom/nuance/speech/SpeechPopupView;->onTapToPauseButtonClicked()V

    .line 709
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method onTapToPauseButtonClicked()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 282
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Inprogress:Lcom/nuance/speech/Dictation$RecordingState;

    if-ne v0, v1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 286
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 289
    :cond_0
    return-void
.end method

.method onTapToSpeakButtonClicked()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 253
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v0, :cond_0

    .line 254
    sget-object v0, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onTapToSpeakButtonClicked..mPopupViewState: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupViewState:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    invoke-virtual {v3}, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupViewState:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Processing:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    if-ne v0, v1, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/nuance/speech/SpeechPopupView;->postDelaySwitchingViewsMsg()V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    sget-object v0, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onTapToSpeakButtonClicked..mDictation.getDictationState(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v3}, Lcom/nuance/speech/Dictation;->getDictationState()Lcom/nuance/speech/Dictation$DictationState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/speech/Dictation$DictationState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getDictationState()Lcom/nuance/speech/Dictation$DictationState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Inprogress:Lcom/nuance/speech/Dictation$DictationState;

    if-ne v0, v1, :cond_2

    .line 265
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 267
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupViewState:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Processing:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    if-ne v0, v1, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/nuance/speech/SpeechPopupView;->postDelaySwitchingViewsMsg()V

    goto :goto_0

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mParentView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 275
    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->restartDictation()V

    goto :goto_0
.end method

.method public postDelaySwitchingViewsMsg()V
    .locals 4

    .prologue
    const/4 v1, 0x5

    .line 403
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 404
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 405
    return-void
.end method

.method public postSwitchSpeechPausedViewMsg()V
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 393
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 394
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 395
    return-void
.end method

.method public postSwitchSpeechProcessingViewMsg()V
    .locals 4

    .prologue
    const/4 v1, 0x4

    .line 398
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 399
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 400
    return-void
.end method

.method public refreshLanguageLabel()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mChooseLanguageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/nuance/speech/SpeechPopupView;->getLanguageDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 365
    :cond_0
    return-void
.end method

.method public setDictationEngine(Lcom/nuance/speech/Dictation;)V
    .locals 0
    .param p1, "dictation"    # Lcom/nuance/speech/Dictation;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    .line 359
    return-void
.end method

.method public setFrame(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 377
    sget-object v1, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setFrame...index.."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 378
    if-ltz p1, :cond_0

    const/4 v1, 0x6

    if-lt p1, v1, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/speech/SpeechPopupView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/nuance/speech/SpeechPopupView;->getPopupViewState()Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    move-result-object v1

    sget-object v2, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Listening:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    if-ne v1, v2, :cond_0

    .line 387
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mParentView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 388
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mSpeechSpectrumView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/nuance/speech/SpeechPopupView;->SPECTRUM_FRAMES_RESIDS:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mSpeechSpectrumView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0
.end method

.method public setParentView(Lcom/nuance/swype/input/InputView;)V
    .locals 0
    .param p1, "parentView"    # Lcom/nuance/swype/input/InputView;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/nuance/speech/SpeechPopupView;->mParentView:Lcom/nuance/swype/input/InputView;

    .line 99
    return-void
.end method

.method public setPopupViewState(Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V
    .locals 0
    .param p1, "state"    # Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    .prologue
    .line 693
    iput-object p1, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupViewState:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    .line 694
    return-void
.end method

.method public show(IIIII)Z
    .locals 6
    .param p1, "gravity"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 330
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mParentView:Lcom/nuance/swype/input/InputView;

    if-eqz v3, :cond_0

    .line 331
    iput p1, p0, Lcom/nuance/speech/SpeechPopupView;->mGravity:I

    .line 332
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mParentView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 333
    .local v0, "pm":Landroid/os/PowerManager;
    const v3, 0x3000001a

    const-string/jumbo v4, "DRAGON_SPEECH_LOCK"

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 335
    sget-object v3, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v5, "show...mWakeLock created..."

    aput-object v5, v4, v2

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 336
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/nuance/speech/SpeechPopupView;->createViews(IIII)V

    .line 339
    .end local v0    # "pm":Landroid/os/PowerManager;
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method showDictationLanguages()V
    .locals 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    sget-object v1, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Speech_Language_Change:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/speech/Dictation;->dispatchDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    .line 307
    :cond_0
    return-void
.end method

.method public startSpeech()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationLabelButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 411
    invoke-direct {p0}, Lcom/nuance/speech/SpeechPopupView;->switchToListeningView()V

    .line 413
    :cond_0
    return-void
.end method

.method stopRecording()V
    .locals 2

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/nuance/speech/SpeechPopupView;->clearSpectrum()V

    .line 314
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    .line 315
    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Inprogress:Lcom/nuance/speech/Dictation$RecordingState;

    if-ne v0, v1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->stopRecording()V

    .line 320
    :goto_0
    return-void

    .line 318
    :cond_0
    sget-object v0, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v1, "stopRecording() already stopped"

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public switchToReadyForSpeechView()V
    .locals 4

    .prologue
    .line 502
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Stopped:Lcom/nuance/speech/Dictation$RecordingState;

    if-ne v0, v1, :cond_0

    .line 505
    sget-object v0, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "switchToReadyForSpeechView"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 506
    sget-object v0, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Ready:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    invoke-virtual {p0, v0}, Lcom/nuance/speech/SpeechPopupView;->setPopupViewState(Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V

    .line 507
    sget-object v0, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Ready:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    invoke-direct {p0, v0}, Lcom/nuance/speech/SpeechPopupView;->updateView(Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V

    .line 510
    :cond_0
    return-void
.end method
