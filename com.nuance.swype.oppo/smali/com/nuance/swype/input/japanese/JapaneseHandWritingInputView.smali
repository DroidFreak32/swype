.class public Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;
.super Lcom/nuance/swype/input/InputView;
.source "JapaneseHandWritingInputView.java"

# interfaces
.implements Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;
.implements Lcom/nuance/swype/input/HandWritingView$OnWritingAction;
.implements Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;


# static fields
.field public static final HWR_123_MODE:I = 0x1

.field public static final HWR_ABC_MODE:I = 0x2

.field public static final HWR_JP_MODE:I = 0x0

.field static final MSG_DELAY_RECOGNIZER:I = 0x1

.field private static final MSG_HANDLE_CHAR:I = 0x3

.field private static final MSG_HANDLE_SUGGESTION_CANDIDATES:I = 0x2

.field private static final MSG_HANDLE_TEXT:I = 0x4

.field static final MSG_SHOW_HOW_TO_TOAST:I = 0x1f9


# instance fields
.field JpHwrInputViewCallback:Landroid/os/Handler$Callback;

.field JpHwrInputViewHandler:Landroid/os/Handler;

.field private candidatesPopup:Landroid/view/View;

.field delayRecognizerHandlerCallback:Landroid/os/Handler$Callback;

.field private gridViewFunctionButtonPressed:Z

.field private mCachedPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field protected mComposition:Lcom/nuance/swype/input/Composition;

.field private mContextWindowShowing:Z

.field private mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

.field mDelayRecognizeHandler:Landroid/os/Handler;

.field private mHandWritingMode:I

.field protected mHandwritingAreaId:I

.field protected mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

.field private mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

.field mPopupViewHandler:Landroid/os/Handler;

.field private mRecognitionCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field protected mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mShownCandidateList:Z

.field public mStringHandWriting123Mode:Ljava/lang/String;

.field public mStringHandWritingABCMode:Ljava/lang/String;

.field public mStringHandWritingJpMode:Ljava/lang/String;

.field protected mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

.field protected mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

.field private mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

.field popupViewHandlerCallback:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    iput v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandwritingAreaId:I

    .line 83
    iput v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRows:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    .line 97
    iput-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mContextWindowShowing:Z

    .line 885
    new-instance v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;-><init>(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->JpHwrInputViewCallback:Landroid/os/Handler$Callback;

    .line 962
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->JpHwrInputViewCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->JpHwrInputViewHandler:Landroid/os/Handler;

    .line 967
    new-instance v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$2;-><init>(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->delayRecognizerHandlerCallback:Landroid/os/Handler$Callback;

    .line 984
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->delayRecognizerHandlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    .line 1083
    new-instance v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$3;-><init>(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->popupViewHandlerCallback:Landroid/os/Handler$Callback;

    .line 1115
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->popupViewHandlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    .line 112
    new-instance v0, Lcom/nuance/swype/input/Composition;

    invoke-direct {v0}, Lcom/nuance/swype/input/Composition;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    .line 113
    return-void
.end method

.method private acceptCurrentDefaultWord()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 642
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 643
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->flushCurrentActiveWord()V

    .line 644
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v2, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->noteSelectedCandidate(I)Z

    .line 662
    :goto_0
    return v0

    .line 648
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    if-eqz v2, :cond_1

    .line 649
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v2}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 650
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v2}, Lcom/nuance/swype/input/Composition;->acceptCurrentInline()V

    .line 651
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v2, v3, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 652
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 654
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v2, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->noteSelectedCandidate(I)Z

    .line 657
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->endArcsAddingSequence()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 662
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;C)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;
    .param p1, "x1"    # C

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->handleChar(C)V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->handleText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->resumeSpeech()V

    return-void
.end method

