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

.field public static final EVENT_ON_CANDIDATELIST:I = 0x1

.field public static final EVENT_ON_INITIAL:I = -0x1

.field public static final EVENT_ON_KEYBOARD:I = 0x0

.field public static final EVENT_ON_SPELLLIST:I = 0x2

.field private static final HIDE_IME:I = -0x2

.field public static LOG:Ljava/lang/String; = null

.field static final MSG_DELAY_RECOGNIZER:I = 0x1

.field private static final MSG_DELAY_SHOWING_EMOJI:I = 0x2

.field private static final MSG_DELAY_SHOWING_FULLSCREEN:I = 0x1

.field private static final MSG_HANDLE_CHAR:I = 0x3

.field private static final MSG_HANDLE_SHOW_START_OF_WORD_CANDIDATE:I = 0x5

.field private static final MSG_HANDLE_SUGGESTION_CANDIDATES:I = 0x2

.field private static final MSG_HANDLE_TEXT:I = 0x4

.field static final MSG_SHOW_HOW_TO_TOAST:I = 0x1f7

.field private static final WRITING_MODE_SYMBOLS_AND_DIGITS:I = 0x1

.field private static final WRITING_MODE_TEXT:I

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static mWordListHeight:I


# instance fields
.field private final delayRecognizerHandlerCallback:Landroid/os/Handler$Callback;

.field private final delayShowingFullScreenHandlerCallback:Landroid/os/Handler$Callback;

.field private final hwrHandlerCallback:Landroid/os/Handler$Callback;

.field private isOnceAction:Z

.field protected mComposition:Lcom/nuance/swype/input/Composition;

.field protected mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

.field private mCurrentWritingMode:I

.field private mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

.field private final mDelayRecognizeHandler:Landroid/os/Handler;

.field private final mDelayShowingFullScreenHandler:Landroid/os/Handler;

.field protected mFullScreenHandWriting:Z

.field private final mHwrHandler:Landroid/os/Handler;

.field protected mKeyboardHeight:I

.field public mPopupViewHandler:Landroid/os/Handler;

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

.field protected mSelectionHeight:I

.field private mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

