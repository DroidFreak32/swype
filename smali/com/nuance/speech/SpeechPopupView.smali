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
    .line 57
    const-string v0, "SpeechPopup"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 90
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
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-object v0, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Connecting:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    iput-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupViewState:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mParentView:Lcom/nuance/swype/input/InputView;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->dottingLine:Ljava/lang/StringBuilder;

    .line 652
    new-instance v0, Lcom/nuance/speech/SpeechPopupView$9;

    invoke-direct {v0, p0}, Lcom/nuance/speech/SpeechPopupView$9;-><init>(Lcom/nuance/speech/SpeechPopupView;)V

    iput-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->handlerCallback:Landroid/os/Handler$Callback;

    .line 682
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/speech/SpeechPopupView;)Lcom/nuance/speech/Dictation;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/speech/SpeechPopupView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/speech/SpeechPopupView;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/speech/SpeechPopupView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->dottingLine:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/speech/SpeechPopupView;Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/speech/SpeechPopupView;
    .param p1, "x1"    # Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/nuance/speech/SpeechPopupView;->updateView(Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/speech/SpeechPopupView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/speech/SpeechPopupView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/nuance/speech/SpeechPopupView;->switchToSpeechProcessingView()V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/speech/SpeechPopupView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/speech/SpeechPopupView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/nuance/speech/SpeechPopupView;->switchToSpeechPausedView()V

    return-void
.end method

.method private clearAreaAboveTheKeyboard()V
    .locals 4

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/nuance/speech/SpeechPopupView;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v1

    .line 608
    .local v1, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 609
    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 610
    .local v0, "currentView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getScrubGesturView()Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;

    move-result-object v2

    .line 612
    .local v2, "scrubGestureView":Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;
    if-eqz v2, :cond_0

    .line 613
    invoke-virtual {v2}, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->removeAllGestureViewListener()V

    .line 614
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->useForVoiceUI(Z)V

    .line 615
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->cleanupScrubGesture()V

    .line 619
    .end local v0    # "currentView":Lcom/nuance/swype/input/InputView;
    .end local v2    # "scrubGestureView":Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;
    :cond_0
    return-void
.end method

.method private clearSpectrum()V
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/speech/SpeechPopupView;->setFrame(I)V

    .line 367
    return-void
.end method

.method private coverAreaAboveTheKeyboard()V
    .locals 4

    .prologue
    .line 622
    invoke-direct {p0}, Lcom/nuance/speech/SpeechPopupView;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v1

    .line 623
    .local v1, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 624
    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 625
    .local v0, "currentView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getScrubGesturView()Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;

    move-result-object v2

    .line 627
    .local v2, "scrubGestureView":Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;
    if-eqz v2, :cond_0

    .line 628
    invoke-virtual {v2, p0}, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->addGestureViewListener(Lcom/nuance/swype/input/accessibility/IGestureViewListener;)V

    .line 629
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->useForVoiceUI(Z)V

    .line 630
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->showScrubGestureView()V

    .line 634
    .end local v0    # "currentView":Lcom/nuance/swype/input/InputView;
    .end local v2    # "scrubGestureView":Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;
    :cond_0
    return-void
.end method