.method static synthetic access$1100(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->hideGridCandidatesView()V

    return-void
.end method

.method static synthetic access$1400(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->gridViewFunctionButtonPressed:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->gridViewFunctionButtonPressed:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)Lcom/nuance/swype/input/chinese/CJKCandidatesListView;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->clearArcs()V

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->performDelayRecognition()V

    return-void
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->showHowToUseToast()V

    return-void
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->setSpeechViewHost()V

    return-void
.end method

.method private cancelCurrentDefaultWord()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 624
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 626
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Composition;->clearCurrentInline()V

    .line 627
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 628
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 630
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->noteSelectedCandidate(I)Z

    .line 633
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->endArcsAddingSequence()V

    .line 635
    const/4 v0, 0x1

    .line 638
    :cond_0
    return v0
.end method

.method private clearArcs()V
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->clearArcs()V

    .line 842
    :cond_0
    return-void
.end method

.method private endArcsAddingSequence()V
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->invalidate()V

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    if-eqz v0, :cond_1

    .line 740
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->endArcsAddingSequence()V

    .line 743
    :cond_1
    return-void
.end method

.method private handleAutoPunct()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1054
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 1055
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_0

    .line 1064
    :goto_0
    return-void

    .line 1059
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1061
    const-string v0, "\u3002"

    .line 1063
    .local v0, "autopunct":Ljava/lang/CharSequence;
    invoke-interface {v1, v0, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0
.end method

.method private handleBackspace()Z
    .locals 2

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->cancelCurrentDefaultWord()Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->sendBackspace(I)V

    .line 575
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 577
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    .line 579
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private handleChar(C)V
    .locals 2
    .param p1, "ch"    # C

    .prologue
    const/4 v1, 0x0

    .line 845
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 846
    const/16 p1, 0xa

    .line 851
    :cond_0
    :goto_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 852
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->handleBackspace()Z

    .line 859
    :goto_1
    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 860
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    .line 861
    return-void

    .line 847
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 848
    const/16 p1, 0x20

    goto :goto_0

    .line 853
    :cond_2
    const/16 v0, 0x20

    if-ne p1, v0, :cond_3

    .line 854
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->handleSpace()V

    goto :goto_1

    .line 856
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 857
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->sendKeyChar(C)V

    goto :goto_1
.end method

.method private handleSpace()V
    .locals 1

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 520
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->sendSpace()V

    .line 521
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 522
    return-void
.end method

.method private handleText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 400
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 401
    return-void
.end method

.method private hideGridCandidatesView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1341
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mContextWindowShowing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->hideContextWindow(Landroid/view/View;)V

    .line 1343
    iput-boolean v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mContextWindowShowing:Z

    .line 1344
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->setMinimumHeight(I)V

    .line 1346
    :cond_0
    return-void
.end method

.method private hideHowToUseToast()V
    .locals 0

    .prologue
    .line 1129
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 1130
    return-void
.end method

.method private isPendingRecognizeMessage()Z
    .locals 2

    .prologue
    .line 991
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private performDelayRecognition()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1000
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    if-nez v3, :cond_0

    .line 1022
    :goto_0
    return-void

    .line 1003
    :cond_0
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1004
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->startArcsAddingSequence()V

    .line 1006
    const/4 v2, 0x0

    .line 1007
    .local v2, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1008
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-nez v3, :cond_1

    .line 1010
    add-int/lit8 v0, v1, -0x1

    .line 1011
    .local v0, "end":I
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v4, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v5}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->queueAddArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 1012
    add-int/lit8 v2, v1, 0x1

    .line 1007
    .end local v0    # "end":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1015
    :cond_2
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v3, v5}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->queueRecognition(Ljava/lang/CharSequence;)V

    .line 1021
    .end local v1    # "i":I
    .end local v2    # "start":I
    :goto_2
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 1018
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->clearArcs()V

    goto :goto_2
.end method

.method private postDelayResumeSpeech()V
    .locals 4

    .prologue
    const/16 v1, 0xb

    .line 246
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 250
    return-void
.end method

.method private postHowToUseToastMsg()V
    .locals 4

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0x1f9

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1134
    return-void
.end method

.method private processPendingRecognizing()V
    .locals 2

    .prologue
    .line 995
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 996
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->performDelayRecognition()V

    .line 997
    return-void
.end method

.method private removeAllPendingMsg()V
    .locals 2

    .prologue
    .line 864
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->JpHwrInputViewHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 865
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->JpHwrInputViewHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 866
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->JpHwrInputViewHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 867
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 868
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 869
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 870
    return-void
.end method

.method private removeDelayRecognitionMsg()V
    .locals 2

    .prologue
    .line 987
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 988
    return-void
.end method

.method private removeHowToUseToastMsg()V
    .locals 2

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0x1f9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1138
    return-void
.end method

.method private resetWrite()V
    .locals 2

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1074
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->clearArcs()V

    .line 1075
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    if-eqz v0, :cond_1

    .line 1076
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->setNewSession(Z)V

    .line 1078
    :cond_1
    return-void
.end method

