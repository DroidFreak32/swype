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

.field static final MSG_DELAY_RECOGNIZER_ADD_STROKE:I = 0x2

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

.field private mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

.field mDelayRecognizeHandler:Landroid/os/Handler;

.field private mHandWritingMode:I

.field protected mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

.field private mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

.field private mOpenwnnEngine:Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;

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

.field protected mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

.field protected mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

.field private mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

.field private mWritingOrRecognizing:Z

.field popupViewHandlerCallback:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
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
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    iput v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRows:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    .line 103
    iput-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWritingOrRecognizing:Z

    .line 880
    new-instance v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$1;-><init>(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->JpHwrInputViewCallback:Landroid/os/Handler$Callback;

    .line 954
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->JpHwrInputViewCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->JpHwrInputViewHandler:Landroid/os/Handler;

    .line 960
    new-instance v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$2;-><init>(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->delayRecognizerHandlerCallback:Landroid/os/Handler$Callback;

    .line 980
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->delayRecognizerHandlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    .line 1095
    new-instance v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$3;-><init>(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->popupViewHandlerCallback:Landroid/os/Handler$Callback;

    .line 1118
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->popupViewHandlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

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
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 626
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_17

    .line 627
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->flushCurrentActiveWord()V

    .line 628
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v2, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->noteSelectedCandidate(I)Z

    .line 646
    :goto_16
    return v0

    .line 632
    :cond_17
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    if-eqz v2, :cond_44

    .line 633
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v2}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v2

    if-lez v2, :cond_44

    .line 634
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v2}, Lcom/nuance/swype/input/Composition;->acceptCurrentInline()V

    .line 635
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v2, v3, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 636
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 638
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v2, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->noteSelectedCandidate(I)Z

    .line 641
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->endArcsAddingSequence()V

    goto :goto_16

    :cond_44
    move v0, v1

    .line 646
    goto :goto_16
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;C)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;
    .param p1, "x1"    # C

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->handleChar(C)V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;Ljava/lang/CharSequence;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->handleText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->resumeSpeech()V

    return-void
.end method