.method private createViews(IIII)V
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 101
    sget-object v3, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "createViews...width.."

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "..height.."

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    iput p1, p0, Lcom/nuance/speech/SpeechPopupView;->mX:I

    .line 104
    iput p2, p0, Lcom/nuance/speech/SpeechPopupView;->mY:I

    .line 105
    iput p3, p0, Lcom/nuance/speech/SpeechPopupView;->mWidth:I

    .line 106
    iput p4, p0, Lcom/nuance/speech/SpeechPopupView;->mHeight:I

    .line 108
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mParentView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 109
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 110
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/nuance/swype/input/R$layout;->speech_recording:I

    invoke-virtual {v2, v3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationView:Landroid/view/View;

    .line 111
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setClickable(Z)V

    .line 112
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationView:Landroid/view/View;

    new-instance v4, Lcom/nuance/speech/SpeechPopupView$1;

    invoke-direct {v4, p0}, Lcom/nuance/speech/SpeechPopupView$1;-><init>(Lcom/nuance/speech/SpeechPopupView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationView:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->spectrum_recording:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mSpeechSpectrumView:Landroid/widget/ImageView;

    .line 118
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationView:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->back_to_keyboard:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mKeyboardButton:Landroid/widget/ImageButton;

    .line 119
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mKeyboardButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/nuance/speech/SpeechPopupView$2;

    invoke-direct {v4, p0}, Lcom/nuance/speech/SpeechPopupView$2;-><init>(Lcom/nuance/speech/SpeechPopupView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationView:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->recording_label:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationLabelButton:Landroid/widget/Button;

    .line 127
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationLabelButton:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setClickable(Z)V

    .line 129
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationLabelButton:Landroid/widget/Button;

    new-instance v4, Lcom/nuance/speech/SpeechPopupView$3;

    invoke-direct {v4, p0}, Lcom/nuance/speech/SpeechPopupView$3;-><init>(Lcom/nuance/speech/SpeechPopupView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationView:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->processing_label:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mProcessingLabelButton:Landroid/widget/Button;

    .line 143
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mProcessingLabelButton:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setClickable(Z)V

    .line 146
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationView:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->choose_language:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mChooseLanguageButton:Landroid/widget/Button;

    .line 147
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mChooseLanguageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/nuance/speech/SpeechPopupView;->getLanguageDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mChooseLanguageButton:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setClickable(Z)V

    .line 150
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mChooseLanguageButton:Landroid/widget/Button;

    new-instance v4, Lcom/nuance/speech/SpeechPopupView$4;

    invoke-direct {v4, p0}, Lcom/nuance/speech/SpeechPopupView$4;-><init>(Lcom/nuance/speech/SpeechPopupView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_0

    .line 159
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 160
    iput-object v10, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 162
    :cond_0
    new-instance v3, Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationView:Landroid/view/View;

    iget v5, p0, Lcom/nuance/speech/SpeechPopupView;->mWidth:I

    iget v6, p0, Lcom/nuance/speech/SpeechPopupView;->mHeight:I

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 163
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/nuance/speech/SpeechPopupView;->mX:I

    iget v5, p0, Lcom/nuance/speech/SpeechPopupView;->mY:I

    iget v6, p0, Lcom/nuance/speech/SpeechPopupView;->mWidth:I

    iget v7, p0, Lcom/nuance/speech/SpeechPopupView;->mHeight:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 165
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mParentView:Lcom/nuance/swype/input/InputView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mParentView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 166
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/nuance/speech/SpeechPopupView;->mParentView:Lcom/nuance/swype/input/InputView;

    iget v5, p0, Lcom/nuance/speech/SpeechPopupView;->mGravity:I

    iget v6, p0, Lcom/nuance/speech/SpeechPopupView;->mX:I

    iget v7, p0, Lcom/nuance/speech/SpeechPopupView;->mY:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 167
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v4, Lcom/nuance/speech/SpeechPopupView$PopupDismissListener;

    invoke-direct {v4, v0}, Lcom/nuance/speech/SpeechPopupView$PopupDismissListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 170
    :cond_1
    invoke-direct {p0}, Lcom/nuance/speech/SpeechPopupView;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v1

    .line 171
    .local v1, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationView:Landroid/view/View;

    new-instance v4, Lcom/nuance/speech/SpeechPopupView$5;

    invoke-direct {v4, p0}, Lcom/nuance/speech/SpeechPopupView$5;-><init>(Lcom/nuance/speech/SpeechPopupView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 179
    :cond_2
    invoke-direct {p0}, Lcom/nuance/speech/SpeechPopupView;->switchToConnectingView()V

    .line 180
    return-void
.end method

.method private getIME()Lcom/nuance/swype/input/IME;
    .locals 4

    .prologue
    .line 637
    const/4 v2, 0x0

    .line 638
    .local v2, "ime":Lcom/nuance/swype/input/IME;
    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mParentView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 639
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 640
    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 641
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    .line 645
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    :cond_0
    return-object v2
.end method

.method private switchToConnectingView()V
    .locals 4

    .prologue
    .line 466
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v1, :cond_0

    .line 467
    sget-object v1, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "switchToConnectingView...getRecordingState().."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v3}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 468
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v1}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Stopped:Lcom/nuance/speech/Dictation$RecordingState;

    if-ne v1, v2, :cond_1

    .line 470
    sget-object v1, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "switchToConnectingView"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 471
    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Connecting:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    invoke-virtual {p0, v1}, Lcom/nuance/speech/SpeechPopupView;->setPopupViewState(Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V

    .line 472
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->dottingLine:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 473
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->dottingLine:Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 474
    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Connecting:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    invoke-direct {p0, v1}, Lcom/nuance/speech/SpeechPopupView;->updateView(Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V

    .line 475
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 478
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/nuance/speech/SpeechPopupView$7;

    invoke-direct {v1, p0, v0}, Lcom/nuance/speech/SpeechPopupView$7;-><init>(Lcom/nuance/speech/SpeechPopupView;Landroid/os/Handler;)V

    .line 491
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 498
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v1}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Inprogress:Lcom/nuance/speech/Dictation$RecordingState;

    if-ne v1, v2, :cond_0

    .line 495
    invoke-direct {p0}, Lcom/nuance/speech/SpeechPopupView;->switchToListeningView()V

    goto :goto_0
.end method

.method private switchToListeningView()V
    .locals 3

    .prologue
    .line 511
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v1, :cond_0

    .line 513
    sget-object v1, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "switchToListeningView"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 514
    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Listening:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    invoke-virtual {p0, v1}, Lcom/nuance/speech/SpeechPopupView;->setPopupViewState(Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V

    .line 515
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v1}, Lcom/nuance/speech/Dictation;->getSpeechResultsMode()Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-result-object v1

    sget-object v2, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->CONTINUOUS_STREAMING_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    if-ne v1, v2, :cond_1

    .line 516
    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Listening:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    invoke-direct {p0, v1}, Lcom/nuance/speech/SpeechPopupView;->updateView(Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->dottingLine:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 519
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->dottingLine:Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 520
    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Listening:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    invoke-direct {p0, v1}, Lcom/nuance/speech/SpeechPopupView;->updateView(Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V

    .line 521
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 524
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/nuance/speech/SpeechPopupView$8;

    invoke-direct {v1, p0, v0}, Lcom/nuance/speech/SpeechPopupView$8;-><init>(Lcom/nuance/speech/SpeechPopupView;Landroid/os/Handler;)V

    .line 536
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private switchToSpeechPausedView()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v0, :cond_0

    .line 417
    sget-object v0, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "switchToSpeechPausedView"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 418
    sget-object v0, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Paused:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    invoke-virtual {p0, v0}, Lcom/nuance/speech/SpeechPopupView;->setPopupViewState(Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V

    .line 419
    sget-object v0, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Paused:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    invoke-direct {p0, v0}, Lcom/nuance/speech/SpeechPopupView;->updateView(Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V

    .line 421
    :cond_0
    return-void
.end method

.method private switchToSpeechProcessingView()V
    .locals 3

    .prologue
    .line 425
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v1, :cond_0

    .line 427
    sget-object v1, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "switchToSpeechProcessingView"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 428
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v1}, Lcom/nuance/speech/Dictation;->getDictationState()Lcom/nuance/speech/Dictation$DictationState;

    move-result-object v1

    sget-object v2, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Inprogress:Lcom/nuance/speech/Dictation$DictationState;

    if-ne v1, v2, :cond_3

    .line 430
    sget-object v1, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "switchToSpeechProcessingView"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 431
    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Processing:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    invoke-virtual {p0, v1}, Lcom/nuance/speech/SpeechPopupView;->setPopupViewState(Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V

    .line 432
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v1}, Lcom/nuance/speech/Dictation;->getSpeechResultsMode()Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-result-object v1

    sget-object v2, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->CONTINUOUS_STREAMING_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    if-ne v1, v2, :cond_1

    .line 433
    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Processing:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    invoke-direct {p0, v1}, Lcom/nuance/speech/SpeechPopupView;->updateView(Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->dottingLine:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    .line 436
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->dottingLine:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 438
    :cond_2
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->dottingLine:Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 439
    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Processing:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    invoke-direct {p0, v1}, Lcom/nuance/speech/SpeechPopupView;->updateView(Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V

    .line 440
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 443
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/nuance/speech/SpeechPopupView$6;

    invoke-direct {v1, p0, v0}, Lcom/nuance/speech/SpeechPopupView$6;-><init>(Lcom/nuance/speech/SpeechPopupView;Landroid/os/Handler;)V

    .line 456
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 459
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_3
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v1}, Lcom/nuance/speech/Dictation;->getDictationState()Lcom/nuance/speech/Dictation$DictationState;

    move-result-object v1

    sget-object v2, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Stopped:Lcom/nuance/speech/Dictation$DictationState;

    if-ne v1, v2, :cond_0

    .line 460
    invoke-direct {p0}, Lcom/nuance/speech/SpeechPopupView;->switchToSpeechPausedView()V

    goto :goto_0
.end method

.method private updateView(Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V
    .locals 6
    .param p1, "state"    # Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    .prologue
    const/16 v5, 0x80

    const/4 v2, 0x1

    .line 541
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mParentView:Lcom/nuance/swype/input/InputView;

    if-nez v1, :cond_0

    .line 604
    :goto_0
    return-void

    .line 544
    :cond_0
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mParentView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 545
    .local v0, "context":Landroid/content/Context;
    sget-object v3, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "updateView...state..."

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "mWakeLock is not null ? .."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 546
    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Listening:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 547
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 549
    sget-object v1, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "mWakeLock is released..."

    invoke-virtual {v1, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 553
    :cond_1
    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Listening:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    if-ne p1, v1, :cond_7

    .line 554
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationLabelButton:Landroid/widget/Button;

    sget v2, Lcom/nuance/swype/input/R$string;->voice_pause:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 555
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v1}, Lcom/nuance/speech/Dictation;->getSpeechResultsMode()Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-result-object v1

    sget-object v2, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->CONTINUOUS_STREAMING_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    if-ne v1, v2, :cond_6

    .line 556
    :cond_2
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mProcessingLabelButton:Landroid/widget/Button;

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 560
    :goto_2
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mSpeechSpectrumView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$drawable;->speech_ready:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 561
    invoke-direct {p0}, Lcom/nuance/speech/SpeechPopupView;->coverAreaAboveTheKeyboard()V

    .line 562
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_3

    .line 563
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 564
    sget-object v1, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "mWakeLock is acquired..."

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 599
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationLabelButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->invalidate()V

    .line 600
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mProcessingLabelButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isShown()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 601
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mProcessingLabelButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->invalidate()V

    .line 603
    :cond_4
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mSpeechSpectrumView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    goto/16 :goto_0

    .line 545
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 558
    :cond_6
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mProcessingLabelButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/nuance/speech/SpeechPopupView;->dottingLine:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 566
    :cond_7
    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Processing:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    if-ne p1, v1, :cond_a

    .line 567
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationLabelButton:Landroid/widget/Button;

    sget v3, Lcom/nuance/swype/input/R$string;->voice_speak:I

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 568
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v1}, Lcom/nuance/speech/Dictation;->getSpeechResultsMode()Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-result-object v1

    sget-object v3, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->CONTINUOUS_STREAMING_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    if-ne v1, v3, :cond_9

    .line 569
    :cond_8
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mProcessingLabelButton:Landroid/widget/Button;

    const-string v3, " "

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 573
    :goto_4
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mSpeechSpectrumView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$drawable;->speech_paused:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 574
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mSpeechSpectrumView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 575
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 576
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 577
    invoke-direct {p0}, Lcom/nuance/speech/SpeechPopupView;->clearAreaAboveTheKeyboard()V

    goto :goto_3

    .line 571
    :cond_9
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mProcessingLabelButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->dottingLine:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 578
    :cond_a
    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Paused:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    if-ne p1, v1, :cond_b

    .line 579
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationLabelButton:Landroid/widget/Button;

    sget v3, Lcom/nuance/swype/input/R$string;->voice_speak:I

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 580
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mProcessingLabelButton:Landroid/widget/Button;

    const-string v3, " "

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 581
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mSpeechSpectrumView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$drawable;->speech_paused:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 582
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mSpeechSpectrumView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 583
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 584
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 585
    invoke-direct {p0}, Lcom/nuance/speech/SpeechPopupView;->clearAreaAboveTheKeyboard()V

    goto/16 :goto_3

    .line 586
    :cond_b
    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Ready:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    if-ne p1, v1, :cond_c

    .line 587
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationLabelButton:Landroid/widget/Button;

    sget v2, Lcom/nuance/swype/input/R$string;->voice_speak_now:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 588
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mProcessingLabelButton:Landroid/widget/Button;

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mSpeechSpectrumView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$drawable;->speech_ready:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 591
    :cond_c
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationLabelButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/nuance/speech/SpeechPopupView;->dottingLine:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mProcessingLabelButton:Landroid/widget/Button;

    const-string v3, " "

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 593
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mSpeechSpectrumView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$drawable;->speech_connecting:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 594
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mSpeechSpectrumView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 595
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 596
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    goto/16 :goto_3
.end method


# virtual methods
.method cancelDictation()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->cancel()V

    .line 324
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/nuance/speech/SpeechPopupView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 347
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 349
    sget-object v0, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "dismiss... mWakeLock is released and set to null..."

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 353
    :cond_0
    return-void
.end method

.method getLanguageDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mParentView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSpeechConfig()Lcom/nuance/speech/SpeechConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v1}, Lcom/nuance/speech/Dictation;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/speech/SpeechConfig;->getLanguageAbbrDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPopupViewState()Lcom/nuance/speech/SpeechPopupView$PopupViewState;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupViewState:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    return-object v0
.end method

.method public getPopupWindow()Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 341
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

    .line 235
    invoke-direct {p0}, Lcom/nuance/speech/SpeechPopupView;->clearAreaAboveTheKeyboard()V

    .line 236
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Inprogress:Lcom/nuance/speech/Dictation$RecordingState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getDictationState()Lcom/nuance/speech/Dictation$DictationState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Inprogress:Lcom/nuance/speech/Dictation$DictationState;

    if-ne v0, v1, :cond_1

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    sget-object v1, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Speech_Session_Ended:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/speech/Dictation;->dispatchDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    .line 247
    :cond_2
    return-void
.end method

.method onDictationViewClicked()V
    .locals 2

    .prologue
    .line 290
    sget-object v0, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "onDictationViewClicked.."

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 291
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupViewState:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Listening:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    if-ne v0, v1, :cond_1

    .line 292
    invoke-virtual {p0}, Lcom/nuance/speech/SpeechPopupView;->onTapToPauseButtonClicked()V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupViewState:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Processing:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    if-ne v0, v1, :cond_2

    .line 294
    invoke-virtual {p0}, Lcom/nuance/speech/SpeechPopupView;->onTapToSpeakButtonClicked()V

    goto :goto_0

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupViewState:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Paused:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    if-ne v0, v1, :cond_3

    .line 296
    invoke-virtual {p0}, Lcom/nuance/speech/SpeechPopupView;->onTapToSpeakButtonClicked()V

    goto :goto_0

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupViewState:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Ready:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    if-ne v0, v1, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/nuance/speech/SpeechPopupView;->onTapToPauseButtonClicked()V

    goto :goto_0
.end method

.method public onGestureViewHoverEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 711
    invoke-virtual {p0, p1}, Lcom/nuance/speech/SpeechPopupView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 712
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Stopped:Lcom/nuance/speech/Dictation$RecordingState;

    if-eq v0, v1, :cond_0

    .line 704
    invoke-virtual {p0}, Lcom/nuance/speech/SpeechPopupView;->onTapToPauseButtonClicked()V

    .line 706
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method onTapToPauseButtonClicked()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 279
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Inprogress:Lcom/nuance/speech/Dictation$RecordingState;

    if-ne v0, v1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 283
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 287
    :cond_0
    return-void
.end method

.method onTapToSpeakButtonClicked()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 250
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v0, :cond_0

    .line 251
    sget-object v0, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTapToSpeakButtonClicked..mPopupViewState: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupViewState:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    invoke-virtual {v2}, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 253
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupViewState:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Processing:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    if-ne v0, v1, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/nuance/speech/SpeechPopupView;->postDelaySwitchingViewsMsg()V

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    sget-object v0, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTapToSpeakButtonClicked..mDictation.getDictationState(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v2}, Lcom/nuance/speech/Dictation;->getDictationState()Lcom/nuance/speech/Dictation$DictationState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/speech/Dictation$DictationState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 260
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getDictationState()Lcom/nuance/speech/Dictation$DictationState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$DictationState;->Dictation_Inprogress:Lcom/nuance/speech/Dictation$DictationState;

    if-ne v0, v1, :cond_2

    .line 262
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 264
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupViewState:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Processing:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    if-ne v0, v1, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/nuance/speech/SpeechPopupView;->postDelaySwitchingViewsMsg()V

    goto :goto_0

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mParentView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 272
    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->restartDictation()V

    goto :goto_0
.end method

.method public postDelaySwitchingViewsMsg()V
    .locals 4

    .prologue
    const/4 v1, 0x5

    .line 401
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 402
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 403
    return-void
.end method

.method public postSwitchSpeechPausedViewMsg()V
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 391
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 392
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 393
    return-void
.end method

.method public postSwitchSpeechProcessingViewMsg()V
    .locals 4

    .prologue
    const/4 v1, 0x4

    .line 396
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 397
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 398
    return-void
.end method

.method public refreshLanguageLabel()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mChooseLanguageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/nuance/speech/SpeechPopupView;->getLanguageDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 363
    :cond_0
    return-void
.end method

.method public setDictationEngine(Lcom/nuance/speech/Dictation;)V
    .locals 0
    .param p1, "dictation"    # Lcom/nuance/speech/Dictation;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    .line 357
    return-void
.end method

.method public setFrame(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 375
    sget-object v1, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setFrame...index.."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 376
    if-ltz p1, :cond_0

    const/4 v1, 0x6

    if-lt p1, v1, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/speech/SpeechPopupView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/nuance/speech/SpeechPopupView;->getPopupViewState()Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    move-result-object v1

    sget-object v2, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Listening:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    if-ne v1, v2, :cond_0

    .line 385
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mParentView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 386
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mSpeechSpectrumView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/nuance/speech/SpeechPopupView;->SPECTRUM_FRAMES_RESIDS:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 387
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mSpeechSpectrumView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0
.end method

.method public setParentView(Lcom/nuance/swype/input/InputView;)V
    .locals 0
    .param p1, "parentView"    # Lcom/nuance/swype/input/InputView;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/nuance/speech/SpeechPopupView;->mParentView:Lcom/nuance/swype/input/InputView;

    .line 97
    return-void
.end method

.method public setPopupViewState(Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V
    .locals 0
    .param p1, "state"    # Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    .prologue
    .line 690
    iput-object p1, p0, Lcom/nuance/speech/SpeechPopupView;->mPopupViewState:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    .line 691
    return-void
.end method

.method public show(IIIII)Z
    .locals 3
    .param p1, "gravity"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 328
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mParentView:Lcom/nuance/swype/input/InputView;

    if-eqz v1, :cond_0

    .line 329
    iput p1, p0, Lcom/nuance/speech/SpeechPopupView;->mGravity:I

    .line 330
    iget-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mParentView:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 331
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "DRAGON_SPEECH_LOCK"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/speech/SpeechPopupView;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 333
    sget-object v1, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "show...mWakeLock created..."

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 334
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/nuance/speech/SpeechPopupView;->createViews(IIII)V

    .line 335
    const/4 v1, 0x1

    .line 337
    .end local v0    # "pm":Landroid/os/PowerManager;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method showDictationLanguages()V
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    sget-object v1, Lcom/nuance/speech/DictationEventListener$DictationEvent;->Speech_Language_Change:Lcom/nuance/speech/DictationEventListener$DictationEvent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/speech/Dictation;->dispatchDictationEvent(Lcom/nuance/speech/DictationEventListener$DictationEvent;Ljava/lang/Object;)V

    .line 305
    :cond_0
    return-void
.end method

.method public startSpeech()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictationLabelButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 409
    invoke-direct {p0}, Lcom/nuance/speech/SpeechPopupView;->switchToListeningView()V

    .line 411
    :cond_0
    return-void
.end method

.method stopRecording()V
    .locals 2

    .prologue
    .line 309
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/speech/SpeechPopupView;->setFrame(I)V

    .line 312
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Inprogress:Lcom/nuance/speech/Dictation$RecordingState;

    if-ne v0, v1, :cond_0

    .line 314
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->stopRecording()V

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    sget-object v0, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "stopRecording() already stopped"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public switchToReadyForSpeechView()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView;->mDictation:Lcom/nuance/speech/Dictation;

    invoke-virtual {v0}, Lcom/nuance/speech/Dictation;->getRecordingState()Lcom/nuance/speech/Dictation$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/nuance/speech/Dictation$RecordingState;->Recording_Stopped:Lcom/nuance/speech/Dictation$RecordingState;

    if-ne v0, v1, :cond_0

    .line 503
    sget-object v0, Lcom/nuance/speech/SpeechPopupView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "switchToReadyForSpeechView"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 504
    sget-object v0, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Ready:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    invoke-virtual {p0, v0}, Lcom/nuance/speech/SpeechPopupView;->setPopupViewState(Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V

    .line 505
    sget-object v0, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Ready:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    invoke-direct {p0, v0}, Lcom/nuance/speech/SpeechPopupView;->updateView(Lcom/nuance/speech/SpeechPopupView$PopupViewState;)V

    .line 508
    :cond_0
    return-void
.end method
