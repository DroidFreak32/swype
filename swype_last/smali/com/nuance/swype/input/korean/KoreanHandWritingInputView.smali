.class public Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;
.super Lcom/nuance/swype/input/InputView;
.source "KoreanHandWritingInputView.java"

# interfaces
.implements Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;
.implements Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;
.implements Lcom/nuance/swype/input/HandWritingView$OnWritingAction;
.implements Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;


# static fields
.field private static final END_SELECTION_GRID_CONTAINER:I = -0x1

.field private static final EVENT_ON_CANDIDATELIST:I = 0x1

.field private static final EVENT_ON_INITIAL:I = -0x1

.field private static final EVENT_ON_KEYBOARD:I = 0x0

.field private static final HIDE_IME:I = -0x2

.field private static final MSG_DELAY_RECOGNIZER:I = 0x1

.field static final MSG_DELAY_RECOGNIZER_ADD_STROKE:I = 0x2

.field private static final MSG_DELAY_SHOWING_FULLSCREEN:I = 0x1

.field private static final MSG_HANDLE_CHAR:I = 0x3

.field private static final MSG_HANDLE_SHOW_START_OF_WORD_CANDIDATE:I = 0x5

.field private static final MSG_HANDLE_SUGGESTION_CANDIDATES:I = 0x2

.field private static final MSG_HANDLE_TEXT:I = 0x4

.field private static final MSG_SHOW_HOW_TO_TOAST:I = 0x1f7

.field private static final WRITING_MODE_SYMBOLS_AND_DIGITS:I = 0x1

.field private static final WRITING_MODE_TEXT:I

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static mWordListHeight:I


# instance fields
.field private final delayRecognizerHandlerCallback:Landroid/os/Handler$Callback;

.field private final delayShowingFullScreenHandlerCallback:Landroid/os/Handler$Callback;

.field private final hwrHandlerCallback:Landroid/os/Handler$Callback;

.field private isContextCandidates:Z

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

.field private final mComposition:Lcom/nuance/swype/input/Composition;

.field private mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

.field private mCurrentWritingMode:I

.field private mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

.field private final mDelayRecognizeHandler:Landroid/os/Handler;

.field private final mDelayShowingFullScreenHandler:Landroid/os/Handler;

.field private mFullScreenHandWriting:Z

.field private final mHwrHandler:Landroid/os/Handler;

.field mKeyboardHeight:I

.field private mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

.field private final mPopupViewHandler:Landroid/os/Handler;

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

.field private mSelectionAreaOption:I

.field private mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

.field private mWritingOrRecognizing:Z

.field private final popupViewHandlerCallback:Landroid/os/Handler$Callback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 92
    const/4 v0, 0x0

    sput v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWordListHeight:I

    .line 103
    const-string/jumbo v0, "KoreanHandWritingInputView"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defaultStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    iput-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isContextCandidates:Z

    .line 81
    iput v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mSelectionAreaOption:I

    .line 96
    iput v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardHeight:I

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCachedPoints:Ljava/util/List;

    .line 101
    iput-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWritingOrRecognizing:Z

    .line 821
    new-instance v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$1;-><init>(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->hwrHandlerCallback:Landroid/os/Handler$Callback;

    .line 880
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->hwrHandlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mHwrHandler:Landroid/os/Handler;

    .line 897
    new-instance v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$2;-><init>(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->delayRecognizerHandlerCallback:Landroid/os/Handler$Callback;

    .line 919
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->delayRecognizerHandlerCallback:Landroid/os/Handler$Callback;

    .line 920
    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    .line 1032
    new-instance v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$3;-><init>(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->popupViewHandlerCallback:Landroid/os/Handler$Callback;

    .line 1055
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->popupViewHandlerCallback:Landroid/os/Handler$Callback;

    .line 1056
    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    .line 1154
    new-instance v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$4;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$4;-><init>(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->delayShowingFullScreenHandlerCallback:Landroid/os/Handler$Callback;

    .line 1169
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->delayShowingFullScreenHandlerCallback:Landroid/os/Handler$Callback;

    .line 1170
    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mDelayShowingFullScreenHandler:Landroid/os/Handler;

    .line 112
    new-instance v0, Lcom/nuance/swype/input/Composition;

    invoke-direct {v0}, Lcom/nuance/swype/input/Composition;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    .line 113
    return-void
.end method

.method private acceptCurrentActiveWord()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 257
    sget-object v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "acceptCurrentActiveWord()"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, " called "

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 258
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    .line 259
    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_38

    .line 260
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->acceptCurrentInline()V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 262
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0, v4}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->noteSelectedCandidate(I)Z

    .line 264
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->endArcsAddingSequence()V

    .line 266
    :cond_38
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    .line 267
    return-void
.end method

.method private acceptCurrentDefaultWord()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 537
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    if-eqz v0, :cond_40

    .line 539
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_40

    .line 540
    sget-object v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "acceptCurrentDefaultWord()"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, " called "

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 541
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->acceptCurrentInline()V

    .line 542
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v0, v1, v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 544
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 546
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0, v4}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->noteSelectedCandidate(I)Z

    .line 549
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->endArcsAddingSequence()V

    .line 553
    :cond_40
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)Lcom/nuance/swype/input/korean/KoreanHandWritingView;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;C)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;
    .param p1, "x1"    # C

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->handleChar(C)V

    return-void
.end method