.method static synthetic access$1100(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->hideGridCandidatesView()V

    return-void
.end method

.method static synthetic access$1200(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->gridViewFunctionButtonPressed:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->gridViewFunctionButtonPressed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getPureCandidate(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->performDelayRecognition()V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->performDelayRecognitionStroke()V

    return-void
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->showHowToUseToast()V

    return-void
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->setSpeechViewHost()V

    return-void
.end method

.method private cancelCurrentDefaultWord()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 608
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    .line 609
    invoke-virtual {v1}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v1

    if-lez v1, :cond_2f

    .line 610
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Composition;->clearCurrentInline()V

    .line 611
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 612
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 614
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->noteSelectedCandidate(I)Z

    .line 617
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->endArcsAddingSequence()V

    .line 619
    const/4 v0, 0x1

    .line 622
    :cond_2f
    return v0
.end method

.method private clearArcs()V
    .registers 2

    .prologue
    .line 831
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    if-eqz v0, :cond_9

    .line 832
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->clearArcs()V

    .line 834
    :cond_9
    return-void
.end method

.method private endArcsAddingSequence()V
    .registers 2

    .prologue
    .line 741
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    if-eqz v0, :cond_9

    .line 742
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->invalidate()V

    .line 745
    :cond_9
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    if-eqz v0, :cond_12

    .line 746
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->endArcsAddingSequence()V

    .line 749
    :cond_12
    return-void
.end method

.method private getPureCandidate(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "candidate"    # Ljava/lang/CharSequence;

    .prologue
    .line 1402
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1403
    .local v0, "cand":Ljava/lang/String;
    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1404
    .local v1, "index":I
    if-gtz v1, :cond_d

    .line 1406
    .end local p1    # "candidate":Ljava/lang/CharSequence;
    :goto_c
    return-object p1

    .restart local p1    # "candidate":Ljava/lang/CharSequence;
    :cond_d
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_c
.end method

.method private getPureCandidates(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1410
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-nez p1, :cond_4

    .line 1411
    const/4 v1, 0x0

    .line 1420
    :cond_3
    return-object v1

    .line 1414
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1415
    .local v2, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1416
    .local v1, "pureCandidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, v2, :cond_3

    .line 1417
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getPureCandidate(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1416
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method private handleAutoPunct()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1066
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 1067
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_8

    .line 1076
    :goto_7
    return-void

    .line 1071
    :cond_8
    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1073
    const-string/jumbo v0, "\u3002"

    .line 1075
    .local v0, "autopunct":Ljava/lang/CharSequence;
    invoke-interface {v1, v0, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_7
.end method

.method private handleBackspace()Z
    .registers 3

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->cancelCurrentDefaultWord()Z

    move-result v0

    if-nez v0, :cond_17

    .line 558
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->sendBackspace(I)V

    .line 559
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 561
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    .line 563
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method private handleChar(C)V
    .registers 4
    .param p1, "ch"    # C

    .prologue
    const/4 v1, 0x0

    .line 837
    const/16 v0, 0xd

    if-ne p1, v0, :cond_14

    .line 838
    const/16 p1, 0xa

    .line 843
    :cond_7
    :goto_7
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1b

    .line 844
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->handleBackspace()Z

    .line 851
    :goto_e
    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 852
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    .line 853
    return-void

    .line 839
    :cond_14
    const/16 v0, 0x9

    if-ne p1, v0, :cond_7

    .line 840
    const/16 p1, 0x20

    goto :goto_7

    .line 845
    :cond_1b
    const/16 v0, 0x20

    if-ne p1, v0, :cond_23

    .line 846
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->handleSpace()V

    goto :goto_e

    .line 848
    :cond_23
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 849
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->sendKeyChar(C)V

    goto :goto_e
.end method

.method private handleSpace()V
    .registers 2

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 504
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->sendSpace()V

    .line 505
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 506
    return-void
.end method

.method private handleText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 402
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 403
    return-void
.end method

.method private hideGridCandidatesView()V
    .registers 3

    .prologue
    .line 1350
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mContextWindowShowing:Z

    if-eqz v0, :cond_11

    .line 1351
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->hideContextWindow(Landroid/view/View;)V

    .line 1352
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->setMinimumHeight(I)V

    .line 1354
    :cond_11
    return-void
.end method

.method private hideHowToUseToast()V
    .registers 1

    .prologue
    .line 1133
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 1134
    return-void
.end method

.method private isPendingRecognizeMessage()Z
    .registers 3

    .prologue
    .line 987
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private isPendingRecognizeStrokeMessage()Z
    .registers 3

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private performDelayRecognition()V
    .registers 2

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    if-nez v0, :cond_5

    .line 1034
    :goto_4
    return-void

    .line 1027
    :cond_5
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1028
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->endArcsAddingSequence()V

    .line 1030
    :cond_10
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1031
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWritingOrRecognizing:Z

    .line 1032
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    iget-object v0, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FaddingStrokeQueue;->stopFading()V

    .line 1033
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->clearArcs()V

    goto :goto_4
.end method

.method private performDelayRecognitionStroke()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1004
    const/4 v2, 0x0

    .line 1005
    .local v2, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3d

    .line 1006
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-nez v3, :cond_3a

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-nez v3, :cond_3a

    .line 1008
    add-int/lit8 v0, v1, -0x1

    .line 1009
    .local v0, "end":I
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    if-eqz v3, :cond_38

    if-ltz v2, :cond_38

    if-ge v2, v0, :cond_38

    .line 1010
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v4, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v5}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->queueAddArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 1012
    :cond_38
    add-int/lit8 v2, v1, 0x1

    .line 1005
    .end local v0    # "end":I
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1016
    :cond_3d
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    if-eqz v3, :cond_46

    .line 1017
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v3, v5}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->queueRecognition(Ljava/lang/CharSequence;)V

    .line 1020
    :cond_46
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1021
    return-void
.end method

.method private postDelayResumeSpeech()V
    .registers 5

    .prologue
    const/16 v1, 0xb

    .line 253
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 254
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 256
    :cond_f
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 257
    return-void
.end method

.method private postHowToUseToastMsg()V
    .registers 5

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0x1f9

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1138
    return-void
.end method

.method private processPendingRecognizing()V
    .registers 3

    .prologue
    .line 991
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 992
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->performDelayRecognition()V

    .line 993
    return-void
.end method

.method private removeDelayRecognitionMsg()V
    .registers 3

    .prologue
    .line 983
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 984
    return-void
.end method

.method private removeDelayRecognitionStroke()V
    .registers 3

    .prologue
    .line 996
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 997
    return-void
.end method

.method private removeHowToUseToastMsg()V
    .registers 3

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0x1f9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1142
    return-void
.end method

.method private resetWrite()V
    .registers 3

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1084
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1086
    :cond_9
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->clearArcs()V

    .line 1087
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    if-eqz v0, :cond_16

    .line 1088
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->setNewSession(Z)V

    .line 1090
    :cond_16
    return-void
.end method

.method private setKeyboardForTextEntry(Lcom/nuance/swype/input/InputFieldInfo;)V
    .registers 8
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 290
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 291
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v4

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v0

    if-nez v0, :cond_3e

    move v0, v1

    .line 290
    :goto_18
    invoke-virtual {v3, p1, v4, v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;Z)Lcom/nuance/swype/input/XT9Keyboard;

    .line 293
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNumericModeField()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 294
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->addNumberOnlyCategory()V

    .line 295
    iput v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    .line 310
    :goto_28
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->addGestureCategory()V

    .line 312
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_38

    .line 313
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->applyChangedSettings()V

    .line 316
    :cond_38
    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->toggleNextWritingMode(I)V

    .line 317
    return-void

    :cond_3e
    move v0, v2

    .line 291
    goto :goto_18

    .line 296
    :cond_40
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 297
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->addPhoneNumberOnlyCategory()V

    .line 299
    iput v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    goto :goto_28

    .line 300
    :cond_55
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isEmailAddressField()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 301
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->addLatinLetterCategory()V

    .line 302
    iput v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    goto :goto_28

    .line 303
    :cond_63
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isURLField()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 304
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->addLatinLetterCategory()V

    .line 305
    iput v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    goto :goto_28

    .line 307
    :cond_71
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/input/InputMethods;->addTextCategory(Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 308
    iput v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    goto :goto_28
.end method

.method private showGridCandidatesView(Ljava/util/List;)V
    .registers 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams",
            "PrivateResource"
        }
    .end annotation

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
    .line 1175
    .local p1, "aDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1278
    :cond_8
    :goto_8
    return-void

    .line 1177
    :cond_9
    iget-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mContextWindowShowing:Z

    if-nez v1, :cond_8

    .line 1179
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->isSpeechViewShowing()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1182
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->getHeight()I

    move-result v2

    add-int v5, v1, v2

    .line 1183
    .local v5, "height":I
    sget-object v1, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "showGridCandidatesView...mJPHandWritingContainer.getHeight()"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1184
    sget-object v1, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "showGridCandidatesView...mWordListViewContainer.getHeight()"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v4}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1185
    sget-object v1, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "showGridCandidatesView... height: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1186
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v12

    .line 1187
    .local v12, "width":I
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    invoke-virtual {v1, v5}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->setMinimumHeight(I)V

    .line 1188
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 1189
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    if-eqz v1, :cond_b4

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eq v1, v12, :cond_b4

    .line 1190
    sget-object v1, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "recreate candidatesPopup....candidatesPopup.getMeasuredWidth(): "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    .line 1191
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "keyboard width: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1190
    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1192
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    .line 1194
    :cond_b4
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    if-nez v1, :cond_139

    .line 1196
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 1197
    .local v8, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 1198
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 1199
    sget v1, Lcom/nuance/swype/input/R$layout;->candidates_popup:I

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    .line 1200
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 1202
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v10, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1205
    .local v10, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1206
    const/high16 v1, -0x80000000

    invoke-static {v12, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1207
    .local v13, "widthMeasureSpec":I
    const/high16 v1, -0x80000000

    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1208
    .local v7, "heightMeasureSpec":I
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v1, v13, v7}, Landroid/view/View;->measure(II)V

    .line 1210
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    sget v2, Lcom/nuance/swype/input/R$id;->closeButton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 1211
    .local v6, "closeButton":Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$drawable;->keyboard_popup_btn_close_cjk:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1213
    new-instance v1, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$4;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$4;-><init>(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V

    invoke-virtual {v6, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1222
    new-instance v1, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$5;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$5;-><init>(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V

    invoke-virtual {v6, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1244
    .end local v6    # "closeButton":Landroid/widget/ImageButton;
    .end local v7    # "heightMeasureSpec":I
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    .end local v10    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v13    # "widthMeasureSpec":I
    :cond_139
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    sget v2, Lcom/nuance/swype/input/R$id;->scroll_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ScrollView;

    .line 1245
    .local v11, "scrollView":Landroid/widget/ScrollView;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1246
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    sget v2, Lcom/nuance/swype/input/R$id;->keyboardViewEx:I

    .line 1247
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/nuance/swype/input/KeyboardViewEx;

    .line 1248
    .local v9, "keyboardViewEx":Lcom/nuance/swype/input/KeyboardViewEx;
    invoke-virtual {v11}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->setGridCandidates(Ljava/util/List;I)V

    .line 1249
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$xml;->kbd_chinese_popup_template:I

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRows:Ljava/util/List;

    .line 1250
    invoke-virtual {v11}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v4

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;ILjava/util/List;II)V

    .line 1251
    .local v0, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    invoke-virtual {v9, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1252
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->setDoubleBuffered(Z)V

    .line 1253
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->setContextCandidatesView(Z)V

    .line 1254
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v9, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->setIme(Lcom/nuance/swype/input/IME;)V

    .line 1255
    new-instance v1, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$6;

    invoke-direct {v1, p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$6;-><init>(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;Lcom/nuance/swype/input/KeyboardEx;)V

    invoke-virtual {v9, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->setOnKeyboardActionListener(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;)V

    .line 1275
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1276
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v3

    invoke-direct {v2, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1275
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1277
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->candidatesPopup:Landroid/view/View;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v3}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->showContextWindow(Landroid/view/View;I)V

    goto/16 :goto_8
.end method

.method private showHowToUseToast()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1122
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 1123
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    const-string/jumbo v1, "show_how_to_use_hwr"

    invoke-virtual {v0, v1, v5}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1124
    const-string/jumbo v1, "show_how_to_use_hwr"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 1125
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1126
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->how_to_use_hwr:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1127
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 1125
    invoke-static {v1, v2, v5, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 1130
    :cond_37
    return-void
.end method

.method private showNextWordPrediction(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 10
    .param p1, "hiragana"    # Ljava/lang/CharSequence;
    .param p2, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 1424
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mOpenwnnEngine:Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;

    if-eqz v4, :cond_54

    .line 1426
    if-eqz p1, :cond_3d

    .line 1427
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mOpenwnnEngine:Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->doExactSearch(Ljava/lang/String;Ljava/lang/String;)Ljp/co/omronsoft/openwnn/WnnWord;

    move-result-object v2

    .line 1432
    .local v2, "previousWord":Ljp/co/omronsoft/openwnn/WnnWord;
    :goto_14
    if-eqz v2, :cond_54

    .line 1434
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mOpenwnnEngine:Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;

    invoke-virtual {v4, v2}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->doPredictionSearch(Ljp/co/omronsoft/openwnn/WnnWord;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1436
    .local v1, "predictionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_54

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_54

    .line 1437
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1438
    .local v3, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1439
    .local v0, "aWord":Ljava/lang/String;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 1429
    .end local v0    # "aWord":Ljava/lang/String;
    .end local v1    # "predictionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "previousWord":Ljp/co/omronsoft/openwnn/WnnWord;
    .end local v3    # "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_3d
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mOpenwnnEngine:Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->doExactSearch(Ljava/lang/String;Ljava/lang/String;)Ljp/co/omronsoft/openwnn/WnnWord;

    move-result-object v2

    .restart local v2    # "previousWord":Ljp/co/omronsoft/openwnn/WnnWord;
    goto :goto_14

    .line 1442
    .restart local v1    # "predictionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_4c
    iput-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 1443
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 1447
    .end local v1    # "predictionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "previousWord":Ljp/co/omronsoft/openwnn/WnnWord;
    .end local v3    # "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_54
    return-void
.end method

.method private toggleNextWritingMode(I)V
    .registers 7
    .param p1, "mode"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 463
    if-eqz v2, :cond_48

    .line 466
    if-nez p1, :cond_49

    .line 467
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->japanese:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 474
    .local v0, "currentMode":Ljava/lang/CharSequence;
    :goto_18
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    if-eqz v2, :cond_48

    if-eqz v0, :cond_48

    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "writingMode":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->setWritingMode(Ljava/lang/String;)V

    .line 477
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->invalidate()V

    .line 480
    .end local v0    # "currentMode":Ljava/lang/CharSequence;
    .end local v1    # "writingMode":Ljava/lang/String;
    :cond_48
    return-void

    .line 468
    :cond_49
    const/4 v2, 0x1

    if-ne p1, v2, :cond_59

    .line 469
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->label_num_key:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "currentMode":Ljava/lang/CharSequence;
    goto :goto_18

    .line 471
    .end local v0    # "currentMode":Ljava/lang/CharSequence;
    :cond_59
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->label_alpha_key:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "currentMode":Ljava/lang/CharSequence;
    goto :goto_18
.end method

.method private updateCandidatesList(Ljava/util/List;)V
    .registers 5
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

    .line 657
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mStarted:Z

    if-nez v0, :cond_9

    .line 659
    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 677
    :goto_8
    return-void

    .line 663
    :cond_9
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 665
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_33

    .line 668
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 670
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getPureCandidate(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/Composition;->showInline(Ljava/lang/CharSequence;)V

    .line 676
    :goto_2f
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    goto :goto_8

    .line 673
    :cond_33
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    goto :goto_2f
.end method

.method private updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V
    .registers 7
    .param p1, "attr"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 1037
    if-eqz p1, :cond_35

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1038
    const/4 v0, 0x0

    .line 1039
    .local v0, "caps":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    .line 1040
    .local v2, "ei":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v3

    .line 1041
    .local v3, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    iget-boolean v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mAutoCap:Z

    if-eqz v4, :cond_23

    if-eqz v2, :cond_23

    iget v4, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v4, :cond_23

    if-eqz v3, :cond_23

    .line 1042
    invoke-virtual {v3, p1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getCapsModeAtCursor(Landroid/view/inputmethod/EditorInfo;)I

    move-result v0

    .line 1045
    :cond_23
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v1

    .line 1046
    .local v1, "currentShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    sget-object v4, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-eq v1, v4, :cond_32

    .line 1047
    sparse-switch v0, :sswitch_data_3c

    .line 1056
    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 1060
    :cond_32
    :goto_32
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 1063
    .end local v0    # "caps":I
    .end local v1    # "currentShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .end local v2    # "ei":Landroid/view/inputmethod/EditorInfo;
    .end local v3    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    :cond_35
    return-void

    .line 1049
    .restart local v0    # "caps":I
    .restart local v1    # "currentShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .restart local v2    # "ei":Landroid/view/inputmethod/EditorInfo;
    .restart local v3    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    :sswitch_36
    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 1050
    goto :goto_32

    .line 1053
    :sswitch_39
    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 1054
    goto :goto_32

    .line 1047
    :sswitch_data_3c
    .sparse-switch
        0x1000 -> :sswitch_36
        0x2000 -> :sswitch_39
        0x4000 -> :sswitch_39
    .end sparse-switch
.end method


# virtual methods
.method protected changeKeyboardMode()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 426
    const/4 v0, 0x0

    .line 428
    .local v0, "changed":Z
    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    if-nez v1, :cond_37

    .line 429
    iput v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    .line 430
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->addLatinLetterCategory()V

    .line 431
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->addGestureCategory()V

    .line 432
    const/4 v0, 0x1

    .line 445
    :cond_14
    :goto_14
    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 446
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 447
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->processPendingRecognizing()V

    .line 451
    :goto_25
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->applyChangedSettings()V

    .line 454
    :cond_2a
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 455
    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->toggleNextWritingMode(I)V

    .line 457
    return-void

    .line 433
    :cond_37
    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    if-ne v1, v3, :cond_49

    .line 434
    iput v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    .line 435
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->addNumberCategory()V

    .line 436
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->addGestureCategory()V

    .line 437
    const/4 v0, 0x1

    goto :goto_14

    .line 438
    :cond_49
    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    if-ne v1, v2, :cond_14

    .line 439
    const/4 v1, 0x0

    iput v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    .line 440
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/InputMethods;->addTextCategory(Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 441
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->addGestureCategory()V

    .line 442
    const/4 v0, 0x1

    goto :goto_14

    .line 449
    :cond_64
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->acceptCurrentDefaultWord()Z

    goto :goto_25
.end method

.method public create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V
    .registers 8
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

    .line 124
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->getCoreLibName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->createOpenWnnEngineJAJP(Ljava/lang/String;)Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mOpenwnnEngine:Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;

    .line 125
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mOpenwnnEngine:Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;

    invoke-virtual {v0}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->init()V

    .line 126
    return-void
.end method

.method public createCandidatesView(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)Landroid/view/View;
    .registers 6
    .param p1, "onSelectListener"    # Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams",
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    if-nez v2, :cond_46

    .line 133
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 134
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    .line 135
    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 134
    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 136
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 137
    sget v2, Lcom/nuance/swype/input/R$layout;->japanese_handwriting_candidates:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    iput-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    .line 139
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 140
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->initViews()V

    .line 141
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    sget v3, Lcom/nuance/swype/input/R$id;->cjk_candidates:I

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iput-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .line 146
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_46
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setOnWordSelectActionListener(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;)V

    .line 148
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    iput-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    .line 150
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    return-object v2
.end method

.method public destroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->destroy()V

    .line 156
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0, p0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->removeRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 157
    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 158
    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    .line 159
    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .registers 5
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 769
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCompletionOn:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mShownCandidateList:Z

    if-nez v0, :cond_15

    .line 771
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/Completions;->update([Landroid/view/inputmethod/CompletionInfo;)V

    .line 772
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Completions;->size()I

    move-result v0

    if-nez v0, :cond_16

    .line 778
    :cond_15
    :goto_15
    return-void

    .line 775
    :cond_16
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    .line 776
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Completions;->getDisplayItems()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    goto :goto_15
.end method

.method public finishInput()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 321
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 323
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->removeHowToUseToastMsg()V

    .line 324
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->hideHowToUseToast()V

    .line 326
    iput-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWritingOrRecognizing:Z

    .line 327
    iput-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mStarted:Z

    .line 328
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->flushCurrentActiveWord()V

    .line 329
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 330
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->dismissPopupKeyboard()V

    .line 331
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->endArcsAddingSequence()V

    .line 333
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->resetWrite()V

    .line 335
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0, p0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->removeRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 336
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->finishSession()V

    .line 337
    iput-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 338
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->requestLayout()V

    .line 339
    iput v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    .line 341
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->unwrapTouchEvent(Landroid/view/View;)V

    .line 342
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v0, v2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setInputContextRequestListener(Lcom/nuance/input/swypecorelib/InputContextRequest;)V

    .line 343
    return-void
.end method

.method public flushCurrentActiveWord()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 585
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->hideGridCandidatesView()V

    .line 586
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->acceptCurrentInline()V

    .line 587
    iput-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 588
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->clearArcs()V

    .line 589
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_1a

    .line 590
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iput-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v0, v2, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 592
    :cond_1a
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    if-eqz v0, :cond_23

    .line 593
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->noteSelectedCandidate(I)Z

    .line 595
    :cond_23
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 597
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->endArcsAddingSequence()V

    .line 598
    return-void
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 420
    iget v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    return v0
.end method

.method public getWordCandidateListContainer()Landroid/view/View;
    .registers 2

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    return-object v0
.end method

.method protected handleBackspace(I)Z
    .registers 4
    .param p1, "repeatedCount"    # I

    .prologue
    const/16 v1, 0x8

    .line 568
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 570
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->processPendingRecognizing()V

    .line 571
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->queueChar(C)V

    .line 580
    :goto_10
    const/4 v0, 0x1

    return v0

    .line 572
    :cond_12
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 576
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->queueChar(C)V

    goto :goto_10

    .line 578
    :cond_24
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->handleBackspace()Z

    goto :goto_10
.end method

.method public handleCharKey(Landroid/graphics/Point;I[IJ)V
    .registers 8
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "eventTime"    # J

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 493
    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p2

    .line 495
    :cond_a
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 496
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->processPendingRecognizing()V

    .line 498
    :cond_13
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    int-to-char v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->queueChar(C)V

    .line 499
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 500
    return-void
.end method

.method public handleClose()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 347
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->handleClose()V

    .line 348
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->removeHowToUseToastMsg()V

    .line 349
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->hideHowToUseToast()V

    .line 350
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->dismissPopupKeyboard()V

    .line 352
    iput v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    .line 354
    iput-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mStarted:Z

    .line 355
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->resetWrite()V

    .line 356
    return-void
.end method

.method public handleKey(IZI)Z
    .registers 5
    .param p1, "primaryCode"    # I
    .param p2, "quickPressed"    # Z
    .param p3, "repeatedCount"    # I

    .prologue
    const/4 v0, 0x1

    .line 360
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->hideHowToUseToast()V

    .line 362
    sparse-switch p1, :sswitch_data_1c

    .line 375
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v0

    :cond_b
    :goto_b
    return v0

    .line 364
    :sswitch_c
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->flushCurrentActiveWord()V

    .line 366
    if-nez p2, :cond_b

    .line 367
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->startSpeech()V

    goto :goto_b

    .line 371
    :sswitch_15
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    .line 372
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->clearArcs()V

    goto :goto_b

    .line 362
    :sswitch_data_1c
    .sparse-switch
        0xb54 -> :sswitch_15
        0x193f -> :sswitch_c
    .end sparse-switch
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    .line 385
    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_1e

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x16

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x14

    if-ne p1, v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public handleKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    .line 394
    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_1e

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x16

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x14

    if-ne p1, v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method protected handleScrollDown()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1372
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_e

    .line 1373
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->finishInput()V

    .line 1374
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/IME;->requestHideSelf(I)V

    .line 1375
    const/4 v0, 0x1

    .line 1377
    :cond_e
    return v0
.end method

.method public handleShiftKey()V
    .registers 2

    .prologue
    .line 869
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->cycleShiftState()V

    .line 871
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->invalidateKeyboardImage()V

    .line 872
    return-void
.end method

.method protected handleSpace(ZI)Z
    .registers 12
    .param p1, "quickPressed"    # Z
    .param p2, "repeatedCount"    # I

    .prologue
    const/16 v8, 0x20

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 510
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 512
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->processPendingRecognizing()V

    .line 513
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v4, v8}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->queueChar(C)V

    .line 553
    :goto_13
    return v7

    .line 514
    :cond_14
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v4, :cond_26

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_26

    .line 518
    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v4, v8}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->queueChar(C)V

    goto :goto_13

    .line 520
    :cond_26
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 521
    const/4 v0, 0x1

    .line 525
    .local v0, "addSpace":Z
    if-eqz p1, :cond_72

    if-ge p2, v6, :cond_72

    iget-boolean v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mAutoPunctuationOn:Z

    if-eqz v4, :cond_72

    .line 526
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v3

    .line 528
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 529
    invoke-interface {v3, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 535
    .local v1, "cSeqBefore":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/util/CharacterUtilities;->from(Landroid/content/Context;)Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v2

    .line 536
    .local v2, "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    if-eqz v1, :cond_6f

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v6, :cond_6f

    .line 537
    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 538
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v4

    if-nez v4, :cond_6f

    .line 539
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v4

    if-nez v4, :cond_6f

    .line 541
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->handleAutoPunct()V

    .line 542
    const/4 v0, 0x0

    .line 545
    :cond_6f
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 548
    .end local v1    # "cSeqBefore":Ljava/lang/CharSequence;
    .end local v2    # "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_72
    if-eqz v0, :cond_77

    .line 549
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->sendSpace()V

    .line 551
    :cond_77
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_13
.end method

.method public isHandWritingInputView()Z
    .registers 2

    .prologue
    .line 1398
    const/4 v0, 0x1

    return v0
.end method

.method public isScrollable(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Z
    .registers 3
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 1147
    const/4 v0, 0x0

    return v0
.end method

.method public nextBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .registers 3
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 1152
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->dismissPopupKeyboard()V

    .line 1153
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-ne p1, v0, :cond_18

    .line 1154
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 1155
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->showGridCandidatesView(Ljava/util/List;)V

    .line 1160
    :cond_18
    return-void
.end method

.method public onCandidateLongPressed(ILjava/lang/String;ILcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "wdSource"    # I
    .param p4, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 1366
    return-void
.end method

.method public onHandleWriteEvent(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V
    .registers 8
    .param p1, "event"    # Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;

    .prologue
    const-wide/16 v4, 0x5

    .line 805
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_d

    .line 806
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->isValidBuild()Z

    move-result v0

    if-nez v0, :cond_d

    .line 828
    :goto_c
    return-void

    .line 810
    :cond_d
    iget v0, p1, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;->mType:I

    packed-switch v0, :pswitch_data_3a

    goto :goto_c

    .line 812
    :pswitch_13
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->JpHwrInputViewHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->JpHwrInputViewHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    .line 813
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 812
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_c

    .line 817
    :pswitch_20
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->JpHwrInputViewHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->JpHwrInputViewHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    .line 818
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 817
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_c

    .line 822
    :pswitch_2d
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->JpHwrInputViewHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->JpHwrInputViewHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    .line 823
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 822
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_c

    .line 810
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_13
        :pswitch_2d
        :pswitch_20
    .end packed-switch
.end method

.method public onPressReleaseCandidate(ILjava/lang/String;I)Z
    .registers 5
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "wdSource"    # I

    .prologue
    .line 1368
    const/4 v0, 0x0

    return v0
.end method

.method public onScrollContentChanged()V
    .registers 2

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    if-eqz v0, :cond_9

    .line 1392
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->updateScrollArrowVisibility()V

    .line 1394
    :cond_9
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 408
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->processPendingRecognizing()V

    .line 410
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 411
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->queueText(Ljava/lang/CharSequence;)V

    .line 416
    :goto_20
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 417
    return-void

    .line 413
    :cond_28
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->queueText(Ljava/lang/CharSequence;)V

    goto :goto_20
.end method

.method public penDown(Landroid/view/View;)V
    .registers 4
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->dismissPopupKeyboard()V

    .line 681
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 682
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->removeDelayRecognitionStroke()V

    .line 684
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    if-eq v0, p1, :cond_56

    .line 685
    :cond_11
    check-cast p1, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    .end local p1    # "src":Landroid/view/View;
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    .line 687
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    if-eqz v0, :cond_56

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    .line 688
    invoke-virtual {v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_3b

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    .line 689
    invoke-virtual {v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_56

    .line 690
    :cond_3b
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->setWidth(I)V

    .line 691
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->setHeight(I)V

    .line 692
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->applyChangedSettings()V

    .line 695
    :cond_56
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWritingOrRecognizing:Z

    if-nez v0, :cond_5d

    .line 696
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 699
    :cond_5d
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    if-eqz v0, :cond_6a

    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWritingOrRecognizing:Z

    if-nez v0, :cond_6a

    .line 700
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->startArcsAddingSequence()V

    .line 703
    :cond_6a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWritingOrRecognizing:Z

    .line 704
    return-void
.end method

.method public penUp(Ljava/util/List;Landroid/view/View;)V
    .registers 8
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
    .local p1, "arc":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    const-wide/16 v2, 0x64

    const/4 v1, 0x2

    const/4 v4, 0x1

    .line 707
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 709
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1f

    .line 710
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->isPendingRecognizeStrokeMessage()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 711
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->removeDelayRecognitionStroke()V

    .line 712
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 721
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3c

    .line 722
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 723
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 724
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    .line 725
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->getRecognizerDelay()I

    move-result v1

    int-to-long v2, v1

    .line 724
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 731
    :cond_3c
    :goto_3c
    return-void

    .line 716
    :cond_3d
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1f

    .line 727
    :cond_43
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    .line 728
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->getRecognizerDelay()I

    move-result v1

    int-to-long v2, v1

    .line 727
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3c
.end method

.method public penUp([Lcom/nuance/swype/input/Stroke$Arc;Landroid/view/View;)V
    .registers 4
    .param p1, "arcs"    # [Lcom/nuance/swype/input/Stroke$Arc;
    .param p2, "Src"    # Landroid/view/View;

    .prologue
    .line 1079
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/nuance/swype/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-virtual {p0, v0, p2}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->penUp(Ljava/util/List;Landroid/view/View;)V

    .line 1080
    return-void
.end method

.method public prevBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .registers 3
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 1164
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->dismissPopupKeyboard()V

    .line 1165
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-ne p1, v0, :cond_18

    .line 1166
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 1167
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->showGridCandidatesView(Ljava/util/List;)V

    .line 1171
    :cond_18
    return-void
.end method

.method protected removeAllMessages()V
    .registers 4

    .prologue
    .line 857
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->JpHwrInputViewHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 858
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->JpHwrInputViewHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 859
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->JpHwrInputViewHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 860
    const/4 v0, 0x1

    .local v0, "msg":I
    :goto_13
    const/16 v1, 0x13

    if-gt v0, v1, :cond_1f

    .line 861
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 860
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 863
    :cond_1f
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 864
    return-void
.end method

.method public selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/CharSequence;
    .param p3, "source"    # Landroid/view/View;

    .prologue
    .line 752
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0, p2}, Lcom/nuance/swype/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 754
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 755
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 757
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->noteSelectedCandidate(I)Z

    .line 759
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->endArcsAddingSequence()V

    .line 761
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->getRecognitionMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    .line 762
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->showNextWordPrediction(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 764
    :cond_2d
    return-void
.end method

.method public setActiveCandidate(I)V
    .registers 4
    .param p1, "n"    # I

    .prologue
    .line 650
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_1f

    if-ltz p1, :cond_1f

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1f

    .line 652
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getPureCandidate(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/Composition;->showInline(Ljava/lang/CharSequence;)V

    .line 654
    :cond_1f
    return-void
.end method

.method public setCandidatesViewShown(Z)V
    .registers 4
    .param p1, "shown"    # Z

    .prologue
    .line 484
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setCandidatesViewShown(Z)V

    .line 485
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    if-eqz v0, :cond_f

    .line 486
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListViewContainer:Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;

    if-eqz p1, :cond_10

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->setVisibility(I)V

    .line 488
    :cond_f
    return-void

    .line 486
    :cond_10
    const/16 v0, 0x8

    goto :goto_c
.end method

.method public setContainerView(Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;)V
    .registers 2
    .param p1, "container"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    .line 287
    return-void
.end method

.method public setGridCandidates(Ljava/util/List;I)V
    .registers 22
    .param p2, "keyboardWidth"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

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
    .line 1283
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

    .line 1285
    .local v16, "textSize":I
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 1286
    .local v12, "paint":Landroid/graphics/Paint;
    sget-object v17, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1287
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1288
    sget-object v17, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1289
    div-int/lit8 v17, v16, 0x3

    add-int/lit8 v11, v17, 0x1

    .line 1291
    .local v11, "paddingWidth":I
    const/4 v6, 0x0

    .line 1292
    .local v6, "curRowWidth":I
    const/4 v5, 0x0

    .line 1293
    .local v5, "curRowNumber":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1294
    .local v14, "rowKeyWidth":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRows:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 1295
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_46
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_14f

    .line 1298
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v5, :cond_64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRows:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-gt v0, v5, :cond_dd

    .line 1299
    :cond_64
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1300
    .local v4, "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRows:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1301
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1302
    .local v3, "curRowKeyWidth":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1309
    :goto_7c
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getPureCandidate(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1310
    .local v15, "str":Ljava/lang/String;
    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x2

    mul-int/lit8 v18, v11, 0x2

    add-int v9, v17, v18

    .line 1311
    .local v9, "keyWidth":I
    mul-int/lit8 v17, v11, 0x2

    add-int v17, v17, v16

    move/from16 v0, v17

    if-ge v9, v0, :cond_ab

    .line 1312
    mul-int/lit8 v17, v11, 0x2

    add-int v9, v16, v17

    .line 1316
    :cond_ab
    add-int v17, v6, v9

    move/from16 v0, v17

    move/from16 v1, p2

    if-le v0, v1, :cond_138

    .line 1318
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_bf

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_f2

    .line 1319
    :cond_bf
    new-instance v17, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-direct {v0, v1, v15}, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;-><init>(ILjava/lang/CharSequence;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1320
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1338
    :goto_d6
    const/4 v6, 0x0

    .line 1339
    add-int/lit8 v5, v5, 0x1

    .line 1295
    :goto_d9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_46

    .line 1304
    .end local v3    # "curRowKeyWidth":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    .end local v9    # "keyWidth":I
    .end local v15    # "str":Ljava/lang/String;
    :cond_dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRows:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1305
    .restart local v4    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .restart local v3    # "curRowKeyWidth":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_7c

    .line 1322
    .restart local v9    # "keyWidth":I
    .restart local v15    # "str":Ljava/lang/String;
    :cond_f2
    sub-int v17, p2, v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v18

    div-int v2, v17, v18

    .line 1323
    .local v2, "addingWidth":I
    const/4 v13, 0x0

    .line 1324
    .local v13, "refreshedRowWidth":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_fc
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_135

    .line 1325
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    add-int v10, v17, v2

    .line 1326
    .local v10, "newKeyWidth":I
    add-int/2addr v13, v10

    .line 1328
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ne v0, v8, :cond_11f

    .line 1329
    sub-int v17, p2, v13

    add-int v10, v10, v17

    .line 1331
    :cond_11f
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v8, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1332
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    move-object/from16 v0, v17

    iput v10, v0, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 1324
    add-int/lit8 v8, v8, 0x1

    goto :goto_fc

    .line 1335
    .end local v10    # "newKeyWidth":I
    :cond_135
    add-int/lit8 v7, v7, -0x1

    goto :goto_d6

    .line 1341
    .end local v2    # "addingWidth":I
    .end local v8    # "j":I
    .end local v13    # "refreshedRowWidth":I
    :cond_138
    add-int/2addr v6, v9

    .line 1342
    new-instance v17, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    move-object/from16 v0, v17

    invoke-direct {v0, v9, v15}, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;-><init>(ILjava/lang/CharSequence;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1343
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d9

    .line 1347
    .end local v3    # "curRowKeyWidth":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    .end local v9    # "keyWidth":I
    .end local v15    # "str":Ljava/lang/String;
    :cond_14f
    return-void
.end method

.method public setHandWritingView(Lcom/nuance/swype/input/HandWritingView;)V
    .registers 2
    .param p1, "view"    # Lcom/nuance/swype/input/HandWritingView;

    .prologue
    .line 282
    check-cast p1, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    .end local p1    # "view":Lcom/nuance/swype/input/HandWritingView;
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    .line 283
    return-void
.end method

.method public setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V
    .registers 2
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;

    .prologue
    .line 603
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->updateDockModeForHandwriting(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 604
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 605
    return-void
.end method

.method public setNormalHandScreenWritingFrame()V
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->setNormalHandScreenWritingFrame()V

    .line 266
    return-void
.end method

.method protected setSwypeKeytoolTipSuggestion()V
    .registers 2

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_10

    .line 1383
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->showSwypeTooltip()V

    .line 1384
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 1385
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 1387
    :cond_10
    return-void
.end method

.method public showHandWritingView(Z)V
    .registers 6
    .param p1, "animation"    # Z

    .prologue
    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "animate":Landroid/view/animation/AlphaAnimation;
    if-eqz p1, :cond_10

    .line 272
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "animate":Landroid/view/animation/AlphaAnimation;
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 273
    .restart local v0    # "animate":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 275
    :cond_10
    if-eqz v0, :cond_19

    .line 276
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    iget-object v1, v1, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 278
    :cond_19
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->setNormalHandScreenWritingFrame()V

    .line 279
    return-void
.end method

.method protected showLastSavedHandWritingScreen()V
    .registers 2

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->setNormalHandScreenWritingFrame()V

    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->showHandWritingView(Z)V

    .line 262
    return-void
.end method

.method public startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V
    .registers 11
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p2, "restarting"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 165
    iput-boolean v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mStarted:Z

    .line 166
    iput v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mHandWritingMode:I

    .line 168
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V

    .line 170
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v3, :cond_12

    .line 171
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWordListView:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateCandidatesSize()V

    .line 174
    :cond_12
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    if-eqz v3, :cond_1b

    .line 175
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJPHandWritingContainer:Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->updateHandwritingPadSize()V

    .line 178
    :cond_1b
    iput-boolean v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCompletionOn:Z

    .line 180
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v3

    if-nez v3, :cond_112

    iget-boolean v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCompletionOn:Z

    if-nez v3, :cond_112

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 181
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputFieldInfo;->isCompletionField()Z

    move-result v3

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputFieldInfo;->isURLField()Z

    move-result v3

    if-nez v3, :cond_112

    :cond_39
    move v3, v4

    :goto_3a
    iput-boolean v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mShownCandidateList:Z

    .line 183
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->dismissPopupKeyboard()V

    .line 184
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->flushCurrentActiveWord()V

    .line 185
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->showLastSavedHandWritingScreen()V

    .line 187
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v3, p0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->addRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 189
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->cancelCurrentDefaultWord()Z

    .line 190
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/nuance/swype/input/Composition;->setInputConnection(Landroid/view/inputmethod/InputConnection;)V

    .line 191
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->clearCategory()V

    .line 192
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v3

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    iget-object v7, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3, v6, v7}, Lcom/nuance/swype/input/InputMethods;->addTextCategory(Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 194
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->setKeyboardForTextEntry(Lcom/nuance/swype/input/InputFieldInfo;)V

    .line 199
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v1

    .line 200
    .local v1, "lang":I
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v3, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->startSession(I)V

    .line 201
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v3, :cond_7f

    .line 202
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 205
    :cond_7f
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->isHwrScrmodeEnabled()Z

    move-result v3

    if-eqz v3, :cond_115

    .line 206
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v3, v5}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->setRecognitionMode(I)V

    .line 217
    :goto_92
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->applyChangedSettings()V

    .line 218
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->isHwrRotationEnabled()Z

    move-result v3

    if-eqz v3, :cond_13a

    .line 219
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->updateRotationSetting(Z)V

    .line 224
    :goto_aa
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v3, v5}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->updateAttachingCommonWordsLDB(Z)V

    .line 226
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 228
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    const-string/jumbo v4, "hwr_auto_recpgnize_delay"

    sget v5, Lcom/nuance/swype/input/R$integer;->handwriting_auto_recognize_default_ms:I

    .line 230
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 227
    invoke-static {v3, v4, v5}, Lcom/nuance/swype/input/settings/InputPrefs;->getAutoDelay(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v0

    .line 232
    .local v0, "delay":I
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v3, v0}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->setRecognizerDelay(I)V

    .line 233
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->clearArcs()V

    .line 236
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->removeHowToUseToastMsg()V

    .line 237
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->postHowToUseToastMsg()V

    .line 239
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    .line 241
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mJapaneseInput:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    .line 243
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->postDelayResumeSpeech()V

    .line 245
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    new-instance v4, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;

    iget-object v5, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v6, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getDefaultKeyUIStateHandler()Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler$KeyUIState;

    move-result-object v7

    invoke-direct {v4, v5, p0, v6, v7}, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/InputView;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler$KeyUIState;)V

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->resisterTouchKeyHandler(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;)V

    .line 246
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    iget-object v4, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->flingGestureListener:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->registerFlingGestureHandler(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;)V

    .line 247
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    invoke-virtual {v3, p0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->wrapTouchEvent(Landroid/view/View;)V

    .line 248
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-static {}, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->getDispatcherInstance()Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;

    move-result-object v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getDefaultInputContextHandler()Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->setHandler(Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;)Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setInputContextRequestListener(Lcom/nuance/input/swypecorelib/InputContextRequest;)V

    .line 250
    return-void

    .end local v0    # "delay":I
    .end local v1    # "lang":I
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_112
    move v3, v5

    .line 181
    goto/16 :goto_3a

    .line 208
    .restart local v1    # "lang":I
    :cond_115
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->setRecognitionMode(I)V

    .line 209
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_132

    .line 211
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v3, v5}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->setWritingDirection(I)V

    goto/16 :goto_92

    .line 213
    :cond_132
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->setWritingDirection(I)V

    goto/16 :goto_92

    .line 221
    :cond_13a
    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mWriteJapanese:Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    invoke-virtual {v3, v5}, Lcom/nuance/input/swypecorelib/T9WriteJapanese;->updateRotationSetting(Z)V

    goto/16 :goto_aa
.end method

.method public startRecognizeNow(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 734
    .local p1, "arc":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 736
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 737
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->performDelayRecognition()V

    .line 738
    return-void
.end method

.method public updateSelection(IIII[I)V
    .registers 8
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesIndices"    # [I

    .prologue
    const/4 v1, 0x1

    .line 784
    invoke-super/range {p0 .. p5}, Lcom/nuance/swype/input/InputView;->updateSelection(IIII[I)V

    .line 788
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_1f

    aget v0, p5, v1

    if-ne p3, v0, :cond_18

    aget v0, p5, v1

    if-eq p4, v0, :cond_1f

    .line 791
    :cond_18
    invoke-direct {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 792
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    .line 795
    :cond_1f
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_28

    .line 796
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0, p3, p4}, Lcom/nuance/swype/input/Composition;->setSelection(II)V

    .line 798
    :cond_28
    return-void
.end method