.field private final popupViewHandlerCallback:Landroid/os/Handler$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWordListHeight:I

    .line 88
    const-string v0, "KoreanHandWritingInputView"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 953
    const-string v0, "KoreanHandWritingInputView"

    sput-object v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->LOG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defaultStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    iput v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mSelectionAreaOption:I

    .line 84
    iput v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardHeight:I

    .line 85
    iput v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mSelectionHeight:I

    .line 683
    new-instance v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$1;-><init>(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->hwrHandlerCallback:Landroid/os/Handler$Callback;

    .line 738
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->hwrHandlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mHwrHandler:Landroid/os/Handler;

    .line 752
    new-instance v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$2;-><init>(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->delayRecognizerHandlerCallback:Landroid/os/Handler$Callback;

    .line 770
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->delayRecognizerHandlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    .line 882
    new-instance v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$3;-><init>(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->popupViewHandlerCallback:Landroid/os/Handler$Callback;

    .line 914
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->popupViewHandlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    .line 996
    new-instance v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$4;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$4;-><init>(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->delayShowingFullScreenHandlerCallback:Landroid/os/Handler$Callback;

    .line 1018
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->delayShowingFullScreenHandlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mDelayShowingFullScreenHandler:Landroid/os/Handler;

    .line 97
    new-instance v0, Lcom/nuance/swype/input/Composition;

    invoke-direct {v0}, Lcom/nuance/swype/input/Composition;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    .line 98
    return-void
.end method

.method private acceptCurrentActiveWord()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->acceptCurrentInline()V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 214
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->noteSelectedCandidate(I)Z

    .line 216
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->endArcsAddingSequence()V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    .line 219
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)Lcom/nuance/swype/input/korean/KoreanHandWritingView;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;C)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;
    .param p1, "x1"    # C

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->handleChar(C)V

    return-void
.end method

.method static synthetic access$1000(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->showDelayFullScreen()V

    return-void
.end method

.method static synthetic access$1100(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->createEmojiInputView()V

    return-void
.end method

.method static synthetic access$1200(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)Lcom/nuance/swype/input/emoji/EmojiInputController;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mEmojiInputController:Lcom/nuance/swype/input/emoji/EmojiInputController;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;Lcom/nuance/swype/input/emoji/EmojiInputController;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;
    .param p1, "x1"    # Lcom/nuance/swype/input/emoji/EmojiInputController;
    .param p2, "x2"    # Landroid/graphics/Rect;

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->showEmojiInputPopupWindow(Lcom/nuance/swype/input/emoji/EmojiInputController;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->acceptCurrentActiveWord()V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->handleText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->showStartOfWordCandidateList()V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->performDelayRecognition()V

    return-void
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)Lcom/nuance/swype/input/IME;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    return-object v0
.end method

.method private cancelCurrentDefaultWord()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 470
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Composition;->clearCurrentInline()V

    .line 473
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 475
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 477
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->noteSelectedCandidate(I)Z

    .line 480
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->endArcsAddingSequence()V

    .line 482
    const/4 v0, 0x1

    .line 485
    :cond_0
    return v0
.end method

.method private clearArcs()V
    .locals 1

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    if-eqz v0, :cond_0

    .line 1465
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->clearArcs()V

    .line 1467
    :cond_0
    return-void
.end method

.method private deleteOneCharacter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 422
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isEmptyRecognitionCandidateList()Z

    move-result v1

    if-nez v1, :cond_2

    .line 424
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->endArcsAddingSequence()V

    .line 426
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->removeOneCharacterFromCandidateList()Ljava/lang/CharSequence;

    move-result-object v0

    .line 427
    .local v0, "seq":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 428
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->cancelCurrentDefaultWord()Z

    .line 438
    .end local v0    # "seq":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 430
    .restart local v0    # "seq":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 432
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 433
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    goto :goto_0

    .line 436
    .end local v0    # "seq":Ljava/lang/CharSequence;
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/IME;->sendBackspace(I)V

    goto :goto_0
.end method

.method private endArcsAddingSequence()V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->clearAll()V

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->endArcsAddingSequence()V

    .line 522
    return-void
.end method

.method private handleAutoPunct()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 386
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 387
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_0

    .line 399
    :goto_0
    return-void

    .line 391
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 393
    const-string v0, "."

    .line 395
    .local v0, "autopunct":Ljava/lang/CharSequence;
    invoke-interface {v1, v0, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 397
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->sendSpace()V

    goto :goto_0
.end method

.method private handleChar(C)V
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 441
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    const/16 p1, 0xa

    .line 443
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 454
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 455
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->sendKeyChar(C)V

    .line 457
    :goto_0
    return-void

    .line 446
    :sswitch_0
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->handleSpace()V

    goto :goto_0

    .line 450
    :sswitch_1
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->deleteOneCharacter()V

    goto :goto_0

    .line 443
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleSpace()V
    .locals 0

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 417
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->sendSpace()V

    .line 418
    return-void
.end method

.method private handleText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 613
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 614
    return-void
.end method

.method private hideHowToUseToast()V
    .locals 0

    .prologue
    .line 177
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 178
    return-void
.end method

.method private isEmptyRecognitionCandidateList()Z
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPendingRecognizeMessage()Z
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private performDelayRecognition()V
    .locals 3

    .prologue
    .line 617
    const/4 v0, 0x0

    .line 618
    .local v0, "startWord":Ljava/lang/CharSequence;
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isEmptyRecognitionCandidateList()Z

    move-result v1

    if-nez v1, :cond_0

    .line 619
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "startWord":Ljava/lang/CharSequence;
    check-cast v0, Ljava/lang/CharSequence;

    .line 621
    .restart local v0    # "startWord":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v1

    if-nez v1, :cond_1

    .line 622
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v1, v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->queueRecognition(Ljava/lang/CharSequence;)V

    .line 624
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    if-eqz v1, :cond_2

    .line 625
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->clearAll()V

    .line 627
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->invalidate()V

    .line 628
    return-void
.end method

.method private postDelayResumeSpeech()V
    .locals 4

    .prologue
    const/16 v1, 0xb

    .line 1085
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1089
    return-void
.end method

.method private postDelayShowingStartOfWordCandidate()V
    .locals 4

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mHwrHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1183
    return-void
.end method

.method private postHowToUseToastMsg()V
    .locals 4

    .prologue
    .line 173
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0x1f7

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 174
    return-void
.end method

.method private processPendingRecognizing()V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 465
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->performDelayRecognition()V

    .line 466
    return-void
.end method

.method private removeAllPendingMsg()V
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mHwrHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 632
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mHwrHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 633
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mHwrHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 634
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mHwrHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 635
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 636
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 637
    return-void
.end method

.method private removeAllPendingPopupMsg()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0x1f7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 183
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 184
    return-void
.end method

.method private removeDelayRecognitionMsg()V
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 581
    return-void
.end method

.method private removeOneCharacterFromCandidateList()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, "seq":Ljava/lang/CharSequence;
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isEmptyRecognitionCandidateList()Z

    move-result v1

    if-nez v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "seq":Ljava/lang/CharSequence;
    check-cast v0, Ljava/lang/CharSequence;

    .line 409
    .restart local v0    # "seq":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 412
    :cond_0
    return-object v0
.end method

.method private setKeyboardForTextEntry(Lcom/nuance/swype/input/InputFieldInfo;)V
    .locals 5
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 187
    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v4

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, p1, v4, v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;Z)Lcom/nuance/swype/input/XT9Keyboard;

    .line 190
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->clearCategory()V

    .line 191
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNumericModeField()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->addDigitsAndSymbolsOnlyCategory()V

    .line 193
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->addPunctuationCategory()V

    .line 194
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->addGestureCategory()V

    .line 195
    iput v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    .line 201
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 187
    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/input/InputMethods;->addTextCategory(Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 198
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->addGestureCategory()V

    .line 199
    iput v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    goto :goto_1
.end method

.method private static setWordListHeight(I)V
    .locals 0
    .param p0, "wordListHeight"    # I

    .prologue
    .line 1577
    sput p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWordListHeight:I

    .line 1578
    return-void
.end method

.method private showDelayFullScreen()V
    .locals 1

    .prologue
    .line 1322
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1324
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->showHandWritingView(Z)V

    .line 1329
    :goto_0
    return-void

    .line 1327
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->postDelayShowingFullScreenMsg()V

    goto :goto_0
.end method

.method private showFullScreenHandWritingView()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 1274
    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v7}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v7, v7, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v7}, Lcom/nuance/swype/input/IMEHandlerManager;->statusBarHeight()I

    move-result v4

    .line 1276
    .local v4, "status_bar_height":I
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1278
    .local v1, "display":Landroid/util/DisplayMetrics;
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1279
    .local v5, "w":I
    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1280
    sub-int v3, v7, v4

    .line 1281
    .local v3, "fullHandWritingScreenYOffset":I
    move v2, v3

    .line 1282
    .local v2, "fullHandWritingScreenHeight":I
    sget-object v7, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v8, "showFullScreenHandWritingView...fullHandWritingScreenHeight: "

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1284
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isMiniKeyboardMode()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isDockMiniKeyboardMode()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1286
    :cond_0
    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v7, :cond_5

    .line 1287
    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v7}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    .line 1288
    .local v0, "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    if-eqz v0, :cond_4

    .line 1289
    iget-boolean v7, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isOnceAction:Z

    if-eqz v7, :cond_2

    .line 1290
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->postDelayShowingFullScreenMsg()V

    .line 1291
    iput-boolean v6, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isOnceAction:Z

    .line 1309
    .end local v0    # "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    :goto_1
    return-void

    .end local v1    # "display":Landroid/util/DisplayMetrics;
    .end local v2    # "fullHandWritingScreenHeight":I
    .end local v3    # "fullHandWritingScreenYOffset":I
    .end local v4    # "status_bar_height":I
    .end local v5    # "w":I
    :cond_1
    move v4, v6

    .line 1274
    goto :goto_0

    .line 1294
    .restart local v0    # "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    .restart local v1    # "display":Landroid/util/DisplayMetrics;
    .restart local v2    # "fullHandWritingScreenHeight":I
    .restart local v3    # "fullHandWritingScreenYOffset":I
    .restart local v4    # "status_bar_height":I
    .restart local v5    # "w":I
    :cond_2
    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->getRootViewHeight()I

    move-result v7

    if-gtz v7, :cond_3

    .line 1295
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->postDelayShowingFullScreenMsg()V

    goto :goto_1

    .line 1298
    :cond_3
    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->getRootViewHeight()I

    move-result v7

    sub-int v2, v3, v7

    .line 1300
    sget-object v7, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v8, "showFullScreenHandWritingView...root view height: "

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->getRootViewHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1302
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v7

    sub-int/2addr v3, v7

    .line 1306
    .end local v0    # "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    :cond_5
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->changeAltIconOfSwitchingLayout(Z)V

    .line 1307
    iget-object v7, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    neg-int v8, v3

    invoke-virtual {v7, v6, v8, v5, v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->showFullScreenHandWritingFrame(IIII)V

    goto :goto_1
.end method

.method private showStartOfWordCandidateList()V
    .locals 2

    .prologue
    .line 741
    invoke-static {}, Lcom/nuance/swype/input/IME;->getLastSavedActiveWordAndSet()Ljava/lang/String;

    move-result-object v0

    .line 742
    .local v0, "lastWord":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 743
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/Composition;->showInline(Ljava/lang/CharSequence;)V

    .line 744
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Composition;->acceptCurrentInline()V

    .line 746
    :cond_0
    return-void
.end method

.method private startArcsAddingSequence()V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->startArcsAddingSequence()V

    .line 514
    :cond_0
    return-void
.end method

.method private toggleNextWritingMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 829
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v1

    .line 830
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    if-eqz v1, :cond_4

    .line 831
    const/16 v2, 0x193e

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->findKeyByKeyCode(Ljava/util/List;I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 833
    .local v0, "altKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_3

    .line 834
    if-nez p1, :cond_2

    .line 835
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->label_symbol_key:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 841
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 850
    .end local v0    # "altKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    if-eqz v2, :cond_1

    .line 851
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->invalidate()V

    .line 853
    :cond_1
    return-void

    .line 837
    .restart local v0    # "altKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 838
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->label_korean_key:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0

    .line 844
    :cond_3
    sget-object v2, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "toggleNextWritingMode() altKey not found!"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1

    .line 847
    .end local v0    # "altKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_4
    sget-object v2, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "toggleNextWritingMode() no modifier keys found!"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
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

    .line 593
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mStarted:Z

    if-nez v0, :cond_0

    .line 594
    iput-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 609
    :goto_0
    return-void

    .line 598
    :cond_0
    iput-object p1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    .line 600
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 602
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/Composition;->showInline(Ljava/lang/CharSequence;)V

    .line 603
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    goto :goto_0

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iput-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 607
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    goto :goto_0
.end method

.method private updateWritingSettings()V
    .locals 3

    .prologue
    .line 814
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->clearCategory()V

    .line 815
    iget v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 816
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->addDigitsAndSymbolsOnlyCategory()V

    .line 817
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->addPunctuationCategory()V

    .line 818
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->addGestureCategory()V

    .line 824
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->applyChangedSettings()V

    .line 825
    return-void

    .line 819
    :cond_1
    iget v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    if-nez v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/InputMethods;->addTextCategory(Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 821
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->addGestureCategory()V

    goto :goto_0
.end method


# virtual methods
.method public acceptCurrentDefaultWord()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 490
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v1}, Lcom/nuance/swype/input/Composition;->acceptCurrentInline()V

    .line 494
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 496
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 498
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v1, v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->noteSelectedCandidate(I)Z

    .line 501
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->endArcsAddingSequence()V

    .line 502
    const/4 v0, 0x1

    .line 506
    :cond_0
    return v0
.end method

.method public acceptInlineAndClearCandidates()V
    .locals 0

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 919
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->clearSuggestions()V

    .line 920
    return-void
.end method

.method public changeAltIconOfSwitchingLayout(Z)V
    .locals 6
    .param p1, "aFullScreen"    # Z

    .prologue
    .line 1186
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    .line 1187
    if-eqz v4, :cond_3

    .line 1188
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v3

    .line 1189
    .local v3, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 1190
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 1191
    .local v2, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const v5, 0xaa3b

    if-ne v4, v5, :cond_1

    .line 1192
    if-eqz p1, :cond_2

    .line 1193
    iget-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 1194
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 1195
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    sget v4, Lcom/nuance/swype/input/R$attr;->cjkAltIconMinHwCommaKey:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 1196
    sget v4, Lcom/nuance/swype/input/R$attr;->cjkAltPreMinHwCommaKey:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 1207
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    :cond_0
    :goto_1
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 1189
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1200
    :cond_2
    iget-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 1201
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 1202
    .restart local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    sget v4, Lcom/nuance/swype/input/R$attr;->cjkAltIconMaxHwCommaKey:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altIcon:Landroid/graphics/drawable/Drawable;

    .line 1203
    sget v4, Lcom/nuance/swype/input/R$attr;->cjkAltPreMaxHwCommaKey:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->altPreviewIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 1212
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    .end local v1    # "i":I
    .end local v2    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v3    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    :cond_3
    return-void
.end method

.method protected changeKeyboardMode()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 776
    const/4 v0, 0x0

    .line 778
    .local v0, "changed":Z
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->isNumMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 780
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v2, :cond_0

    .line 781
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v1

    .line 782
    .local v1, "inputMode":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5, v1}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 785
    .end local v1    # "inputMode":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->showLastSavedHandWritingScreen()V

    .line 811
    :goto_0
    return-void

    .line 790
    :cond_1
    iget v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    if-nez v2, :cond_4

    .line 791
    iput v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    .line 792
    const/4 v0, 0x1

    .line 799
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v2

    if-nez v2, :cond_3

    .line 801
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 802
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->processPendingRecognizing()V

    .line 807
    :goto_2
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->updateWritingSettings()V

    .line 810
    :cond_3
    iget v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->toggleNextWritingMode(I)V

    goto :goto_0

    .line 794
    :cond_4
    iget v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    if-ne v2, v3, :cond_2

    .line 795
    const/4 v2, 0x0

    iput v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    .line 796
    const/4 v0, 0x1

    goto :goto_1

    .line 804
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->acceptCurrentDefaultWord()Z

    goto :goto_2
.end method

.method public clearCurrentActiveWord()V
    .locals 3

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 125
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 127
    const-string v1, ""

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 128
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->cancelCurrentDefaultWord()Z

    .line 129
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 131
    :cond_0
    return-void
.end method

.method protected clearSuggestions()V
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 928
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 929
    return-void
.end method

.method public create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V
    .locals 1
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;
    .param p2, "xt9coreinput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p3, "t9write"    # Lcom/nuance/input/swypecorelib/T9Write;
    .param p4, "speechWrapper"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/InputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V

    .line 103
    check-cast p3, Lcom/nuance/input/swypecorelib/T9WriteKorean;

    .end local p3    # "t9write":Lcom/nuance/input/swypecorelib/T9Write;
    iput-object p3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    .line 104
    new-instance v0, Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-direct {v0, p1, p2}, Lcom/nuance/swype/input/KeyboardSwitcher;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 105
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 106
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 107
    return-void
.end method

.method public createCandidatesView(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)Landroid/view/View;
    .locals 3
    .param p1, "onSelectListener"    # Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    .prologue
    .line 976
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    if-nez v1, :cond_0

    .line 978
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 981
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/nuance/swype/input/R$layout;->korean_handwriting_candidates:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    iput-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    .line 983
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->initViews()V

    .line 984
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->getCJKCandidatesListView()Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .line 986
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setOnWordSelectActionListener(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;)V

    .line 988
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    return-object v1
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->destroy()V

    .line 112
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0, p0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->removeRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 113
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->hideFullScreenHandWritingView()V

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->removeAllPendingMsg()V

    .line 118
    iput-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    .line 119
    iput-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 120
    return-void
.end method

.method public finishInput()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1108
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 1109
    iput-boolean v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mStarted:Z

    .line 1111
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    if-eqz v0, :cond_0

    .line 1112
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->setNewSession(Z)V

    .line 1114
    :cond_0
    iput-boolean v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isOnceAction:Z

    .line 1115
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->dismissPopupKeyboard()V

    .line 1116
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->hideFullScreenHandWritingView()V

    .line 1117
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->removeAllPendingPopupMsg()V

    .line 1118
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 1119
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 1120
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->removeAllPendingMsg()V

    .line 1121
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->clearSuggestions()V

    .line 1123
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->endArcsAddingSequence()V

    .line 1124
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0, p0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->removeRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 1125
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->finishSession()V

    .line 1126
    return-void
.end method

.method public flushCurrentActiveWord()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->acceptCurrentActiveWord()V

    .line 206
    return-void
.end method

.method public getCandidatesListsViewContainerPadding()I
    .locals 3

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget v0, v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    if-lez v0, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget v2, v2, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1480
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentExactWord()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 589
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentScreenMode()Z
    .locals 1

    .prologue
    .line 1473
    const/4 v0, 0x0

    return v0
.end method

.method protected getExtendedEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 3
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 1617
    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    if-eqz v1, :cond_0

    .line 1618
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    .line 1619
    .local v0, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->MOVABLE_MINI:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v1, v2, :cond_0

    .line 1623
    .end local v0    # "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    .end local p1    # "me":Landroid/view/MotionEvent;
    :goto_0
    return-object p1

    .restart local p1    # "me":Landroid/view/MotionEvent;
    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->getExtendedEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    goto :goto_0
.end method

.method getFullScreenSettingKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "language"    # I

    .prologue
    .line 1371
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fullscreen.enabled."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandWritingMode()I
    .locals 1

    .prologue
    .line 863
    iget v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    return v0
.end method

.method public getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isNumMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_NUM:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 242
    :goto_0
    return-object v0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_EDIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    goto :goto_0

    .line 236
    :cond_1
    iget v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    if-nez v0, :cond_2

    .line 237
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    goto :goto_0

    .line 238
    :cond_2
    iget v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 239
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    goto :goto_0

    .line 242
    :cond_3
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    goto :goto_0
.end method

.method protected getLastFullScreenState(I)Z
    .locals 3
    .param p1, "language"    # I

    .prologue
    .line 1381
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getFullScreenSettingKey(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getWordCandidateListContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    return-object v0
.end method

.method protected handleBackspace(I)Z
    .locals 2
    .param p1, "repeatedCount"    # I

    .prologue
    .line 286
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->hideTooltip()V

    .line 288
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->processPendingRecognizing()V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->queueChar(C)V

    .line 293
    const/4 v0, 0x1

    return v0
.end method

.method public handleCharKey(Landroid/graphics/Point;I[IJ)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "keyCodes"    # [I
    .param p4, "eventTime"    # J

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->processPendingRecognizing()V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    int-to-char v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->queueChar(C)V

    .line 302
    return-void
.end method

.method public handleClose()V
    .locals 2

    .prologue
    .line 1093
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->handleClose()V

    .line 1094
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mStarted:Z

    .line 1096
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->dismissPopupKeyboard()V

    .line 1097
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->hideFullScreenHandWritingView()V

    .line 1098
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->acceptCurrentActiveWord()V

    .line 1099
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->removeAllPendingMsg()V

    .line 1100
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->removeAllPendingPopupMsg()V

    .line 1101
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->setNewSession(Z)V

    .line 1104
    :cond_0
    return-void
.end method

.method public handleKey(IZI)Z
    .locals 2
    .param p1, "primaryCode"    # I
    .param p2, "quickPressed"    # Z
    .param p3, "repeatedCount"    # I

    .prologue
    const/4 v0, 0x1

    .line 307
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 310
    sparse-switch p1, :sswitch_data_0

    .line 326
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 312
    :sswitch_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->flushCurrentActiveWord()V

    .line 313
    if-nez p2, :cond_0

    .line 314
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->startSpeech()V

    goto :goto_0

    .line 318
    :sswitch_1
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->toggleLastKeyboard()V

    goto :goto_0

    .line 321
    :sswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    .line 322
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->clearArcs()V

    goto :goto_0

    .line 310
    :sswitch_data_0
    .sparse-switch
        0xb54 -> :sswitch_2
        0x193f -> :sswitch_0
        0xaa38 -> :sswitch_1
    .end sparse-switch
.end method

.method public handlePossibleActionAfterResize()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/16 v4, 0xe

    .line 1149
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_3

    .line 1150
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    .line 1151
    .local v0, "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isMiniKeyboardMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isDockMiniKeyboardMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1152
    :cond_0
    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->requestLayout()V

    .line 1153
    iput-boolean v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isOnceAction:Z

    .line 1156
    :cond_1
    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    if-eqz v1, :cond_4

    .line 1157
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isMiniKeyboardMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1158
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/nuance/swype/input/view/InputContainerView;->setAllowedMovement(ZZ)V

    .line 1160
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->hideFullScreenHandWritingFrame()V

    .line 1161
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->setFullScreenHandWritingFrame()V

    .line 1162
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->showFullScreenHandWritingView()V

    .line 1170
    .end local v0    # "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    :cond_3
    :goto_0
    return-void

    .line 1164
    .restart local v0    # "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    :cond_4
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1165
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1167
    :cond_5
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3c

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public handlePossibleActionAfterUniversalKeyboardResize(Z)V
    .locals 1
    .param p1, "hideSymbolView"    # Z

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->hideFullScreenHandWritingFrame()V

    .line 1175
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->setFullScreenHandWritingFrame()V

    .line 1177
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->showFullScreenHandWritingView()V

    .line 1179
    :cond_0
    return-void
.end method

.method protected handleScrollDown()V
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    .line 934
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    if-nez v0, :cond_1

    .line 935
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->requestHideSelf(I)V

    .line 942
    :cond_0
    :goto_0
    return-void

    .line 937
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEHandlerManager;->toggleFullScreenHW()V

    goto :goto_0
.end method

.method protected handleScrollUp()V
    .locals 1

    .prologue
    .line 946
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    if-nez v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEHandlerManager;->toggleFullScreenHW()V

    .line 951
    :cond_0
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

    .line 333
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->hideTooltip()V

    .line 335
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 337
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->processPendingRecognizing()V

    .line 338
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v4, v8}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->queueChar(C)V

    .line 382
    :cond_0
    :goto_0
    return v7

    .line 339
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isEmptyRecognitionCandidateList()Z

    move-result v4

    if-nez v4, :cond_2

    .line 343
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v4, v8}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->queueChar(C)V

    goto :goto_0

    .line 346
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 347
    const/4 v0, 0x1

    .line 351
    .local v0, "addSpace":Z
    if-eqz p1, :cond_4

    if-ge p2, v6, :cond_4

    iget-boolean v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mAutoPunctuationOn:Z

    if-eqz v4, :cond_4

    .line 352
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v3

    .line 353
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_4

    .line 354
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 355
    invoke-interface {v3, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 361
    .local v1, "cSeqBefore":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v2

    .line 363
    .local v2, "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v6, :cond_3

    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 370
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->handleAutoPunct()V

    .line 371
    const/4 v0, 0x0

    .line 374
    :cond_3
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 377
    .end local v1    # "cSeqBefore":Ljava/lang/CharSequence;
    .end local v2    # "charUtil":Lcom/nuance/swype/util/CharacterUtilities;
    .end local v3    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_4
    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->sendSpace()V

    goto :goto_0
.end method

.method protected hideFullScreenHandWritingView()V
    .locals 1

    .prologue
    .line 1312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    .line 1313
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->changeAltIconOfSwitchingLayout(Z)V

    .line 1315
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->hideFullScreenHandWritingFrame()V

    .line 1316
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mStarted:Z

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->setNormalHandScreenWritingFrame()V

    .line 1319
    :cond_0
    return-void
.end method

.method public isFullScreenHandWritingView()Z
    .locals 1

    .prologue
    .line 1134
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    return v0
.end method

.method public isHandWritingInputView()Z
    .locals 1

    .prologue
    .line 1139
    const/4 v0, 0x1

    return v0
.end method

.method public isLanguageSwitchableOnSpace()Z
    .locals 1

    .prologue
    .line 971
    const/4 v0, 0x1

    return v0
.end method

.method public isScrollable(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)Z
    .locals 1
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 1387
    const/4 v0, 0x0

    return v0
.end method

.method public isSpeechPopupShowing()Z
    .locals 1

    .prologue
    .line 1582
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->isSpeechViewShowing()Z

    move-result v0

    return v0
.end method

.method protected needChangeSpeechWindowHeight()Z
    .locals 1

    .prologue
    .line 1637
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isNormalTextInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1638
    const/4 v0, 0x1

    .line 1640
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .locals 0
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 1394
    return-void
.end method

.method public onApplicationUnbind()V
    .locals 0

    .prologue
    .line 869
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->onApplicationUnbind()V

    .line 871
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->removeAllPendingPopupMsg()V

    .line 872
    return-void
.end method

.method public onCandidateLongPressed(ILjava/lang/String;ILcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "wdSource"    # I
    .param p4, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 1406
    return-void
.end method

.method public onHandleWriteEvent(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;

    .prologue
    const-wide/16 v4, 0x5

    .line 646
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_2

    .line 647
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isLVLLicenseValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    :cond_2
    iget v0, p1, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;->mType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 659
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mHwrHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mHwrHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 664
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mHwrHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mHwrHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 669
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mHwrHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mHwrHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 656
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onScrollContentChanged()V
    .locals 0

    .prologue
    .line 1633
    return-void
.end method

.method public onSpeechViewDismissed()V
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isNumMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 965
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->showLastSavedHandWritingScreen()V

    .line 967
    :cond_0
    return-void
.end method

.method public onSpeechViewShowedUp()V
    .locals 1

    .prologue
    .line 957
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->hideFullScreenHandWritingFrame()V

    .line 960
    :cond_0
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->processPendingRecognizing()V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->queueText(Ljava/lang/CharSequence;)V

    .line 226
    return-void
.end method

.method public penDown(Landroid/view/View;)V
    .locals 2
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->dismissPopupKeyboard()V

    .line 551
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 552
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->setWidth(I)V

    .line 554
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->setHeight(I)V

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->applyChangedSettings()V

    .line 559
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 561
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->startArcsAddingSequence()V

    .line 562
    return-void
.end method

.method public penUp(Ljava/util/List;Landroid/view/View;)V
    .locals 0
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
    .line 1411
    .local p1, "arc":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    return-void
.end method

.method public penUp([Lcom/nuance/swype/input/Stroke$Arc;Landroid/view/View;)V
    .locals 4
    .param p1, "arcs"    # [Lcom/nuance/swype/input/Stroke$Arc;
    .param p2, "Src"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 566
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mBuildInfo:Lcom/nuance/swype/input/BuildInfo;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/nuance/swype/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v3, v3}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->queueAddArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->getRecognizerDelay()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 576
    :cond_1
    return-void
.end method

.method public pointInSelectionArea(II)Z
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x0

    .line 1416
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 1439
    :cond_0
    :goto_0
    return v4

    .line 1419
    :cond_1
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v5, v5, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEHandlerManager;->statusBarHeight()I

    move-result v3

    .line 1422
    .local v3, "status_bar_height":I
    :goto_1
    sget v5, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWordListHeight:I

    if-nez v5, :cond_2

    .line 1423
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getMeasuredHeight()I

    move-result v5

    sput v5, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWordListHeight:I

    .line 1425
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$dimen;->key_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1428
    .local v1, "keyboard_height":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1430
    .local v2, "screen_height":I
    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->isShown()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1431
    sget v5, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWordListHeight:I

    sub-int v5, v2, v5

    sub-int/2addr v5, v1

    sub-int v0, v5, v3

    .line 1436
    .local v0, "boundaryHandWritingScreenHeight":I
    :goto_2
    if-lt p2, v0, :cond_0

    .line 1439
    const/4 v4, 0x1

    goto :goto_0

    .end local v0    # "boundaryHandWritingScreenHeight":I
    .end local v1    # "keyboard_height":I
    .end local v2    # "screen_height":I
    .end local v3    # "status_bar_height":I
    :cond_3
    move v3, v4

    .line 1419
    goto :goto_1

    .line 1434
    .restart local v1    # "keyboard_height":I
    .restart local v2    # "screen_height":I
    .restart local v3    # "status_bar_height":I
    :cond_4
    sub-int v5, v2, v1

    sub-int v0, v5, v3

    .restart local v0    # "boundaryHandWritingScreenHeight":I
    goto :goto_2
.end method

.method protected postDelayShowingFullScreenMsg()V
    .locals 4

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mDelayShowingFullScreenHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1334
    return-void
.end method

.method protected preUpdateSpeechText()V
    .locals 0

    .prologue
    .line 1628
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->acceptCurrentActiveWord()V

    .line 1629
    return-void
.end method

.method public prevBtnPressed(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;)V
    .locals 0
    .param p1, "aSource"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .prologue
    .line 1400
    return-void
.end method

.method protected removeDelayShowingFullScreenMsg()V
    .locals 2

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mDelayShowingFullScreenHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1339
    return-void
.end method

.method public resetArea(I)V
    .locals 2
    .param p1, "areaOption"    # I

    .prologue
    .line 1455
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 1456
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->requestHideSelf(I)V

    .line 1461
    :goto_0
    return-void

    .line 1459
    :cond_0
    iput p1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mSelectionAreaOption:I

    goto :goto_0
.end method

.method protected resumeSpeech()V
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    if-eqz v0, :cond_0

    .line 877
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->resumeSpeech()V

    .line 879
    :cond_0
    return-void
.end method

.method public selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/CharSequence;
    .param p3, "source"    # Landroid/view/View;

    .prologue
    .line 528
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->isAutoSpaceEnabled()Z

    move-result v0

    .line 530
    .local v0, "autospaceOn":Z
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    const/4 v0, 0x0

    .line 533
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v1, p2}, Lcom/nuance/swype/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 534
    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 535
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->sendSpace()V

    .line 536
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->learnNewWord(Ljava/lang/CharSequence;)I

    .line 539
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    .line 540
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 542
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v1, p1}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->noteSelectedCandidate(I)Z

    .line 545
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->endArcsAddingSequence()V

    .line 546
    return-void
.end method

.method public setContainerView(Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;)V
    .locals 0
    .param p1, "container"    # Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    .line 1130
    return-void
.end method

.method public setFullScreenHandWritingFrame()V
    .locals 1

    .prologue
    .line 1143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    .line 1144
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->setFullScreenHandWritingFrame()V

    .line 1145
    return-void
.end method

.method public setHandWritingView(Lcom/nuance/swype/input/HandWritingView;)V
    .locals 2
    .param p1, "view"    # Lcom/nuance/swype/input/HandWritingView;

    .prologue
    .line 856
    instance-of v0, p1, Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    if-eqz v0, :cond_0

    .line 857
    check-cast p1, Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    .end local p1    # "view":Lcom/nuance/swype/input/HandWritingView;
    iput-object p1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    .line 858
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->setFullScreen(Z)V

    .line 860
    :cond_0
    return-void
.end method

.method public setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V
    .locals 0
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;

    .prologue
    .line 1603
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->updateDockModeForHandwriting(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1604
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1605
    return-void
.end method

.method public setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
    .locals 8
    .param p1, "keyboardLayer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 248
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->dismissPopupKeyboard()V

    .line 249
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->acceptCurrentActiveWord()V

    .line 251
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v1

    .line 253
    .local v1, "curLayer":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_NUM:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_EDIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne p1, v2, :cond_4

    .line 254
    :cond_0
    if-eq v1, p1, :cond_1

    .line 255
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v5, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v6, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v6

    invoke-virtual {v2, p1, v5, v6}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 256
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->hideFullScreenHandWritingView()V

    .line 257
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->hideHWFrameAndCharacterList()V

    .line 265
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 267
    .local v0, "changed":Z
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne p1, v2, :cond_7

    iget v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    if-eqz v2, :cond_7

    .line 268
    iput v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    .line 269
    const/4 v0, 0x1

    .line 276
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v2

    if-nez v2, :cond_3

    .line 277
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->updateWritingSettings()V

    .line 278
    iget v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->toggleNextWritingMode(I)V

    .line 281
    :cond_3
    return-void

    .line 259
    .end local v0    # "changed":Z
    :cond_4
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_NUM:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v1, v2, :cond_5

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_EDIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne v1, v2, :cond_1

    .line 261
    :cond_5
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

    if-nez v2, :cond_6

    move v2, v3

    :goto_2
    invoke-virtual {v5, v6, v7, v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;Z)Lcom/nuance/swype/input/XT9Keyboard;

    .line 262
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->showLastSavedHandWritingScreen()V

    goto :goto_0

    :cond_6
    move v2, v4

    .line 261
    goto :goto_2

    .line 270
    .restart local v0    # "changed":Z
    :cond_7
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne p1, v2, :cond_2

    iget v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    if-eq v2, v3, :cond_2

    .line 272
    iput v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    .line 273
    const/4 v0, 0x1

    goto :goto_1
.end method

.method setLastFullScreenState(Z)V
    .locals 2
    .param p1, "fullscreen"    # Z

    .prologue
    .line 1375
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getFullScreenSettingKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 1378
    return-void
.end method

.method public setNormalHandScreenWritingFrame()V
    .locals 1

    .prologue
    .line 1215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    .line 1216
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->hideFullScreenHandWritingFrame()V

    .line 1217
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->setNormalHandScreenWritingFrame()V

    .line 1218
    return-void
.end method

.method protected setNotMatchToolTipSuggestion()V
    .locals 1

    .prologue
    .line 1587
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 1588
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 1589
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->showNotMatchTootip()V

    .line 1590
    return-void
.end method

.method protected setSwypeKeytoolTipSuggestion()V
    .locals 1

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_0

    .line 1595
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->showSwypeTooltip()V

    .line 1596
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 1597
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 1599
    :cond_0
    return-void
.end method

.method public showEmojiInputView()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1645
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    if-eqz v0, :cond_0

    .line 1646
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_EDIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 1647
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 1650
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mDelayShowingFullScreenHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1651
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mDelayShowingFullScreenHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1652
    return-void
.end method

.method public showHandWritingView(Z)V
    .locals 1
    .param p1, "animation"    # Z

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->isSpeechViewShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isNumMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1271
    :cond_1
    :goto_0
    return-void

    .line 1264
    :cond_2
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->changeAltIconOfSwitchingLayout(Z)V

    .line 1266
    iget-boolean v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    if-eqz v0, :cond_3

    .line 1267
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->showFullScreenHandWritingView()V

    goto :goto_0

    .line 1269
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->setNormalHandScreenWritingFrame()V

    goto :goto_0
.end method

.method showHowToUseToast()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 152
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 153
    .local v0, "sm":Lcom/nuance/swype/input/AppPreferences;
    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    if-eqz v1, :cond_1

    .line 154
    const-string v1, "show_how_to_toggle_half_screen_mode_en"

    invoke-virtual {v0, v1, v5}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const-string v1, "show_how_to_toggle_half_screen_mode_en"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 156
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->how_to_toggle_half_screen_mode:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v2, v5, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const-string v1, "show_how_to_toggle_full_screen_mode_en"

    invoke-virtual {v0, v1, v5}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    const-string v1, "show_how_to_toggle_full_screen_mode_en"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 164
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->how_to_toggle_full_screen_mode:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v2, v5, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    goto :goto_0
.end method

.method protected showLastSavedHandWritingScreen()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/16 v4, 0xe

    .line 1342
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getLastFullScreenState(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1343
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setFullScreenHandWritingFrame()V

    .line 1344
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->changeAltIconOfSwitchingLayout(Z)V

    .line 1345
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_1

    .line 1346
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    .line 1347
    .local v0, "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isMiniKeyboardMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isDockMiniKeyboardMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1348
    :cond_0
    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->requestLayout()V

    .line 1349
    iput-boolean v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isOnceAction:Z

    .line 1352
    .end local v0    # "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->postDelayShowingFullScreenMsg()V

    .line 1368
    :goto_0
    return-void

    .line 1354
    :cond_2
    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->changeAltIconOfSwitchingLayout(Z)V

    .line 1356
    iget-boolean v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    if-eqz v1, :cond_3

    .line 1357
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setFullScreenHandWritingFrame()V

    .line 1358
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->postDelayShowingFullScreenMsg()V

    goto :goto_0

    .line 1360
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setNormalHandScreenWritingFrame()V

    .line 1361
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1362
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1364
    :cond_4
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3c

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected showSymbolSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 2
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 1222
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isFullScreenHandWritingView()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    sget v1, Lcom/nuance/swype/input/R$xml;->popup_smileys_with_return:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    const-string v1, ":-)"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1225
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->showStaticSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    .line 1227
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->showSymbolSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    goto :goto_0
.end method

.method public startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V
    .locals 5
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p2, "restarting"    # Z

    .prologue
    .line 1023
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mStarted:Z

    .line 1025
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->dismissPopupKeyboard()V

    .line 1026
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->removeDelayShowingFullScreenMsg()V

    .line 1027
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->hideFullScreenHandWritingView()V

    .line 1029
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V

    .line 1030
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v2, :cond_0

    .line 1031
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->updateCandidatesSize()V

    .line 1033
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    if-eqz v2, :cond_1

    .line 1034
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->updateHandwritingPadSize()V

    .line 1037
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v2, p0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->addRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 1038
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->cancelCurrentDefaultWord()Z

    .line 1039
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->endArcsAddingSequence()V

    .line 1041
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    .line 1043
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setKeyboardForTextEntry(Lcom/nuance/swype/input/InputFieldInfo;)V

    .line 1045
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/Composition;->setInputConnection(Landroid/view/inputmethod/InputConnection;)V

    .line 1047
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->startSession(I)V

    .line 1048
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1049
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    const-string v3, "hwr_auto_recpgnize_delay"

    sget v4, Lcom/nuance/swype/input/R$integer;->handwriting_auto_recognize_default_ms:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/nuance/swype/input/settings/InputPrefs;->getAutoDelay(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v0

    .line 1054
    .local v0, "delay":I
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWriteKorean:Lcom/nuance/input/swypecorelib/T9WriteKorean;

    invoke-virtual {v2, v0}, Lcom/nuance/input/swypecorelib/T9WriteKorean;->setRecognizerDelay(I)V

    .line 1056
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->clearArcs()V

    .line 1058
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$dimen;->candidates_list_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mSelectionHeight:I

    .line 1059
    iget v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mSelectionHeight:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$dimen;->key_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardHeight:I

    .line 1061
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->getEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v2, :cond_2

    .line 1062
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->removeDelayShowingFullScreenMsg()V

    .line 1065
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 1067
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->showLastSavedHandWritingScreen()V

    .line 1069
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getLastFullScreenState(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1070
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->updateCandidatesList(Ljava/util/List;)V

    .line 1073
    :cond_3
    iget v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingMode:I

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->toggleNextWritingMode(I)V

    .line 1075
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->removeAllPendingPopupMsg()V

    .line 1077
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1078
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->postDelayShowingStartOfWordCandidate()V

    .line 1080
    :cond_4
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->postHowToUseToastMsg()V

    .line 1081
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->postDelayResumeSpeech()V

    .line 1082
    return-void
.end method

.method public toggleHandWritingFrame()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1232
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->dismissPopupKeyboard()V

    .line 1234
    iget-boolean v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    if-nez v2, :cond_0

    .line 1235
    iput-boolean v3, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mFullScreenHandWriting:Z

    .line 1237
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->handlePossibleActionAfterResize()V

    .line 1249
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isFullScreenHandWritingView()Z

    move-result v1

    .line 1251
    .local v1, "fullscreenMode":Z
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setLastFullScreenState(Z)V

    .line 1253
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->changeAltIconOfSwitchingLayout(Z)V

    .line 1254
    invoke-direct {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->postHowToUseToastMsg()V

    .line 1256
    return v1

    .line 1240
    .end local v1    # "fullscreenMode":Z
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v2, :cond_1

    .line 1241
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    .line 1242
    .local v0, "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->isMiniKeyboardMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1243
    invoke-virtual {v0, v3, v3}, Lcom/nuance/swype/input/view/InputContainerView;->setAllowedMovement(ZZ)V

    .line 1246
    .end local v0    # "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setNormalHandScreenWritingFrame()V

    goto :goto_0
.end method

.method public transferKeyEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 1485
    sget v17, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWordListHeight:I

    if-nez v17, :cond_0

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->getMeasuredHeight()I

    move-result v17

    sput v17, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWordListHeight:I

    .line 1488
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lcom/nuance/swype/input/R$dimen;->key_height:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 1491
    .local v12, "keyboard_height":I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v14, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1492
    .local v14, "screen_height":I
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v15, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1493
    .local v15, "screen_width":I
    const/16 v16, 0x0

    .line 1494
    .local v16, "status_bar_height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 1495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/IMEHandlerManager;->statusBarHeight()I

    move-result v16

    .line 1498
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    .line 1499
    .local v2, "downTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 1500
    .local v4, "eventTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 1501
    .local v6, "actionType":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 1502
    .local v7, "posX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 1503
    .local v8, "posY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    .line 1504
    .local v9, "mState":I
    int-to-float v0, v14

    move/from16 v17, v0

    sub-float v17, v17, v8

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v11, v17, v18

    .line 1505
    .local v11, "heightToBottom":F
    int-to-float v0, v12

    move/from16 v17, v0

    cmpg-float v17, v11, v17

    if-gtz v17, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mSelectionAreaOption:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mSelectionAreaOption:I

    move/from16 v17, v0

    if-nez v17, :cond_6

    .line 1508
    :cond_3
    if-nez v6, :cond_4

    .line 1509
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mSelectionAreaOption:I

    .line 1511
    :cond_4
    int-to-float v0, v12

    move/from16 v17, v0

    sub-float v8, v17, v11

    .line 1512
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v13

    .line 1515
    .local v13, "motionEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1516
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    .line 1518
    const/16 v17, 0x1

    .line 1574
    .end local v13    # "motionEvent":Landroid/view/MotionEvent;
    :goto_1
    return v17

    .line 1495
    .end local v2    # "downTime":J
    .end local v4    # "eventTime":J
    .end local v6    # "actionType":I
    .end local v7    # "posX":F
    .end local v8    # "posY":F
    .end local v9    # "mState":I
    .end local v11    # "heightToBottom":F
    :cond_5
    const/16 v16, 0x0

    goto :goto_0

    .line 1520
    .restart local v2    # "downTime":J
    .restart local v4    # "eventTime":J
    .restart local v6    # "actionType":I
    .restart local v7    # "posX":F
    .restart local v8    # "posY":F
    .restart local v9    # "mState":I
    .restart local v11    # "heightToBottom":F
    :cond_6
    sub-int v17, v14, v16

    sget v18, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mWordListHeight:I

    sub-int v17, v17, v18

    sub-int v10, v17, v12

    .line 1522
    .local v10, "boundarySize":I
    int-to-float v0, v10

    move/from16 v17, v0

    cmpl-float v17, v8, v17

    if-lez v17, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mSelectionAreaOption:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mSelectionAreaOption:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 1526
    :cond_8
    if-nez v6, :cond_9

    .line 1527
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mSelectionAreaOption:I

    .line 1529
    :cond_9
    int-to-float v0, v10

    move/from16 v17, v0

    sub-float v8, v8, v17

    .line 1530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getLeftWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v7, v17

    if-ltz v17, :cond_f

    .line 1531
    int-to-float v0, v15

    move/from16 v17, v0

    cmpg-float v17, v7, v17

    if-lez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getRightWidth()I

    move-result v17

    move/from16 v0, v17

    if-ge v0, v15, :cond_c

    .line 1533
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getLeftWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v7, v7, v17

    .line 1534
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v13

    .line 1536
    .restart local v13    # "motionEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1537
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    .line 1571
    .end local v13    # "motionEvent":Landroid/view/MotionEvent;
    :cond_b
    :goto_2
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 1540
    :cond_c
    if-nez v6, :cond_d

    .line 1541
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v13

    .line 1543
    .restart local v13    # "motionEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1545
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    .line 1547
    .end local v13    # "motionEvent":Landroid/view/MotionEvent;
    :cond_d
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_e

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v6, v0, :cond_b

    .line 1549
    :cond_e
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mSelectionAreaOption:I

    .line 1550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->setPointStatus(I)V

    goto :goto_2

    .line 1557
    :cond_f
    if-nez v6, :cond_10

    .line 1558
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v13

    .line 1560
    .restart local v13    # "motionEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->wordListViewContainerCJK:Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1561
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    .line 1563
    .end local v13    # "motionEvent":Landroid/view/MotionEvent;
    :cond_10
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_11

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v6, v0, :cond_b

    .line 1565
    :cond_11
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mSelectionAreaOption:I

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->setPointStatus(I)V

    goto :goto_2

    .line 1574
    :cond_12
    const/16 v17, 0x0

    goto/16 :goto_1
.end method

.method public updateKeyboardDockMode()V
    .locals 1

    .prologue
    .line 1608
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    .line 1609
    .local v0, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    if-eqz v0, :cond_0

    .line 1610
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1612
    :cond_0
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
    .line 140
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_1

    if-ne p3, p6, :cond_0

    if-eq p4, p6, :cond_1

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->acceptCurrentDefaultWord()Z

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0, p3, p4}, Lcom/nuance/swype/input/Composition;->setSelection(II)V

    .line 149
    :cond_2
    return-void
.end method