.method static synthetic access$1000(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->performDelayRecognitionStroke()V

    return-void
.end method

.method static synthetic access$1100(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->showHowToUseToast()V

    return-void
.end method

.method static synthetic access$1200(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->showDelayFullScreen()V

    return-void
.end method

.method static synthetic access$202(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isContextCandidates:Z

    return p1
.end method

.method static synthetic access$300()Lcom/nuance/swype/util/LogManager$Log;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->acceptCurrentActiveWord()V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;Ljava/lang/CharSequence;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->handleText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->showStartOfWordCandidateList()V

    return-void
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->performDelayRecognition()V

    return-void
.end method

.method private cancelCurrentDefaultWord()V
    .registers 4

    .prologue
    .line 519
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    .line 520
    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_2e

    .line 521
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->clearCurrentInline()V

    .line 522
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 524
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 526
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->noteSelectedCandidate(I)Z

    .line 529
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->endArcsAddingSequence()V

    .line 533
    :cond_2e
    return-void
.end method

.method private changeAltIconOfSwitchingLayout(Z)V
    .registers 8
    .param p1, "aFullScreen"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 1372
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    .line 1373
    if-eqz v4, :cond_63

    .line 1374
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v3

    .line 1375
    .local v3, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_63

    .line 1376
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1377
    .local v2, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const v5, 0xaa3b

    if-ne v4, v5, :cond_43

    .line 1378
    if-eqz p1, :cond_46

    .line 1379
    iget-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_40

    .line 1380
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 1381
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    sget v4, Lcom/nuance/swype/input/R$attr;->cjkAltIconMinHwCommaKey:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 1382
    sget v4, Lcom/nuance/swype/input/R$attr;->cjkAltPreMinHwCommaKey:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 1393
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    :cond_40
    :goto_40
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 1375
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1386
    :cond_46
    iget-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_40

    .line 1387
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 1388
    .restart local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    sget v4, Lcom/nuance/swype/input/R$attr;->cjkAltIconMaxHwCommaKey:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 1389
    sget v4, Lcom/nuance/swype/input/R$attr;->cjkAltPreMaxHwCommaKey:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_40

    .line 1398
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    .end local v1    # "i":I
    .end local v2    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v3    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    :cond_63
    return-void
.end method

.method private clearArcs()V
    .registers 2

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    if-eqz v0, :cond_9

    .line 1655
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->clearArcs()V

    .line 1657
    :cond_9
    return-void
.end method

.method private deleteOneCharacter()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 471
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->hasRecognitionCandidates()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isContextCandidates:Z

    if-nez v1, :cond_2e

    .line 473
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->endArcsAddingSequence()V

    .line 475
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->removeOneCharacterFromCandidateList()Ljava/lang/CharSequence;

    move-result-object v0

    .line 476
    .local v0, "seq":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1e

    .line 477
    :cond_1a
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->cancelCurrentDefaultWord()V

    .line 487
    .end local v0    # "seq":Ljava/lang/CharSequence;
    :goto_1d
    return-void

    .line 479
    .restart local v0    # "seq":Ljava/lang/CharSequence;
    :cond_1e
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 481
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 482
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    goto :goto_1d

    .line 485
    .end local v0    # "seq":Ljava/lang/CharSequence;
    :cond_2e
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/IME;->sendBackspace(I)V

    goto :goto_1d
.end method

.method private endArcsAddingSequence()V
    .registers 5

    .prologue
    .line 564
    sget-object v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "endArcsAddingSequence()"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, " called  "

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 565
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->endArcsAddingSequence()V

    .line 566
    return-void
.end method

.method private getContextCandidates(Ljava/lang/CharSequence;)Ljava/util/List;
    .registers 14
    .param p1, "wordJustSelected"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1841
    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->getRecognitionMode()I

    move-result v6

    if-nez v6, :cond_11

    :cond_f
    move-object v1, v5

    .line 1870
    :cond_10
    :goto_10
    return-object v1

    .line 1844
    :cond_11
    sget-object v6, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "getContextCandidates()"

    aput-object v8, v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, " called  :: wordJustSelected== "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1845
    const/4 v1, 0x0

    .line 1846
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v6

    .line 1847
    const/16 v7, 0x11

    invoke-interface {v6, v7, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1849
    .local v2, "seqBeforeCursor":Ljava/lang/CharSequence;
    if-eqz v2, :cond_10

    .line 1850
    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->clearAllKeys()Z

    .line 1851
    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v6, v5}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setContext([C)V

    .line 1852
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->setContext([C)V

    .line 1853
    if-eqz p1, :cond_63

    .line 1854
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->noteWordDone(Ljava/lang/String;)Z

    .line 1855
    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    iput-object v5, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 1857
    :cond_63
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    sget-object v6, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v5, v6}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    .line 1858
    .local v0, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v5

    if-lez v5, :cond_10

    .line 1859
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getCandidates()Ljava/util/List;

    move-result-object v4

    .line 1860
    .local v4, "words":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/WordCandidate;>;"
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1862
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_80
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_94

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/input/swypecorelib/WordCandidate;

    .line 1863
    .local v3, "word":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_80

    .line 1866
    .end local v3    # "word":Lcom/nuance/input/swypecorelib/WordCandidate;
    :cond_94
    iput-boolean v11, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isContextCandidates:Z

    goto/16 :goto_10
.end method

.method private getFullScreenSettingKey(I)Ljava/lang/String;
    .registers 4
    .param p1, "language"    # I

    .prologue
    .line 1548
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "fullscreen.enabled."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLastFullScreenState(I)Z
    .registers 5
    .param p1, "language"    # I

    .prologue
    .line 1558
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getFullScreenSettingKey(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getPureCandidate(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "candidate"    # Ljava/lang/CharSequence;

    .prologue
    .line 1833
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1834
    .local v0, "cand":Ljava/lang/String;
    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1835
    .local v1, "index":I
    if-gtz v1, :cond_d

    .line 1837
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

.method private handleAutoPunct()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 435
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 436
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_8

    .line 448
    :goto_7
    return-void

    .line 440
    :cond_8
    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 442
    const-string/jumbo v0, "."

    .line 444
    .local v0, "autopunct":Ljava/lang/CharSequence;
    invoke-interface {v1, v0, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 446
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->sendSpace()V

    goto :goto_7
.end method

.method private handleChar(C)V
    .registers 3
    .param p1, "ch"    # C

    .prologue
    .line 490
    const/16 v0, 0xd

    if-ne p1, v0, :cond_6

    const/16 p1, 0xa

    .line 492
    :cond_6
    sparse-switch p1, :sswitch_data_18

    .line 503
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->acceptCurrentDefaultWord()V

    .line 504
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->sendKeyChar(C)V

    .line 506
    :goto_f
    return-void

    .line 495
    :sswitch_10
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->handleSpace()V

    goto :goto_f

    .line 499
    :sswitch_14
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->deleteOneCharacter()V

    goto :goto_f

    .line 492
    :sswitch_data_18
    .sparse-switch
        0x8 -> :sswitch_14
        0x20 -> :sswitch_10
    .end sparse-switch
.end method

.method private handleSpace()V
    .registers 1

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->acceptCurrentDefaultWord()V

    .line 466
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->sendSpace()V

    .line 467
    return-void
.end method

.method private handleText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 724
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->acceptCurrentDefaultWord()V

    .line 725
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 726
    return-void
.end method

.method private hasRecognitionCandidates()Z
    .registers 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private hideFullScreenHandWritingView()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1500
    iput-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    .line 1501
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->changeAltIconOfSwitchingLayout(Z)V

    .line 1503
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->hideFullScreenHandWritingFrame()V

    .line 1504
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mStarted:Z

    if-eqz v0, :cond_14

    .line 1505
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->setNormalHandScreenWritingFrame()V

    .line 1507
    :cond_14
    return-void
.end method

.method private hideHowToUseToast()V
    .registers 1

    .prologue
    .line 208
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 209
    return-void
.end method

.method private isPendingRecognizeMessage()Z
    .registers 3

    .prologue
    .line 509
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private isPendingRecognizeStrokeMessage()Z
    .registers 3

    .prologue
    .line 733
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private performDelayRecognition()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 759
    sget-object v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "performDelayRecognition()"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, " called  :: "

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 761
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    if-eqz v0, :cond_1b

    .line 762
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->endArcsAddingSequence()V

    .line 765
    :cond_1b
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 766
    iput-boolean v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWritingOrRecognizing:Z

    .line 768
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    if-eqz v0, :cond_2d

    .line 769
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    iget-object v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FaddingStrokeQueue;->clearAll()V

    .line 771
    :cond_2d
    return-void
.end method

.method private performDelayRecognitionStroke()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 737
    sget-object v3, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "performDelayRecognitionStroke()"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, " called  :: "

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 738
    const/4 v2, 0x0

    .line 739
    .local v2, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_51

    .line 740
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-nez v3, :cond_4e

    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-nez v3, :cond_4e

    .line 742
    add-int/lit8 v0, v1, -0x1

    .line 743
    .local v0, "end":I
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    if-eqz v3, :cond_4c

    if-ltz v2, :cond_4c

    if-ge v2, v0, :cond_4c

    .line 744
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v4, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4, v7, v7}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->queueAddArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 746
    :cond_4c
    add-int/lit8 v2, v1, 0x1

    .line 739
    .end local v0    # "end":I
    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 750
    :cond_51
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    if-eqz v3, :cond_5a

    .line 751
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v3, v7}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->queueRecognition(Ljava/lang/CharSequence;)V

    .line 754
    :cond_5a
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCachedPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 755
    return-void
.end method

.method private postDelayResumeSpeech()V
    .registers 5

    .prologue
    const/16 v1, 0xb

    .line 1268
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1269
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1271
    :cond_f
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1272
    return-void
.end method

.method private postDelayShowingStartOfWordCandidate()V
    .registers 5

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mHwrHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1368
    return-void
.end method

.method private postHowToUseToastMsg()V
    .registers 5

    .prologue
    .line 204
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0x1f7

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 205
    return-void
.end method

.method private processPendingRecognizing()V
    .registers 3

    .prologue
    .line 513
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 514
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->performDelayRecognition()V

    .line 515
    return-void
.end method

.method private removeAllPendingMsg()V
    .registers 3

    .prologue
    .line 774
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mHwrHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 775
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mHwrHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 776
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mHwrHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 777
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mHwrHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 778
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 779
    return-void
.end method

.method private removeDelayRecognitionMsg()V
    .registers 3

    .prologue
    .line 679
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 680
    return-void
.end method

.method private removeDelayRecognitionStroke()V
    .registers 3

    .prologue
    .line 729
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 730
    return-void
.end method

.method private removeDelayShowingFullScreenMsg()V
    .registers 3

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mDelayShowingFullScreenHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 1526
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1527
    return-void
.end method

.method private removeOneCharacterFromCandidateList()Ljava/lang/CharSequence;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, "seq":Ljava/lang/CharSequence;
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->hasRecognitionCandidates()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 457
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getPureCandidate(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 458
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 461
    :cond_1e
    return-object v0
.end method

.method private setFullScreenHandWritingFrame()V
    .registers 2

    .prologue
    .line 1333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    .line 1334
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->setFullScreenHandWritingFrame()V

    .line 1335
    return-void
.end method

.method private setKeyboardForTextEntry(Lcom/nuance/swype/input/InputFieldInfo;)V
    .registers 7
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 222
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v4

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v1

    .line 221
    :goto_17
    invoke-virtual {v3, p1, v4, v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;Z)Lcom/nuance/swype/input/XT9Keyboard;

    .line 224
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->clearCategory()V

    .line 225
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNumericModeField()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 226
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->addDigitsAndSymbolsOnlyCategory()V

    .line 227
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->addPunctuationCategory()V

    .line 228
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->addGestureCategory()V

    .line 229
    iput v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    .line 235
    :goto_36
    return-void

    :cond_37
    move v0, v2

    .line 222
    goto :goto_17

    .line 231
    :cond_39
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/input/InputMethods;->addTextCategory(Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 232
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->addGestureCategory()V

    .line 233
    iput v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    goto :goto_36
.end method

.method private setLastFullScreenState(Z)V
    .registers 4
    .param p1, "fullscreen"    # Z

    .prologue
    .line 1552
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 1553
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getFullScreenSettingKey(I)Ljava/lang/String;

    move-result-object v1

    .line 1552
    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 1555
    return-void
.end method

.method private setNormalHandScreenWritingFrame()V
    .registers 2

    .prologue
    .line 1401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    .line 1402
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->hideFullScreenHandWritingFrame()V

    .line 1403
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->setNormalHandScreenWritingFrame()V

    .line 1404
    return-void
.end method

.method private static setWordListHeight(I)V
    .registers 1
    .param p0, "wordListHeight"    # I

    .prologue
    .line 1760
    sput p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWordListHeight:I

    .line 1761
    return-void
.end method

.method private showDelayFullScreen()V
    .registers 2

    .prologue
    .line 1510
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1512
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->showHandWritingView()V

    .line 1517
    :goto_9
    return-void

    .line 1515
    :cond_a
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->postDelayShowingFullScreenMsg()V

    goto :goto_9
.end method

.method private showFullScreenHandWritingView()V
    .registers 13

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 1462
    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v7}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v7

    if-eqz v7, :cond_6c

    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v7, v7, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    .line 1463
    invoke-virtual {v7}, Lcom/nuance/swype/input/IMEHandlerManager;->statusBarHeight()I

    move-result v4

    .line 1464
    .local v4, "status_bar_height":I
    :goto_17
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1466
    .local v1, "display":Landroid/util/DisplayMetrics;
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1467
    .local v5, "w":I
    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1468
    sub-int v3, v7, v4

    .line 1469
    .local v3, "fullHandWritingScreenYOffset":I
    move v2, v3

    .line 1470
    .local v2, "fullHandWritingScreenHeight":I
    sget-object v7, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v8, v11, [Ljava/lang/Object;

    const-string/jumbo v9, "showFullScreenHandWritingView...fullHandWritingScreenHeight: "

    aput-object v9, v8, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1472
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 1473
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isMiniKeyboardMode()Z

    move-result v7

    if-nez v7, :cond_56

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isDockMiniKeyboardMode()Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 1474
    :cond_56
    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v7, :cond_9d

    .line 1475
    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v7}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    .line 1476
    .local v0, "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    if-eqz v0, :cond_94

    .line 1477
    iget-boolean v7, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isOnceAction:Z

    if-eqz v7, :cond_6e

    .line 1478
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->postDelayShowingFullScreenMsg()V

    .line 1479
    iput-boolean v6, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isOnceAction:Z

    .line 1497
    .end local v0    # "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    :goto_6b
    return-void

    .end local v1    # "display":Landroid/util/DisplayMetrics;
    .end local v2    # "fullHandWritingScreenHeight":I
    .end local v3    # "fullHandWritingScreenYOffset":I
    .end local v4    # "status_bar_height":I
    .end local v5    # "w":I
    :cond_6c
    move v4, v6

    .line 1463
    goto :goto_17

    .line 1482
    .restart local v0    # "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    .restart local v1    # "display":Landroid/util/DisplayMetrics;
    .restart local v2    # "fullHandWritingScreenHeight":I
    .restart local v3    # "fullHandWritingScreenYOffset":I
    .restart local v4    # "status_bar_height":I
    .restart local v5    # "w":I
    :cond_6e
    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->getRootViewHeight()I

    move-result v7

    if-gtz v7, :cond_78

    .line 1483
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->postDelayShowingFullScreenMsg()V

    goto :goto_6b

    .line 1487
    :cond_78
    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->getRootViewHeight()I

    move-result v7

    sub-int v2, v3, v7

    .line 1488
    sget-object v7, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v8, v11, [Ljava/lang/Object;

    const-string/jumbo v9, "showFullScreenHandWritingView...root view height: "

    aput-object v9, v8, v6

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->getRootViewHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1490
    :cond_94
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v7

    sub-int/2addr v3, v7

    .line 1494
    .end local v0    # "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    :cond_9d
    invoke-direct {p0, v10}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->changeAltIconOfSwitchingLayout(Z)V

    .line 1495
    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    neg-int v8, v3

    invoke-virtual {v7, v6, v8, v5, v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->showFullScreenHandWritingFrame(IIII)V

    goto :goto_6b
.end method

.method private showHandWritingView()V
    .registers 2

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->isSpeechViewShowing()Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_c
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isNumMode()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1459
    :cond_1c
    :goto_1c
    return-void

    .line 1452
    :cond_1d
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->changeAltIconOfSwitchingLayout(Z)V

    .line 1454
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    if-eqz v0, :cond_2a

    .line 1455
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->showFullScreenHandWritingView()V

    goto :goto_1c

    .line 1457
    :cond_2a
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->setNormalHandScreenWritingFrame()V

    goto :goto_1c
.end method

.method private showHowToUseToast()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 183
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 184
    .local v0, "sm":Lcom/nuance/swype/input/AppPreferences;
    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    if-eqz v1, :cond_3c

    .line 185
    const-string/jumbo v1, "show_how_to_toggle_half_screen_mode_en"

    invoke-virtual {v0, v1, v5}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 186
    const-string/jumbo v1, "show_how_to_toggle_half_screen_mode_en"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 187
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->how_to_toggle_half_screen_mode:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 187
    invoke-static {v1, v2, v5, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 201
    :cond_3b
    :goto_3b
    return-void

    .line 193
    :cond_3c
    const-string/jumbo v1, "show_how_to_toggle_full_screen_mode_en"

    invoke-virtual {v0, v1, v5}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 194
    const-string/jumbo v1, "show_how_to_toggle_full_screen_mode_en"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 195
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->how_to_toggle_full_screen_mode:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 195
    invoke-static {v1, v2, v5, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    goto :goto_3b
.end method

.method private showLastSavedHandWritingScreen()V
    .registers 2

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getLastFullScreenState(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1531
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setFullScreenHandWritingFrame()V

    .line 1532
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->changeAltIconOfSwitchingLayout(Z)V

    .line 1533
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->updateKeyboardDockMode()V

    .line 1534
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->postDelayShowingFullScreenMsg()V

    .line 1545
    :goto_19
    return-void

    .line 1536
    :cond_1a
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->changeAltIconOfSwitchingLayout(Z)V

    .line 1538
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    if-eqz v0, :cond_2a

    .line 1539
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setFullScreenHandWritingFrame()V

    .line 1540
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->postDelayShowingFullScreenMsg()V

    goto :goto_19

    .line 1542
    :cond_2a
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setNormalHandScreenWritingFrame()V

    goto :goto_19
.end method

.method private showStartOfWordCandidateList()V
    .registers 7

    .prologue
    .line 883
    invoke-static {}, Lcom/nuance/swype/input/IME;->getLastSavedActiveWordAndSet()Ljava/lang/String;

    move-result-object v0

    .line 885
    .local v0, "lastWord":Ljava/lang/String;
    sget-object v1, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "showStartOfWordCandidateList()"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " called  :: lastWord : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 886
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_37

    .line 887
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/Composition;->showInline(Ljava/lang/CharSequence;)V

    .line 888
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Composition;->acceptCurrentInline()V

    .line 890
    :cond_37
    return-void
.end method

.method private startArcsAddingSequence()V
    .registers 5

    .prologue
    .line 556
    sget-object v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "startArcsAddingSequence()"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, " called  "

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 557
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_23

    .line 558
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->startArcsAddingSequence()V

    .line 561
    :cond_23
    return-void
.end method

.method private toggleNextWritingMode(I)V
    .registers 6
    .param p1, "mode"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 979
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v1

    .line 980
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    if-eqz v1, :cond_4a

    .line 981
    const/16 v2, 0x193e

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->findKeyByKeyCode(Ljava/util/List;I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 983
    .local v0, "altKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_41

    .line 984
    if-nez p1, :cond_2f

    .line 985
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->label_symbol_key:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 991
    :cond_22
    :goto_22
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 1000
    .end local v0    # "altKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :goto_25
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    if-eqz v2, :cond_2e

    .line 1001
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->invalidate()V

    .line 1003
    :cond_2e
    return-void

    .line 987
    .restart local v0    # "altKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_2f
    const/4 v2, 0x1

    if-ne p1, v2, :cond_22

    .line 988
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->label_korean_key:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto :goto_22

    .line 994
    :cond_41
    sget-object v2, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v3, "toggleNextWritingMode() altKey not found!"

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_25

    .line 997
    .end local v0    # "altKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_4a
    sget-object v2, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v3, "toggleNextWritingMode() no modifier keys found!"

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_25
.end method

.method private updateCandidatesList(Ljava/util/List;)V
    .registers 9
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
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 699
    sget-object v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "updateCandidatesList()"

    aput-object v2, v1, v5

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " called  :: candidates : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 700
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mStarted:Z

    if-nez v0, :cond_2b

    .line 701
    iput-object v6, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 702
    iput-boolean v5, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isContextCandidates:Z

    .line 721
    :goto_2a
    return-void

    .line 706
    :cond_2b
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-nez v0, :cond_31

    .line 707
    iput-boolean v5, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isContextCandidates:Z

    .line 710
    :cond_31
    iput-object p1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 711
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 712
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5f

    .line 713
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v0, v1, v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 714
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getPureCandidate(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/Composition;->showInline(Ljava/lang/CharSequence;)V

    .line 715
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    goto :goto_2a

    .line 717
    :cond_5f
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iput-object v6, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v0, v6, v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 719
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    goto :goto_2a
.end method

.method private updateWritingSettings()V
    .registers 4

    .prologue
    .line 963
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->clearCategory()V

    .line 964
    iget v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 965
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->addDigitsAndSymbolsOnlyCategory()V

    .line 966
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->addPunctuationCategory()V

    .line 967
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->addGestureCategory()V

    .line 973
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->applyChangedSettings()V

    .line 974
    return-void

    .line 968
    :cond_1f
    iget v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    if-nez v0, :cond_19

    .line 969
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/InputMethods;->addTextCategory(Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 970
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->addGestureCategory()V

    goto :goto_19
.end method


# virtual methods
.method public acceptInlineAndClearCandidates()V
    .registers 1

    .prologue
    .line 1059
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->acceptCurrentDefaultWord()V

    .line 1060
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->clearSuggestions()V

    .line 1061
    return-void
.end method

.method protected changeKeyboardMode()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 925
    const/4 v0, 0x0

    .line 927
    .local v0, "changed":Z
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->isNumMode()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 929
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v2, :cond_23

    .line 930
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v1

    .line 931
    .local v1, "inputMode":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 932
    invoke-virtual {v5, v1}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v5

    .line 931
    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 934
    .end local v1    # "inputMode":Ljava/lang/String;
    :cond_23
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->showLastSavedHandWritingScreen()V

    .line 960
    :goto_26
    return-void

    .line 939
    :cond_27
    iget v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    if-nez v2, :cond_48

    .line 940
    iput v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    .line 941
    const/4 v0, 0x1

    .line 948
    :cond_2e
    :goto_2e
    if-eqz v0, :cond_42

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v2

    if-nez v2, :cond_42

    .line 950
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 951
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->processPendingRecognizing()V

    .line 956
    :goto_3f
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->updateWritingSettings()V

    .line 959
    :cond_42
    iget v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->toggleNextWritingMode(I)V

    goto :goto_26

    .line 943
    :cond_48
    iget v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    if-ne v2, v3, :cond_2e

    .line 944
    const/4 v2, 0x0

    iput v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    .line 945
    const/4 v0, 0x1

    goto :goto_2e

    .line 953
    :cond_51
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->acceptCurrentDefaultWord()V

    goto :goto_3f
.end method

.method public clearCurrentActiveWord()V
    .registers 4

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 141
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_16

    .line 142
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 143
    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 144
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->cancelCurrentDefaultWord()V

    .line 145
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 147
    :cond_16
    return-void
.end method

.method public clearSuggestions()V
    .registers 2

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_9

    .line 1066
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 1069
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 1070
    return-void
.end method

.method public create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V
    .registers 6
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;
    .param p2, "xt9coreinput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p3, "t9write"    # Lcom/nuance/input/swypecorelib/T9Write;
    .param p4, "speechWrapper"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/InputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V

    .line 118
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getXT9CoreKoreanInputSession()Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    .line 119
    check-cast p3, Lcom/nuance/input/swypecorelib/T9WriteKorean;

    .end local p3    # "t9write":Lcom/nuance/input/swypecorelib/T9Write;
    iput-object p3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    .line 120
    new-instance v0, Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-direct {v0, p1, p2}, Lcom/nuance/swype/input/KeyboardSwitcher;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 121
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 123
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
    .line 1133
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    if-nez v2, :cond_3c

    .line 1134
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 1135
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    .line 1136
    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1135
    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1137
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 1138
    sget v2, Lcom/nuance/swype/input/R$layout;->korean_handwriting_candidates:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    iput-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    .line 1140
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 1141
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->initViews()V

    .line 1142
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->getCJKCandidatesListView()Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .line 1144
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_3c
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setOnWordSelectActionListener(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;)V

    .line 1146
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    return-object v2
.end method

.method public destroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->destroy()V

    .line 128
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0, p0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->removeRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 129
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    if-eqz v0, :cond_10

    .line 130
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->hideFullScreenHandWritingView()V

    .line 133
    :cond_10
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->removeAllPendingMsg()V

    .line 134
    iput-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    .line 135
    iput-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 136
    return-void
.end method

.method public finishInput()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1289
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 1290
    iput-boolean v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mStarted:Z

    .line 1292
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    if-eqz v0, :cond_10

    .line 1293
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->setNewSession(Z)V

    .line 1295
    :cond_10
    iput-boolean v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isOnceAction:Z

    .line 1296
    iput-boolean v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWritingOrRecognizing:Z

    .line 1297
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->dismissPopupKeyboard()V

    .line 1298
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->hideFullScreenHandWritingView()V

    .line 1299
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->removeAllMessages()V

    .line 1300
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->hideHowToUseToast()V

    .line 1301
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->acceptCurrentDefaultWord()V

    .line 1302
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->clearSuggestions()V

    .line 1304
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->endArcsAddingSequence()V

    .line 1305
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0, p0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->removeRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 1306
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->finishSession()V

    .line 1308
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v0, :cond_3c

    .line 1309
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->finishSession()V

    .line 1312
    :cond_3c
    sget-object v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "finishInput()"

    aput-object v2, v1, v3

    const-string/jumbo v2, " called "

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1314
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->unwrapTouchEvent(Landroid/view/View;)V

    .line 1315
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setInputContextRequestListener(Lcom/nuance/input/swypecorelib/InputContextRequest;)V

    .line 1316
    return-void
.end method

.method public flushCurrentActiveWord()V
    .registers 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    .line 240
    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_25

    .line 241
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->acceptCurrentInline()V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 243
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->noteSelectedCandidate(I)Z

    .line 245
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->endArcsAddingSequence()V

    .line 248
    :cond_25
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_2e

    .line 249
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->clearCurrentInline()V

    .line 251
    :cond_2e
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_37

    .line 252
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 254
    :cond_37
    return-void
.end method

.method public getCurrentExactWord()Ljava/lang/CharSequence;
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 684
    sget-object v1, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "getCurrentExactWord()"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string/jumbo v4, " called  "

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 685
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 686
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3d

    .line 688
    invoke-static {}, Lcom/nuance/swype/input/IME;->getLastShownCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates$Source;->toString()Ljava/lang/String;

    move-result-object v1

    .line 689
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates$Source;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 695
    :cond_3d
    :goto_3d
    return-object v0

    .line 692
    :cond_3e
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getPureCandidate(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_3d
.end method

.method public getCurrentScreenMode()Z
    .registers 2

    .prologue
    .line 1662
    const/4 v0, 0x0

    return v0
.end method

.method protected getExtendedEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 5
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 1800
    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    if-eqz v1, :cond_13

    .line 1801
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    .line 1802
    .local v0, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v1, v2, :cond_13

    .line 1806
    .end local v0    # "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    .end local p1    # "me":Landroid/view/MotionEvent;
    :goto_12
    return-object p1

    .restart local p1    # "me":Landroid/view/MotionEvent;
    :cond_13
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->getExtendedEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    goto :goto_12
.end method

.method public getHandWritingMode()I
    .registers 2

    .prologue
    .line 1013
    iget v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    return v0
.end method

.method public getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .registers 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isNumMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 280
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_NUM:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 291
    :goto_a
    return-object v0

    .line 281
    :cond_b
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 282
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_EDIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    goto :goto_a

    .line 285
    :cond_16
    iget v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    if-nez v0, :cond_1d

    .line 286
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    goto :goto_a

    .line 287
    :cond_1d
    iget v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    .line 288
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    goto :goto_a

    .line 291
    :cond_25
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    goto :goto_a
.end method

.method protected getSpeechPopupRectInWindowCoord()Landroid/graphics/Rect;
    .registers 4

    .prologue
    .line 1821
    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    if-eqz v1, :cond_1f

    .line 1822
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getSpeechPopupRectInWindowCoord()Landroid/graphics/Rect;

    move-result-object v0

    .line 1824
    .local v0, "rect":Landroid/graphics/Rect;
    if-eqz v0, :cond_1c

    .line 1825
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getMeasuredHeight()I

    move-result v1

    :goto_18
    sub-int v1, v2, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1829
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_1c
    :goto_1c
    return-object v0

    .line 1825
    .restart local v0    # "rect":Landroid/graphics/Rect;
    :cond_1d
    const/4 v1, 0x0

    goto :goto_18

    .line 1829
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_1f
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->getSpeechPopupRectInWindowCoord()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_1c
.end method

.method public getWordCandidateListContainer()Landroid/view/View;
    .registers 2

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    return-object v0
.end method

.method protected handleBackspace(I)Z
    .registers 4
    .param p1, "repeatedCount"    # I

    .prologue
    .line 335
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->hideTooltip()V

    .line 337
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 338
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->processPendingRecognizing()V

    .line 340
    :cond_e
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->queueChar(C)V

    .line 342
    const/4 v0, 0x1

    return v0
.end method

.method public handleCharKey(Landroid/graphics/Point;I[IJ)V
    .registers 8
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "eventTime"    # J

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 348
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->processPendingRecognizing()V

    .line 350
    :cond_9
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    int-to-char v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->queueChar(C)V

    .line 351
    return-void
.end method

.method public handleClose()V
    .registers 3

    .prologue
    .line 1276
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->handleClose()V

    .line 1277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mStarted:Z

    .line 1279
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->dismissPopupKeyboard()V

    .line 1280
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->hideFullScreenHandWritingView()V

    .line 1281
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->acceptCurrentActiveWord()V

    .line 1282
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    if-eqz v0, :cond_19

    .line 1283
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->setNewSession(Z)V

    .line 1285
    :cond_19
    return-void
.end method

.method public handleEmotionKey()V
    .registers 2

    .prologue
    .line 1108
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    if-eqz v0, :cond_9

    .line 1109
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_EDIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 1112
    :cond_9
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_12

    .line 1113
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1115
    :cond_12
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->handleEmotionKey()V

    .line 1116
    return-void
.end method

.method public handleKey(IZI)Z
    .registers 6
    .param p1, "primaryCode"    # I
    .param p2, "quickPressed"    # Z
    .param p3, "repeatedCount"    # I

    .prologue
    const/4 v0, 0x1

    .line 356
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->hideHowToUseToast()V

    .line 359
    sparse-switch p1, :sswitch_data_22

    .line 375
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v0

    :cond_b
    :goto_b
    return v0

    .line 361
    :sswitch_c
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->flushCurrentActiveWord()V

    .line 362
    if-nez p2, :cond_b

    .line 363
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->startSpeech()V

    goto :goto_b

    .line 367
    :sswitch_15
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->toggleLastKeyboard()V

    goto :goto_b

    .line 370
    :sswitch_1b
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    .line 371
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->clearArcs()V

    goto :goto_b

    .line 359
    :sswitch_data_22
    .sparse-switch
        0xb54 -> :sswitch_1b
        0x193f -> :sswitch_c
        0xaa38 -> :sswitch_15
    .end sparse-switch
.end method

.method public handlePossibleActionAfterResize()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1339
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_3b

    .line 1340
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    .line 1341
    .local v0, "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isMiniKeyboardMode()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isDockMiniKeyboardMode()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1342
    :cond_19
    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->requestLayout()V

    .line 1343
    iput-boolean v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isOnceAction:Z

    .line 1346
    :cond_1e
    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    if-eqz v1, :cond_3b

    .line 1347
    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isMiniKeyboardMode()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1348
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/nuance/swype/input/view/InputContainerView;->setAllowedMovement(ZZ)V

    .line 1350
    :cond_2e
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->hideFullScreenHandWritingFrame()V

    .line 1351
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->setFullScreenHandWritingFrame()V

    .line 1352
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->showFullScreenHandWritingView()V

    .line 1355
    .end local v0    # "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    :cond_3b
    return-void
.end method

.method public handlePossibleActionAfterUniversalKeyboardResize(Z)V
    .registers 3
    .param p1, "hideSymbolView"    # Z

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->hideFullScreenHandWritingFrame()V

    .line 1360
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1361
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->setFullScreenHandWritingFrame()V

    .line 1362
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->showFullScreenHandWritingView()V

    .line 1364
    :cond_17
    return-void
.end method

.method protected handleScrollDown()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1074
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v2, :cond_24

    .line 1075
    iget-boolean v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    if-nez v2, :cond_10

    .line 1076
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/IME;->requestHideSelf(I)V

    .line 1085
    :goto_f
    return v0

    .line 1079
    :cond_10
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 1080
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEHandlerManager;->toggleFullScreenHW()V

    goto :goto_f

    :cond_24
    move v0, v1

    .line 1085
    goto :goto_f
.end method

.method protected handleScrollUp()Z
    .registers 2

    .prologue
    .line 1090
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    if-nez v0, :cond_19

    .line 1091
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1092
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEHandlerManager;->toggleFullScreenHW()V

    .line 1093
    const/4 v0, 0x1

    .line 1096
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
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

    .line 382
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->hideTooltip()V

    .line 384
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 386
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->processPendingRecognizing()V

    .line 387
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v4, v8}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->queueChar(C)V

    .line 431
    :cond_18
    :goto_18
    return v7

    .line 388
    :cond_19
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->hasRecognitionCandidates()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 392
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v4, v8}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->queueChar(C)V

    goto :goto_18

    .line 395
    :cond_25
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->acceptCurrentDefaultWord()V

    .line 396
    const/4 v0, 0x1

    .line 400
    .local v0, "addSpace":Z
    if-eqz p1, :cond_75

    if-ge p2, v6, :cond_75

    iget-boolean v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mAutoPunctuationOn:Z

    if-eqz v4, :cond_75

    .line 401
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v3

    .line 402
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_75

    .line 403
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 404
    invoke-interface {v3, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 410
    .local v1, "cSeqBefore":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    .line 411
    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v2

    .line 412
    .local v2, "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    if-eqz v1, :cond_72

    .line 413
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v6, :cond_72

    .line 414
    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 415
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v4

    if-nez v4, :cond_72

    .line 417
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 416
    invoke-virtual {v2, v4}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v4

    if-nez v4, :cond_72

    .line 419
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->handleAutoPunct()V

    .line 420
    const/4 v0, 0x0

    .line 423
    :cond_72
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 426
    .end local v1    # "cSeqBefore":Ljava/lang/CharSequence;
    .end local v2    # "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_75
    if-eqz v0, :cond_18

    .line 427
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->sendSpace()V

    goto :goto_18
.end method

.method public isFullScreenHandWritingView()Z
    .registers 2

    .prologue
    .line 1324
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    return v0
.end method

.method public isHandWritingInputView()Z
    .registers 2

    .prologue
    .line 1329
    const/4 v0, 0x1

    return v0
.end method

.method public isLanguageSwitchableOnSpace()Z
    .registers 2

    .prologue
    .line 1127
    const/4 v0, 0x1

    return v0
.end method

.method public isScrollable(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Z
    .registers 3
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 1563
    const/4 v0, 0x0

    return v0
.end method

.method public isSpeechPopupShowing()Z
    .registers 2

    .prologue
    .line 1765
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->isSpeechViewShowing()Z

    move-result v0

    return v0
.end method

.method public nextBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .registers 2
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 1569
    return-void
.end method

.method public onApplicationUnbind()V
    .registers 1

    .prologue
    .line 1019
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->onApplicationUnbind()V

    .line 1021
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->removeAllMessages()V

    .line 1022
    return-void
.end method

.method public onCandidateLongPressed(ILjava/lang/String;ILcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .registers 12
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "wdSource"    # I
    .param p4, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 1578
    sget-object v2, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "onCandidateLongPressed()"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, " called ::  wdSource  :: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " , word :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1579
    if-eqz p2, :cond_59

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/emoji/EmojiLoader;->isEmoji(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 1580
    invoke-virtual {p4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getEmojiInfoList()Ljava/util/List;

    move-result-object v2

    .line 1581
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/EmojiInfo;

    .line 1582
    .local v0, "emojiInfo":Lcom/nuance/swype/input/emoji/EmojiInfo;
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getEmojis()Ljava/util/Map;

    move-result-object v2

    .line 1583
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1584
    .local v1, "selected_emoji":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v0, v1, v2}, Lcom/nuance/swype/input/InputView;->showSkinTonePopupForCJK(Lcom/nuance/swype/input/emoji/EmojiInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    .end local v0    # "emojiInfo":Lcom/nuance/swype/input/emoji/EmojiInfo;
    .end local v1    # "selected_emoji":Ljava/lang/String;
    :cond_59
    return-void
.end method

.method public onHandleWriteEvent(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V
    .registers 8
    .param p1, "event"    # Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;

    .prologue
    const-wide/16 v4, 0x5

    .line 788
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_d

    .line 789
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isValidBuild()Z

    move-result v0

    if-nez v0, :cond_d

    .line 814
    :goto_c
    return-void

    .line 794
    :cond_d
    iget v0, p1, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;->mType:I

    packed-switch v0, :pswitch_data_3a

    goto :goto_c

    .line 797
    :pswitch_13
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mHwrHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mHwrHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_c

    .line 802
    :pswitch_20
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mHwrHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mHwrHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    .line 803
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 802
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_c

    .line 807
    :pswitch_2d
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mHwrHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mHwrHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    .line 808
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 807
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_c

    .line 794
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_13
        :pswitch_2d
        :pswitch_20
    .end packed-switch
.end method

.method public onPressMoveCandidate(FFF)V
    .registers 9
    .param p1, "xPos"    # F
    .param p2, "yPos"    # F
    .param p3, "xOffset"    # F

    .prologue
    .line 1599
    sget-object v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onPressMoveCandidate()"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " called ::  xPos:: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", yPos:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", xOffset :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1600
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->touchMoveHandle(FFF)Z

    .line 1601
    return-void
.end method

.method public onPressReleaseCandidate(ILjava/lang/String;I)Z
    .registers 10
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "wdSource"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1589
    sget-object v2, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "onPressReleaseCandidate()"

    aput-object v4, v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " called ::  wdSource  :: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , word :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1590
    if-eqz p2, :cond_35

    .line 1591
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->setCurrentSkinTone()V

    .line 1592
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->dismissEmojiPopup()V

    .line 1595
    :goto_34
    return v0

    :cond_35
    move v0, v1

    goto :goto_34
.end method

.method public onScrollContentChanged()V
    .registers 1

    .prologue
    .line 1816
    return-void
.end method

.method public onSpeechViewDismissed()V
    .registers 2

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isNumMode()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1121
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->showLastSavedHandWritingScreen()V

    .line 1123
    :cond_b
    return-void
.end method

.method public onSpeechViewShowedUp()V
    .registers 2

    .prologue
    .line 1101
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    if-eqz v0, :cond_9

    .line 1102
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->hideFullScreenHandWritingFrame()V

    .line 1104
    :cond_9
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J

    .prologue
    .line 270
    sget-object v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onText()"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, " called "

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 271
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 272
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->processPendingRecognizing()V

    .line 274
    :cond_1d
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->queueText(Ljava/lang/CharSequence;)V

    .line 275
    return-void
.end method

.method public penDown(Landroid/view/View;)V
    .registers 4
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->dismissPopupKeyboard()V

    .line 625
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 626
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->removeDelayRecognitionStroke()V

    .line 628
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    if-eqz v0, :cond_2a

    .line 629
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->setWidth(I)V

    .line 630
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->setHeight(I)V

    .line 631
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    iget-object v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FaddingStrokeQueue;->startActionFadingPenDown()V

    .line 634
    :cond_2a
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    if-eqz v0, :cond_39

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_39

    .line 635
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->applyChangedSettings()V

    .line 637
    :cond_39
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWritingOrRecognizing:Z

    if-nez v0, :cond_40

    .line 638
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->acceptCurrentDefaultWord()V

    .line 642
    :cond_40
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->startArcsAddingSequence()V

    .line 643
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWritingOrRecognizing:Z

    .line 644
    return-void
.end method

.method public penUp(Ljava/util/List;Landroid/view/View;)V
    .registers 3
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
    .line 1606
    .local p1, "arc":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    return-void
.end method

.method public penUp([Lcom/nuance/swype/input/Stroke$Arc;Landroid/view/View;)V
    .registers 11
    .param p1, "arcs"    # [Lcom/nuance/swype/input/Stroke$Arc;
    .param p2, "Src"    # Landroid/view/View;

    .prologue
    const-wide/16 v6, 0x64

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 649
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCachedPoints:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    aget-object v2, p1, v3

    iget-object v2, v2, Lcom/nuance/swype/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 650
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCachedPoints:Ljava/util/List;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    if-eqz v0, :cond_2f

    .line 653
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isPendingRecognizeStrokeMessage()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 654
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->removeDelayRecognitionStroke()V

    .line 655
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 664
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mBuildInfo:Lcom/nuance/swype/input/BuildInfo;

    if-eqz v0, :cond_5d

    .line 665
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 666
    sget-object v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "penUp()"

    aput-object v2, v1, v3

    const-string/jumbo v2, " called  "

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 667
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 668
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    .line 669
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->getRecognizerDelay()I

    move-result v1

    int-to-long v2, v1

    .line 668
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 675
    :cond_5d
    :goto_5d
    return-void

    .line 659
    :cond_5e
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2f

    .line 671
    :cond_64
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    .line 672
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->getRecognizerDelay()I

    move-result v1

    int-to-long v2, v1

    .line 671
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5d
.end method

.method public pointInSelectionArea(II)Z
    .registers 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1611
    if-lez p1, :cond_5

    if-gtz p2, :cond_6

    .line 1631
    :cond_5
    :goto_5
    return v4

    .line 1614
    :cond_6
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v5

    if-eqz v5, :cond_4e

    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v5, v5, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    .line 1615
    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEHandlerManager;->statusBarHeight()I

    move-result v3

    .line 1617
    .local v3, "status_bar_height":I
    :goto_1a
    sget v5, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWordListHeight:I

    if-nez v5, :cond_27

    .line 1618
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setWordListHeight(I)V

    .line 1620
    :cond_27
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$dimen;->key_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1623
    .local v1, "keyboard_height":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1625
    .local v2, "screen_height":I
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->isShown()Z

    move-result v5

    if-eqz v5, :cond_50

    .line 1626
    sget v5, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWordListHeight:I

    sub-int v5, v2, v5

    sub-int/2addr v5, v1

    sub-int v0, v5, v3

    .line 1631
    .local v0, "boundaryHandWritingScreenHeight":I
    :goto_4a
    if-lt p2, v0, :cond_5

    const/4 v4, 0x1

    goto :goto_5

    .end local v0    # "boundaryHandWritingScreenHeight":I
    .end local v1    # "keyboard_height":I
    .end local v2    # "screen_height":I
    .end local v3    # "status_bar_height":I
    :cond_4e
    move v3, v4

    .line 1615
    goto :goto_1a

    .line 1629
    .restart local v1    # "keyboard_height":I
    .restart local v2    # "screen_height":I
    .restart local v3    # "status_bar_height":I
    :cond_50
    sub-int v5, v2, v1

    sub-int v0, v5, v3

    .restart local v0    # "boundaryHandWritingScreenHeight":I
    goto :goto_4a
.end method

.method postDelayShowingFullScreenMsg()V
    .registers 5

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mDelayShowingFullScreenHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1522
    return-void
.end method

.method protected preUpdateSpeechText()V
    .registers 1

    .prologue
    .line 1811
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->acceptCurrentActiveWord()V

    .line 1812
    return-void
.end method

.method public prevBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .registers 2
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 1574
    return-void
.end method

.method protected removeAllMessages()V
    .registers 4

    .prologue
    .line 213
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v2, 0x1f7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    const/4 v0, 0x1

    .local v0, "msg":I
    :goto_8
    const/16 v1, 0x13

    if-gt v0, v1, :cond_14

    .line 215
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 217
    :cond_14
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->hideHowToUseToast()V

    .line 218
    return-void
.end method

.method public resetArea(I)V
    .registers 4
    .param p1, "areaOption"    # I

    .prologue
    .line 1645
    const/4 v0, -0x2

    if-ne p1, v0, :cond_a

    .line 1646
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->requestHideSelf(I)V

    .line 1651
    :goto_9
    return-void

    .line 1649
    :cond_a
    iput p1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mSelectionAreaOption:I

    goto :goto_9
.end method

.method protected resumeSpeech()V
    .registers 2

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    if-eqz v0, :cond_7

    .line 1027
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->resumeSpeech()V

    .line 1029
    :cond_7
    return-void
.end method

.method public selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V
    .registers 11
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/CharSequence;
    .param p3, "source"    # Landroid/view/View;

    .prologue
    .line 572
    sget-object v3, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "selectWord()"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, " called >>>>>>>>>>>> "

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 573
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$InputMode;->isAutoSpaceEnabled()Z

    move-result v0

    .line 575
    .local v0, "autospaceOn":Z
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 576
    const/4 v0, 0x0

    .line 578
    :cond_27
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 579
    .local v2, "selected_emoji":Ljava/lang/String;
    if-eqz v2, :cond_8b

    invoke-static {v2}, Lcom/nuance/swype/input/emoji/EmojiLoader;->isEmoji(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 580
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getEmojis()Ljava/util/Map;

    move-result-object v3

    .line 581
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "selected_emoji":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 582
    .restart local v2    # "selected_emoji":Ljava/lang/String;
    if-eqz v2, :cond_85

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_85

    .line 583
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v3, v2}, Lcom/nuance/swype/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 594
    :goto_50
    if-eqz v0, :cond_60

    if-eqz p3, :cond_60

    .line 595
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->sendSpace()V

    .line 596
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->learnNewWord(Ljava/lang/CharSequence;)I

    .line 602
    :cond_60
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v3, p1}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->noteSelectedCandidate(I)Z

    .line 605
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->endArcsAddingSequence()V

    .line 607
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getContextCandidates(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    .line 608
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz v1, :cond_91

    .line 609
    iput-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 615
    :goto_70
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 616
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 617
    if-eqz v2, :cond_84

    .line 618
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-super {p0, v2, v3}, Lcom/nuance/swype/input/InputView;->addEmojiInRecentCat(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :cond_84
    return-void

    .line 585
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_85
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v3, p2}, Lcom/nuance/swype/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    goto :goto_50

    .line 589
    :cond_8b
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v3, p2}, Lcom/nuance/swype/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    goto :goto_50

    .line 612
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_91
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    goto :goto_70
.end method

.method public setContainerView(Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;)V
    .registers 2
    .param p1, "container"    # Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    .prologue
    .line 1319
    iput-object p1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    .line 1320
    return-void
.end method

.method public setHandWritingView(Lcom/nuance/swype/input/HandWritingView;)V
    .registers 4
    .param p1, "view"    # Lcom/nuance/swype/input/HandWritingView;

    .prologue
    .line 1006
    instance-of v0, p1, Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    if-eqz v0, :cond_f

    .line 1007
    check-cast p1, Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    .end local p1    # "view":Lcom/nuance/swype/input/HandWritingView;
    iput-object p1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    .line 1008
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->setFullScreen(Z)V

    .line 1010
    :cond_f
    return-void
.end method

.method public setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V
    .registers 2
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;

    .prologue
    .line 1786
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->updateDockModeForHandwriting(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1787
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1788
    return-void
.end method

.method public setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
    .registers 10
    .param p1, "keyboardLayer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 297
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->dismissPopupKeyboard()V

    .line 298
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->acceptCurrentActiveWord()V

    .line 300
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v1

    .line 302
    .local v1, "curLayer":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_NUM:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq p1, v2, :cond_14

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_EDIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne p1, v2, :cond_48

    .line 303
    :cond_14
    if-eq v1, p1, :cond_2b

    .line 304
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v6

    invoke-virtual {v2, p1, v5, v6}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 305
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->hideFullScreenHandWritingView()V

    .line 306
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->hideHWFrameAndCharacterList()V

    .line 314
    :cond_2b
    :goto_2b
    const/4 v0, 0x0

    .line 316
    .local v0, "changed":Z
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne p1, v2, :cond_70

    iget v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    if-eqz v2, :cond_70

    .line 317
    iput v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    .line 318
    const/4 v0, 0x1

    .line 325
    :cond_37
    :goto_37
    if-eqz v0, :cond_47

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v2

    if-nez v2, :cond_47

    .line 326
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->updateWritingSettings()V

    .line 327
    iget v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->toggleNextWritingMode(I)V

    .line 330
    :cond_47
    return-void

    .line 308
    .end local v0    # "changed":Z
    :cond_48
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_NUM:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v1, v2, :cond_50

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_EDIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne v1, v2, :cond_2b

    .line 310
    :cond_50
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v7

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v2

    if-nez v2, :cond_6e

    move v2, v3

    :goto_67
    invoke-virtual {v5, v6, v7, v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;Z)Lcom/nuance/swype/input/XT9Keyboard;

    .line 311
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->showLastSavedHandWritingScreen()V

    goto :goto_2b

    :cond_6e
    move v2, v4

    .line 310
    goto :goto_67

    .line 319
    .restart local v0    # "changed":Z
    :cond_70
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne p1, v2, :cond_37

    iget v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    if-eq v2, v3, :cond_37

    .line 321
    iput v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    .line 322
    const/4 v0, 0x1

    goto :goto_37
.end method

.method public setNotMatchToolTipSuggestion()V
    .registers 2

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 1771
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 1772
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->showNotMatchTootip()V

    .line 1773
    return-void
.end method

.method protected setSwypeKeytoolTipSuggestion()V
    .registers 2

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_10

    .line 1778
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->showSwypeTooltip()V

    .line 1779
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 1780
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 1782
    :cond_10
    return-void
.end method

.method public showNextWordPrediction()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1875
    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mNextWordPredictionOn:Z

    if-nez v1, :cond_6

    .line 1885
    :cond_5
    :goto_5
    return-void

    .line 1878
    :cond_6
    sget-object v1, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "showNextWordPrediction()"

    aput-object v4, v2, v3

    const-string/jumbo v3, " called  "

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1879
    invoke-static {}, Lcom/nuance/swype/input/IME;->getLastSavedActiveWord()Ljava/lang/String;

    move-result-object v0

    .line 1880
    .local v0, "lastWord":Ljava/lang/String;
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_5

    .line 1883
    :cond_25
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->updateWordContext()V

    .line 1884
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v1, v5}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;Z)I

    goto :goto_5
.end method

.method protected showSymbolSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 4
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 1409
    if-nez p1, :cond_4

    .line 1410
    const/4 v0, 0x0

    .line 1417
    :goto_3
    return v0

    .line 1412
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isFullScreenHandWritingView()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    if-eqz v0, :cond_24

    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    sget v1, Lcom/nuance/swype/input/R$xml;->popup_smileys_with_return:I

    if-ne v0, v1, :cond_24

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    const-string/jumbo v1, ":-)"

    .line 1414
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1415
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->showStaticSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    goto :goto_3

    .line 1417
    :cond_24
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->showSymbolSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    goto :goto_3
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
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1175
    iput-boolean v7, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mStarted:Z

    .line 1177
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->dismissPopupKeyboard()V

    .line 1178
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->removeDelayShowingFullScreenMsg()V

    .line 1179
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->hideFullScreenHandWritingView()V

    .line 1181
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V

    .line 1182
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v3, :cond_19

    .line 1183
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateCandidatesSize()V

    .line 1185
    :cond_19
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    if-eqz v3, :cond_22

    .line 1186
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->updateHandwritingPadSize()V

    .line 1189
    :cond_22
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v3, p0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->addRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 1190
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->cancelCurrentDefaultWord()V

    .line 1191
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->endArcsAddingSequence()V

    .line 1193
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 1195
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setKeyboardForTextEntry(Lcom/nuance/swype/input/InputFieldInfo;)V

    .line 1197
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/Composition;->setInputConnection(Landroid/view/inputmethod/InputConnection;)V

    .line 1199
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->startSession(I)V

    .line 1200
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1202
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    const-string/jumbo v4, "hwr_auto_recpgnize_delay"

    sget v5, Lcom/nuance/swype/input/R$integer;->handwriting_auto_recognize_default_ms:I

    .line 1204
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 1202
    invoke-static {v3, v4, v5}, Lcom/nuance/swype/input/settings/InputPrefs;->getAutoDelay(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v0

    .line 1206
    .local v0, "delay":I
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v3, v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->setRecognizerDelay(I)V

    .line 1208
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->isHwrScrmodeEnabled()Z

    move-result v3

    if-eqz v3, :cond_131

    .line 1209
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v3, v6}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->setRecognitionMode(I)V

    .line 1220
    :goto_7c
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->applyChangedSettings()V

    .line 1221
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->isHwrRotationEnabled()Z

    move-result v3

    if-eqz v3, :cond_156

    .line 1222
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v3, v7}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->updateRotationSetting(Z)V

    .line 1227
    :goto_94
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v3, v6}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->updateAttachingCommonWordsLDB(Z)V

    .line 1229
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v3, :cond_a9

    .line 1230
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->startSession()V

    .line 1231
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKoreanInput:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    .line 1234
    :cond_a9
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->clearArcs()V

    .line 1236
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$dimen;->candidates_list_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1237
    .local v2, "selectionHeight":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$dimen;->key_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v3, v2

    iput v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardHeight:I

    .line 1239
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->getEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    iget v3, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v3, :cond_ce

    .line 1240
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->removeDelayShowingFullScreenMsg()V

    .line 1243
    :cond_ce
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    sget-object v4, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 1245
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->showLastSavedHandWritingScreen()V

    .line 1247
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getLastFullScreenState(I)Z

    move-result v3

    if-eqz v3, :cond_e8

    .line 1248
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    .line 1251
    :cond_e8
    iget v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->toggleNextWritingMode(I)V

    .line 1253
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->removeAllMessages()V

    .line 1255
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v3

    if-nez v3, :cond_fb

    .line 1256
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->postDelayShowingStartOfWordCandidate()V

    .line 1258
    :cond_fb
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->postHowToUseToastMsg()V

    .line 1259
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->postDelayResumeSpeech()V

    .line 1261
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    new-instance v4, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;

    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getDefaultKeyUIStateHandler()Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler$KeyUIState;

    move-result-object v7

    invoke-direct {v4, v5, p0, v6, v7}, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/InputView;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler$KeyUIState;)V

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->resisterTouchKeyHandler(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;)V

    .line 1262
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->flingGestureListener:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->registerFlingGestureHandler(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;)V

    .line 1263
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    invoke-virtual {v3, p0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->wrapTouchEvent(Landroid/view/View;)V

    .line 1264
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-static {}, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->getDispatcherInstance()Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;

    move-result-object v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getDefaultInputContextHandler()Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->setHandler(Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;)Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setInputContextRequestListener(Lcom/nuance/input/swypecorelib/InputContextRequest;)V

    .line 1265
    return-void

    .line 1211
    .end local v2    # "selectionHeight":I
    :cond_131
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v3, v7}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->setRecognitionMode(I)V

    .line 1212
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_14e

    .line 1214
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v3, v6}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->setWritingDirection(I)V

    goto/16 :goto_7c

    .line 1216
    :cond_14e
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->setWritingDirection(I)V

    goto/16 :goto_7c

    .line 1224
    :cond_156
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v3, v6}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->updateRotationSetting(Z)V

    goto/16 :goto_94
.end method

.method public toggleHandWritingFrame()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1422
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->dismissPopupKeyboard()V

    .line 1424
    iget-boolean v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    if-nez v2, :cond_1b

    .line 1425
    iput-boolean v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    .line 1427
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->handlePossibleActionAfterResize()V

    .line 1439
    :goto_d
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isFullScreenHandWritingView()Z

    move-result v1

    .line 1441
    .local v1, "fullscreenMode":Z
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setLastFullScreenState(Z)V

    .line 1443
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->changeAltIconOfSwitchingLayout(Z)V

    .line 1444
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->postHowToUseToastMsg()V

    .line 1445
    return-void

    .line 1430
    .end local v1    # "fullscreenMode":Z
    :cond_1b
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v2, :cond_30

    .line 1431
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    .line 1432
    .local v0, "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isMiniKeyboardMode()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1433
    invoke-virtual {v0, v3, v3}, Lcom/nuance/swype/input/view/InputContainerView;->setAllowedMovement(ZZ)V

    .line 1436
    .end local v0    # "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    :cond_30
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setNormalHandScreenWritingFrame()V

    goto :goto_d
.end method

.method public transferKeyEvent(Landroid/view/MotionEvent;)Z
    .registers 21
    .param p1, "me"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 1668
    sget v17, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWordListHeight:I

    if-nez v17, :cond_11

    .line 1669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->getMeasuredHeight()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setWordListHeight(I)V

    .line 1671
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lcom/nuance/swype/input/R$dimen;->key_height:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 1674
    .local v12, "keyboard_height":I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v14, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1675
    .local v14, "screen_height":I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v15, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1676
    .local v15, "screen_width":I
    const/16 v16, 0x0

    .line 1677
    .local v16, "status_bar_height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5d

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v17

    if-eqz v17, :cond_bc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    move-object/from16 v17, v0

    .line 1679
    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/IMEHandlerManager;->statusBarHeight()I

    move-result v16

    .line 1681
    :cond_5d
    :goto_5d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    .line 1682
    .local v2, "downTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 1683
    .local v4, "eventTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 1684
    .local v6, "actionType":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 1685
    .local v7, "posX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 1686
    .local v8, "posY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    .line 1687
    .local v9, "mState":I
    int-to-float v0, v14

    move/from16 v17, v0

    sub-float v17, v17, v8

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v11, v17, v18

    .line 1688
    .local v11, "heightToBottom":F
    int-to-float v0, v12

    move/from16 v17, v0

    cmpg-float v17, v11, v17

    if-gtz v17, :cond_96

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mSelectionAreaOption:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9e

    :cond_96
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mSelectionAreaOption:I

    move/from16 v17, v0

    if-nez v17, :cond_bf

    .line 1691
    :cond_9e
    if-nez v6, :cond_a8

    .line 1692
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mSelectionAreaOption:I

    .line 1694
    :cond_a8
    int-to-float v0, v12

    move/from16 v17, v0

    sub-float v8, v17, v11

    .line 1695
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v13

    .line 1698
    .local v13, "motionEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1699
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    .line 1701
    const/16 v17, 0x1

    .line 1757
    .end local v13    # "motionEvent":Landroid/view/MotionEvent;
    :goto_bb
    return v17

    .line 1679
    .end local v2    # "downTime":J
    .end local v4    # "eventTime":J
    .end local v6    # "actionType":I
    .end local v7    # "posX":F
    .end local v8    # "posY":F
    .end local v9    # "mState":I
    .end local v11    # "heightToBottom":F
    :cond_bc
    const/16 v16, 0x0

    goto :goto_5d

    .line 1703
    .restart local v2    # "downTime":J
    .restart local v4    # "eventTime":J
    .restart local v6    # "actionType":I
    .restart local v7    # "posX":F
    .restart local v8    # "posY":F
    .restart local v9    # "mState":I
    .restart local v11    # "heightToBottom":F
    :cond_bf
    sub-int v17, v14, v16

    sget v18, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWordListHeight:I

    sub-int v17, v17, v18

    sub-int v10, v17, v12

    .line 1705
    .local v10, "boundarySize":I
    int-to-float v0, v10

    move/from16 v17, v0

    cmpl-float v17, v8, v17

    if-lez v17, :cond_dc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mSelectionAreaOption:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_ea

    :cond_dc
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mSelectionAreaOption:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b0

    .line 1709
    :cond_ea
    if-nez v6, :cond_f4

    .line 1710
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mSelectionAreaOption:I

    .line 1712
    :cond_f4
    int-to-float v0, v10

    move/from16 v17, v0

    sub-float v8, v8, v17

    .line 1713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getLeftWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v7, v17

    if-ltz v17, :cond_17c

    .line 1714
    int-to-float v0, v15

    move/from16 v17, v0

    cmpg-float v17, v7, v17

    if-lez v17, :cond_121

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getRightWidth()I

    move-result v17

    move/from16 v0, v17

    if-ge v0, v15, :cond_148

    .line 1716
    :cond_121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getLeftWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v7, v7, v17

    .line 1717
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v13

    .line 1719
    .restart local v13    # "motionEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1720
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    .line 1754
    .end local v13    # "motionEvent":Landroid/view/MotionEvent;
    :cond_144
    :goto_144
    const/16 v17, 0x1

    goto/16 :goto_bb

    .line 1723
    :cond_148
    if-nez v6, :cond_15c

    .line 1724
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v13

    .line 1726
    .restart local v13    # "motionEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1728
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    .line 1730
    .end local v13    # "motionEvent":Landroid/view/MotionEvent;
    :cond_15c
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_168

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v6, v0, :cond_144

    .line 1732
    :cond_168
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mSelectionAreaOption:I

    .line 1733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->setPointStatus(I)V

    goto :goto_144

    .line 1740
    :cond_17c
    if-nez v6, :cond_190

    .line 1741
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v13

    .line 1743
    .restart local v13    # "motionEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1744
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    .line 1746
    .end local v13    # "motionEvent":Landroid/view/MotionEvent;
    :cond_190
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_19c

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v6, v0, :cond_144

    .line 1748
    :cond_19c
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mSelectionAreaOption:I

    .line 1750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->setPointStatus(I)V

    goto :goto_144

    .line 1757
    :cond_1b0
    const/16 v17, 0x0

    goto/16 :goto_bb
.end method

.method public updateKeyboardDockMode()V
    .registers 2

    .prologue
    .line 1791
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    .line 1792
    .local v0, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    if-eqz v0, :cond_9

    .line 1793
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1795
    :cond_9
    return-void
.end method

.method public updateSelection(IIII[I)V
    .registers 13
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesIndices"    # [I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 152
    sget-object v1, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "updateSelection()"

    aput-object v4, v2, v3

    const-string/jumbo v3, " called  koreanhandwriting"

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 153
    invoke-super/range {p0 .. p5}, Lcom/nuance/swype/input/InputView;->updateSelection(IIII[I)V

    .line 157
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v1

    if-lez v1, :cond_32

    aget v1, p5, v5

    if-ne p3, v1, :cond_2c

    aget v1, p5, v5

    if-eq p4, v1, :cond_32

    .line 160
    :cond_2c
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->acceptCurrentDefaultWord()V

    .line 161
    invoke-direct {p0, v6}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    .line 164
    :cond_32
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v1, :cond_3b

    .line 165
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v1, p3, p4}, Lcom/nuance/swype/input/Composition;->setSelection(II)V

    .line 168
    :cond_3b
    if-eq p3, p4, :cond_45

    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isContextCandidates:Z

    if-eqz v1, :cond_45

    .line 169
    invoke-direct {p0, v6}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    .line 179
    :cond_44
    :goto_44
    return-void

    .line 171
    :cond_45
    if-ne p3, p4, :cond_44

    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWritingOrRecognizing:Z

    if-nez v1, :cond_44

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5b

    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isContextCandidates:Z

    if-eqz v1, :cond_44

    .line 172
    :cond_5b
    invoke-direct {p0, v6}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getContextCandidates(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    .line 173
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz v0, :cond_67

    .line 174
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 177
    :cond_67
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    goto :goto_44
.end method