.method private setKeyboardForTextEntry(Lcom/nuance/swype/input/InputFieldInfo;)V
    .locals 6
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 283
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v4

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, p1, v4, v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;Z)Lcom/nuance/swype/input/XT9Keyboard;

    .line 286
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNumericModeField()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->addNumberOnlyCategory()V

    .line 288
    iput v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    .line 303
    :goto_1
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->addGestureCategory()V

    .line 305
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->applyChangedSettings()V

    .line 309
    :cond_0
    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->toggleNextWritingMode(I)V

    .line 310
    return-void

    :cond_1
    move v0, v2

    .line 283
    goto :goto_0

    .line 289
    :cond_2
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 290
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->addPhoneNumberOnlyCategory()V

    .line 292
    iput v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    goto :goto_1

    .line 293
    :cond_3
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isEmailAddressField()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 294
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->addLatinLetterCategory()V

    .line 295
    iput v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    goto :goto_1

    .line 296
    :cond_4
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isURLField()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 297
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->addLatinLetterCategory()V

    .line 298
    iput v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    goto :goto_1

    .line 300
    :cond_5
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/input/InputMethods;->addTextCategory(Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 301
    iput v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    goto :goto_1
.end method

.method private showGridCandidatesView(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1170
    .local p1, "aDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1270
    :cond_0
    :goto_0
    return-void

    .line 1172
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mContextWindowShowing:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 1174
    invoke-super/range {p0 .. p0}, Lcom/nuance/swype/input/InputView;->isSpeechViewShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1177
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v4}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->getHeight()I

    move-result v4

    add-int v7, v3, v4

    .line 1178
    .local v7, "height":I
    sget-object v3, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "showGridCandidatesView...mJPHandWritingContainer.getHeight()"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1179
    sget-object v3, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "showGridCandidatesView...mWordListViewContainer.getHeight()"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v5}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1180
    sget-object v3, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "showGridCandidatesView... height: "

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1181
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v14

    .line 1182
    .local v14, "width":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    invoke-virtual {v3, v7}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->setMinimumHeight(I)V

    .line 1183
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 1184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-eq v3, v14, :cond_2

    .line 1185
    sget-object v3, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "recreate candidatesPopup....candidatesPopup.getMeasuredWidth(): "

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "keyboard width: "

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1187
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    .line 1189
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    if-nez v3, :cond_3

    .line 1191
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 1192
    .local v10, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 1194
    sget v3, Lcom/nuance/swype/input/R$layout;->candidates_popup:I

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    .line 1197
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v12, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1200
    .local v12, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v3, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1201
    const/high16 v3, -0x80000000

    invoke-static {v14, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 1202
    .local v15, "widthMeasureSpec":I
    const/high16 v3, -0x80000000

    invoke-static {v7, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1203
    .local v9, "heightMeasureSpec":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v3, v15, v9}, Landroid/view/View;->measure(II)V

    .line 1205
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->keyboardViewEx:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/KeyboardViewEx;

    .line 1208
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/KeyboardViewEx;->setDoubleBuffered(Z)V

    .line 1210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->closeButton:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1211
    .local v8, "closeButton":Landroid/view/View;
    new-instance v3, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$4;-><init>(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V

    invoke-virtual {v8, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1220
    new-instance v3, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$5;-><init>(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V

    invoke-virtual {v8, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1239
    .end local v8    # "closeButton":Landroid/view/View;
    .end local v9    # "heightMeasureSpec":I
    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    .end local v12    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v15    # "widthMeasureSpec":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->scroll_view:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ScrollView;

    .line 1240
    .local v13, "scrollView":Landroid/widget/ScrollView;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v13, v3, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    sget v4, Lcom/nuance/swype/input/R$id;->keyboardViewEx:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/nuance/swype/input/KeyboardViewEx;

    .line 1243
    .local v11, "keyboardViewEx":Lcom/nuance/swype/input/KeyboardViewEx;
    invoke-virtual {v13}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->setGridCandidates(Ljava/util/List;I)V

    .line 1244
    new-instance v2, Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$xml;->kbd_chinese_popup_template:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRows:Ljava/util/List;

    invoke-virtual {v13}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v6

    invoke-direct/range {v2 .. v7}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;ILjava/util/List;II)V

    .line 1246
    .local v2, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    invoke-virtual {v11, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1247
    new-instance v3, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$6;-><init>(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;Lcom/nuance/swype/input/KeyboardEx;)V

    invoke-virtual {v11, v3}, Lcom/nuance/swype/input/KeyboardViewEx;->setOnKeyboardActionListener(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v5

    invoke-direct {v4, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1268
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v5}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->showContextWindow(Landroid/view/View;I)V

    .line 1269
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mContextWindowShowing:Z

    goto/16 :goto_0
.end method

.method private showHowToUseToast()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1118
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 1119
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    const-string v1, "show_how_to_use_hwr"

    invoke-virtual {v0, v1, v5}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1120
    const-string v1, "show_how_to_use_hwr"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 1121
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->how_to_use_hwr:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v2, v5, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 1126
    :cond_0
    return-void
.end method

.method private startArcsAddingSequence()V
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->startArcsAddingSequence()V

    .line 732
    return-void
.end method

.method private toggleNextWritingMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 475
    if-eqz v2, :cond_0

    .line 478
    if-nez p1, :cond_1

    .line 479
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->japanese:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 486
    .local v0, "currentMode":Ljava/lang/CharSequence;
    :goto_0
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 487
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, "writingMode":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->setWritingMode(Ljava/lang/String;)V

    .line 489
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->invalidate()V

    .line 492
    .end local v0    # "currentMode":Ljava/lang/CharSequence;
    .end local v1    # "writingMode":Ljava/lang/String;
    :cond_0
    return-void

    .line 480
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 481
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->label_num_key:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "currentMode":Ljava/lang/CharSequence;
    goto :goto_0

    .line 483
    .end local v0    # "currentMode":Ljava/lang/CharSequence;
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->label_alpha_key:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "currentMode":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private updateCandidatesList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 673
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mStarted:Z

    if-nez v0, :cond_0

    .line 675
    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 693
    :goto_0
    return-void

    .line 679
    :cond_0
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 681
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 682
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->acceptCurrentInline()V

    .line 684
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 686
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/Composition;->showInline(Ljava/lang/CharSequence;)V

    .line 692
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    goto :goto_0

    .line 689
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    goto :goto_1
.end method

.method private updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V
    .locals 5
    .param p1, "attr"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 1025
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1026
    const/4 v0, 0x0

    .line 1027
    .local v0, "caps":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    .line 1028
    .local v2, "ei":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v3

    .line 1029
    .local v3, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    iget-boolean v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mAutoCap:Z

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    iget v4, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 1030
    invoke-virtual {v3, p1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getCapsModeAtCursor(Landroid/view/inputmethod/EditorInfo;)I

    move-result v0

    .line 1033
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v1

    .line 1034
    .local v1, "currentShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    sget-object v4, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-eq v1, v4, :cond_1

    .line 1035
    sparse-switch v0, :sswitch_data_0

    .line 1044
    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 1048
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 1051
    .end local v0    # "caps":I
    .end local v1    # "currentShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .end local v2    # "ei":Landroid/view/inputmethod/EditorInfo;
    .end local v3    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    :cond_2
    return-void

    .line 1037
    .restart local v0    # "caps":I
    .restart local v1    # "currentShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .restart local v2    # "ei":Landroid/view/inputmethod/EditorInfo;
    .restart local v3    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    :sswitch_0
    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 1038
    goto :goto_0

    .line 1041
    :sswitch_1
    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 1042
    goto :goto_0

    .line 1035
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x4000 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method protected changeKeyboardMode()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 434
    const/4 v0, 0x0

    .line 436
    .local v0, "changed":Z
    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    if-nez v1, :cond_3

    .line 437
    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    .line 439
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    .line 440
    if-nez v1, :cond_0

    .line 470
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->addLatinLetterCategory()V

    .line 444
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->addGestureCategory()V

    .line 445
    const/4 v0, 0x1

    .line 458
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v1

    if-nez v1, :cond_2

    .line 459
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 460
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->processPendingRecognizing()V

    .line 464
    :goto_2
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->applyChangedSettings()V

    .line 467
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 468
    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->toggleNextWritingMode(I)V

    goto :goto_0

    .line 446
    :cond_3
    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    if-ne v1, v3, :cond_4

    .line 447
    iput v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    .line 448
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->addNumberCategory()V

    .line 449
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->addGestureCategory()V

    .line 450
    const/4 v0, 0x1

    goto :goto_1

    .line 451
    :cond_4
    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    if-ne v1, v2, :cond_1

    .line 452
    const/4 v1, 0x0

    iput v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    .line 453
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/InputMethods;->addTextCategory(Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 454
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->addGestureCategory()V

    .line 455
    const/4 v0, 0x1

    goto :goto_1

    .line 462
    :cond_5
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->acceptCurrentDefaultWord()Z

    goto :goto_2
.end method

.method public create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V
    .locals 3
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;
    .param p2, "xt9coreinput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p3, "t9write"    # Lcom/nuance/input/swypecorelib/T9Write;
    .param p4, "speechWrapper"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/InputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V

    .line 118
    check-cast p3, Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    .end local p3    # "t9write":Lcom/nuance/input/swypecorelib/T9Write;
    iput-object p3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    .line 119
    check-cast p2, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    .end local p2    # "xt9coreinput":Lcom/nuance/input/swypecorelib/XT9CoreInput;
    iput-object p2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    .line 120
    new-instance v0, Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardSwitcher;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 121
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 123
    return-void
.end method

.method public createCandidatesView(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)Landroid/view/View;
    .locals 3
    .param p1, "onSelectListener"    # Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    .prologue
    .line 128
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    if-nez v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 133
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/nuance/swype/input/R$layout;->japanese_handwriting_candidates:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    .line 135
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->initViews()V

    .line 136
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    sget v2, Lcom/nuance/swype/input/R$id;->cjk_candidates:I

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .line 141
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setOnWordSelectActionListener(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;)V

    .line 143
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    .line 145
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    return-object v1
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->destroy()V

    .line 151
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0, p0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->removeRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 152
    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 153
    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    .line 154
    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 3
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 774
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCompletionOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mShownCandidateList:Z

    if-nez v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/Completions;->update([Landroid/view/inputmethod/CompletionInfo;)V

    .line 777
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Completions;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 783
    :cond_0
    :goto_0
    return-void

    .line 780
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    .line 781
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Completions;->getDisplayItems()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    goto :goto_0
.end method

.method public finishInput()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 314
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 316
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->removeHowToUseToastMsg()V

    .line 317
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 319
    iput-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mStarted:Z

    .line 320
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->flushCurrentActiveWord()V

    .line 321
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 322
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->dismissPopupKeyboard()V

    .line 323
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->removeAllPendingMsg()V

    .line 324
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->endArcsAddingSequence()V

    .line 326
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->resetWrite()V

    .line 328
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0, p0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->removeRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 329
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->finishSession()V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 331
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->requestLayout()V

    .line 332
    iput v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    .line 334
    return-void
.end method

.method public flushCurrentActiveWord()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 601
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->hideGridCandidatesView()V

    .line 602
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->acceptCurrentInline()V

    .line 603
    iput-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 604
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->clearArcs()V

    .line 605
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iput-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v0, v2, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->noteSelectedCandidate(I)Z

    .line 611
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 613
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->endArcsAddingSequence()V

    .line 614
    return-void
.end method

.method public getHandWritingModeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 418
    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mStringHandWritingJpMode:Ljava/lang/String;

    .line 423
    :goto_0
    return-object v0

    .line 420
    :cond_0
    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 421
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mStringHandWriting123Mode:Ljava/lang/String;

    goto :goto_0

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mStringHandWritingABCMode:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    return v0
.end method

.method public getPredictionCandidate()V
    .locals 5

    .prologue
    .line 747
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 749
    .local v0, "suggestword":Landroid/text/SpannableStringBuilder;
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->getPredictionWords(Landroid/text/SpannableStringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;

    move-result-object v1

    .line 752
    .local v1, "wordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 754
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 755
    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 756
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 758
    :cond_0
    return-void
.end method

.method public getWordCandidateListContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    return-object v0
.end method

.method public getWordListPageContainerView()Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;
    .locals 1

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    return-object v0
.end method

.method protected handleBackspace(I)Z
    .locals 2
    .param p1, "repeatedCount"    # I

    .prologue
    const/16 v1, 0x8

    .line 584
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->processPendingRecognizing()V

    .line 587
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->queueChar(C)V

    .line 596
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 592
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->queueChar(C)V

    goto :goto_0

    .line 594
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->handleBackspace()Z

    goto :goto_0
.end method

.method public handleCharKey(Landroid/graphics/Point;I[IJ)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "eventTime"    # J

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p2

    .line 511
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->processPendingRecognizing()V

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    int-to-char v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->queueChar(C)V

    .line 515
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 516
    return-void
.end method

.method public handleClose()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 338
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->handleClose()V

    .line 339
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->removeHowToUseToastMsg()V

    .line 340
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 341
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->dismissPopupKeyboard()V

    .line 343
    iput v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    .line 345
    iput-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mStarted:Z

    .line 346
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->removeAllPendingMsg()V

    .line 347
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->resetWrite()V

    .line 348
    return-void
.end method

.method public handleKey(IZI)Z
    .locals 1
    .param p1, "primaryCode"    # I
    .param p2, "quickPressed"    # Z
    .param p3, "repeatedCount"    # I

    .prologue
    const/4 v0, 0x1

    .line 352
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 354
    sparse-switch p1, :sswitch_data_0

    .line 367
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 356
    :sswitch_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->flushCurrentActiveWord()V

    .line 358
    if-nez p2, :cond_0

    .line 359
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->startSpeech()V

    goto :goto_0

    .line 363
    :sswitch_1
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    .line 364
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->clearArcs()V

    goto :goto_0

    .line 354
    :sswitch_data_0
    .sparse-switch
        0xb54 -> :sswitch_1
        0x193f -> :sswitch_0
    .end sparse-switch
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    .line 381
    :cond_0
    const/4 v0, 0x1

    .line 383
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    .line 393
    :cond_0
    const/4 v0, 0x1

    .line 395
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handlePossibleActionAfterResize()V
    .locals 4

    .prologue
    const/16 v1, 0xe

    .line 239
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 243
    return-void
.end method

.method protected handleScrollDown()V
    .locals 2

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    .line 1367
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->finishInput()V

    .line 1368
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->requestHideSelf(I)V

    .line 1370
    :cond_0
    return-void
.end method

.method public handleShiftKey()V
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->cycleShiftState()V

    .line 876
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->invalidateKeyboardImage()V

    .line 877
    return-void
.end method

.method protected handleSpace(ZI)Z
    .locals 9
    .param p1, "quickPressed"    # Z
    .param p2, "repeatedCount"    # I

    .prologue
    const/16 v8, 0x20

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 526
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 528
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->processPendingRecognizing()V

    .line 529
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v4, v8}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->queueChar(C)V

    .line 569
    :goto_0
    return v7

    .line 530
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 534
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v4, v8}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->queueChar(C)V

    goto :goto_0

    .line 536
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 537
    const/4 v0, 0x1

    .line 541
    .local v0, "addSpace":Z
    if-eqz p1, :cond_3

    if-ge p2, v6, :cond_3

    iget-boolean v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mAutoPunctuationOn:Z

    if-eqz v4, :cond_3

    .line 542
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v3

    .line 544
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 545
    invoke-interface {v3, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 551
    .local v1, "cSeqBefore":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v2

    .line 552
    .local v2, "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v6, :cond_2

    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 557
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->handleAutoPunct()V

    .line 558
    const/4 v0, 0x0

    .line 561
    :cond_2
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 564
    .end local v1    # "cSeqBefore":Ljava/lang/CharSequence;
    .end local v2    # "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_3
    if-eqz v0, :cond_4

    .line 565
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->sendSpace()V

    .line 567
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_0
.end method

.method public isHandWritingInputView()Z
    .locals 1

    .prologue
    .line 1390
    const/4 v0, 0x1

    return v0
.end method

.method public isScrollable(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Z
    .locals 1
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 1143
    const/4 v0, 0x0

    return v0
.end method

.method public nextBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .locals 1
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 1148
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->dismissPopupKeyboard()V

    .line 1149
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-ne p1, v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->showGridCandidatesView(Ljava/util/List;)V

    .line 1156
    :cond_0
    return-void
.end method

.method public onCandidateLongPressed(ILjava/lang/String;ILcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "wdSource"    # I
    .param p4, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 1362
    return-void
.end method

.method public onHandleWriteEvent(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;

    .prologue
    const-wide/16 v4, 0x5

    .line 811
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_2

    .line 812
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isLVLLicenseValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 816
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    :cond_2
    iget v0, p1, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;->mType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 822
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->JpHwrInputViewHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->JpHwrInputViewHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 827
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->JpHwrInputViewHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->JpHwrInputViewHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 832
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->JpHwrInputViewHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->JpHwrInputViewHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 820
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onScrollContentChanged()V
    .locals 1

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    if-eqz v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->updateScrollArrowVisibility()V

    .line 1386
    :cond_0
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->processPendingRecognizing()V

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->queueText(Ljava/lang/CharSequence;)V

    .line 414
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 415
    return-void

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->queueText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public penDown(Landroid/view/View;)V
    .locals 2
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 696
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->dismissPopupKeyboard()V

    .line 697
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 698
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    if-eq v0, p1, :cond_2

    .line 699
    :cond_0
    check-cast p1, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    .end local p1    # "src":Landroid/view/View;
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    .line 701
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 704
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->setWidth(I)V

    .line 705
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->setHeight(I)V

    .line 706
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->applyChangedSettings()V

    .line 709
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 710
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 712
    :cond_3
    return-void
.end method

.method public penUp(Ljava/util/List;Landroid/view/View;)V
    .locals 4
    .param p2, "src"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 715
    .local p1, "arc":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 717
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->getRecognizerDelay()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 721
    :cond_0
    return-void
.end method

.method public penUp([Lcom/nuance/swype/input/Stroke$Arc;Landroid/view/View;)V
    .locals 1
    .param p1, "arcs"    # [Lcom/nuance/swype/input/Stroke$Arc;
    .param p2, "Src"    # Landroid/view/View;

    .prologue
    .line 1067
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/nuance/swype/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->penUp(Ljava/util/List;Landroid/view/View;)V

    .line 1068
    return-void
.end method

.method public prevBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .locals 1
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 1160
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->dismissPopupKeyboard()V

    .line 1161
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-ne p1, v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->showGridCandidatesView(Ljava/util/List;)V

    .line 1167
    :cond_0
    return-void
.end method

.method public selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/CharSequence;
    .param p3, "source"    # Landroid/view/View;

    .prologue
    .line 761
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0, p2}, Lcom/nuance/swype/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 763
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 764
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 766
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->noteSelectedCandidate(I)Z

    .line 768
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->endArcsAddingSequence()V

    .line 769
    return-void
.end method

.method public setActiveCandidate(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 666
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 668
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/Composition;->showInline(Ljava/lang/CharSequence;)V

    .line 670
    :cond_0
    return-void
.end method

.method public setCandidatesViewShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 496
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setCandidatesViewShown(Z)V

    .line 497
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    if-eqz v0, :cond_0

    .line 498
    if-eqz p1, :cond_1

    .line 499
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->setVisibility(I)V

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->setVisibility(I)V

    goto :goto_0
.end method

.method public setContainerView(Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;)V
    .locals 0
    .param p1, "container"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    .line 280
    return-void
.end method

.method public setGridCandidates(Ljava/util/List;I)V
    .locals 19
    .param p2, "keyboardWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1274
    .local p1, "aLableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lcom/nuance/swype/input/R$dimen;->key_text_size:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 1276
    .local v16, "textSize":I
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 1277
    .local v12, "paint":Landroid/graphics/Paint;
    sget-object v17, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1278
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1279
    sget-object v17, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1280
    div-int/lit8 v17, v16, 0x3

    add-int/lit8 v11, v17, 0x1

    .line 1282
    .local v11, "paddingWidth":I
    const/4 v6, 0x0

    .line 1283
    .local v6, "curRowWidth":I
    const/4 v5, 0x0

    .line 1284
    .local v5, "curRowNumber":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1285
    .local v14, "rowKeyWidth":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRows:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 1286
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_8

    .line 1289
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRows:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-gt v0, v5, :cond_3

    .line 1290
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1291
    .local v4, "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRows:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1292
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1293
    .local v3, "curRowKeyWidth":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1300
    :goto_1
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/CharSequence;

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1301
    .local v15, "str":Ljava/lang/String;
    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x2

    mul-int/lit8 v18, v11, 0x2

    add-int v9, v17, v18

    .line 1302
    .local v9, "keyWidth":I
    mul-int/lit8 v17, v11, 0x2

    add-int v17, v17, v16

    move/from16 v0, v17

    if-ge v9, v0, :cond_1

    .line 1303
    mul-int/lit8 v17, v11, 0x2

    add-int v9, v16, v17

    .line 1307
    :cond_1
    add-int v17, v6, v9

    move/from16 v0, v17

    move/from16 v1, p2

    if-le v0, v1, :cond_7

    .line 1309
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1310
    :cond_2
    new-instance v17, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-direct {v0, v1, v15}, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;-><init>(ILjava/lang/CharSequence;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1329
    :goto_2
    const/4 v6, 0x0

    .line 1330
    add-int/lit8 v5, v5, 0x1

    .line 1286
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1295
    .end local v3    # "curRowKeyWidth":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    .end local v9    # "keyWidth":I
    .end local v15    # "str":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRows:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1296
    .restart local v4    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .restart local v3    # "curRowKeyWidth":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_1

    .line 1313
    .restart local v9    # "keyWidth":I
    .restart local v15    # "str":Ljava/lang/String;
    :cond_4
    sub-int v17, p2, v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v18

    div-int v2, v17, v18

    .line 1314
    .local v2, "addingWidth":I
    const/4 v13, 0x0

    .line 1315
    .local v13, "refreshedRowWidth":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_6

    .line 1316
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    add-int v10, v17, v2

    .line 1317
    .local v10, "newKeyWidth":I
    add-int/2addr v13, v10

    .line 1319
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ne v0, v8, :cond_5

    .line 1320
    sub-int v17, p2, v13

    add-int v10, v10, v17

    .line 1322
    :cond_5
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v8, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1323
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    move-object/from16 v0, v17

    iput v10, v0, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 1315
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1326
    .end local v10    # "newKeyWidth":I
    :cond_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 1332
    .end local v2    # "addingWidth":I
    .end local v8    # "j":I
    .end local v13    # "refreshedRowWidth":I
    :cond_7
    add-int/2addr v6, v9

    .line 1333
    new-instance v17, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    move-object/from16 v0, v17

    invoke-direct {v0, v9, v15}, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;-><init>(ILjava/lang/CharSequence;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1334
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1338
    .end local v3    # "curRowKeyWidth":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    .end local v9    # "keyWidth":I
    .end local v15    # "str":Ljava/lang/String;
    :cond_8
    return-void
.end method

.method public setHandWritingView(Lcom/nuance/swype/input/HandWritingView;)V
    .locals 0
    .param p1, "view"    # Lcom/nuance/swype/input/HandWritingView;

    .prologue
    .line 275
    check-cast p1, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    .end local p1    # "view":Lcom/nuance/swype/input/HandWritingView;
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    .line 276
    return-void
.end method

.method public setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V
    .locals 0
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;

    .prologue
    .line 619
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->updateDockModeForHandwriting(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 620
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 621
    return-void
.end method

.method public setNormalHandScreenWritingFrame()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->setNormalHandScreenWritingFrame()V

    .line 259
    return-void
.end method

.method protected setSwypeKeytoolTipSuggestion()V
    .locals 1

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->showSwypeTooltip()V

    .line 1376
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 1377
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 1379
    :cond_0
    return-void
.end method

.method public showHandWritingView(Z)V
    .locals 4
    .param p1, "animation"    # Z

    .prologue
    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "animate":Landroid/view/animation/AlphaAnimation;
    if-eqz p1, :cond_0

    .line 265
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "animate":Landroid/view/animation/AlphaAnimation;
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 266
    .restart local v0    # "animate":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 268
    :cond_0
    if-eqz v0, :cond_1

    .line 269
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    iget-object v1, v1, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 271
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->setNormalHandScreenWritingFrame()V

    .line 272
    return-void
.end method

.method protected showLastSavedHandWritingScreen()V
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->setNormalHandScreenWritingFrame()V

    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->showHandWritingView(Z)V

    .line 255
    return-void
.end method

.method public startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V
    .locals 9
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p2, "restarting"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 159
    iput-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mStarted:Z

    .line 160
    iput v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    .line 162
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V

    .line 164
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v4, :cond_0

    .line 165
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateCandidatesSize()V

    .line 168
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    if-eqz v4, :cond_1

    .line 169
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->updateHandwritingPadSize()V

    .line 172
    :cond_1
    iput-boolean v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCompletionOn:Z

    .line 174
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v4

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCompletionOn:Z

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isCompletionField()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isURLField()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_2
    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mShownCandidateList:Z

    .line 177
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->dismissPopupKeyboard()V

    .line 178
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->flushCurrentActiveWord()V

    .line 179
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->showLastSavedHandWritingScreen()V

    .line 181
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v4, p0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->addRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 183
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->cancelCurrentDefaultWord()Z

    .line 184
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/nuance/swype/input/Composition;->setInputConnection(Landroid/view/inputmethod/InputConnection;)V

    .line 185
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->clearCategory()V

    .line 186
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v4

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    iget-object v8, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4, v7, v8}, Lcom/nuance/swype/input/InputMethods;->addTextCategory(Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 188
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->setKeyboardForTextEntry(Lcom/nuance/swype/input/InputFieldInfo;)V

    .line 193
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v1

    .line 194
    .local v1, "lang":I
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v4, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->startSession(I)V

    .line 195
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 196
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 199
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 201
    .local v2, "res":Landroid/content/res/Resources;
    sget v4, Lcom/nuance/swype/input/R$string;->japanese:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mStringHandWritingJpMode:Ljava/lang/String;

    .line 202
    sget v4, Lcom/nuance/swype/input/R$string;->handwriting_123_mode_simp:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mStringHandWriting123Mode:Ljava/lang/String;

    .line 203
    sget v4, Lcom/nuance/swype/input/R$string;->handwriting_abc_mode:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mStringHandWritingABCMode:Ljava/lang/String;

    .line 205
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    const-string v7, "hwr_auto_recpgnize_delay"

    sget v8, Lcom/nuance/swype/input/R$integer;->handwriting_auto_recognize_default_ms:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-static {v4, v7, v8}, Lcom/nuance/swype/input/settings/InputPrefs;->getAutoDelay(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v0

    .line 210
    .local v0, "delay":I
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v4, v0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->setRecognizerDelay(I)V

    .line 211
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->clearArcs()V

    .line 213
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/AppPreferences;->getHandwritingInputArea(I)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandwritingAreaId:I

    .line 214
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    iget v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandwritingAreaId:I

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->setInputArea(I)V

    .line 215
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->removeHowToUseToastMsg()V

    .line 216
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->postHowToUseToastMsg()V

    .line 218
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    .line 220
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v3

    .line 221
    .local v3, "status":Lcom/nuance/input/swypecorelib/XT9Status;
    sget-object v4, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_DB_CORE_INCOMP:Lcom/nuance/input/swypecorelib/XT9Status;

    if-eq v3, v4, :cond_4

    sget-object v4, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_LDB_VERSION_ERROR:Lcom/nuance/input/swypecorelib/XT9Status;

    if-ne v3, v4, :cond_6

    .line 223
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v5, v5, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/nuance/swype/input/DatabaseConfig;->removeIncompatibleDBFiles(Landroid/content/Context;Ljava/lang/String;)V

    .line 225
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v3

    .line 226
    sget-object v4, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_DB_CORE_INCOMP:Lcom/nuance/input/swypecorelib/XT9Status;

    if-eq v3, v4, :cond_5

    sget-object v4, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_LDB_VERSION_ERROR:Lcom/nuance/input/swypecorelib/XT9Status;

    if-ne v3, v4, :cond_6

    .line 228
    :cond_5
    iput-boolean v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->isLDBCompatible:Z

    .line 229
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->promptUserToUpdateLanguage()V

    .line 230
    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->toggleKeyboard(Z)V

    .line 233
    :cond_6
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->postDelayResumeSpeech()V

    .line 234
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->handlePossibleActionAfterResize()V

    .line 235
    return-void

    .end local v0    # "delay":I
    .end local v1    # "lang":I
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "status":Lcom/nuance/input/swypecorelib/XT9Status;
    :cond_7
    move v4, v6

    .line 174
    goto/16 :goto_0
.end method

.method public startRecognizeNow(Ljava/util/List;Landroid/view/View;)V
    .locals 1
    .param p2, "src"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 724
    .local p1, "arc":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 726
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 727
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->performDelayRecognition()V

    .line 728
    return-void
.end method

.method public updateSelection(IIIIII)V
    .locals 1
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .prologue
    .line 789
    invoke-super/range {p0 .. p6}, Lcom/nuance/swype/input/InputView;->updateSelection(IIIIII)V

    .line 794
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_1

    if-ne p3, p6, :cond_0

    if-eq p4, p6, :cond_1

    .line 797
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 798
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_2

    .line 802
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0, p3, p4}, Lcom/nuance/swype/input/Composition;->setSelection(II)V

    .line 804
    :cond_2
    return-void
.end method
