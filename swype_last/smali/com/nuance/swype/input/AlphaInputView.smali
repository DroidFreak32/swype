.class public Lcom/nuance/swype/input/AlphaInputView;
.super Lcom/nuance/swype/input/InputView;
.source "AlphaInputView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/AlphaInputView$LoggingDLMWipeEvent;,
        Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;,
        Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;,
        Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;,
        Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWord;,
        Lcom/nuance/swype/input/AlphaInputView$CandidateFactory;,
        Lcom/nuance/swype/input/AlphaInputView$Slots;,
        Lcom/nuance/swype/input/AlphaInputView$UpdateSelectionCallback;
    }
.end annotation


# static fields
.field private static final traceLog:Lcom/nuance/swype/util/LogManager$Trace;


# instance fields
.field private final alphaInputViewCallback:Landroid/os/Handler$Callback;

.field private autoCorrectOverrideWords:Lcom/nuance/swype/util/LruWordCache;

.field private autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

.field private backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

.field private candidateBuilderResult:Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler$CandidatesBuilderResult;

.field candidatesBuilderHandler:Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;

.field private charUtils:Lcom/nuance/swype/util/CharacterUtilities;

.field private final exactType:Ljava/lang/StringBuilder;

.field inputContextRequestHandler:Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;

.field private isAddToDictionaryTipHighlighted:Z

.field private isLongPressed:Z

.field private isManualShift:Z

.field private isOrientationChangedOnce:Z

.field private isTelexMode:Z

.field private mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

.field private final mAlphaInputViewHandler:Landroid/os/Handler;

.field private mBKMultiTappingCharSpan:Landroid/text/style/BackgroundColorSpan;

.field private mBKWordErrorSpan:Landroid/text/style/BackgroundColorSpan;

.field private mFGMultiTappingCharSpan:Landroid/text/style/ForegroundColorSpan;

.field private mFGWordErrorSpan:Landroid/text/style/ForegroundColorSpan;

.field private final mInlineWord:Landroid/text/SpannableStringBuilder;

.field private mLoggingDLMWipeEvent:Lcom/nuance/swype/input/AlphaInputView$LoggingDLMWipeEvent;

.field private mPreTraceShiftedState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

.field private final mWordComposeSpan:Landroid/text/style/UnderlineSpan;

.field private oovWordHistory:Lcom/nuance/swype/input/OOVWordHistory;

.field private promptForAddingOOVCandidate:Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;

.field private final recaptureEditWord:Lcom/nuance/swype/input/RecaptureEditWord;

.field private shiftGestureOffset:I

.field private shiftGestureOn:Z

.field private terminalPunct:Ljava/lang/String;

.field topOfGestureMargin:I

.field private touchKeyActionHandler:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;

.field private final updateSelectionCallback:Lcom/nuance/swype/input/AlphaInputView$UpdateSelectionCallback;

.field private wordCandidateDataPoint:Lcom/nuance/swype/usagedata/WordCandidateDataPoint;

.field private wordCandidateDataPointWriter:Lcom/nuance/swype/usagedata/WordCandidateDataPointWriter;

.field wordRecaptureWrapper:Lcom/nuance/swype/input/keyboard/WordRecaptureWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 89
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getTrace()Lcom/nuance/swype/util/LogManager$Trace;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/AlphaInputView;->traceLog:Lcom/nuance/swype/util/LogManager$Trace;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 2559
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    .line 102
    iput-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->isManualShift:Z

    .line 128
    new-instance v0, Lcom/nuance/swype/input/RecaptureEditWord;

    invoke-direct {v0}, Lcom/nuance/swype/input/RecaptureEditWord;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->recaptureEditWord:Lcom/nuance/swype/input/RecaptureEditWord;

    .line 129
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->recaptureEditWord:Lcom/nuance/swype/input/RecaptureEditWord;

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->updateSelectionCallback:Lcom/nuance/swype/input/AlphaInputView$UpdateSelectionCallback;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->exactType:Ljava/lang/StringBuilder;

    .line 136
    iput-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->isLongPressed:Z

    .line 140
    new-instance v0, Lcom/nuance/swype/input/OOVWordHistory;

    invoke-direct {v0}, Lcom/nuance/swype/input/OOVWordHistory;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->oovWordHistory:Lcom/nuance/swype/input/OOVWordHistory;

    .line 150
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 152
    new-instance v0, Lcom/nuance/swype/input/AlphaInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/AlphaInputView$1;-><init>(Lcom/nuance/swype/input/AlphaInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->alphaInputViewCallback:Landroid/os/Handler$Callback;

    .line 208
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->alphaInputViewCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    .line 1050
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mPreTraceShiftedState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 4268
    new-instance v0, Lcom/nuance/swype/input/keyboard/WordRecaptureWrapper;

    invoke-direct {v0}, Lcom/nuance/swype/input/keyboard/WordRecaptureWrapper;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->wordRecaptureWrapper:Lcom/nuance/swype/input/keyboard/WordRecaptureWrapper;

    .line 4274
    new-instance v0, Lcom/nuance/swype/input/AlphaInputView$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/AlphaInputView$2;-><init>(Lcom/nuance/swype/input/AlphaInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->candidateBuilderResult:Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler$CandidatesBuilderResult;

    .line 4354
    new-instance v0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;-><init>(Lcom/nuance/swype/input/AlphaInputView;Lcom/nuance/swype/input/AlphaInputView$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;

    .line 4507
    new-instance v0, Lcom/nuance/swype/input/AlphaInputView$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/AlphaInputView$3;-><init>(Lcom/nuance/swype/input/AlphaInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;

    .line 2560
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 2563
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    .line 102
    iput-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->isManualShift:Z

    .line 128
    new-instance v0, Lcom/nuance/swype/input/RecaptureEditWord;

    invoke-direct {v0}, Lcom/nuance/swype/input/RecaptureEditWord;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->recaptureEditWord:Lcom/nuance/swype/input/RecaptureEditWord;

    .line 129
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->recaptureEditWord:Lcom/nuance/swype/input/RecaptureEditWord;

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->updateSelectionCallback:Lcom/nuance/swype/input/AlphaInputView$UpdateSelectionCallback;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->exactType:Ljava/lang/StringBuilder;

    .line 136
    iput-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->isLongPressed:Z

    .line 140
    new-instance v0, Lcom/nuance/swype/input/OOVWordHistory;

    invoke-direct {v0}, Lcom/nuance/swype/input/OOVWordHistory;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->oovWordHistory:Lcom/nuance/swype/input/OOVWordHistory;

    .line 150
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 152
    new-instance v0, Lcom/nuance/swype/input/AlphaInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/AlphaInputView$1;-><init>(Lcom/nuance/swype/input/AlphaInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->alphaInputViewCallback:Landroid/os/Handler$Callback;

    .line 208
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->alphaInputViewCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    .line 1050
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mPreTraceShiftedState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 4268
    new-instance v0, Lcom/nuance/swype/input/keyboard/WordRecaptureWrapper;

    invoke-direct {v0}, Lcom/nuance/swype/input/keyboard/WordRecaptureWrapper;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->wordRecaptureWrapper:Lcom/nuance/swype/input/keyboard/WordRecaptureWrapper;

    .line 4274
    new-instance v0, Lcom/nuance/swype/input/AlphaInputView$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/AlphaInputView$2;-><init>(Lcom/nuance/swype/input/AlphaInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->candidateBuilderResult:Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler$CandidatesBuilderResult;

    .line 4354
    new-instance v0, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;-><init>(Lcom/nuance/swype/input/AlphaInputView;Lcom/nuance/swype/input/AlphaInputView$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;

    .line 4507
    new-instance v0, Lcom/nuance/swype/input/AlphaInputView$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/AlphaInputView$3;-><init>(Lcom/nuance/swype/input/AlphaInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;

    .line 2564
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/AlphaInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaInputView;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->showStartOfWordCandidateList()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/AlphaInputView;Lcom/nuance/input/swypecorelib/Candidates$Source;II)V
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaInputView;
    .param p1, "x1"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/AlphaInputView;->displaySuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;II)V

    return-void
.end method

.method static synthetic access$1000(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaInputView;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/swype/input/AlphaInputView;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaInputView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->doAddWord(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/swype/input/OOVWordHistory;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaInputView;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->oovWordHistory:Lcom/nuance/swype/input/OOVWordHistory;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/nuance/swype/input/AlphaInputView;Ljava/lang/String;Landroid/view/inputmethod/InputConnection;)V
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaInputView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/AlphaInputView;->displayExactTypeAsInline(Ljava/lang/String;Landroid/view/inputmethod/InputConnection;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/nuance/swype/input/AlphaInputView;Lcom/nuance/input/swypecorelib/Candidates;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaInputView;
    .param p1, "x1"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p2, "x2"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/AlphaInputView;->displaySuggestions(Lcom/nuance/input/swypecorelib/Candidates;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/AlphaInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaInputView;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->startInputSession()V

    return-void
.end method

.method static synthetic access$2100(Lcom/nuance/swype/input/AlphaInputView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaInputView;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->noAutoSpace()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/nuance/swype/input/AlphaInputView;Lcom/nuance/input/swypecorelib/KeyType;IZ)V
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaInputView;
    .param p1, "x1"    # Lcom/nuance/input/swypecorelib/KeyType;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/AlphaInputView;->autoSpace(Lcom/nuance/input/swypecorelib/KeyType;IZ)V

    return-void
.end method

.method static synthetic access$2300(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/swype/input/AutospaceHandler;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaInputView;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/nuance/swype/input/AlphaInputView;Lcom/nuance/swype/input/KeyboardEx$Key;ZI)V
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaInputView;
    .param p1, "x1"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/AlphaInputView;->handleFunctionKey(Lcom/nuance/swype/input/KeyboardEx$Key;ZI)V

    return-void
.end method

.method static synthetic access$2500(Lcom/nuance/swype/input/AlphaInputView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaInputView;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->handlePunctOrSymbol(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/nuance/swype/input/AlphaInputView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaInputView;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->isCursorWithinWord()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/nuance/swype/input/AlphaInputView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaInputView;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->handlePrediction(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/swype/util/CharacterUtilities;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaInputView;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/AlphaInputView;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaInputView;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->setMultitapOrAmbigMode()V

    return-void
.end method

.method private announceToggleCapsLock()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2529
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isExploreByTouchOn()Z

    move-result v4

    if-nez v4, :cond_9

    .line 2541
    :cond_8
    :goto_8
    return v2

    .line 2532
    :cond_9
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2533
    iput-boolean v3, p0, Lcom/nuance/swype/input/AlphaInputView;->isLongPressed:Z

    .line 2534
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v1

    .line 2535
    .local v1, "currentShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    invoke-static {}, Lcom/nuance/swype/input/accessibility/KeyboardModel;->getInstance()Lcom/nuance/swype/input/accessibility/KeyboardModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/accessibility/KeyboardModel;->getAccessibilityLabel()Lcom/nuance/swype/input/accessibility/AccessibilityLabel;

    move-result-object v2

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getLongPressAccessibilityLabelForShiftKey(Lcom/nuance/input/swypecorelib/Shift$ShiftState;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2536
    .local v0, "accessibilityLabel":Ljava/lang/CharSequence;
    if-eqz v0, :cond_3c

    .line 2537
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->getInstance()Lcom/nuance/swype/input/accessibility/AccessibilityNotification;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v3}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->announceNotification(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_3c
    move v2, v3

    .line 2539
    goto :goto_8
.end method

.method private autoSpace(Lcom/nuance/input/swypecorelib/KeyType;IZ)V
    .registers 13
    .param p1, "keyType"    # Lcom/nuance/input/swypecorelib/KeyType;
    .param p2, "lastInput"    # I
    .param p3, "isTracing"    # Z

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4325
    sget-object v1, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "autoSpace().... lastInput="

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string/jumbo v3, "   noAutoSpace:"

    aput-object v3, v2, v7

    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->noAutoSpace()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4326
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->noAutoSpace()Z

    move-result v1

    if-nez v1, :cond_b1

    .line 4327
    if-eq p2, v6, :cond_36

    if-nez p3, :cond_36

    const/4 v1, 0x6

    if-eq p2, v1, :cond_36

    const/4 v1, 0x5

    if-ne p2, v1, :cond_b1

    .line 4330
    :cond_36
    sget-object v1, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "hasActivitInput:"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->hasActiveInput()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    const-string/jumbo v3, "   autospaceHandler.shouldAutoSpace()"

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

    invoke-virtual {v3}, Lcom/nuance/swype/input/AutospaceHandler;->shouldAutoSpace()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4331
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->hasActiveInput()Z

    move-result v1

    if-nez v1, :cond_b1

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AutospaceHandler;->shouldAutoSpace()Z

    move-result v1

    if-eqz v1, :cond_b1

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/KeyType;->isLetter()Z

    move-result v1

    if-nez v1, :cond_7b

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/KeyType;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 4332
    :cond_7b
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4333
    .local v0, "textBeforeCursor":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_b1

    .line 4334
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;

    const-string/jumbo v2, " "

    # invokes: Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->commitText(Ljava/lang/CharSequence;)V
    invoke-static {v1, v2}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->access$800(Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;Ljava/lang/CharSequence;)V

    .line 4335
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;

    # invokes: Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->setLastAutoSpaceInserted()V
    invoke-static {v1}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->access$1500(Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;)V

    .line 4336
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isShifted()Z

    move-result v1

    if-nez v1, :cond_b1

    .line 4338
    iget-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->isManualShift:Z

    if-nez v1, :cond_b2

    .line 4339
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 4348
    .end local v0    # "textBeforeCursor":Ljava/lang/CharSequence;
    :cond_b1
    :goto_b1
    return-void

    .line 4341
    .restart local v0    # "textBeforeCursor":Ljava/lang/CharSequence;
    :cond_b2
    iput-boolean v4, p0, Lcom/nuance/swype/input/AlphaInputView;->isManualShift:Z

    goto :goto_b1
.end method

.method private clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V
    .registers 4
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 2031
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1a

    .line 2032
    if-eqz p1, :cond_1a

    .line 2033
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2034
    const-string/jumbo v0, ""

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2037
    :cond_1a
    return-void
.end method

.method private composingWordCandidates()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1035
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_13

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_13

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v1, v2, :cond_14

    .line 1044
    :cond_13
    :goto_13
    return v0

    .line 1041
    :cond_14
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isEmptyCandidateList()Z

    move-result v1

    if-nez v1, :cond_38

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1042
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_13

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1043
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_13

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1044
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_13

    :cond_38
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private createCandidatesBuilderHandler()V
    .registers 4

    .prologue
    .line 4262
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesBuilderHandler:Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;

    if-nez v0, :cond_f

    .line 4263
    new-instance v0, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->candidateBuilderResult:Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler$CandidatesBuilderResult;

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;-><init>(Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler$CandidatesBuilderResult;)V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesBuilderHandler:Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;

    .line 4265
    :cond_f
    return-void
.end method

.method private displayDefaultCandidateAsInline(Landroid/view/inputmethod/InputConnection;Lcom/nuance/input/swypecorelib/Candidates;)V
    .registers 8
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1957
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1958
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 1959
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1960
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1961
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1962
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_86

    .line 1963
    if-eqz p1, :cond_76

    .line 1964
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1965
    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v0, :cond_87

    .line 1967
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1968
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getWordDecorator()Lcom/nuance/swype/util/WordDecorator;

    move-result-object v0

    .line 1969
    if-nez v0, :cond_6e

    .line 1970
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1971
    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1970
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1982
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldSetComosingSpan()Z

    move-result v0

    if-nez v0, :cond_5f

    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_6e

    .line 1983
    :cond_5f
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x121

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1987
    :cond_6e
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-static {p1, v0}, Lcom/nuance/swype/util/InputConnectionUtils;->setComposingText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 1996
    :goto_73
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1999
    :cond_76
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->composeWordCandidate()V

    .line 2001
    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_86

    .line 2002
    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    .line 2005
    :cond_86
    return-void

    .line 1988
    :cond_87
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTypeNull()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 1990
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->sendTextAsKeys(Ljava/lang/CharSequence;)V

    goto :goto_73

    .line 1992
    :cond_95
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {p1, v0, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1993
    sget-object v0, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "cursor displayDefaultCandidateAsInline"

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1994
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    goto :goto_73
.end method

.method private displayExactTypeAsInline(Ljava/lang/String;Landroid/view/inputmethod/InputConnection;)V
    .registers 10
    .param p1, "composingTxt"    # Ljava/lang/String;
    .param p2, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1932
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1933
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1934
    if-nez p1, :cond_65

    .line 1935
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->exactType:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getExactType(Ljava/lang/StringBuilder;)V

    .line 1936
    sget-object v1, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "exactType:"

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->exactType:Ljava/lang/StringBuilder;

    aput-object v3, v2, v6

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1937
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->exactType:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1941
    :goto_2d
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_44

    .line 1942
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x121

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1947
    :cond_44
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getWordDecorator()Lcom/nuance/swype/util/WordDecorator;

    move-result-object v0

    .line 1948
    .local v0, "wd":Lcom/nuance/swype/util/WordDecorator;
    if-eqz v0, :cond_5d

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->isKnownWord(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 1949
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 6104
    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/WordDecorator;->decorateUnrecognizedWord(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1951
    :cond_5d
    if-eqz p2, :cond_64

    .line 1952
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {p2, v1, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1954
    :cond_64
    return-void

    .line 1939
    .end local v0    # "wd":Lcom/nuance/swype/util/WordDecorator;
    :cond_65
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2d
.end method

.method private displaySuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;II)V
    .registers 7
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2376
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-nez v2, :cond_f

    .line 2394
    :cond_e
    :goto_e
    return-void

    .line 2382
    :cond_f
    iget-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mStarted:Z

    if-eqz v2, :cond_e

    .line 2386
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq p1, v2, :cond_1b

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne p1, v2, :cond_26

    :cond_1b
    move v0, v1

    .line 2392
    .local v0, "noComposingText":Z
    :cond_1c
    :goto_1c
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/nuance/swype/input/AlphaInputView;->displaySuggestions(Lcom/nuance/input/swypecorelib/Candidates;Z)V

    goto :goto_e

    .line 2389
    .end local v0    # "noComposingText":Z
    :cond_26
    if-eq p2, v0, :cond_1c

    move v0, v1

    goto :goto_1c
.end method

.method private displaySuggestions(Lcom/nuance/input/swypecorelib/Candidates;Z)V
    .registers 13
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p2, "noComposingText"    # Z

    .prologue
    const/16 v9, 0x121

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2266
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 2267
    .local v2, "source":Lcom/nuance/input/swypecorelib/Candidates$Source;
    if-eqz p1, :cond_c

    .line 2268
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    .line 2272
    :cond_c
    iget-boolean v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mPreferExplicit:Z

    if-eqz v5, :cond_1c

    if-eqz p1, :cond_1c

    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v2, v5, :cond_1c

    .line 2274
    invoke-virtual {p1, v8}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 2275
    invoke-virtual {p1, v8}, Lcom/nuance/input/swypecorelib/Candidates;->setExactIndex(I)V

    .line 2278
    :cond_1c
    const/4 v4, 0x0

    .line 2279
    .local v4, "wordCandidatesCount":I
    if-eqz p1, :cond_23

    .line 2280
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v4

    .line 2283
    :cond_23
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 2284
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_2c

    .line 2285
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2288
    :cond_2c
    iget-boolean v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v5, :cond_37

    .line 2289
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->getWordListFormat(Lcom/nuance/input/swypecorelib/Candidates;)Lcom/nuance/swype/input/CandidatesListView$Format;

    move-result-object v5

    invoke-virtual {p0, p0, p1, v5}, Lcom/nuance/swype/input/AlphaInputView;->setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V

    .line 2292
    :cond_37
    if-eqz p2, :cond_3f

    .line 2293
    if-eqz v1, :cond_3e

    .line 2294
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2371
    :cond_3e
    :goto_3e
    return-void

    .line 2299
    :cond_3f
    if-lez v4, :cond_f1

    .line 2303
    const/4 v0, 0x0

    .line 2304
    .local v0, "bRefresh":Z
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_5e

    .line 2305
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2306
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2307
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateString()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2308
    const/4 v0, 0x1

    .line 2311
    :cond_5e
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_b0

    .line 2312
    if-eqz v1, :cond_a0

    .line 2313
    iget-boolean v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v5, :cond_ce

    .line 2315
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getWordDecorator()Lcom/nuance/swype/util/WordDecorator;

    move-result-object v3

    .line 2316
    .local v3, "wd":Lcom/nuance/swype/util/WordDecorator;
    if-nez v0, :cond_74

    if-eqz v3, :cond_a0

    .line 2317
    :cond_74
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2318
    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v2, v5, :cond_8a

    .line 2319
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v5, v6, v8, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2323
    :cond_8a
    if-eqz v3, :cond_b6

    .line 2324
    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v2, v5, :cond_9b

    .line 2325
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->isKnownWord(Ljava/lang/String;)Z

    .line 2333
    :cond_9b
    :goto_9b
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-static {v1, v5}, Lcom/nuance/swype/util/InputConnectionUtils;->setComposingText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2346
    .end local v3    # "wd":Lcom/nuance/swype/util/WordDecorator;
    :cond_a0
    :goto_a0
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v5}, Lcom/nuance/swype/input/EditState;->composeWordCandidate()V

    .line 2348
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v5

    sget-object v6, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v5, v6, :cond_b0

    .line 2349
    const/4 v5, 0x2

    iput v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    .line 2368
    .end local v0    # "bRefresh":Z
    :cond_b0
    :goto_b0
    if-eqz v1, :cond_3e

    .line 2369
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_3e

    .line 2328
    .restart local v0    # "bRefresh":Z
    .restart local v3    # "wd":Lcom/nuance/swype/util/WordDecorator;
    :cond_b6
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldSetComosingSpan()Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 2329
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v5, v6, v8, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_9b

    .line 2335
    .end local v3    # "wd":Lcom/nuance/swype/util/WordDecorator;
    :cond_ce
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTypeNull()Z

    move-result v5

    if-eqz v5, :cond_dc

    .line 2337
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/AlphaInputView;->sendTextAsKeys(Ljava/lang/CharSequence;)V

    goto :goto_a0

    .line 2340
    :cond_dc
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v1, v5, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2341
    sget-object v5, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v7, [Ljava/lang/Object;

    const-string/jumbo v7, "cursor displaySuggestions"

    aput-object v7, v6, v8

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2342
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    goto :goto_a0

    .line 2356
    .end local v0    # "bRefresh":Z
    :cond_f1
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->flushCurrentActiveWord()V

    .line 2359
    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v2, v5, :cond_b0

    .line 2360
    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v2, v5, :cond_b0

    .line 2361
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v5}, Lcom/nuance/android/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 2362
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->setNotMatchToolTipSuggestion()V

    goto :goto_b0
.end method

.method private doAddWord(Ljava/lang/String;)V
    .registers 9
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2926
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getWordDecorator()Lcom/nuance/swype/util/WordDecorator;

    move-result-object v2

    .line 2927
    if-eqz v2, :cond_5d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 2928
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 2933
    .local v0, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v0, :cond_5d

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 7145
    new-instance v5, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v5}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 7146
    iput v3, v5, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    .line 7147
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v5

    .line 7148
    if-eqz v5, :cond_72

    iget-object v6, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_72

    .line 7150
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 7151
    invoke-static {v2, v0, v5, p1}, Lcom/nuance/swype/util/WordDecorator;->removeDecoration(Landroid/content/Context;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/ExtractedText;Ljava/lang/CharSequence;)V

    .line 7153
    iget v2, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v6, v5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/2addr v2, v6

    iget v6, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v5, v5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/2addr v5, v6

    invoke-interface {v0, v2, v5}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 7154
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move v2, v3

    .line 2933
    :goto_44
    if-nez v2, :cond_5d

    .line 2934
    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 2935
    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v2

    if-nez v2, :cond_57

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    .line 2936
    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->isEditorComposingText()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 2938
    :cond_57
    invoke-virtual {v0, p1, v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2950
    :goto_5a
    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    .line 2954
    .end local v0    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    :cond_5d
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearComposingTextAndSelection()V

    .line 2961
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 2963
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 2964
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->showNextWordPrediction()V

    .line 2965
    const/4 v2, 0x4

    iput v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    .line 2968
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v2, v3, v3, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setWordQuarantineLevel(III)V

    .line 2973
    return-void

    .restart local v0    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    :cond_72
    move v2, v4

    .line 7158
    goto :goto_44

    .line 2941
    :cond_74
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->setInlineWord(Ljava/lang/String;)V

    .line 2942
    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v4}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setComposingRegionBeforeCursor(Ljava/lang/CharSequence;IZ)I

    move-result v1

    .line 2943
    .local v1, "resetPoint":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_85

    .line 2945
    invoke-virtual {v0, p1, v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2946
    invoke-virtual {v0, v1, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setSelection(II)Z

    .line 2948
    :cond_85
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->setInlineWord(Ljava/lang/String;)V

    goto :goto_5a
.end method

.method private endInputSession()V
    .registers 4

    .prologue
    .line 624
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v0, :cond_23

    .line 625
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearApplicationPredictionContext()V

    .line 626
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->finishSession()V

    .line 627
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 628
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->wordCandidateDataPoint:Lcom/nuance/swype/usagedata/WordCandidateDataPoint;

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputFieldInfo;->getEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->wordCandidateDataPointWriter:Lcom/nuance/swype/usagedata/WordCandidateDataPointWriter;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/usagedata/WordCandidateDataPoint;->write(Landroid/view/inputmethod/EditorInfo;Lcom/nuance/swype/usagedata/DataPointWriter;)V

    .line 632
    :cond_23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->isTelexMode:Z

    .line 633
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->terminalPunct:Ljava/lang/String;

    .line 634
    return-void
.end method

.method private flushOnSingleSymbol(C)Z
    .registers 5
    .param p1, "symbol"    # C

    .prologue
    const/4 v0, 0x1

    .line 1893
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getKeyCount()I

    move-result v1

    if-ne v1, v0, :cond_26

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-static {p1}, Lcom/nuance/swype/util/CharacterUtilities;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1894
    :cond_17
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->commitText(Ljava/lang/CharSequence;)V
    invoke-static {v1, v2}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->access$800(Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;Ljava/lang/CharSequence;)V

    .line 1895
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearAllKeys()Z

    .line 1898
    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private handleAddRemoveDlmWord(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "selectedText"    # Z

    .prologue
    .line 2681
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 2694
    :cond_c
    :goto_c
    return-void

    .line 2686
    :cond_d
    if-eqz p2, :cond_1b

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmFind(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2687
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->showRemoveUdbWordDialog(Ljava/lang/String;)V

    goto :goto_c

    .line 2693
    :cond_1b
    new-instance v0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;-><init>(Lcom/nuance/swype/input/AlphaInputView;Ljava/lang/String;Lcom/nuance/swype/input/AlphaInputView$1;)V

    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->promptToAddIfAny()V

    goto :goto_c
.end method

.method private handleBackSpaceRevertCancelWordRecapture(C)V
    .registers 10
    .param p1, "ch"    # C

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 3162
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    if-nez v0, :cond_7

    .line 3179
    :cond_6
    :goto_6
    return-void

    .line 3166
    :cond_7
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/util/CharacterUtilities;->isWordAcceptingSymbol(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/BackspaceRevertHandler;->isOverrideActive()Z

    move-result v0

    if-eqz v0, :cond_4a

    move v7, v6

    .line 3167
    .local v7, "isAcceptRevert":Z
    :goto_18
    sget-object v0, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "handleBackSpaceRevertCancelWordRecapture(): is accept revert: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 3168
    if-eqz v7, :cond_6

    .line 3173
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->handleOverrideCacheAddSelectedCandidate(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 3175
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->processDeferredSuggestionUpdates()Z

    .line 3176
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v5, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_PUNCTUATION:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/AlphaInputView;->selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/CharSequence;ZZLcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;Z)V

    goto :goto_6

    .end local v7    # "isAcceptRevert":Z
    :cond_4a
    move v7, v3

    .line 3166
    goto :goto_18
.end method

.method private handleBackspaceDuringMultitap()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1093
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isMultitapping()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1099
    iget-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-nez v1, :cond_c

    .line 1114
    :cond_b
    :goto_b
    return v0

    .line 1107
    :cond_c
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isComposingText()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1108
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearKey()Z

    goto :goto_b

    .line 1114
    :cond_18
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private handleFunctionKey(Lcom/nuance/swype/input/KeyboardEx$Key;ZI)V
    .registers 13
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "quickPress"    # Z
    .param p3, "repeatCount"    # I

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    const/16 v4, 0x20

    const/4 v5, 0x0

    .line 4224
    iget-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v1, :cond_a9

    .line 4225
    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v8, v1, v5

    .line 4227
    .local v8, "keyCode":I
    const/16 v1, 0xa

    if-eq v8, v1, :cond_14

    if-ne v8, v4, :cond_62

    :cond_14
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesBuilderHandler:Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;

    invoke-virtual {v1}, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;->hasPendingBuild()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 4228
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesBuilderHandler:Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;

    invoke-virtual {v1}, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;->removePendingBuild()V

    .line 4229
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getCandidates()Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    .line 4230
    .local v0, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    if-eqz v0, :cond_50

    .line 4231
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne v8, v4, :cond_5e

    const-string/jumbo v1, " "

    :goto_3d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->commitText(Ljava/lang/CharSequence;)V
    invoke-static {v2, v1}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->access$800(Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;Ljava/lang/CharSequence;)V

    .line 4232
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;

    # invokes: Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->setLastAutoSpaceInserted()V
    invoke-static {v1}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->access$1500(Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;)V

    .line 4233
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 4236
    :cond_50
    sget-object v1, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "accepting pending WCL"

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4259
    .end local v0    # "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    .end local v8    # "keyCode":I
    :cond_5d
    :goto_5d
    return-void

    .line 4231
    .restart local v0    # "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    .restart local v8    # "keyCode":I
    :cond_5e
    const-string/jumbo v1, "\n"

    goto :goto_3d

    .line 4241
    .end local v0    # "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    :cond_62
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->wordRecaptureWrapper:Lcom/nuance/swype/input/keyboard/WordRecaptureWrapper;

    iget-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v3, v3, v5

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getRecaptureHandler()Lcom/nuance/swype/input/RecaptureHandler;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/nuance/swype/input/keyboard/WordRecaptureWrapper;->reselect(ILcom/nuance/swype/input/RecaptureHandler;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 4242
    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v5

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/AlphaInputView;->shouldHandleKeyViaIME(I)Z

    move-result v1

    if-nez v1, :cond_88

    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v5

    invoke-virtual {p0, v1, p2, p3}, Lcom/nuance/swype/input/AlphaInputView;->handleKey(IZI)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 4247
    :cond_88
    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v5

    invoke-static {v1}, Lcom/nuance/swype/input/KeyboardEx;->isChangeKeyboardLayerKey(I)Z

    move-result v1

    if-nez v1, :cond_9c

    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v5

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/AlphaInputView;->handleGesture(I)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 4248
    :cond_9c
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v3, v3, v5

    iget-object v4, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    move-object v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/nuance/swype/input/IME;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    goto :goto_5d

    .line 4253
    .end local v8    # "keyCode":I
    :cond_a9
    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v5

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/AlphaInputView;->shouldHandleKeyViaIME(I)Z

    move-result v1

    if-nez v1, :cond_bd

    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v5

    invoke-virtual {p0, v1, p2, p3}, Lcom/nuance/swype/input/AlphaInputView;->handleKey(IZI)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 4254
    :cond_bd
    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v5

    invoke-static {v1}, Lcom/nuance/swype/input/KeyboardEx;->isChangeKeyboardLayerKey(I)Z

    move-result v1

    if-nez v1, :cond_d1

    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v5

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/AlphaInputView;->handleGesture(I)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 4255
    :cond_d1
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v3, v3, v5

    iget-object v4, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    move-object v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/nuance/swype/input/IME;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    goto :goto_5d
.end method

.method private handleOverrideCacheAddSelectedCandidate(Lcom/nuance/input/swypecorelib/Candidates;)V
    .registers 8
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3204
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->autoCorrectOverrideWords:Lcom/nuance/swype/util/LruWordCache;

    if-nez v1, :cond_7

    .line 3221
    :cond_6
    :goto_6
    return-void

    .line 3210
    :cond_7
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    new-array v2, v4, [Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/nuance/input/swypecorelib/Candidates;->match(Lcom/nuance/input/swypecorelib/Candidates;[Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 3212
    sget-object v1, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v4, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "handleAddAcOverrideCache(): unexpected cand type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_6

    .line 3216
    :cond_31
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3217
    .local v0, "word":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v1, v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->isKnownWord(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 3218
    sget-object v1, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v4, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "handleAddAcOverrideCache(): add: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 3219
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->autoCorrectOverrideWords:Lcom/nuance/swype/util/LruWordCache;

    .line 9026
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 9027
    iget-object v3, v1, Lcom/nuance/swype/util/LruWordCache;->words:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 9028
    iget-object v1, v1, Lcom/nuance/swype/util/LruWordCache;->words:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method private handleOverrideCacheFilterSuggestions(Lcom/nuance/input/swypecorelib/Candidates;)V
    .registers 7
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 3186
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->autoCorrectOverrideWords:Lcom/nuance/swype/util/LruWordCache;

    if-nez v1, :cond_5

    .line 3198
    :cond_4
    :goto_4
    return-void

    .line 3191
    :cond_5
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/Candidates$Source;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3192
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3193
    .local v0, "cand":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->autoCorrectOverrideWords:Lcom/nuance/swype/util/LruWordCache;

    .line 8036
    iget-object v1, v1, Lcom/nuance/swype/util/LruWordCache;->words:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 3193
    if-eqz v1, :cond_4

    .line 3194
    sget-object v1, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "setSuggestions(): setting default to exact (word cache)"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 3195
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    goto :goto_4
.end method

.method private handlePrediction(I)V
    .registers 5
    .param p1, "primaryCode"    # I

    .prologue
    .line 1902
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 1904
    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-nez v1, :cond_b

    .line 1929
    :cond_a
    :goto_a
    return-void

    .line 1908
    :cond_b
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v1, :cond_a

    .line 1909
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isComposingText()Z

    move-result v1

    if-nez v1, :cond_24

    .line 1910
    iget-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->isManualShift:Z

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1911
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->triggerCapitalizationGestureTip()V

    .line 1915
    :cond_24
    int-to-char v0, p1

    .line 1917
    .local v0, "charCode":C
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->hasActiveInput()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1918
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/EditState;->characterTyped(C)V

    .line 1920
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->flushOnSingleSymbol(C)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1921
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->createCandidatesBuilderHandler()V

    .line 1922
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesBuilderHandler:Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;->build(Lcom/nuance/input/swypecorelib/Candidates$Source;)V

    goto :goto_a

    .line 1926
    :cond_43
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->commitText(Ljava/lang/CharSequence;)V
    invoke-static {v1, v2}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->access$800(Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;Ljava/lang/CharSequence;)V

    goto :goto_a
.end method

.method private handlePunctOrSymbol(I)V
    .registers 9
    .param p1, "primaryCode"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2040
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 2041
    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-nez v2, :cond_d

    .line 2128
    :cond_c
    :goto_c
    return-void

    .line 2045
    :cond_d
    const/16 v2, 0x20

    if-ne p1, v2, :cond_15

    .line 2046
    invoke-virtual {p0, v5, v6}, Lcom/nuance/swype/input/AlphaInputView;->handleSpace(ZI)Z

    goto :goto_c

    .line 2050
    :cond_15
    const/4 v0, 0x0

    .line 2053
    .local v0, "symbolUsedInSelectWord":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isEmptyCandidateList()Z

    move-result v2

    if-nez v2, :cond_b8

    .line 2054
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    .line 2056
    .local v1, "wlSource":Lcom/nuance/input/swypecorelib/Candidates$Source;
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_b0

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_b0

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_b0

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->CAPS_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_b0

    .line 2061
    int-to-char v2, p1

    invoke-static {v2}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v2

    if-nez v2, :cond_42

    .line 2062
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "symbolUsedInSelectWord":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2063
    .restart local v0    # "symbolUsedInSelectWord":Ljava/lang/StringBuilder;
    int-to-char v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2067
    :cond_42
    if-eqz v0, :cond_a4

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->terminalPunct:Ljava/lang/String;

    if-eqz v2, :cond_a4

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->terminalPunct:Ljava/lang/String;

    .line 2068
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a4

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 2071
    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_NEW_WORD:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-eq v2, v3, :cond_a4

    iget-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->promptToAddWords:Z

    if-nez v2, :cond_a4

    .line 2075
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_PUNCTUATION:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-direct {p0, v2, v3, v4}, Lcom/nuance/swype/input/AlphaInputView;->selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/CharSequence;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 2076
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-direct {p0, v2, v3}, Lcom/nuance/swype/input/AlphaInputView;->promotingTermPunctOrSingleLetter(CLcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 2090
    .end local v1    # "wlSource":Lcom/nuance/input/swypecorelib/Candidates$Source;
    :cond_77
    :goto_77
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v2}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    .line 2092
    if-nez v0, :cond_8a

    .line 2093
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 2094
    int-to-char v2, p1

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->sendHardKeyChar(C)V

    .line 2107
    :cond_8a
    :goto_8a
    invoke-direct {p0, v6}, Lcom/nuance/swype/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 2109
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v2, :cond_d6

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/CandidatesListView;->isEditingUDBWords()Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 2112
    const/16 v2, 0xa

    if-ne p1, v2, :cond_c

    .line 2113
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearAllKeys()Z

    goto/16 :goto_c

    .line 2078
    .restart local v1    # "wlSource":Lcom/nuance/input/swypecorelib/Candidates$Source;
    :cond_a4
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_PUNCTUATION:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-direct {p0, v2, v0, v3}, Lcom/nuance/swype/input/AlphaInputView;->selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/CharSequence;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    goto :goto_77

    .line 2082
    :cond_b0
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_77

    .line 2083
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    goto :goto_77

    .line 2087
    .end local v1    # "wlSource":Lcom/nuance/input/swypecorelib/Candidates$Source;
    :cond_b8
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->flushCurrentActiveWord()V

    goto :goto_77

    .line 2099
    :cond_bc
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->terminalPunct:Ljava/lang/String;

    if-eqz v2, :cond_d1

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->terminalPunct:Ljava/lang/String;

    int-to-char v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_d1

    .line 2100
    int-to-char v2, p1

    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-direct {p0, v2, v3}, Lcom/nuance/swype/input/AlphaInputView;->promotingTermPunctOrSingleLetter(CLcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    goto :goto_8a

    .line 2102
    :cond_d1
    int-to-char v2, p1

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyChar(C)V

    goto :goto_8a

    .line 2116
    :cond_d6
    iget-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mNextWordPredictionOn:Z

    if-eqz v2, :cond_c

    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 2117
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/util/CharacterUtilities;->isTerminalPunctuation(I)Z

    move-result v2

    if-eqz v2, :cond_f0

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/util/CharacterUtilities;->isWordCompounder(I)Z

    move-result v2

    if-eqz v2, :cond_ff

    .line 2118
    :cond_f0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 2119
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearAllKeys()Z

    .line 2120
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_c

    .line 2122
    :cond_ff
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 2123
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearAllKeys()Z

    .line 2124
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    goto/16 :goto_c
.end method

.method private handleShiftPressedHold()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2545
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->currentLanguageSupportsCapitalization()Z

    move-result v2

    if-nez v2, :cond_9

    .line 2555
    :cond_8
    :goto_8
    return v0

    .line 2548
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isExploreByTouchOn()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2550
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->announceToggleCapsLock()Z

    move-result v0

    goto :goto_8

    .line 2551
    :cond_14
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/AlphaInputView;->toggleCapsLock(Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2552
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->invalidateKeyboardImage()V

    move v0, v1

    .line 2553
    goto :goto_8
.end method

.method private handleWhiteSpaces(I)V
    .registers 4
    .param p1, "primaryCode"    # I

    .prologue
    .line 2021
    const/16 v0, 0x20

    if-ne p1, v0, :cond_a

    .line 2022
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->handleSpace(ZI)Z

    .line 2028
    :goto_9
    return-void

    .line 2027
    :cond_a
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->handlePunctOrSymbol(I)V

    goto :goto_9
.end method

.method private hasInputQueue()Z
    .registers 2

    .prologue
    .line 3917
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_1a

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 3918
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private isAddSpaceRequired()Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 824
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isComposingText()Z

    move-result v1

    .line 825
    .local v1, "required":Z
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v5, :cond_17

    .line 827
    if-nez v1, :cond_16

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v5

    sget-object v6, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v5, v6, :cond_34

    :cond_16
    move v1, v4

    .line 831
    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 832
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_33

    .line 833
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 834
    .local v2, "text":Ljava/lang/CharSequence;
    if-eqz v2, :cond_33

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_33

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 835
    const/4 v1, 0x0

    .line 839
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_33
    return v1

    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_34
    move v1, v3

    .line 827
    goto :goto_17
.end method

.method private isCursorWithinWord()Z
    .registers 3

    .prologue
    .line 4189
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 4190
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/util/CharacterUtilities;->from(Landroid/content/Context;)Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->isCursorWithinWord(Lcom/nuance/swype/util/CharacterUtilities;)Z

    move-result v0

    return v0
.end method

.method private isModeUsing(Ljava/lang/String;)Z
    .registers 4
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 4090
    const-string/jumbo v0, ""

    .line 4091
    .local v0, "currentInputMode":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v1, :cond_37

    .line 4092
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    iget-object v0, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 4094
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isVietnameseLanguage()Z

    move-result v1

    if-nez v1, :cond_37

    .line 4095
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    instance-of v1, v1, Lcom/nuance/swype/input/BilingualLanguage;

    if-eqz v1, :cond_37

    .line 4096
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    check-cast v1, Lcom/nuance/swype/input/BilingualLanguage;

    .line 4097
    invoke-virtual {v1}, Lcom/nuance/swype/input/BilingualLanguage;->getSecondLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    .line 4098
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isVietnameseLanguage()Z

    move-result v1

    if-eqz v1, :cond_37

    const-string/jumbo v1, "telex"

    .line 4100
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 4101
    const-string/jumbo v0, "telex"

    .line 4106
    :cond_37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isTerminalPunctuation(C)Z
    .registers 4
    .param p1, "ch"    # C

    .prologue
    .line 2141
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->terminalPunct:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 2142
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getTerminalPunct()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->terminalPunct:Ljava/lang/String;

    .line 2144
    :cond_c
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->terminalPunct:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private moveHighlightToCenter(I)Z
    .registers 13
    .param p1, "keyCode"    # I

    .prologue
    const/16 v10, 0x121

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3697
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 3698
    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v8

    if-gtz v8, :cond_19

    .line 3699
    :cond_14
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyToApplication(I)V

    move v6, v7

    .line 3747
    :cond_18
    :goto_18
    return v6

    .line 3703
    :cond_19
    const/4 v2, 0x0

    .line 3704
    .local v2, "isDown":Z
    const/16 v8, 0x14

    if-ne p1, v8, :cond_1f

    .line 3705
    const/4 v2, 0x1

    .line 3708
    :cond_1f
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v4

    .line 3710
    .local v4, "wordCandidatesCount":I
    if-eqz v2, :cond_4c

    .line 3711
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/CandidatesListView;->getCenterCandidateIndex()I

    move-result v1

    .line 3712
    .local v1, "index":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_18

    .line 3715
    if-ltz v1, :cond_4c

    if-ge v1, v4, :cond_4c

    .line 3716
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8, v1}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 3717
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8, v6}, Lcom/nuance/swype/input/CandidatesListView;->setHardwareKeyboardUsed(Z)V

    .line 3718
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9, v1}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Lcom/nuance/swype/input/CandidatesListView;->touchWord(ILcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 3719
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->syncCandidateDisplayStyleToMode()V

    .line 3723
    .end local v1    # "index":I
    :cond_4c
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v8

    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v8, v9, :cond_5c

    .line 3724
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 3727
    :cond_5c
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v8

    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v8, v9, :cond_18

    .line 3728
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v8

    if-nez v8, :cond_18

    .line 3729
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/CandidatesListView;->getCurrentSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v5

    .line 3730
    .local v5, "wordcandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3731
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 3732
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3733
    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 3734
    .local v3, "span":Landroid/text/style/UnderlineSpan;
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v3, v7, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3736
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v3, v7, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3739
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 3741
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_18

    .line 3742
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3743
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v7, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 3744
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_18
.end method

.method private moveHighlightToNearCandidate(I)Z
    .registers 14
    .param p1, "keyCode"    # I

    .prologue
    const/16 v11, 0x121

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3631
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v9, :cond_14

    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v9, :cond_14

    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 3632
    invoke-virtual {v9}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v9

    if-gtz v9, :cond_19

    .line 3633
    :cond_14
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyToApplication(I)V

    move v7, v8

    .line 3689
    :cond_18
    :goto_18
    return v7

    .line 3637
    :cond_19
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v5

    .line 3638
    .local v5, "wordCandidatesCount":I
    const/4 v3, 0x0

    .line 3639
    .local v3, "isRight":Z
    const/16 v9, 0x16

    if-ne p1, v9, :cond_25

    .line 3640
    const/4 v3, 0x1

    .line 3642
    :cond_25
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/CandidatesListView;->getSelectedIndex()I

    move-result v1

    .line 3644
    .local v1, "index":I
    if-eqz v3, :cond_a9

    .line 3645
    add-int/lit8 v1, v1, 0x1

    .line 3650
    :goto_2f
    if-eqz v3, :cond_ac

    if-lt v1, v5, :cond_ac

    .line 3651
    add-int/lit8 v1, v5, -0x1

    .line 3656
    :cond_35
    :goto_35
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9, v1}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 3657
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v10, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v10, v1}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Lcom/nuance/swype/input/CandidatesListView;->touchWord(ILcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 3658
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->syncCandidateDisplayStyleToMode()V

    .line 3659
    if-eqz v3, :cond_b2

    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v9, v1}, Lcom/nuance/swype/input/CandidatesListView;->isKeyOutofRightBound(I)Z

    move-result v9

    if-eqz v9, :cond_b2

    .line 3660
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/CandidatesListView;->scrollNext()V

    .line 3665
    :cond_57
    :goto_57
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v9

    sget-object v10, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v9, v10, :cond_67

    .line 3666
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 3670
    :cond_67
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 3671
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 3672
    .local v2, "inlineword":Landroid/text/SpannableStringBuilder;
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 3673
    .local v4, "span":Landroid/text/style/UnderlineSpan;
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/CandidatesListView;->getCurrentSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v6

    .line 3674
    .local v6, "wordcandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3675
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 3676
    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3677
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v2, v4, v8, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3679
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v2, v4, v8, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3681
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 3682
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_18

    .line 3683
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3684
    invoke-static {v0, v2}, Lcom/nuance/swype/util/InputConnectionUtils;->setComposingText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 3685
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_18

    .line 3647
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "inlineword":Landroid/text/SpannableStringBuilder;
    .end local v4    # "span":Landroid/text/style/UnderlineSpan;
    .end local v6    # "wordcandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    :cond_a9
    add-int/lit8 v1, v1, -0x1

    goto :goto_2f

    .line 3652
    :cond_ac
    if-nez v3, :cond_35

    if-gez v1, :cond_35

    .line 3653
    const/4 v1, 0x0

    goto :goto_35

    .line 3661
    :cond_b2
    if-nez v3, :cond_57

    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v9, v1}, Lcom/nuance/swype/input/CandidatesListView;->isKeyOutofLeftBound(I)Z

    move-result v9

    if-eqz v9, :cond_57

    .line 3662
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/CandidatesListView;->scrollPrev()V

    goto :goto_57
.end method

.method private moveHighlightToNearCandidateForNWP(I)Z
    .registers 13
    .param p1, "keyCode"    # I

    .prologue
    const/16 v10, 0x121

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3753
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 3754
    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v8

    if-gtz v8, :cond_19

    .line 3755
    :cond_14
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyToApplication(I)V

    move v6, v7

    .line 3814
    :cond_18
    :goto_18
    return v6

    .line 3759
    :cond_19
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v4

    .line 3760
    .local v4, "wordCandidatesCount":I
    const/4 v2, 0x0

    .line 3761
    .local v2, "isRight":Z
    const/16 v8, 0x16

    if-ne p1, v8, :cond_25

    .line 3762
    const/4 v2, 0x1

    .line 3764
    :cond_25
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/CandidatesListView;->getSelectedIndex()I

    move-result v1

    .line 3766
    .local v1, "index":I
    if-eqz v2, :cond_c3

    .line 3767
    add-int/lit8 v1, v1, 0x1

    .line 3772
    :goto_2f
    if-eqz v2, :cond_c7

    if-lt v1, v4, :cond_c7

    .line 3773
    add-int/lit8 v1, v4, -0x1

    .line 3778
    :cond_35
    :goto_35
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8, v1}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 3779
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8, v6}, Lcom/nuance/swype/input/CandidatesListView;->setHardwareKeyboardUsed(Z)V

    .line 3780
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9, v1}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Lcom/nuance/swype/input/CandidatesListView;->touchWord(ILcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 3781
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->syncCandidateDisplayStyleToMode()V

    .line 3782
    if-eqz v2, :cond_ce

    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8, v1}, Lcom/nuance/swype/input/CandidatesListView;->isKeyOutofRightBound(I)Z

    move-result v8

    if-eqz v8, :cond_ce

    .line 3783
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/CandidatesListView;->scrollNext()V

    .line 3788
    :cond_5c
    :goto_5c
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v8

    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v8, v9, :cond_6c

    .line 3789
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 3793
    :cond_6c
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v8

    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v8, v9, :cond_18

    .line 3794
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v8

    if-nez v8, :cond_18

    .line 3795
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/CandidatesListView;->getCurrentSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v5

    .line 3796
    .local v5, "wordcandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3797
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 3798
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3799
    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 3800
    .local v3, "span":Landroid/text/style/UnderlineSpan;
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v3, v7, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3802
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v3, v7, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3805
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 3807
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_18

    .line 3808
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3809
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v7, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 3810
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_18

    .line 3769
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v3    # "span":Landroid/text/style/UnderlineSpan;
    .end local v5    # "wordcandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    :cond_c3
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_2f

    .line 3774
    :cond_c7
    if-nez v2, :cond_35

    if-gez v1, :cond_35

    .line 3775
    const/4 v1, 0x0

    goto/16 :goto_35

    .line 3784
    :cond_ce
    if-nez v2, :cond_5c

    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8, v1}, Lcom/nuance/swype/input/CandidatesListView;->isKeyOutofLeftBound(I)Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 3785
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/CandidatesListView;->scrollPrev()V

    goto/16 :goto_5c
.end method

.method private noAutoSpace()Z
    .registers 2

    .prologue
    .line 4319
    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAutoSpace:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isEmailAddressField()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 4320
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isURLField()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isWebSearchField()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isURLWithSearchField()Z

    move-result v0

    if-nez v0, :cond_30

    .line 4321
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldAutoSpaceInUrlField()Z

    move-result v0

    if-nez v0, :cond_30

    :cond_2e
    const/4 v0, 0x1

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method private noteWordChanged(Ljava/lang/String;Z)V
    .registers 14
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "userExplicitPick"    # Z

    .prologue
    const/4 v9, 0x0

    .line 1689
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v8}, Lcom/nuance/swype/input/InputMethods$Language;->isNonSpacedLanguage()Z

    move-result v8

    if-nez v8, :cond_87

    .line 1691
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmCount()I

    move-result v7

    .line 1693
    .local v7, "udbCountBefore":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 1694
    .local v1, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v1, :cond_62

    .line 1695
    new-instance v8, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v8}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-virtual {v1, v8, v9}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 1696
    .local v0, "eText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_62

    iget-object v8, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_62

    .line 1700
    iget v4, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 1701
    .local v4, "selectionEnd":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1702
    .local v2, "newWordLength":I
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->recaptureEditWord:Lcom/nuance/swype/input/RecaptureEditWord;

    invoke-virtual {v8}, Lcom/nuance/swype/input/RecaptureEditWord;->getWord()Ljava/lang/String;

    move-result-object v3

    .line 1704
    .local v3, "oldWord":Ljava/lang/String;
    if-eqz p2, :cond_94

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_94

    .line 1705
    sub-int v8, v4, v2

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1712
    .local v6, "startOfNewWord":I
    if-eqz v6, :cond_52

    iget-object v8, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    add-int/lit8 v9, v6, -0x1

    .line 1713
    invoke-interface {v8, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v8

    if-eqz v8, :cond_88

    .line 1714
    :cond_52
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-object v9, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->noteWordWordChanged(Ljava/lang/String;IILjava/lang/String;)Z

    .line 1723
    .end local v6    # "startOfNewWord":I
    :goto_5d
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->recaptureEditWord:Lcom/nuance/swype/input/RecaptureEditWord;

    invoke-virtual {v8}, Lcom/nuance/swype/input/RecaptureEditWord;->clear()V

    .line 1727
    .end local v0    # "eText":Landroid/view/inputmethod/ExtractedText;
    .end local v2    # "newWordLength":I
    .end local v3    # "oldWord":Ljava/lang/String;
    .end local v4    # "selectionEnd":I
    :cond_62
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmCount()I

    move-result v8

    if-eq v7, v8, :cond_87

    .line 1728
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v5

    .line 1730
    .local v5, "spw":Lcom/nuance/swype/input/SpeechWrapper;
    if-eqz v5, :cond_87

    .line 1733
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v10, p0, Lcom/nuance/swype/input/AlphaInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-static {v8, v9, v10}, Lcom/nuance/swype/input/udb/UserDictionaryIterator;->createAlphaIterator(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/SpeechWrapper;)Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    move-result-object v8

    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v5, v8, v9, p1}, Lcom/nuance/swype/input/SpeechWrapper;->addCustomWord(Lcom/nuance/swype/input/udb/UserDictionaryIterator;Lcom/nuance/swype/input/InputFieldInfo;Ljava/lang/String;)V

    .line 1737
    .end local v1    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .end local v5    # "spw":Lcom/nuance/swype/input/SpeechWrapper;
    .end local v7    # "udbCountBefore":I
    :cond_87
    return-void

    .line 1717
    .restart local v0    # "eText":Landroid/view/inputmethod/ExtractedText;
    .restart local v1    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    .restart local v2    # "newWordLength":I
    .restart local v3    # "oldWord":Ljava/lang/String;
    .restart local v4    # "selectionEnd":I
    .restart local v6    # "startOfNewWord":I
    .restart local v7    # "udbCountBefore":I
    :cond_88
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-object v9, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v4}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->noteWordDone(Ljava/lang/String;I)Z

    goto :goto_5d

    .line 1720
    .end local v6    # "startOfNewWord":I
    :cond_94
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-object v9, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v4}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->noteWordDone(Ljava/lang/String;I)Z

    goto :goto_5d
.end method

.method private postDelayResumeSpeech()V
    .registers 5

    .prologue
    const/16 v1, 0xb

    .line 511
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 512
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 514
    :cond_f
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 515
    return-void
.end method

.method private postToastMsg(I)V
    .registers 6
    .param p1, "msg"    # I

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->removeToastMsg(I)V

    .line 248
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 249
    return-void
.end method

.method private processDeferredSuggestionUpdates()Z
    .registers 3

    .prologue
    const/16 v1, 0x9

    .line 2008
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesBuilderHandler:Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;

    .line 2009
    invoke-virtual {v0}, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;->hasPendingBuild()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2010
    :cond_12
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesBuilderHandler:Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;->removePendingBuild()V

    .line 2011
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2012
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 2013
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 2014
    const/4 v0, 0x1

    .line 2017
    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method private promotingTermPunctOrSingleLetter(CLcom/nuance/input/swypecorelib/Shift$ShiftState;)V
    .registers 8
    .param p1, "punctOrLetter"    # C
    .param p2, "shift"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2133
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    new-array v2, v3, [C

    aput-char p1, v2, v4

    invoke-virtual {v1, v2, v3, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->addExplicit([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 2134
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    .line 2135
    .local v0, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->id()I

    move-result v1

    invoke-virtual {p0, v1, v4}, Lcom/nuance/swype/input/AlphaInputView;->selectWord(IZ)V

    .line 2136
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2137
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearAllKeys()Z

    .line 2138
    return-void
.end method

.method private readStyles(Landroid/content/Context;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/high16 v12, -0x10000

    .line 2637
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha:[I

    sget v5, Lcom/nuance/swype/input/R$style;->InlineStringAlpha:I

    sget v6, Lcom/nuance/swype/input/R$xml;->defaults:I

    const-string/jumbo v7, "InlineStringAlpha"

    move-object v1, p1

    .line 2638
    invoke-virtual/range {v0 .. v7}, Lcom/nuance/swype/plugin/ThemeLoader;->obtainStyledAttributes$6d3b0587(Landroid/content/Context;Landroid/util/AttributeSet;[IIIILjava/lang/String;)Lcom/nuance/swype/plugin/TypedArrayWrapper;

    move-result-object v8

    .line 7030
    .local v8, "a":Lcom/nuance/swype/plugin/TypedArrayWrapper;
    iget-object v0, v8, Lcom/nuance/swype/plugin/TypedArrayWrapper;->delegateTypedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v11

    .line 2643
    .local v11, "n":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_21
    if-ge v10, v11, :cond_6a

    .line 2644
    invoke-virtual {v8, v10}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getIndex(I)I

    move-result v9

    .line 2646
    .local v9, "attr":I
    sget v0, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha_wordErrorForegroundColor:I

    if-ne v9, v0, :cond_39

    .line 2647
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v8, v9, v12}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mFGWordErrorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 2643
    :cond_36
    :goto_36
    add-int/lit8 v10, v10, 0x1

    goto :goto_21

    .line 2648
    :cond_39
    sget v0, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha_wordErrorBackgroundColor:I

    if-ne v9, v0, :cond_49

    .line 2649
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v8, v9, v4}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mBKWordErrorSpan:Landroid/text/style/BackgroundColorSpan;

    goto :goto_36

    .line 2650
    :cond_49
    sget v0, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha_multitapForegroundColor:I

    if-ne v9, v0, :cond_5a

    .line 2651
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, -0x1

    .line 2652
    invoke-virtual {v8, v9, v1}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mFGMultiTappingCharSpan:Landroid/text/style/ForegroundColorSpan;

    goto :goto_36

    .line 2653
    :cond_5a
    sget v0, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha_multitapBackgroundColor:I

    if-ne v9, v0, :cond_36

    .line 2654
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v8, v9, v12}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getColor(II)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mBKMultiTappingCharSpan:Landroid/text/style/BackgroundColorSpan;

    goto :goto_36

    .line 2658
    .end local v9    # "attr":I
    :cond_6a
    invoke-virtual {v8}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->recycle()V

    .line 2659
    return-void
.end method

.method private removeToastMsg(I)V
    .registers 3
    .param p1, "msg"    # I

    .prologue
    .line 242
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 243
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 244
    return-void
.end method

.method private selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/CharSequence;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V
    .registers 11
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "symbolUsedInToSelectWord"    # Ljava/lang/CharSequence;
    .param p3, "type"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .prologue
    const/4 v3, 0x1

    .line 1740
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/AlphaInputView;->selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/CharSequence;ZZLcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;Z)V

    .line 1741
    return-void
.end method

.method private selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/CharSequence;ZZLcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;Z)V
    .registers 19
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "symbolUsedInToSelectWord"    # Ljava/lang/CharSequence;
    .param p3, "shouldCommit"    # Z
    .param p4, "userExplicitPick"    # Z
    .param p5, "selectionType"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;
    .param p6, "allowAddWordPrompt"    # Z

    .prologue
    .line 1580
    sget-object v7, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "selectCandidate(): "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "; should commit: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "; user pick: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1582
    move-object/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 1583
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 1584
    .local v1, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v1, :cond_44

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isEmptyCandidateList()Z

    move-result v7

    if-eqz v7, :cond_45

    .line 1675
    :cond_44
    :goto_44
    return-void

    .line 1591
    :cond_45
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->promptForAddingOOVCandidate:Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;

    invoke-virtual {v7}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->setExplicitPromptState()V

    .line 1593
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1594
    invoke-virtual {v9}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateString()Ljava/lang/CharSequence;

    move-result-object v9

    .line 1593
    invoke-virtual {v7, v8, v9}, Lcom/nuance/swype/input/EditState;->selectWord(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1600
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->id()I

    move-result v2

    .line 1602
    .local v2, "index":I
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v7

    sget-object v8, Lcom/nuance/input/swypecorelib/Candidates$Source;->COMPLETIONS:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v7, v8, :cond_ba

    .line 1603
    iget-boolean v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mCompletionOn:Z

    if-eqz v7, :cond_80

    if-ltz v2, :cond_80

    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v7}, Lcom/nuance/swype/input/Completions;->size()I

    move-result v7

    if-ge v2, v7, :cond_80

    if-eqz p3, :cond_80

    .line 1604
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v7, v2}, Lcom/nuance/swype/input/Completions;->get(I)Landroid/view/inputmethod/CompletionInfo;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 1657
    :cond_80
    :goto_80
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 1660
    if-eqz p6, :cond_44

    .line 1662
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v7}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v7

    if-eqz v7, :cond_b4

    .line 1663
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v7}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    .line 1664
    .local v4, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    const-string/jumbo v7, "DICTIONARY_HKB"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/nuance/swype/input/UserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_b4

    .line 1665
    const-string/jumbo v7, "DICTIONARY_HKB"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Lcom/nuance/swype/input/UserPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 1666
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    .line 1668
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$string;->hardkeyboard_shortcut_add_to_dictionary:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 1666
    invoke-static {v7, v8, v9}, Lcom/nuance/swype/input/InputMethodToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 1673
    .end local v4    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_b4
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->promptForAddingOOVCandidate:Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;

    invoke-virtual {v7}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->promptToAddIfAny()V

    goto :goto_44

    .line 1606
    :cond_ba
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v7

    sget-object v8, Lcom/nuance/input/swypecorelib/Candidates$Source;->SPEECH_ALTERNATES:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v7, v8, :cond_d2

    .line 1607
    if-eqz p3, :cond_ce

    .line 1608
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1610
    :cond_ce
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->speechChooseCandidate(I)V

    goto :goto_80

    .line 1613
    :cond_d2
    if-eqz p3, :cond_e9

    .line 1614
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->undoAcceptHandler:Lcom/nuance/swype/input/UndoAcceptHandler;

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->word()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1615
    invoke-virtual {v9}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/input/swypecorelib/WordCandidate;->word()Ljava/lang/String;

    move-result-object v9

    .line 1614
    move/from16 v0, p4

    invoke-virtual {v7, v8, v9, v0}, Lcom/nuance/swype/input/UndoAcceptHandler;->onAcceptCandidate(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1618
    :cond_e9
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v7

    sget-object v8, Lcom/nuance/input/swypecorelib/Candidates$Source;->EMOJEENIE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v7, v8, :cond_fd

    .line 1619
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-nez p4, :cond_182

    const/4 v7, 0x1

    :goto_fa
    invoke-virtual {v8, p1, v9, v7}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->candidateSelected(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;Z)V

    .line 1623
    :cond_fd
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->isKnownWord(Ljava/lang/String;)Z

    move-result v3

    .line 1624
    .local v3, "isKnownWord":Z
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1625
    .local v6, "wordSelected":Ljava/lang/String;
    sget-object v7, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "selectCandidate(): is known: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "; word: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1628
    if-eqz p3, :cond_172

    .line 1629
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getWordDecorator()Lcom/nuance/swype/util/WordDecorator;

    move-result-object v5

    .line 1630
    .local v5, "wd":Lcom/nuance/swype/util/WordDecorator;
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->contextKillLength()I

    move-result v7

    if-eqz v7, :cond_166

    .line 1631
    sget-object v7, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "contextKillLength: "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->contextKillLength()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1632
    const-string/jumbo v7, ""

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1633
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->contextKillLength()I

    move-result v8

    invoke-virtual {v7, v1, v8}, Lcom/nuance/swype/input/IME;->deleteWord(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;I)V

    .line 1635
    :cond_166
    if-nez v3, :cond_185

    if-eqz v5, :cond_185

    .line 5104
    invoke-virtual {v5, v6}, Lcom/nuance/swype/util/WordDecorator;->decorateUnrecognizedWord(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1636
    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1643
    .end local v5    # "wd":Lcom/nuance/swype/util/WordDecorator;
    :cond_172
    :goto_172
    if-eqz p2, :cond_18a

    .line 1644
    if-eqz p3, :cond_17a

    .line 1645
    const/4 v7, 0x1

    invoke-virtual {v1, p2, v7}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1651
    :cond_17a
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setContext([C)V

    goto/16 :goto_80

    .line 1619
    .end local v3    # "isKnownWord":Z
    .end local v6    # "wordSelected":Ljava/lang/String;
    :cond_182
    const/4 v7, 0x0

    goto/16 :goto_fa

    .line 1638
    .restart local v3    # "isKnownWord":Z
    .restart local v5    # "wd":Lcom/nuance/swype/util/WordDecorator;
    .restart local v6    # "wordSelected":Ljava/lang/String;
    :cond_185
    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_172

    .line 1653
    .end local v5    # "wd":Lcom/nuance/swype/util/WordDecorator;
    :cond_18a
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v7

    move/from16 v0, p4

    invoke-direct {p0, v7, v0}, Lcom/nuance/swype/input/AlphaInputView;->noteWordChanged(Ljava/lang/String;Z)V

    goto/16 :goto_80
.end method

.method private selectDefaultSuggestion(ZLcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V
    .registers 10
    .param p1, "shouldCommitText"    # Z
    .param p2, "selectionType"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .prologue
    .line 2733
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->shouldSelectDefaultCandidate()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2734
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/AlphaInputView;->selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/CharSequence;ZZLcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;Z)V

    .line 2739
    :goto_15
    return-void

    .line 2737
    :cond_16
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->flushCurrentActiveWord()V

    goto :goto_15
.end method

.method private sendHardKeyChar(C)V
    .registers 6
    .param p1, "character"    # C

    .prologue
    const/4 v3, 0x1

    .line 3923
    packed-switch p1, :pswitch_data_2c

    .line 3930
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 3931
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_11

    .line 3932
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 3937
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_11
    :goto_11
    iput v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    .line 3938
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 3939
    return-void

    .line 3925
    :pswitch_17
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1, v3}, Lcom/nuance/swype/input/IME;->sendDefaultEditorAction(Z)Z

    move-result v1

    if-nez v1, :cond_11

    .line 3926
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/16 v2, 0x42

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/IME;->sendDownUpKeyEvents(I)V

    goto :goto_11

    .line 3923
    nop

    :pswitch_data_2c
    .packed-switch 0xa
        :pswitch_17
    .end packed-switch
.end method

.method private setAppContextPrediction()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 559
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 560
    .local v0, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    if-eqz v0, :cond_37

    iget-object v3, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 561
    .local v3, "packageName":Ljava/lang/String;
    :goto_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getAppContextPredictionSetter()Lcom/nuance/swype/input/AppContextPredictionSetter;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/nuance/swype/input/AppContextPredictionSetter;->getGroupName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, "groupName":Ljava/lang/String;
    if-eqz v1, :cond_39

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "grp:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 576
    .local v2, "groupSlot":Ljava/lang/String;
    :goto_2b
    new-instance v4, Lcom/nuance/swype/input/AlphaInputView$Slots;

    invoke-direct {v4}, Lcom/nuance/swype/input/AlphaInputView$Slots;-><init>()V

    .line 577
    .local v4, "slots":Lcom/nuance/swype/input/AlphaInputView$Slots;
    invoke-virtual {v4, v3}, Lcom/nuance/swype/input/AlphaInputView$Slots;->add(Ljava/lang/String;)V

    .line 578
    invoke-virtual {v4, v2}, Lcom/nuance/swype/input/AlphaInputView$Slots;->add(Ljava/lang/String;)V

    .line 584
    return-void

    .end local v1    # "groupName":Ljava/lang/String;
    .end local v2    # "groupSlot":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "slots":Lcom/nuance/swype/input/AlphaInputView$Slots;
    :cond_37
    move-object v3, v5

    .line 560
    goto :goto_9

    .restart local v1    # "groupName":Ljava/lang/String;
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_39
    move-object v2, v5

    .line 572
    goto :goto_2b
.end method

.method private setCorrectionLevel(Ljava/lang/String;)V
    .registers 5
    .param p1, "inputMode"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x63

    .line 1864
    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    if-eqz v0, :cond_15

    .line 1865
    const-string/jumbo v0, "multitap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1867
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setAttribute(IZ)V

    .line 1873
    :cond_15
    :goto_15
    return-void

    .line 1869
    :cond_16
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->autoCorrectionEnabled:Z

    invoke-virtual {v0, v2, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setAttribute(IZ)V

    .line 1870
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    const/16 v1, 0x65

    iget v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mWordCompletionPoint:I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setAttribute(II)V

    goto :goto_15
.end method

.method private setMultitapOrAmbigMode()V
    .registers 3

    .prologue
    .line 1849
    iget v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x900

    if-eq v0, v1, :cond_2d

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1850
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "multitap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1853
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getMultitapMode(Z)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1854
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->toggleAmbigMode()V

    .line 1855
    const-string/jumbo v0, "multitap"

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->setCorrectionLevel(Ljava/lang/String;)V

    .line 1860
    :cond_2d
    :goto_2d
    return-void

    .line 1857
    :cond_2e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->setCorrectionLevel(Ljava/lang/String;)V

    goto :goto_2d
.end method

.method private setSuggestionsHelper(Lcom/nuance/input/swypecorelib/Candidates;)V
    .registers 3
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 2716
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->oovWordHistory:Lcom/nuance/swype/input/OOVWordHistory;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/OOVWordHistory;->overrideDefault(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 2718
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    if-eqz v0, :cond_e

    .line 2719
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->onSetSuggestions(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 2723
    :cond_e
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->handleOverrideCacheFilterSuggestions(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 2725
    return-void
.end method

.method private showStartOfWordCandidateList()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 216
    invoke-static {}, Lcom/nuance/swype/input/IME;->getLastSavedActiveWordAndSet()Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, "lastWord":Ljava/lang/String;
    if-eqz v3, :cond_4e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4e

    .line 219
    new-array v0, v6, [C

    .line 220
    .local v0, "chArray":[C
    const/4 v1, 0x0

    .local v1, "iCharPos":I
    :goto_11
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_39

    .line 221
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v7

    .line 222
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    aget-char v5, v0, v7

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->isSymbolUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 223
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    sget-object v5, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v4, v0, v6, v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->addExplicit([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 220
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 225
    :cond_31
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    sget-object v5, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v4, v0, v6, v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->addExplicit([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    goto :goto_2e

    .line 230
    :cond_39
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 231
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_43

    .line 232
    const/4 v4, 0x0

    invoke-direct {p0, v4, v2}, Lcom/nuance/swype/input/AlphaInputView;->displayExactTypeAsInline(Ljava/lang/String;Landroid/view/inputmethod/InputConnection;)V

    .line 234
    :cond_43
    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AlphaInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 235
    sget-object v4, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AlphaInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 239
    .end local v0    # "chArray":[C
    .end local v1    # "iCharPos":I
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_4d
    :goto_4d
    return-void

    .line 236
    :cond_4e
    invoke-static {}, Lcom/nuance/swype/input/IME;->getLastShownCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v4

    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v4, v5, :cond_4d

    .line 237
    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AlphaInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto :goto_4d
.end method

.method private startInputSession()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 520
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v3, :cond_7d

    .line 523
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->wordCandidateDataPoint:Lcom/nuance/swype/usagedata/WordCandidateDataPoint;

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->getEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->wordCandidateDataPointWriter:Lcom/nuance/swype/usagedata/WordCandidateDataPointWriter;

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/usagedata/WordCandidateDataPoint;->write(Landroid/view/inputmethod/EditorInfo;Lcom/nuance/swype/usagedata/DataPointWriter;)V

    .line 525
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/AlphaInputView;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    .line 527
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->startSession()V

    .line 529
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v3, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setPunctuationBreaking(Z)V

    .line 530
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/UserPreferences;->isEmojiSuggestionsEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setLDBEmoji(Z)V

    .line 531
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v3, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setMultiTapInputMode(Z)V

    .line 532
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->readNextWordPredictionSettings()V

    .line 534
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    const/16 v4, 0x65

    iget v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mWordCompletionPoint:I

    invoke-virtual {v3, v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setAttribute(II)V

    .line 535
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-boolean v4, p0, Lcom/nuance/swype/input/AlphaInputView;->autoCorrectionEnabled:Z

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setBackCorrection(Z)V

    .line 537
    iget-boolean v3, p0, Lcom/nuance/swype/input/AlphaInputView;->traceAutoAcceptOn:Z

    if-eqz v3, :cond_7e

    iget-boolean v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mAutoSpace:Z

    if-eqz v3, :cond_7e

    move v0, v1

    .line 538
    .local v0, "autoSpaceAttr":I
    :goto_54
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    const/16 v4, 0x68

    invoke-virtual {v3, v4, v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setAttribute(II)V

    .line 539
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    const/16 v4, 0x63

    iget-boolean v5, p0, Lcom/nuance/swype/input/AlphaInputView;->autoCorrectionEnabled:Z

    if-eqz v5, :cond_80

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getXT9CoreInput()Lcom/nuance/input/swypecorelib/XT9CoreInput;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->isNullLdb()Z

    move-result v5

    if-nez v5, :cond_80

    :goto_6d
    invoke-virtual {v3, v4, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setAttribute(IZ)V

    .line 542
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getTerminalPunct()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->terminalPunct:Ljava/lang/String;

    .line 545
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->promptForAddingOOVCandidate:Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->setExplicitPromptState()V

    .line 552
    .end local v0    # "autoSpaceAttr":I
    :cond_7d
    return-void

    :cond_7e
    move v0, v2

    .line 537
    goto :goto_54

    .restart local v0    # "autoSpaceAttr":I
    :cond_80
    move v1, v2

    .line 539
    goto :goto_6d
.end method

.method private toggleAmbigMode()V
    .registers 5

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1881
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    .line 1882
    const-string/jumbo v1, "multitap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1883
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v3, v3, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    .line 1884
    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    .line 1883
    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 1890
    :cond_28
    :goto_28
    return-void

    .line 1886
    :cond_29
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    const-string/jumbo v3, "multitap"

    .line 1887
    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    .line 1886
    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    goto :goto_28
.end method

.method private toggleCapsLock(Z)Z
    .registers 9
    .param p1, "overrideKeyLockableFlag"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2503
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 2504
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v4

    .line 2506
    sget-object v5, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v4, v5, :cond_4e

    .line 2507
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 2511
    .local v0, "currentShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    :goto_16
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4, v0, p1}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;Z)Z

    .line 2512
    sget-object v4, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "toggleCapsLock...shiftState: "

    aput-object v6, v5, v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2513
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 2515
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v1

    .line 2516
    .local v1, "keyboardScribe":Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    if-eqz v1, :cond_4a

    .line 2517
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 2520
    :cond_4a
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateNWP()V

    .line 2523
    .end local v0    # "currentShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .end local v1    # "keyboardScribe":Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    :goto_4d
    return v2

    .line 2509
    :cond_4e
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .restart local v0    # "currentShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    goto :goto_16

    .end local v0    # "currentShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    :cond_51
    move v2, v3

    .line 2523
    goto :goto_4d
.end method

.method private triggerAutoSpaceTip()V
    .registers 2

    .prologue
    .line 2663
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->shouldShowTips()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAutoSpace:Z

    if-eqz v0, :cond_15

    .line 2664
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/ToolTips;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ToolTips;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/ToolTips;->triggerAutoSpaceTip(Landroid/view/View;)V

    .line 2666
    :cond_15
    return-void
.end method

.method private triggerCapitalizationGestureTip()V
    .registers 2

    .prologue
    .line 2675
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->shouldShowTips()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->currentLanguageSupportsCapitalization()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2676
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/ToolTips;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ToolTips;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/ToolTips;->triggerCaptitalizationGestureTip(Landroid/view/View;)V

    .line 2678
    :cond_17
    return-void
.end method

.method private triggerDoubleLettersGestureTip()V
    .registers 2

    .prologue
    .line 2669
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->shouldShowTips()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2670
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/ToolTips;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ToolTips;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/ToolTips;->triggerDoubleLettersGestureTip(Landroid/view/View;)V

    .line 2672
    :cond_11
    return-void
.end method

.method private updateExplicitInput(C)V
    .registers 6
    .param p1, "keyCode"    # C

    .prologue
    const/4 v3, 0x1

    .line 4197
    iget-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v1, :cond_43

    .line 4201
    invoke-static {p1}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->hasActiveInput()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 4202
    invoke-static {p1}, Lcom/nuance/swype/util/CharacterUtilities;->isDigit(I)Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/util/CharacterUtilities;->isWordCompounder(I)Z

    move-result v1

    if-eqz v1, :cond_3f

    iget v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    if-ne v1, v3, :cond_3f

    .line 4203
    :cond_25
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v2

    # invokes: Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->addExplicitSymbol(CLcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    invoke-static {v1, p1, v2}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->access$1400(Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;CLcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 4204
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->handlePrediction(I)V

    .line 4210
    :cond_34
    :goto_34
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/AutospaceHandler;->onCharKey(I)V

    .line 4211
    iput v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    .line 4220
    :goto_3b
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 4221
    return-void

    .line 4208
    :cond_3f
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->handlePunctOrSymbol(I)V

    goto :goto_34

    .line 4213
    :cond_43
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v0

    .line 4214
    .local v0, "state":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-eq v0, v1, :cond_4f

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v0, v1, :cond_53

    .line 4215
    :cond_4f
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    .line 4217
    :cond_53
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyChar(C)V

    goto :goto_3b
.end method

.method private updateMultitapDeadkey(Z)V
    .registers 9
    .param p1, "invalidateKeyNow"    # Z

    .prologue
    const/16 v6, 0xb7e

    const/16 v5, 0xb7c

    const/4 v4, 0x0

    .line 1745
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v2, :cond_f

    iget v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardLayoutId:I

    const/16 v3, 0x900

    if-ne v2, v3, :cond_10

    .line 1787
    :cond_f
    :goto_f
    return-void

    .line 1749
    :cond_10
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/XT9Keyboard;

    .line 1751
    .local v1, "keyboard":Lcom/nuance/swype/input/XT9Keyboard;
    if-eqz v1, :cond_f

    .line 1757
    iget-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    if-nez v2, :cond_2f

    .line 1758
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/XT9Keyboard;->setXT9KeyState(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 1759
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_27

    .line 1761
    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aput v6, v2, v4

    .line 1784
    :cond_27
    :goto_27
    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    .line 1785
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    goto :goto_f

    .line 1764
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_2f
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "multitap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 1765
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isComposingText()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 1766
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/XT9Keyboard;->setXT9KeyState(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 1767
    .restart local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_27

    .line 1768
    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aput v6, v2, v4

    goto :goto_27

    .line 1771
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_50
    invoke-virtual {v1, v4}, Lcom/nuance/swype/input/XT9Keyboard;->setXT9KeyState(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 1772
    .restart local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_27

    .line 1773
    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aput v5, v2, v4

    goto :goto_27

    .line 1777
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_5b
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/XT9Keyboard;->setXT9KeyState(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 1778
    .restart local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_27

    .line 1779
    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aput v5, v2, v4

    goto :goto_27
.end method

.method private updateNWP()V
    .registers 3

    .prologue
    .line 2440
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 2441
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_14

    :cond_e
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_19

    .line 2444
    :cond_14
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 2446
    :cond_19
    return-void
.end method

.method private updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V
    .registers 9
    .param p1, "attr"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2414
    if-eqz p1, :cond_30

    .line 2415
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 2416
    const/4 v0, 0x0

    .line 2417
    .local v0, "caps":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 2418
    .local v2, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    iget-boolean v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mAutoCap:Z

    if-eqz v3, :cond_1f

    if-eqz p1, :cond_1f

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v3, :cond_1f

    .line 2419
    invoke-static {v2, p1}, Lcom/nuance/swype/util/InputConnectionUtils;->getCapsMode(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)I

    move-result v0

    .line 2421
    :cond_1f
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v1

    .line 2422
    .local v1, "currentShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-eq v1, v3, :cond_2d

    .line 2423
    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->capsModeToShiftState(I)Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v1

    .line 2425
    :cond_2d
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/AlphaInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 2437
    .end local v0    # "caps":I
    .end local v1    # "currentShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .end local v2    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    :cond_30
    :goto_30
    return-void

    .line 2426
    :cond_31
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v3

    sget-object v4, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v3, v4, :cond_5f

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v3

    sget-object v4, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v3, v4, :cond_5f

    .line 2430
    sget-object v3, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v5, [Ljava/lang/Object;

    const-string/jumbo v5, "updateShiftKeyState...ShiftState.ON"

    aput-object v5, v4, v6

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2431
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    sget-object v4, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    goto :goto_30

    .line 2432
    :cond_5f
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->isPhoneMode()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 2433
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    sget-object v4, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 2434
    sget-object v3, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v5, [Ljava/lang/Object;

    const-string/jumbo v5, "updateShiftKeyState...ShiftState.OFF"

    aput-object v5, v4, v6

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_30
.end method


# virtual methods
.method public addHardKeyOOVToDictionary()Z
    .registers 2

    .prologue
    .line 3452
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/CandidatesListView;->trySelect()V

    .line 3453
    const/4 v0, 0x1

    return v0
.end method

.method protected clearAllKeys()V
    .registers 2

    .prologue
    .line 2398
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2399
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2401
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v0, :cond_13

    .line 2402
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearAllKeys()Z

    .line 2405
    :cond_13
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 2406
    return-void
.end method

.method public clearCurrentActiveWord()V
    .registers 2

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 354
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 355
    return-void
.end method

.method public clearPendingSuggestionsUpdate()V
    .registers 3

    .prologue
    .line 2771
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2772
    return-void
.end method

.method protected clipTouchPoint(Landroid/graphics/Point;)V
    .registers 3
    .param p1, "pt"    # Landroid/graphics/Point;

    .prologue
    .line 2755
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_9

    iget v0, p1, Landroid/graphics/Point;->x:I

    :goto_6
    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 2756
    return-void

    .line 2755
    :cond_9
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public closeDialogs()V
    .registers 1

    .prologue
    .line 2760
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->dimissRemoveUdbWordDialog()V

    .line 2761
    return-void
.end method

.method public create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/swype/input/SpeechWrapper;)V
    .registers 11
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;
    .param p2, "xt9coreinput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p3, "speechWrapper"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 253
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/swype/input/SpeechWrapper;)V

    .line 255
    check-cast p2, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    .end local p2    # "xt9coreinput":Lcom/nuance/input/swypecorelib/XT9CoreInput;
    iput-object p2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    .line 257
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->createCandidatesBuilderHandler()V

    .line 259
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 260
    .local v1, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    .line 262
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    new-instance v3, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory;

    invoke-direct {v3, p0}, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory;-><init>(Lcom/nuance/swype/input/AlphaInputView;)V

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setCandidateFactory(Lcom/nuance/input/swypecorelib/XT9CoreInput$ICandidateFactory;)V

    .line 264
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->recaptureEditWord:Lcom/nuance/swype/input/RecaptureEditWord;

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setWordRecaptureCallback(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$WordRecaptureCallback;)V

    .line 265
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v2, v5, v5, v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setWordQuarantineLevel(III)V

    .line 267
    new-instance v2, Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-direct {v2, v3, v4}, Lcom/nuance/swype/input/KeyboardSwitcher;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    iput-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 268
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2, p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 270
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 272
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->readStyles(Landroid/content/Context;)V

    .line 274
    new-instance v2, Lcom/nuance/swype/input/AutospaceHandler;

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-direct {v2, v3}, Lcom/nuance/swype/input/AutospaceHandler;-><init>(Lcom/nuance/swype/input/IME;)V

    iput-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

    .line 275
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$dimen;->candidates_list_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/nuance/swype/input/AlphaInputView;->shiftGestureOffset:I

    .line 276
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$dimen;->shift_gesture_margin_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/nuance/swype/input/AlphaInputView;->topOfGestureMargin:I

    .line 277
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget v3, p0, Lcom/nuance/swype/input/AlphaInputView;->topOfGestureMargin:I

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setShiftGestureMargin(I)V

    .line 278
    sget-object v2, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "acAlpha create"

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 279
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/dlm/ACCoreInputDLM;->initializeACAlphaInput(Lcom/nuance/swype/connect/Connect;)V

    .line 281
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$integer;->ac_override_cache_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 282
    .local v0, "acOverrideCacheSize":I
    if-lez v0, :cond_a1

    .line 284
    new-instance v2, Lcom/nuance/swype/util/LruWordCache;

    invoke-direct {v2, v0}, Lcom/nuance/swype/util/LruWordCache;-><init>(I)V

    iput-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->autoCorrectOverrideWords:Lcom/nuance/swype/util/LruWordCache;

    .line 287
    :cond_a1
    new-instance v2, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;

    invoke-direct {v2, p0, v6}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;-><init>(Lcom/nuance/swype/input/AlphaInputView;Lcom/nuance/swype/input/AlphaInputView$1;)V

    iput-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->promptForAddingOOVCandidate:Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;

    .line 288
    new-instance v2, Lcom/nuance/swype/input/AlphaInputView$LoggingDLMWipeEvent;

    invoke-direct {v2, p0, v6}, Lcom/nuance/swype/input/AlphaInputView$LoggingDLMWipeEvent;-><init>(Lcom/nuance/swype/input/AlphaInputView;Lcom/nuance/swype/input/AlphaInputView$1;)V

    iput-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mLoggingDLMWipeEvent:Lcom/nuance/swype/input/AlphaInputView$LoggingDLMWipeEvent;

    .line 289
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mLoggingDLMWipeEvent:Lcom/nuance/swype/input/AlphaInputView$LoggingDLMWipeEvent;

    invoke-virtual {v2}, Lcom/nuance/swype/input/AlphaInputView$LoggingDLMWipeEvent;->enableLoggingDLMWipeEvent()V

    .line 291
    new-instance v2, Lcom/nuance/swype/usagedata/WordCandidateDataPointWriter;

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/nuance/swype/usagedata/WordCandidateDataPointWriter;-><init>(Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;)V

    iput-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->wordCandidateDataPointWriter:Lcom/nuance/swype/usagedata/WordCandidateDataPointWriter;

    .line 292
    new-instance v2, Lcom/nuance/swype/usagedata/WordCandidateDataPoint;

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 293
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/nuance/swype/usagedata/WordCandidateDataPoint;-><init>(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;Landroid/content/Context;Ljava/lang/String;Landroid/util/DisplayMetrics;)V

    iput-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->wordCandidateDataPoint:Lcom/nuance/swype/usagedata/WordCandidateDataPoint;

    .line 294
    return-void
.end method

.method public createCandidatesView(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)Landroid/view/View;
    .registers 3
    .param p1, "onSelectListener"    # Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-nez v0, :cond_6

    .line 339
    const/4 v0, 0x0

    .line 342
    :goto_5
    return-object v0

    :cond_6
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->createCandidatesView(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)Landroid/view/View;

    move-result-object v0

    goto :goto_5
.end method

.method public destroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 309
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->destroy()V

    .line 311
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/AlphaInputView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 313
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/AlphaInputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 314
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mLoggingDLMWipeEvent:Lcom/nuance/swype/input/AlphaInputView$LoggingDLMWipeEvent;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaInputView$LoggingDLMWipeEvent;->disableLoggingDLMWipeEvent()V

    .line 315
    iput-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mLoggingDLMWipeEvent:Lcom/nuance/swype/input/AlphaInputView$LoggingDLMWipeEvent;

    .line 317
    invoke-static {}, Lcom/nuance/dlm/ACCoreInputDLM;->destroyACAlphaInput()V

    .line 319
    iput-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 320
    iput-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->terminalPunct:Ljava/lang/String;

    .line 321
    iput-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->promptForAddingOOVCandidate:Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;

    .line 322
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->registerExplicitLearningApprovalCallback(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;)V

    .line 323
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->dimissRemoveUdbWordDialog()V

    .line 325
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/AlphaInputView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 326
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setInputContextRequestListener(Lcom/nuance/input/swypecorelib/InputContextRequest;)V

    .line 328
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesBuilderHandler:Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;

    if-eqz v0, :cond_3d

    .line 329
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesBuilderHandler:Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;->hasPendingBuild()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 330
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesBuilderHandler:Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;->removePendingBuild()V

    .line 332
    :cond_3b
    iput-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesBuilderHandler:Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;

    .line 334
    :cond_3d
    return-void
.end method

.method public finishInput()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 642
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-nez v0, :cond_6

    .line 664
    :goto_5
    return-void

    .line 646
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->removeAllMessages()V

    .line 648
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->dimissRemoveUdbWordDialog()V

    .line 649
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->flushCurrentActiveWord()V

    .line 650
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->endSession()V

    .line 651
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->endInputSession()V

    .line 653
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->registerExplicitLearningApprovalCallback(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;)V

    .line 655
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->oovWordHistory:Lcom/nuance/swype/input/OOVWordHistory;

    invoke-virtual {v0}, Lcom/nuance/swype/input/OOVWordHistory;->clear()V

    .line 657
    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->isOrientationChangedOnce:Z

    if-nez v0, :cond_28

    .line 658
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    .line 660
    :cond_28
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 661
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->unwrapTouchEvent(Landroid/view/View;)V

    .line 662
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->unwrapHoverEvent(Landroid/view/View;)V

    .line 663
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setInputContextRequestListener(Lcom/nuance/input/swypecorelib/InputContextRequest;)V

    goto :goto_5
.end method

.method public flushCurrentActiveWord()V
    .registers 6

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 679
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1d

    .line 680
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 681
    sget-object v1, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "cursor flushCurrentActiveWord"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 682
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 683
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 685
    :cond_1d
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 686
    return-void
.end method

.method protected getBackspaceRevertHandler()Lcom/nuance/swype/input/BackspaceRevertHandler;
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    return-object v0
.end method

.method public getCurrentDefaultWord()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 4111
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->processDeferredSuggestionUpdates()Z

    .line 4112
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->getCurrentDefaultWord()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentExactWord()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 4117
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->processDeferredSuggestionUpdates()Z

    .line 4118
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->getCurrentExactWord()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getShiftGestureOffset()I
    .registers 2

    .prologue
    .line 1089
    iget v0, p0, Lcom/nuance/swype/input/AlphaInputView;->shiftGestureOffset:I

    return v0
.end method

.method public handleBackspace(I)Z
    .registers 12
    .param p1, "repeatedCount"    # I

    .prologue
    const/16 v9, 0x9

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1120
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 1122
    .local v1, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v7, :cond_e

    if-nez v1, :cond_12

    .line 1123
    :cond_e
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->sendBackspace(I)V

    .line 1272
    :cond_11
    :goto_11
    return v5

    .line 1128
    :cond_12
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->handleBackspaceDuringMultitap()Z

    move-result v7

    if-nez v7, :cond_11

    .line 1136
    const/4 v3, 0x0

    .line 1137
    .local v3, "showNWP":Z
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v7, :cond_51

    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v7

    if-lez v7, :cond_51

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isComposingText()Z

    move-result v7

    if-nez v7, :cond_51

    .line 1138
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_36

    .line 1139
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/AlphaInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 1142
    :cond_36
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v8, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v7, v8, :cond_46

    .line 1143
    const-string/jumbo v7, ""

    invoke-virtual {v1, v7, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1144
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 1145
    const/4 v3, 0x1

    .line 1147
    :cond_46
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->IsTextFieldEmpty()Z

    move-result v7

    if-nez v7, :cond_51

    if-nez v3, :cond_51

    .line 1148
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 1152
    :cond_51
    const-string/jumbo v7, "multitap"

    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v8}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8c

    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-nez v7, :cond_8c

    iget-boolean v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v7, :cond_8c

    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v8, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v7, v8, :cond_8c

    .line 1155
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v6}, Lcom/nuance/swype/input/EditState;->backSpace()V

    .line 1157
    invoke-virtual {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v6

    if-eqz v6, :cond_88

    .line 1158
    invoke-virtual {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clearHighlightedText()V

    .line 1162
    :goto_7c
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->IsTextFieldEmpty()Z

    move-result v6

    if-nez v6, :cond_84

    if-eqz v3, :cond_11

    .line 1163
    :cond_84
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->showNextWordPrediction()V

    goto :goto_11

    .line 1160
    :cond_88
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->sendBackspace(I)V

    goto :goto_7c

    .line 1168
    :cond_8c
    iget-boolean v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v7, :cond_1df

    .line 1169
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isComposingText()Z

    move-result v7

    .line 1170
    if-eqz v7, :cond_190

    .line 1172
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_a3

    .line 1173
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1177
    :cond_a3
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSelectionKeys()Z

    move-result v7

    if-nez v7, :cond_125

    .line 1179
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 1180
    .local v4, "strLen":I
    if-lez v4, :cond_11b

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentWordCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v7

    sget-object v8, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v7, v8, :cond_11b

    iget-boolean v7, p0, Lcom/nuance/swype/input/AlphaInputView;->isTelexMode:Z

    if-nez v7, :cond_11b

    .line 1182
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v7, v8, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 1183
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearKey()Z

    .line 1184
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_119

    move v2, v5

    .line 1190
    .local v2, "isComposing":Z
    :goto_d2
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->exactType:Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/nuance/swype/util/CharacterUtilities;->endsWithSurrogatePair(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e3

    .line 1192
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearKey()Z

    .line 1193
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isComposingText()Z

    move-result v2

    .line 1199
    .end local v4    # "strLen":I
    :cond_e3
    :goto_e3
    if-eqz v2, :cond_16b

    .line 1200
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentWordCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v7

    sget-object v8, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v7, v8, :cond_12a

    move v0, v5

    .line 1202
    .local v0, "bRecaptureNext":Z
    :goto_ee
    if-eqz v0, :cond_12c

    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v6, :cond_12c

    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_12c

    iget-boolean v6, p0, Lcom/nuance/swype/input/AlphaInputView;->isTelexMode:Z

    if-nez v6, :cond_12c

    .line 1203
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lcom/nuance/swype/input/AlphaInputView;->displayExactTypeAsInline(Ljava/lang/String;Landroid/view/inputmethod/InputConnection;)V

    .line 1217
    :cond_109
    :goto_109
    iput v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    .line 1218
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->IsTextFieldEmpty()Z

    move-result v6

    if-eqz v6, :cond_157

    .line 1219
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->showNextWordPrediction()V

    .line 1228
    :cond_114
    :goto_114
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    goto/16 :goto_11

    .end local v0    # "bRecaptureNext":Z
    .end local v2    # "isComposing":Z
    .restart local v4    # "strLen":I
    :cond_119
    move v2, v6

    .line 1184
    goto :goto_d2

    .line 1186
    :cond_11b
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearKey()Z

    .line 1187
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isComposingText()Z

    move-result v2

    .restart local v2    # "isComposing":Z
    goto :goto_d2

    .line 1196
    .end local v2    # "isComposing":Z
    .end local v4    # "strLen":I
    :cond_125
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isComposingText()Z

    move-result v2

    .restart local v2    # "isComposing":Z
    goto :goto_e3

    :cond_12a
    move v0, v6

    .line 1200
    goto :goto_ee

    .line 1205
    .restart local v0    # "bRecaptureNext":Z
    :cond_12c
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->exactType:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getExactType(Ljava/lang/StringBuilder;)V

    .line 1206
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->exactType:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_145

    .line 1207
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->exactType:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lcom/nuance/swype/input/AlphaInputView;->displayExactTypeAsInline(Ljava/lang/String;Landroid/view/inputmethod/InputConnection;)V

    goto :goto_109

    .line 1209
    :cond_145
    sget-object v6, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/AlphaInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 1210
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->processDeferredSuggestionUpdates()Z

    .line 1211
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v6, :cond_109

    .line 1212
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-direct {p0, v1, v6}, Lcom/nuance/swype/input/AlphaInputView;->displayDefaultCandidateAsInline(Landroid/view/inputmethod/InputConnection;Lcom/nuance/input/swypecorelib/Candidates;)V

    goto :goto_109

    .line 1220
    :cond_157
    if-eqz v0, :cond_165

    .line 1221
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v6}, Lcom/nuance/swype/input/IME;->reconstructByTap()Z

    move-result v6

    if-nez v6, :cond_114

    .line 1222
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->flushCurrentActiveWord()V

    goto :goto_114

    .line 1226
    :cond_165
    sget-object v6, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/AlphaInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto :goto_114

    .line 1232
    .end local v0    # "bRecaptureNext":Z
    :cond_16b
    const-string/jumbo v6, ""

    invoke-virtual {v1, v6, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1233
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 1235
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    if-eqz v6, :cond_17d

    .line 1236
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-virtual {v6}, Lcom/nuance/swype/input/BackspaceRevertHandler;->onBackToWordBegin()V

    .line 1239
    :cond_17d
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v6}, Lcom/nuance/swype/input/EditState;->backSpaceClearCompositingWordCandiateList()V

    .line 1240
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 1242
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->IsTextFieldEmpty()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1243
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->showNextWordPrediction()V

    goto/16 :goto_11

    .line 1247
    .end local v2    # "isComposing":Z
    :cond_190
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isEmptyCandidateList()Z

    move-result v7

    if-eqz v7, :cond_19c

    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v8, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v7, v8, :cond_1df

    .line 1248
    :cond_19c
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldSendBackSpaceToDeleteBreakLine()Z

    move-result v7

    if-nez v7, :cond_1df

    .line 1249
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldDeleteSurroundingTextUsingKeyEvent()Z

    move-result v7

    if-nez v7, :cond_1df

    .line 1250
    invoke-virtual {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasComposing()Z

    move-result v7

    if-eqz v7, :cond_1ce

    .line 1251
    const-string/jumbo v6, ""

    invoke-virtual {v1, v6, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1257
    :goto_1bc
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearPendingSuggestionsUpdate()V

    .line 1258
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v6}, Lcom/nuance/swype/input/EditState;->backSpace()V

    .line 1259
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v6}, Lcom/nuance/swype/input/EditState;->backSpaceClearCompositingWordCandiateList()V

    .line 1260
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    goto/16 :goto_11

    .line 1252
    :cond_1ce
    invoke-virtual {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v7

    if-eqz v7, :cond_1db

    .line 1253
    const-string/jumbo v7, ""

    invoke-virtual {v1, v7, v6}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_1bc

    .line 1255
    :cond_1db
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->sendBackspace(I)V

    goto :goto_1bc

    .line 1265
    :cond_1df
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->sendBackspace(I)V

    .line 1266
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearAllKeys()V

    .line 1267
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setContext([C)V

    .line 1268
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v6}, Lcom/nuance/swype/input/EditState;->backSpace()V

    .line 1269
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->IsTextFieldEmpty()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1270
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->showNextWordPrediction()V

    goto/16 :goto_11
.end method

.method public handleCharKey(Landroid/graphics/Point;IJ)V
    .registers 10
    .param p1, "pointTapped"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 1009
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/InputView;->handleCharKey(Landroid/graphics/Point;IJ)V

    .line 1011
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->isNonSpacedLanguage()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSelectionKeys()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1012
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 1014
    :cond_14
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->isCursorWithinWord()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1015
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearAllKeys()Z

    .line 1016
    int-to-char v0, p2

    .line 1017
    .local v0, "ch":C
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-eq v2, v3, :cond_3b

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v2, v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->toUpperSymbol(C)C

    move-result v0

    .line 1018
    :goto_2e
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->commitText(Ljava/lang/CharSequence;)V
    invoke-static {v2, v3}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->access$800(Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;Ljava/lang/CharSequence;)V

    .line 1019
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 1032
    .end local v0    # "ch":C
    :cond_3a
    :goto_3a
    return-void

    .line 1017
    .restart local v0    # "ch":C
    :cond_3b
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v2, v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->toLowerSymbol(C)C

    move-result v0

    goto :goto_2e

    .line 1021
    .end local v0    # "ch":C
    :cond_42
    invoke-static {p2}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v2

    if-nez v2, :cond_4e

    invoke-static {p2}, Lcom/nuance/swype/util/CharacterUtilities;->isDigit(I)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 1022
    :cond_4e
    invoke-static {p2}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v2

    if-eqz v2, :cond_84

    sget-object v1, Lcom/nuance/input/swypecorelib/KeyType;->LETTER:Lcom/nuance/input/swypecorelib/KeyType;

    .line 1023
    .local v1, "type":Lcom/nuance/input/swypecorelib/KeyType;
    :goto_56
    iget v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/nuance/swype/input/AlphaInputView;->autoSpace(Lcom/nuance/input/swypecorelib/KeyType;IZ)V

    .line 1025
    .end local v1    # "type":Lcom/nuance/input/swypecorelib/KeyType;
    :cond_5c
    int-to-char v2, p2

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->updateExplicitInput(C)V

    .line 1027
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v2, p2}, Lcom/nuance/swype/util/CharacterUtilities;->isWordCompounder(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->composingWordCandidates()Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 1028
    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v2

    if-nez v2, :cond_3a

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->supportsAlphaMode()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1029
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    goto :goto_3a

    .line 1022
    :cond_84
    sget-object v1, Lcom/nuance/input/swypecorelib/KeyType;->NUMBER:Lcom/nuance/input/swypecorelib/KeyType;

    goto :goto_56
.end method

.method public handleClose()V
    .registers 3

    .prologue
    .line 1436
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->dimissRemoveUdbWordDialog()V

    .line 1447
    const/4 v0, 0x0

    sget-object v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->selectDefaultSuggestion(ZLcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 1448
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->flushCurrentActiveWord()V

    .line 1449
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->removeAllMessages()V

    .line 1450
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->handleClose()V

    .line 1451
    return-void
.end method

.method public handleDeleteWordBack(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 4
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 1277
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->handleDeleteWordBack(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    .line 1278
    .local v0, "deleted":Z
    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    if-eqz v1, :cond_f

    .line 1279
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-virtual {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->onBackToWordBegin()V

    .line 1281
    :cond_f
    return v0
.end method

.method public handleEmotionKey()V
    .registers 2

    .prologue
    .line 2742
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->showEmojiInputView()V

    .line 2743
    return-void
.end method

.method public handleHardKeyCapsLock(Z)Z
    .registers 5
    .param p1, "iscapslockon"    # Z

    .prologue
    const/4 v2, 0x1

    .line 3517
    if-eqz p1, :cond_1b

    .line 3518
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 3523
    :goto_a
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v0, v1, :cond_14

    .line 3524
    iput-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->isManualShift:Z

    .line 3527
    :cond_14
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateNWP()V

    .line 3529
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->invalidateKeyboardImage()V

    .line 3530
    return v2

    .line 3520
    :cond_1b
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    goto :goto_a
.end method

.method public handleHardKeyDirectionKey(I)Z
    .registers 6
    .param p1, "keycode"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3563
    iput-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->isAddToDictionaryTipHighlighted:Z

    .line 3564
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-nez v2, :cond_d

    .line 3565
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyToApplication(I)V

    .line 3625
    :goto_c
    return v0

    .line 3569
    :cond_d
    packed-switch p1, :pswitch_data_f8

    :cond_10
    move v0, v1

    .line 3625
    goto :goto_c

    .line 3572
    :pswitch_12
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->isShowingCandidatesFor(Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 3573
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/CandidatesListView;->getSelectedIndex()I

    move-result v0

    if-eq v0, v3, :cond_2f

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_2f

    .line 3574
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->moveHighlightToNearCandidateForNWP(I)Z

    move-result v0

    goto :goto_c

    .line 3576
    :cond_2f
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    move v0, v1

    .line 3577
    goto :goto_c

    .line 3579
    :cond_34
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_47

    .line 3580
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    move v0, v1

    .line 3581
    goto :goto_c

    .line 3583
    :cond_47
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->moveHighlightToNearCandidate(I)Z

    move-result v0

    goto :goto_c

    .line 3585
    :pswitch_4c
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isShowingAddToDictionaryTip()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 3586
    iput-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->isAddToDictionaryTipHighlighted:Z

    .line 3587
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/CandidatesListView;->setHardwareKeyboardUsed(Z)V

    .line 3588
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/CandidatesListView;->setHighlightAddtoDictionaryTip(Z)V

    goto :goto_c

    .line 3591
    :cond_5f
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 3592
    sget-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-direct {p0, v1, v0}, Lcom/nuance/swype/input/AlphaInputView;->selectDefaultSuggestion(ZLcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 3593
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->flushCurrentActiveWord()V

    move v0, v1

    .line 3594
    goto :goto_c

    .line 3596
    :cond_6f
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->isShowingCandidatesFor(Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 3598
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/CandidatesListView;->getSelectedIndex()I

    move-result v0

    if-eq v0, v3, :cond_8c

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_8c

    .line 3599
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->moveHighlightToCenter(I)Z

    move-result v0

    goto :goto_c

    .line 3601
    :cond_8c
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearCurrentActiveWord()V

    move v0, v1

    .line 3602
    goto/16 :goto_c

    .line 3604
    :cond_92
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputFieldInfo;->isMultilineField()Z

    move-result v2

    if-eqz v2, :cond_b6

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/CandidatesListView;->wordCount()I

    move-result v2

    if-lez v2, :cond_b6

    .line 3605
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v2

    if-nez v2, :cond_b6

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_b6

    .line 3606
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    move v0, v1

    .line 3607
    goto/16 :goto_c

    .line 3610
    :cond_b6
    :pswitch_b6
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 3611
    sget-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-direct {p0, v1, v0}, Lcom/nuance/swype/input/AlphaInputView;->selectDefaultSuggestion(ZLcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 3612
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->flushCurrentActiveWord()V

    move v0, v1

    .line 3613
    goto/16 :goto_c

    .line 3615
    :cond_c7
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->isShowingCandidatesFor(Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 3617
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearCurrentActiveWord()V

    goto/16 :goto_c

    .line 3619
    :cond_d4
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isMultilineField()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/CandidatesListView;->wordCount()I

    move-result v0

    if-lez v0, :cond_10

    .line 3620
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_10

    .line 3621
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    move v0, v1

    .line 3622
    goto/16 :goto_c

    .line 3569
    :pswitch_data_f8
    .packed-switch 0x13
        :pswitch_b6
        :pswitch_4c
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public handleHardKeyEndKey()Z
    .registers 12

    .prologue
    const/16 v10, 0x121

    const/16 v9, 0x7b

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3869
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 3870
    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v7

    if-gtz v7, :cond_1b

    .line 3871
    :cond_16
    invoke-virtual {p0, v9}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyToApplication(I)V

    move v5, v6

    .line 3913
    :cond_1a
    :goto_1a
    return v5

    .line 3875
    :cond_1b
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v7, :cond_3d

    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 3876
    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v7

    sget-object v8, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v7, v8, :cond_3d

    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 3877
    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v7

    sget-object v8, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v7, v8, :cond_3d

    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 3878
    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v7

    sget-object v8, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v7, v8, :cond_41

    .line 3879
    :cond_3d
    invoke-virtual {p0, v9}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyToApplication(I)V

    goto :goto_1a

    .line 3883
    :cond_41
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .line 3885
    .local v3, "wordCandidatesCount":I
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v7}, Lcom/nuance/swype/input/CandidatesListView;->getSelectedIndex()I

    move-result v7

    if-ge v7, v3, :cond_1a

    .line 3889
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v7, v3}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 3890
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8, v3}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Lcom/nuance/swype/input/CandidatesListView;->touchWord(ILcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 3891
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v7}, Lcom/nuance/swype/input/CandidatesListView;->scrollEnd()V

    .line 3892
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->syncCandidateDisplayStyleToMode()V

    .line 3894
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 3895
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 3896
    .local v1, "inlineword":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 3897
    .local v2, "span":Landroid/text/style/UnderlineSpan;
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v7}, Lcom/nuance/swype/input/CandidatesListView;->getCurrentSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v4

    .line 3898
    .local v4, "wordcandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3899
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 3900
    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3901
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v2, v6, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3903
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v2, v6, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3905
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 3906
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1a

    .line 3907
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3908
    invoke-static {v0, v1}, Lcom/nuance/swype/util/InputConnectionUtils;->setComposingText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 3909
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_1a
.end method

.method public handleHardKeyEscapeKey()Z
    .registers 2

    .prologue
    .line 3553
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3554
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearCurrentActiveWord()V

    .line 3557
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public handleHardKeyHomeKey()Z
    .registers 11

    .prologue
    const/16 v9, 0x121

    const/16 v8, 0x7a

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3820
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v6, :cond_1a

    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v6, :cond_1a

    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v6, :cond_1f

    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 3821
    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v6

    if-gtz v6, :cond_1f

    .line 3822
    :cond_1a
    invoke-virtual {p0, v8}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyToApplication(I)V

    move v4, v5

    .line 3863
    :cond_1e
    :goto_1e
    return v4

    .line 3826
    :cond_1f
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v6, :cond_41

    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 3827
    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v6

    sget-object v7, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v6, v7, :cond_41

    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 3828
    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v6

    sget-object v7, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v6, v7, :cond_41

    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 3829
    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v6

    sget-object v7, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v6, v7, :cond_45

    .line 3830
    :cond_41
    invoke-virtual {p0, v8}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyToApplication(I)V

    goto :goto_1e

    .line 3834
    :cond_45
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/CandidatesListView;->getSelectedIndex()I

    move-result v6

    if-eqz v6, :cond_1e

    .line 3839
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v6, v5}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 3840
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v7, v5}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/nuance/swype/input/CandidatesListView;->touchWord(ILcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 3841
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/CandidatesListView;->scrollHead()V

    .line 3842
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->syncCandidateDisplayStyleToMode()V

    .line 3844
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 3845
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 3846
    .local v1, "inlineword":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 3847
    .local v2, "span":Landroid/text/style/UnderlineSpan;
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/CandidatesListView;->getCurrentSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v3

    .line 3848
    .local v3, "wordcandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3849
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 3850
    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3851
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v2, v5, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3853
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v2, v5, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3855
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 3856
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1e

    .line 3857
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3858
    invoke-static {v0, v1}, Lcom/nuance/swype/util/InputConnectionUtils;->setComposingText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 3859
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_1e
.end method

.method public handleHardkeyBackspace(I)Z
    .registers 3
    .param p1, "repeatedCount"    # I

    .prologue
    .line 3342
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->handleBackspace(I)Z

    move-result v0

    return v0
.end method

.method public handleHardkeyCharKey(ILandroid/view/KeyEvent;Z)V
    .registers 14
    .param p1, "primaryCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "shiftable"    # Z

    .prologue
    const/16 v9, 0x121

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3228
    if-eqz p2, :cond_9c

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    .line 3229
    .local v2, "eventTime":J
    :goto_a
    const/4 v4, 0x0

    invoke-super {p0, v4, p1, v2, v3}, Lcom/nuance/swype/input/InputView;->handleCharKey(Landroid/graphics/Point;IJ)V

    .line 3231
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->setReconstructWord(I)V

    .line 3233
    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AlphaInputView;->isShowingCandidatesFor(Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 3234
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 3240
    :cond_1c
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v4, :cond_2a

    iget-boolean v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v4, :cond_2a

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isInsideWord()Z

    move-result v4

    if-eqz v4, :cond_e8

    .line 3241
    :cond_2a
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v4}, Lcom/nuance/swype/input/EditState;->end()V

    .line 3243
    int-to-char v0, p1

    .line 3245
    .local v0, "ch":C
    iget-boolean v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mMiniKeyboardOnScreen:Z

    if-eqz v4, :cond_a0

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    if-eqz v4, :cond_a0

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    .line 3246
    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardViewEx;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v4

    .line 3247
    :goto_3e
    sget-object v7, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-eq v4, v7, :cond_a5

    .line 3248
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 3253
    :cond_46
    :goto_46
    iget-boolean v4, p0, Lcom/nuance/swype/input/AlphaInputView;->isManualShift:Z

    if-eqz v4, :cond_57

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v4

    sget-object v7, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v4, v7, :cond_57

    .line 3254
    sget-object v4, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AlphaInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 3257
    :cond_57
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isMultitapping()Z

    move-result v4

    if-nez v4, :cond_b2

    .line 3258
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyChar(C)V

    .line 3325
    .end local v0    # "ch":C
    :cond_60
    :goto_60
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v4, :cond_90

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    int-to-char v6, p1

    invoke-virtual {v4, v6}, Lcom/nuance/swype/util/CharacterUtilities;->isWordCompounder(I)Z

    move-result v4

    if-eqz v4, :cond_90

    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->composingWordCandidates()Z

    move-result v4

    if-eqz v4, :cond_90

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 3326
    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v4

    if-nez v4, :cond_90

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->supportsAlphaMode()Z

    move-result v4

    if-eqz v4, :cond_90

    .line 3327
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->processDeferredSuggestionUpdates()Z

    .line 3328
    sget-object v4, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AlphaInputView;->selectDefaultSuggestion(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 3329
    sget-object v4, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AlphaInputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 3332
    :cond_90
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isMultitapping()Z

    move-result v4

    if-eqz v4, :cond_99

    .line 3333
    invoke-direct {p0, v5}, Lcom/nuance/swype/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 3336
    :cond_99
    iput v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    .line 3337
    return-void

    .line 3228
    .end local v2    # "eventTime":J
    :cond_9c
    const-wide/16 v2, 0x0

    goto/16 :goto_a

    .line 3246
    .restart local v0    # "ch":C
    .restart local v2    # "eventTime":J
    :cond_a0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v4

    goto :goto_3e

    .line 3249
    :cond_a5
    const/16 v4, 0x41

    if-lt v0, v4, :cond_46

    const/16 v4, 0x5a

    if-gt v0, v4, :cond_46

    .line 3250
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    goto :goto_46

    .line 3261
    :cond_b2
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3262
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 3263
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 3265
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mBKMultiTappingCharSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v4, v7, v6, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3267
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mFGMultiTappingCharSpan:Landroid/text/style/ForegroundColorSpan;

    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v4, v7, v6, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3270
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 3272
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_60

    .line 3273
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v1, v4, v5}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_60

    .line 3279
    .end local v0    # "ch":C
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_e8
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSelectionKeys()Z

    move-result v4

    if-eqz v4, :cond_fd

    .line 3280
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 3289
    :cond_f1
    :goto_f1
    int-to-char v4, p1

    invoke-static {v4}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v4

    if-eqz v4, :cond_122

    .line 3291
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->handleWhiteSpaces(I)V

    goto/16 :goto_60

    .line 3281
    :cond_fd
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isEmptyCandidateList()Z

    move-result v4

    if-eqz v4, :cond_109

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v7, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v4, v7, :cond_f1

    .line 3282
    :cond_109
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentWordCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v4

    sget-object v7, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v4, v7, :cond_f1

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    .line 3283
    invoke-virtual {v4, p1}, Lcom/nuance/swype/util/CharacterUtilities;->isWordCompounder(I)Z

    move-result v4

    if-eqz v4, :cond_f1

    .line 3284
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->processDeferredSuggestionUpdates()Z

    .line 3286
    sget-object v4, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AlphaInputView;->selectDefaultSuggestion(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    goto :goto_f1

    .line 3292
    :cond_122
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isMultitapping()Z

    move-result v4

    if-nez v4, :cond_176

    .line 3298
    int-to-char v4, p1

    invoke-static {v4}, Lcom/nuance/swype/util/CharacterUtilities;->isDigit(I)Z

    move-result v4

    if-eqz v4, :cond_141

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v4, :cond_141

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 3299
    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v4

    if-eqz v4, :cond_141

    iget v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardLayoutId:I

    const/16 v7, 0x600

    if-eq v4, v7, :cond_176

    .line 3306
    :cond_141
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    int-to-char v7, p1

    invoke-virtual {v4, v7}, Lcom/nuance/swype/util/CharacterUtilities;->isWordAcceptingSymbol(I)Z

    move-result v4

    if-nez v4, :cond_16c

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    int-to-char v7, p1

    .line 9291
    invoke-static {v7}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v8

    if-nez v8, :cond_174

    invoke-static {v7}, Lcom/nuance/swype/util/CharacterUtilities;->isDigit(I)Z

    move-result v8

    if-nez v8, :cond_174

    invoke-virtual {v4, v7}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v4

    if-eqz v4, :cond_163

    const/16 v4, 0x27

    if-ne v7, v4, :cond_174

    :cond_163
    move v4, v5

    .line 3307
    :goto_164
    if-nez v4, :cond_176

    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->composingWordCandidates()Z

    move-result v4

    if-nez v4, :cond_176

    .line 3318
    :cond_16c
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/AlphaInputView;->useKDBHardkey(Z)V

    .line 3319
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->handlePunctOrSymbol(I)V

    goto/16 :goto_60

    :cond_174
    move v4, v6

    .line 9291
    goto :goto_164

    .line 3321
    :cond_176
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->handlePrediction(I)V

    goto/16 :goto_60
.end method

.method public handleHardkeyDelete(I)Z
    .registers 8
    .param p1, "repeatedCount"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3372
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 3374
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v2, :cond_c

    if-nez v1, :cond_10

    .line 3375
    :cond_c
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->sendBackspace(I)V

    .line 3417
    :cond_f
    :goto_f
    return v4

    .line 3383
    :cond_10
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v2

    if-lez v2, :cond_36

    .line 3384
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isComposingText()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v2

    if-nez v2, :cond_36

    .line 3385
    :cond_28
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_33

    .line 3386
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/AlphaInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 3388
    :cond_33
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 3391
    :cond_36
    const-string/jumbo v2, "multitap"

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-nez v2, :cond_65

    iget-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v2, :cond_65

    iget-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mRecaptureOn:Z

    if-eqz v2, :cond_65

    .line 3394
    invoke-interface {v1, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3395
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 3396
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3397
    invoke-interface {v1, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 3398
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_f

    .line 3403
    :cond_65
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->flushCurrentActiveWord()V

    .line 3406
    invoke-interface {v1, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3407
    .local v0, "cSeqAfter":Ljava/lang/CharSequence;
    if-eqz v0, :cond_7d

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_7d

    .line 3408
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3409
    invoke-interface {v1, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 3410
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 3412
    :cond_7d
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 3413
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearAllKeys()V

    .line 3414
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setContext([C)V

    .line 3415
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v2}, Lcom/nuance/swype/input/EditState;->backSpace()V

    goto/16 :goto_f
.end method

.method public handleHardkeyEnter()Z
    .registers 6

    .prologue
    const/16 v3, 0x42

    const/4 v4, 0x1

    .line 3459
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 3461
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->isAddToDictionaryTipHighlighted:Z

    .line 3462
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v1, :cond_10

    if-nez v0, :cond_14

    .line 3463
    :cond_10
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyToApplication(I)V

    .line 3509
    :goto_13
    return v4

    .line 3467
    :cond_14
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 3468
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_2c

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 3469
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v1, v2, :cond_30

    .line 3470
    :cond_2c
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyToApplication(I)V

    goto :goto_13

    .line 3474
    :cond_30
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3477
    invoke-static {v0}, Lcom/nuance/swype/util/InputConnectionUtils;->isComposingTextSelected(Landroid/view/inputmethod/InputConnection;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 3478
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 3479
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearAllKeys()V

    .line 3502
    :cond_3f
    :goto_3f
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyToApplication(I)V

    .line 3504
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 3505
    invoke-direct {p0, v4}, Lcom/nuance/swype/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 3507
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_13

    .line 3480
    :cond_4c
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->composingWordCandidates()Z

    move-result v1

    if-nez v1, :cond_6c

    iget-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mIsUseHardkey:Z

    if-eqz v1, :cond_8a

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 3481
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_8a

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_8a

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v1, v2, :cond_8a

    .line 3483
    :cond_6c
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_SPACE:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-direct {p0, v1, v2, v3}, Lcom/nuance/swype/input/AlphaInputView;->selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/CharSequence;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 3489
    iget v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_80

    .line 3490
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->triggerAutoSpaceTip()V

    .line 3492
    :cond_80
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 3493
    invoke-direct {p0, v4}, Lcom/nuance/swype/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 3495
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_13

    .line 3497
    :cond_8a
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 3498
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_3f

    .line 3499
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    goto :goto_3f
.end method

.method public handleHardkeyShiftKey(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .registers 5
    .param p1, "state"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    const/4 v2, 0x1

    .line 3536
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3537
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 3539
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v0, v1, :cond_18

    .line 3540
    iput-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->isManualShift:Z

    .line 3543
    :cond_18
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateNWP()V

    .line 3545
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->invalidateKeyboardImage()V

    .line 3547
    :cond_1e
    return v2
.end method

.method public handleHardkeySpace(ZI)Z
    .registers 10
    .param p1, "quickPressed"    # Z
    .param p2, "repeatedCount"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 3348
    iput-boolean v5, p0, Lcom/nuance/swype/input/AlphaInputView;->isAddToDictionaryTipHighlighted:Z

    .line 3349
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 3351
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_5c

    .line 3352
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_5c

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v3, :cond_5c

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 3353
    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v3

    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v3, v4, :cond_5c

    .line 3354
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    .line 3355
    .local v1, "selectedCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    if-eqz v1, :cond_5c

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->shouldRemoveSpaceBefore()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 3356
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->length()I

    move-result v3

    if-lez v3, :cond_5c

    .line 3357
    invoke-interface {v0, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3358
    .local v2, "seq":Ljava/lang/CharSequence;
    if-eqz v2, :cond_5c

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v3, v6, :cond_5c

    .line 3359
    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 3360
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_5c

    .line 3361
    const/4 v3, 0x1

    invoke-interface {v0, v3, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 3366
    .end local v1    # "selectedCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    .end local v2    # "seq":Ljava/lang/CharSequence;
    :cond_5c
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/AlphaInputView;->handleSpace(ZI)Z

    move-result v3

    return v3
.end method

.method public handleKey(IZI)Z
    .registers 12
    .param p1, "primaryCode"    # I
    .param p2, "quickPressed"    # Z
    .param p3, "repeatedCount"    # I

    .prologue
    const/4 v6, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 729
    const/4 v1, 0x0

    .line 730
    .local v1, "handled":Z
    sparse-switch p1, :sswitch_data_ca

    .line 812
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v1

    .line 815
    :cond_b
    :goto_b
    return v1

    .line 733
    :sswitch_c
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

    invoke-virtual {v4, p1}, Lcom/nuance/swype/input/AutospaceHandler;->onKey(I)Z

    goto :goto_b

    .line 737
    :sswitch_12
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->autoAccept(Z)Z

    .line 738
    int-to-char v4, p1

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyChar(C)V

    .line 739
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->showNextWordPrediction()V

    .line 740
    const/4 v1, 0x1

    .line 741
    goto :goto_b

    .line 744
    :sswitch_20
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v4}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v4

    const/4 v5, 0x7

    if-eq v4, v5, :cond_3a

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    .line 745
    invoke-virtual {v4}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3a

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    .line 746
    invoke-virtual {v4}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v4

    if-ne v4, v6, :cond_3d

    .line 748
    :cond_3a
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->triggerAutoSpaceTip()V

    .line 752
    :cond_3d
    invoke-virtual {p0, p2, p3}, Lcom/nuance/swype/input/AlphaInputView;->handleSpace(ZI)Z

    move-result v1

    .line 753
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputFieldInfo;->isNumberField()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 754
    sget-object v4, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AlphaInputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    goto :goto_b

    .line 758
    :sswitch_57
    iget-boolean v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    if-eqz v4, :cond_5e

    .line 759
    invoke-direct {p0, v6}, Lcom/nuance/swype/input/AlphaInputView;->postToastMsg(I)V

    .line 762
    :cond_5e
    const/4 v1, 0x1

    .line 763
    goto :goto_b

    .line 765
    :sswitch_60
    if-nez p2, :cond_65

    .line 766
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->startSpeech()V

    .line 768
    :cond_65
    const/4 v1, 0x1

    .line 769
    goto :goto_b

    .line 771
    :sswitch_67
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->toggleLastKeyboard()V

    .line 772
    const/4 v1, 0x1

    .line 773
    goto :goto_b

    .line 776
    :sswitch_6e
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isExploreByTouchOn()Z

    move-result v6

    if-eqz v6, :cond_76

    .line 777
    const/4 v1, 0x1

    .line 778
    goto :goto_b

    .line 780
    :cond_76
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->isAutoSpaceSupported()Z

    move-result v6

    if-nez v6, :cond_86

    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->isNonSpacedLanguage()Z

    move-result v6

    if-eqz v6, :cond_af

    .line 781
    :cond_86
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 782
    .local v2, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isValidBuild()Z

    move-result v5

    if-eqz v5, :cond_a4

    if-eqz v2, :cond_a4

    .line 783
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v2, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getSelectedTextInEditor(Lcom/nuance/swype/input/InputFieldInfo;)Ljava/lang/String;

    move-result-object v3

    .line 784
    .local v3, "selectedText":Ljava/lang/String;
    if-eqz v3, :cond_a4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a4

    .line 785
    invoke-direct {p0, v3, v4}, Lcom/nuance/swype/input/AlphaInputView;->handleAddRemoveDlmWord(Ljava/lang/String;Z)V

    .line 786
    const/4 v1, 0x1

    .line 802
    .end local v3    # "selectedText":Ljava/lang/String;
    :cond_a4
    :goto_a4
    if-nez v1, :cond_aa

    .line 803
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v1

    .line 807
    :cond_aa
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    goto/16 :goto_b

    .line 794
    .end local v2    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    :cond_af
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 795
    .restart local v2    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v2, :cond_a4

    .line 796
    invoke-virtual {v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getComposingRangeInEditor()[I

    move-result-object v0

    .line 797
    .local v0, "composing":[I
    if-eqz v0, :cond_c7

    aget v6, v0, v5

    aget v7, v0, v4

    .line 798
    invoke-virtual {v2, v6, v7}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setSelection(II)Z

    move-result v6

    if-eqz v6, :cond_c7

    move v1, v4

    :goto_c6
    goto :goto_a4

    :cond_c7
    move v1, v5

    goto :goto_c6

    .line 730
    nop

    :sswitch_data_ca
    .sparse-switch
        -0x6a -> :sswitch_c
        0xa -> :sswitch_12
        0x20 -> :sswitch_20
        0xb53 -> :sswitch_c
        0xb7c -> :sswitch_57
        0x193f -> :sswitch_60
        0xaa37 -> :sswitch_6e
        0xaa38 -> :sswitch_67
    .end sparse-switch
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 845
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->handleKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 851
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_3e

    const/16 v0, 0xfbd

    if-eq p1, v0, :cond_16

    const/16 v0, 0xfdb

    if-ne p1, v0, :cond_3e

    .line 855
    :cond_16
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->composingWordCandidates()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 857
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v0

    if-lez v0, :cond_40

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 858
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_40

    .line 859
    :cond_32
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->CURSOR_REPOSITION:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/swype/input/AlphaInputView;->selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/CharSequence;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 867
    :cond_3e
    :goto_3e
    const/4 v0, 0x0

    return v0

    .line 861
    :cond_40
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->flushCurrentActiveWord()V

    goto :goto_3e
.end method

.method protected handleLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 5
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v2, 0x0

    .line 2569
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v0, v0, v2

    invoke-static {v0}, Lcom/nuance/swype/input/KeyboardEx;->isShiftKey(I)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->handleShiftPressedHold()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2570
    const/4 v0, 0x1

    .line 2574
    :goto_12
    return v0

    .line 2571
    :cond_13
    const/16 v0, 0x8

    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v2

    if-ne v0, v1, :cond_20

    .line 2572
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->handleDeleteWordBack(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    goto :goto_12

    .line 2574
    :cond_20
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->handleLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    goto :goto_12
.end method

.method public handleMultitapToggle()V
    .registers 4

    .prologue
    .line 1792
    iget-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    if-eqz v1, :cond_34

    .line 1793
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->toggleAmbigMode()V

    .line 1794
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    .line 1795
    .local v0, "inputMode":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->setCorrectionLevel(Ljava/lang/String;)V

    .line 1796
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    const-string/jumbo v2, "multitap"

    .line 1797
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1796
    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/AppPreferences;->setMultitapMode(Z)V

    .line 1802
    sget-object v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->MULTITAP_TOGGLE:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/AlphaInputView;->selectDefaultSuggestion(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 1804
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 1806
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/nuance/swype/input/IME;->refreshLanguageOnSpaceKey(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardViewEx;)V

    .line 1808
    .end local v0    # "inputMode":Ljava/lang/String;
    :cond_34
    return-void
.end method

.method public handlePossibleActionAfterResize()V
    .registers 2

    .prologue
    .line 4149
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4150
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->setCandidatesViewShown(Z)V

    .line 4152
    :cond_c
    return-void
.end method

.method public handlePossibleActionAfterUniversalKeyboardResize(Z)V
    .registers 3
    .param p1, "hideSymbolView"    # Z

    .prologue
    .line 4142
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4143
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->setCandidatesViewShown(Z)V

    .line 4145
    :cond_c
    return-void
.end method

.method protected handlePreTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V
    .registers 4
    .param p1, "points"    # Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    .prologue
    .line 1056
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->processDeferredSuggestionUpdates()Z

    .line 1057
    sget-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->SWYPE_NEXT_WORD:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->selectDefaultSuggestion(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 1059
    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->isManualShift:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1060
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->triggerCapitalizationGestureTip()V

    .line 1064
    :cond_17
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mPreTraceShiftedState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 1065
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mPreTraceShiftedState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v0, v1, :cond_30

    .line 1066
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v0, v1, :cond_30

    .line 1067
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 1070
    :cond_30
    return-void
.end method

.method protected handleShiftKey()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2450
    iget-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->isLongPressed:Z

    if-eqz v1, :cond_72

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isExploreByTouchOn()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 2451
    invoke-direct {p0, v5}, Lcom/nuance/swype/input/AlphaInputView;->toggleCapsLock(Z)Z

    .line 2452
    iput-boolean v6, p0, Lcom/nuance/swype/input/AlphaInputView;->isLongPressed:Z

    .line 2458
    :goto_11
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isExploreByTouchOn()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 2459
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->getInstance()Lcom/nuance/swype/input/accessibility/AccessibilityNotification;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->speakShiftState(Landroid/content/Context;Lcom/nuance/input/swypecorelib/Shift$ShiftState;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 2462
    :cond_2a
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v0

    .line 2463
    .local v0, "keyboardScribe":Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    if-eqz v0, :cond_3d

    .line 2464
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 2467
    :cond_3d
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v1, v2, :cond_47

    .line 2468
    iput-boolean v5, p0, Lcom/nuance/swype/input/AlphaInputView;->isManualShift:Z

    .line 2470
    :cond_47
    sget-object v1, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "handleShiftKey...shiftState: "

    aput-object v3, v2, v6

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2471
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 2474
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 2476
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateNWP()V

    .line 2479
    :cond_6e
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->invalidateKeyboardImage()V

    .line 2480
    return-void

    .line 2454
    .end local v0    # "keyboardScribe":Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    :cond_72
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->cycleShiftState()V

    goto :goto_11
.end method

.method public handleSpace(ZI)Z
    .registers 20
    .param p1, "quickPressed"    # Z
    .param p2, "repeatedCount"    # I

    .prologue
    .line 1286
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v12

    .line 1287
    .local v12, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/nuance/swype/input/AlphaInputView;->mNextWordPredictionOn:Z

    .line 1288
    .local v11, "displayNWP":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;

    # invokes: Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->resetLastAutoSpaceInserted()V
    invoke-static {v1}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->access$600(Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;)V

    .line 1290
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v1, :cond_17

    if-nez v12, :cond_20

    .line 1291
    :cond_17
    const/16 v1, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyChar(C)V

    .line 1292
    const/4 v1, 0x1

    .line 1431
    :goto_1f
    return v1

    .line 1295
    :cond_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    if-eqz v1, :cond_1bc

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    .line 1296
    invoke-virtual {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->isOverrideActive()Z

    move-result v1

    if-eqz v1, :cond_1bc

    const/4 v14, 0x1

    .line 1297
    .local v14, "isSpaceAfterRevert":Z
    :goto_31
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    if-eqz v1, :cond_42

    .line 1298
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/BackspaceRevertHandler;->onPreSpace(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 1302
    :cond_42
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->processDeferredSuggestionUpdates()Z

    .line 1311
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1312
    .local v9, "cSeqBef":Ljava/lang/CharSequence;
    if-eqz v9, :cond_6e

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6e

    .line 1313
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->isTerminalPunctuation(C)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 1314
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->triggerPunctuationGestureTip()V

    .line 1319
    :cond_64
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6e

    .line 1320
    const/4 v11, 0x0

    .line 1324
    :cond_6e
    invoke-virtual {v12}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 1326
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v15

    .line 1328
    .local v15, "prevShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->composingWordCandidates()Z

    move-result v1

    if-nez v1, :cond_9d

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mIsUseHardkey:Z

    if-eqz v1, :cond_1bf

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 1329
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1bf

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_1bf

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1330
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v1, v2, :cond_1bf

    .line 1332
    :cond_9d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/WordCandidate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c6

    .line 1333
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->oovWordHistory:Lcom/nuance/swype/input/OOVWordHistory;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/WordCandidate;->word()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/OOVWordHistory;->add(Ljava/lang/String;)V

    .line 1337
    :cond_c6
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/nuance/swype/input/AlphaInputView;->mNextWordPredictionOn:Z

    .line 1338
    sget-object v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_SPACE:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 1339
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_SPACE:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/AlphaInputView;->selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/CharSequence;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 1345
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_eb

    .line 1346
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->triggerAutoSpaceTip()V

    .line 1383
    :cond_eb
    :goto_eb
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->isExploreByTouchOn()Z

    move-result v1

    if-nez v1, :cond_16c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 1384
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getTerminalPunctuation()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_16c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getTerminalPunctuation()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1385
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_16c

    if-eqz p1, :cond_16c

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mAutoPunctuationOn:Z

    if-eqz v1, :cond_16c

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v1, :cond_16c

    .line 1387
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1393
    .local v10, "cSeqBefore":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getTerminalPunctuation()Ljava/lang/CharSequence;

    move-result-object v8

    .line 1395
    .local v8, "autopunct":Ljava/lang/CharSequence;
    if-eqz v10, :cond_16c

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16c

    const/4 v1, 0x1

    .line 1396
    invoke-interface {v10, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v1

    if-eqz v1, :cond_16c

    const/4 v1, 0x0

    .line 1397
    invoke-interface {v10, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v1

    if-nez v1, :cond_16c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    const/4 v2, 0x0

    .line 1398
    invoke-interface {v10, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v1

    if-nez v1, :cond_16c

    const/4 v1, 0x0

    .line 1399
    invoke-interface {v8, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_16c

    .line 1400
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->deleteSurroundingText(II)Z

    .line 1402
    const/4 v1, 0x1

    invoke-virtual {v12, v8, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1403
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/nuance/swype/input/AlphaInputView;->mNextWordPredictionOn:Z

    .line 1407
    .end local v8    # "autopunct":Ljava/lang/CharSequence;
    .end local v10    # "cSeqBefore":Ljava/lang/CharSequence;
    :cond_16c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->spaceKey()V

    .line 1408
    const/16 v1, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyChar(C)V

    .line 1409
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 1412
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->isShowingCandidatesFor(Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v1

    if-nez v1, :cond_1b6

    .line 1413
    if-eqz v11, :cond_24d

    .line 1414
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 1415
    sget-object v1, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "handleSpace...displayNWP...shiftState: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1416
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 1417
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 1429
    :cond_1b6
    :goto_1b6
    invoke-virtual {v12}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    .line 1431
    const/4 v1, 0x1

    goto/16 :goto_1f

    .line 1296
    .end local v9    # "cSeqBef":Ljava/lang/CharSequence;
    .end local v14    # "isSpaceAfterRevert":Z
    .end local v15    # "prevShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    :cond_1bc
    const/4 v14, 0x0

    goto/16 :goto_31

    .line 1348
    .restart local v9    # "cSeqBef":Ljava/lang/CharSequence;
    .restart local v14    # "isSpaceAfterRevert":Z
    .restart local v15    # "prevShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    :cond_1bf
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_eb

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1349
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_eb

    .line 1351
    if-eqz v14, :cond_1f1

    .line 1353
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->handleOverrideCacheAddSelectedCandidate(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 1354
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_SPACE:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/nuance/swype/input/AlphaInputView;->selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/CharSequence;ZZLcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;Z)V

    goto/16 :goto_eb

    .line 1356
    :cond_1f1
    const/4 v13, 0x1

    .line 1357
    .local v13, "isKnown":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_20a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->CAPS_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v1, v2, :cond_246

    .line 1358
    :cond_20a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-static {v12, v1}, Lcom/nuance/swype/util/InputConnectionUtils;->getWordBeforeCursor$498a830e(Landroid/view/inputmethod/InputConnection;Lcom/nuance/swype/util/CharacterUtilities;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 1359
    .local v16, "wordBeforeCursor":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nuance/swype/input/AlphaInputView;->promptToAddWords:Z

    if-eqz v1, :cond_246

    if-eqz v16, :cond_246

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_246

    .line 1360
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->isKnownWord(Ljava/lang/String;)Z

    move-result v13

    .line 1361
    if-nez v13, :cond_246

    .line 1362
    sget-object v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_SPACE:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 1363
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 1364
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->clearAllKeys()V

    .line 1365
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/AlphaInputView;->handleAddRemoveDlmWord(Ljava/lang/String;Z)V

    .line 1369
    .end local v16    # "wordBeforeCursor":Ljava/lang/CharSequence;
    :cond_246
    if-eqz v13, :cond_eb

    .line 1370
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    goto/16 :goto_eb

    .line 1418
    .end local v13    # "isKnown":Z
    :cond_24d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_1b6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v1

    if-lez v1, :cond_1b6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1419
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v1, v2, :cond_1b6

    .line 1421
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v1

    if-eq v15, v1, :cond_1b6

    .line 1422
    sget-object v1, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "handleSpace...shiftState: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1423
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 1424
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_1b6
.end method

.method public handleTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V
    .registers 6
    .param p1, "trace"    # Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    .prologue
    const/4 v3, 0x0

    .line 1076
    sget-object v0, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "handleTrace called"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1077
    iput-boolean v3, p0, Lcom/nuance/swype/input/AlphaInputView;->shiftGestureOn:Z

    .line 1078
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->hasActiveInput()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1079
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->createCandidatesBuilderHandler()V

    .line 1080
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesBuilderHandler:Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;->build(Lcom/nuance/input/swypecorelib/Candidates$Source;)V

    .line 1086
    :goto_22
    return-void

    .line 1083
    :cond_23
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->showNextWordPrediction()V

    goto :goto_22
.end method

.method public hasPendingSuggestionsUpdate()Z
    .registers 3

    .prologue
    .line 2765
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesBuilderHandler:Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;

    .line 2766
    invoke-virtual {v0}, Lcom/nuance/swype/input/keyboard/CandidatesBuilderHandler;->hasPendingBuild()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isAddToDictionaryTipHighlighted()Z
    .registers 2

    .prologue
    .line 3446
    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->isAddToDictionaryTipHighlighted:Z

    return v0
.end method

.method public isExactCandidateNewWord()Z
    .registers 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 347
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v0

    if-lez v0, :cond_1c

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 348
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_NEW_WORD:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public isInputSessionStarted()Z
    .registers 3

    .prologue
    .line 4123
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isShowingAddToDictionaryTip()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3438
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v4, :cond_2c

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v4, :cond_2c

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v4, v4, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v4, :cond_2c

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v4, v4, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    .line 3439
    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v4

    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v4, v5, :cond_2c

    move v1, v2

    .line 3440
    .local v1, "oneCandidate":Z
    :goto_1d
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/CandidatesListView;->getCandidateListener()Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    move-result-object v0

    .line 3441
    .local v0, "listener":Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    if-eqz v1, :cond_2e

    if-eqz v0, :cond_2e

    instance-of v4, v0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWord;

    if-eqz v4, :cond_2e

    :goto_2b
    return v2

    .end local v0    # "listener":Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    .end local v1    # "oneCandidate":Z
    :cond_2c
    move v1, v3

    .line 3439
    goto :goto_1d

    .restart local v0    # "listener":Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    .restart local v1    # "oneCandidate":Z
    :cond_2e
    move v2, v3

    .line 3441
    goto :goto_2b
.end method

.method protected isTraceInputEnabled()Z
    .registers 2

    .prologue
    .line 2580
    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->isTraceEnabledOnKeyboard:Z

    return v0
.end method

.method public isUsingVietnameseNationalInputMode()Z
    .registers 2

    .prologue
    .line 4086
    const-string/jumbo v0, "national"

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->isModeUsing(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUsingVietnameseTelexInputMode()Z
    .registers 2

    .prologue
    .line 4077
    const-string/jumbo v0, "telex"

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->isModeUsing(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public markActiveWordUsedIfAny()V
    .registers 5

    .prologue
    .line 668
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->composingWordCandidates()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_27

    .line 670
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    .line 671
    .local v0, "wordCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->id()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->wordSelected(IZ)V

    .line 672
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/EditState;->selectWord(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 674
    .end local v0    # "wordCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    :cond_27
    return-void
.end method

.method public movePointer(F)V
    .registers 5
    .param p1, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 3422
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne v0, v1, :cond_2e

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3423
    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->shiftGestureOn:Z

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v0, v1, :cond_2f

    :cond_1d
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_2f

    .line 3424
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 3425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->shiftGestureOn:Z

    .line 3426
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->invalidateKeyboardImage()V

    .line 3434
    :cond_2e
    :goto_2e
    return-void

    .line 3428
    :cond_2f
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v0, v1, :cond_2e

    cmpg-float v0, p1, v2

    if-gez v0, :cond_2e

    .line 3429
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 3430
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->shiftGestureOn:Z

    .line 3431
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->invalidateKeyboardImage()V

    goto :goto_2e
.end method

.method public onApplicationUnbind()V
    .registers 1

    .prologue
    .line 2599
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->onApplicationUnbind()V

    .line 2601
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->dimissRemoveUdbWordDialog()V

    .line 2607
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 2608
    return-void
.end method

.method public onCancelNonEditStateRecaptureViaCharKey(C)V
    .registers 2
    .param p1, "ch"    # C

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->handleBackSpaceRevertCancelWordRecapture(C)V

    .line 300
    return-void
.end method

.method public onHandleUdbWordRemoval(Ljava/lang/String;)V
    .registers 3
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 1518
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearCurrentActiveWord()V

    .line 1520
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearComposingTextAndSelection()V

    .line 1522
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v0, :cond_f

    .line 1523
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmDelete(Ljava/lang/String;)Z

    .line 1525
    :cond_f
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->showNextWordPrediction()V

    .line 1526
    return-void
.end method

.method public onHardKeyText(Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 3968
    if-eqz p1, :cond_28

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_28

    .line 3969
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isComposingText()Z

    move-result v1

    if-nez v1, :cond_20

    .line 3970
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 3971
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3972
    const-string/jumbo v1, ""

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 3973
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 3975
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_20
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/nuance/swype/input/AlphaInputView;->handleHardkeyCharKey(ILandroid/view/KeyEvent;Z)V

    .line 3977
    :cond_28
    return-void
.end method

.method public onMultitapTimeout()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 1812
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 1814
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_8

    .line 1845
    :goto_7
    return-void

    .line 1819
    :cond_8
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_30

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isComposingText()Z

    move-result v4

    if-nez v4, :cond_30

    .line 1820
    :cond_1a
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1821
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v1, v4, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1822
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1843
    :cond_29
    :goto_29
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 1844
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->invalidateKeyboardImage()V

    goto :goto_7

    .line 1824
    :cond_30
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_4b

    .line 1825
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mBKMultiTappingCharSpan:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 1826
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mFGMultiTappingCharSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 1827
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v1, v4, v3}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1830
    :cond_4b
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isEmptyCandidateList()Z

    move-result v4

    if-nez v4, :cond_29

    .line 1831
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1832
    .local v0, "candidate":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1833
    .local v2, "lastSymbol":C
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v4, v2}, Lcom/nuance/swype/util/CharacterUtilities;->isWordAcceptingSymbol(I)Z

    move-result v4

    if-nez v4, :cond_77

    .line 1834
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v3, :cond_8b

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v4, v2}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 1836
    :cond_77
    :goto_77
    if-eqz v3, :cond_29

    .line 1837
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->MULTITAP_TIMEOUT:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-direct {p0, v3, v4, v5}, Lcom/nuance/swype/input/AlphaInputView;->selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/CharSequence;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 1838
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    goto :goto_29

    .line 1834
    :cond_8b
    const/4 v3, 0x0

    goto :goto_77
.end method

.method public onPressHoldCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .registers 9
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1456
    if-eqz p1, :cond_b2

    .line 1457
    sget-object v2, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "onPressHoldCandidate()"

    aput-object v4, v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " draw called ::  left:: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->getLeft()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", top:: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1458
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->getTop()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Width :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , height :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 1457
    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1459
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/emoji/EmojiLoader;->isEmoji(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 1460
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isShowingSkinTonePopup()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 1461
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->dismissEmojiPopup()V

    .line 1464
    :cond_67
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->getEmojiUnicode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->isSupportSkinTone(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 1465
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 1467
    if-eqz v2, :cond_88

    if-eqz p2, :cond_88

    .line 1468
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v3

    .line 1469
    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v4

    iget v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    .line 1468
    invoke-virtual {v2, v3, v4, p1, v5}, Lcom/nuance/swype/input/AutospaceHandler;->onSelectCandidate(Lcom/nuance/input/swypecorelib/Candidates$Source;Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/WordCandidate;I)V

    .line 1472
    :cond_88
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->showSkinTonePopup(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 1473
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isShowingSkinTonePopup()Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 1474
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v2, :cond_9a

    .line 1475
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/CandidatesListView;->setHorizontalScroll(Z)V

    .line 1477
    :cond_9a
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v2, :cond_a3

    .line 1478
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/CandidatesListView;->setHorizontalScroll(Z)V

    .line 1489
    :cond_a3
    :goto_a3
    return v0

    .line 1484
    :cond_a4
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->isRemovable()Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 1485
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/AlphaInputView;->showRemoveUdbWordDialog(Ljava/lang/String;)V

    goto :goto_a3

    :cond_b2
    move v0, v1

    .line 1489
    goto :goto_a3
.end method

.method public onPressMoveCandidate(FFF)V
    .registers 9
    .param p1, "xPos"    # F
    .param p2, "yPos"    # F
    .param p3, "xOffset"    # F

    .prologue
    .line 1512
    sget-object v0, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

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

    .line 1513
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->touchMoveHandle(FFF)Z

    .line 1515
    return-void
.end method

.method public onPressReleaseCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .registers 8
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1495
    sget-object v2, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "onPressReleaseCandidate()"

    aput-object v4, v3, v1

    const-string/jumbo v4, " called ::"

    aput-object v4, v3, v0

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1496
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isShowingSkinTonePopup()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1497
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->setCurrentSkinTone()V

    .line 1498
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->dismissEmojiPopup()V

    .line 1499
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 1500
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->showNextWordPrediction()V

    .line 1508
    :goto_26
    return v0

    .line 1503
    :cond_27
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->removeUdbWordDialog:Lcom/nuance/swype/input/RemoveUdbWordDialog;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->removeUdbWordDialog:Lcom/nuance/swype/input/RemoveUdbWordDialog;

    invoke-virtual {v0}, Lcom/nuance/swype/input/RemoveUdbWordDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_35

    move v0, v1

    .line 1504
    goto :goto_26

    .line 1506
    :cond_35
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/AlphaInputView;->onSelectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z

    move v0, v1

    .line 1508
    goto :goto_26
.end method

.method public onSelectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .registers 14
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x1

    .line 1530
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->onSelectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z

    .line 1531
    sget-object v0, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v3, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onSelectCandidate(): "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1532
    iput-object p2, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1533
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v9

    .line 1534
    .local v9, "source":Lcom/nuance/input/swypecorelib/Candidates$Source;
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1535
    if-eqz v0, :cond_c5

    .line 1536
    if-eqz p2, :cond_3d

    .line 1537
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    .line 1538
    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    iget v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    .line 1537
    invoke-virtual {v0, v1, v2, p1, v4}, Lcom/nuance/swype/input/AutospaceHandler;->onSelectCandidate(Lcom/nuance/input/swypecorelib/Candidates$Source;Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/WordCandidate;I)V

    .line 1540
    :cond_3d
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->composingWordCandidates()Z

    move-result v7

    .line 1541
    .local v7, "composingWordList":Z
    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    if-eqz v0, :cond_d2

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    .line 1542
    invoke-virtual {v0}, Lcom/nuance/swype/input/BackspaceRevertHandler;->isOverrideActive()Z

    move-result v0

    if-eqz v0, :cond_d2

    move v8, v3

    .line 1543
    .local v8, "isSelectRevertedWord":Z
    :goto_58
    sget-object v0, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v3, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onSelectCandidate(): is revert word: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1544
    if-eqz v8, :cond_78

    .line 1545
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->handleOverrideCacheAddSelectedCandidate(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 1547
    :cond_78
    const/4 v2, 0x0

    sget-object v5, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->SELECTION_WCL:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/AlphaInputView;->selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/CharSequence;ZZLcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;Z)V

    .line 1549
    if-eqz v7, :cond_8d

    .line 1550
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 1551
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->triggerAutoDefaultCandidateAcceptTip()V

    .line 1561
    :cond_8d
    :goto_8d
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v0

    if-eqz v0, :cond_a3

    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1562
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    if-eq v0, v1, :cond_c5

    .line 1563
    :cond_a3
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 1564
    sget-object v0, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onSelectCandidate...shiftState: "

    aput-object v2, v1, v10

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1565
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 1566
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->showNextWordPrediction()V

    .line 1569
    .end local v7    # "composingWordList":Z
    .end local v8    # "isSelectRevertedWord":Z
    :cond_c5
    if-eqz p1, :cond_ca

    .line 1570
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->addEmojiInRecentCat(Lcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 1572
    :cond_ca
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v9, v0, :cond_e6

    const/4 v0, 0x6

    :goto_cf
    iput v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    .line 1574
    return v3

    .restart local v7    # "composingWordList":Z
    :cond_d2
    move v8, v10

    .line 1542
    goto :goto_58

    .line 1552
    .restart local v8    # "isSelectRevertedWord":Z
    :cond_d4
    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_8d

    .line 1553
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->containsDoubleLetters()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 1554
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->triggerDoubleLettersGestureTip()V

    goto :goto_8d

    .line 1572
    .end local v7    # "composingWordList":Z
    .end local v8    # "isSelectRevertedWord":Z
    :cond_e6
    const/4 v0, 0x4

    goto :goto_cf
.end method

.method public onSingleTap(ZZ)Z
    .registers 4
    .param p1, "shouldResyncCache"    # Z
    .param p2, "orientationChanged"    # Z

    .prologue
    .line 2484
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 2485
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->onSingleTap(ZZ)Z

    move-result v0

    return v0
.end method

.method public onSpeechViewDismissed()V
    .registers 2

    .prologue
    .line 4001
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->onSpeechViewDismissed()V

    .line 4002
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isEmptyCandidateList()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4003
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->showNextWordPrediction()V

    .line 4005
    :cond_c
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .registers 20
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J

    .prologue
    .line 872
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v8

    .line 873
    .local v8, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v8, :cond_e

    if-eqz p1, :cond_e

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_f

    .line 1003
    :cond_e
    :goto_e
    return-void

    .line 878
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/swype/input/AutospaceHandler;->onText(Ljava/lang/CharSequence;IZ)Z

    move-result v13

    .line 880
    .local v13, "shouldAutoSpace":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v1, :cond_2a

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-nez v1, :cond_5c

    .line 881
    :cond_2a
    if-eqz v13, :cond_33

    .line 882
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->sendSpace()V

    .line 884
    :cond_33
    invoke-virtual {v8}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 886
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->isShifted()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 887
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v8, v1, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 892
    :goto_48
    invoke-virtual {v8}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    .line 894
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 895
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    goto :goto_e

    .line 889
    :cond_55
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_48

    .line 900
    :cond_5c
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->processDeferredSuggestionUpdates()Z

    .line 905
    invoke-virtual/range {p0 .. p1}, Lcom/nuance/swype/input/AlphaInputView;->isLikelyDomain(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 910
    .local v9, "isDomain":Z
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->isShifted()Z

    move-result v10

    .line 912
    .local v10, "isShiftedText":Z
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_ba

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    const/4 v2, 0x0

    .line 913
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/CharacterUtilities;->isWordAcceptingSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_ba

    const/4 v15, 0x1

    .line 914
    .local v15, "wordAcceptingSymbol":Z
    :goto_80
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_bc

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    const/4 v2, 0x0

    .line 915
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_bc

    const/4 v11, 0x1

    .line 917
    .local v11, "punctuationOrSymbol":Z
    :goto_99
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->composingWordCandidates()Z

    move-result v1

    if-nez v1, :cond_a1

    if-nez v11, :cond_a3

    :cond_a1
    if-eqz v15, :cond_be

    .line 918
    :cond_a3
    if-eqz v13, :cond_ac

    .line 919
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->sendSpace()V

    .line 921
    :cond_ac
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->handlePunctOrSymbol(I)V

    goto/16 :goto_e

    .line 913
    .end local v11    # "punctuationOrSymbol":Z
    .end local v15    # "wordAcceptingSymbol":Z
    :cond_ba
    const/4 v15, 0x0

    goto :goto_80

    .line 915
    .restart local v15    # "wordAcceptingSymbol":Z
    :cond_bc
    const/4 v11, 0x0

    goto :goto_99

    .line 925
    .restart local v11    # "punctuationOrSymbol":Z
    :cond_be
    move-object/from16 v14, p1

    .line 926
    .local v14, "symbols":Ljava/lang/CharSequence;
    if-eqz v10, :cond_cc

    if-eqz v9, :cond_cc

    .line 927
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    .line 930
    :cond_cc
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_df

    if-nez v15, :cond_df

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->getEmojiInputViewController()Lcom/nuance/swype/input/emoji/EmojiInputController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/EmojiInputController;->isActive()Z

    move-result v1

    if-eqz v1, :cond_174

    .line 931
    :cond_df
    invoke-virtual {v8}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 933
    if-eqz v13, :cond_f4

    .line 935
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 937
    :cond_f4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v8, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getSelectedTextInEditor(Lcom/nuance/swype/input/InputFieldInfo;)Ljava/lang/String;

    move-result-object v12

    .line 938
    .local v12, "selectedText":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->composingWordCandidates()Z

    move-result v1

    if-eqz v1, :cond_16c

    if-eqz v12, :cond_10a

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_16c

    .line 939
    :cond_10a
    sget-object v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 941
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-object v6, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    if-nez v9, :cond_16a

    const/4 v7, 0x1

    :goto_121
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/nuance/swype/input/AlphaInputView;->selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/CharSequence;ZZLcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;Z)V

    .line 942
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_130

    .line 943
    const/4 v1, 0x1

    invoke-virtual {v8, v14, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 952
    :cond_130
    :goto_130
    if-eqz v9, :cond_143

    .line 955
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->promptForAddingOOVCandidate:Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->clearOOVWords()V

    .line 956
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->learnNewWords()V

    .line 957
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->promptForAddingOOVCandidate:Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->promptToAddIfAny()V

    .line 960
    :cond_143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    .line 961
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 962
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearAllKeys()Z

    .line 963
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->showNextWordPrediction()V

    .line 965
    invoke-virtual {v8}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    .line 999
    .end local v12    # "selectedText":Ljava/lang/String;
    :goto_15a
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 1000
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 1002
    const/4 v1, 0x5

    move-object/from16 v0, p0

    iput v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    goto/16 :goto_e

    .line 941
    .restart local v12    # "selectedText":Ljava/lang/String;
    :cond_16a
    const/4 v7, 0x0

    goto :goto_121

    .line 947
    :cond_16c
    const/4 v1, 0x1

    invoke-virtual {v8, v14, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 948
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    goto :goto_130

    .line 966
    .end local v12    # "selectedText":Ljava/lang/String;
    :cond_174
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v14, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/nuance/swype/util/CharacterUtilities;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_1ad

    .line 967
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->composingWordCandidates()Z

    move-result v1

    if-nez v1, :cond_1ad

    .line 968
    if-eqz v13, :cond_193

    .line 969
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->sendSpace()V

    .line 972
    :cond_193
    invoke-virtual {v8}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 973
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/nuance/swype/input/AlphaInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 974
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 975
    const/4 v1, 0x1

    invoke-virtual {v8, v14, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 976
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    .line 977
    invoke-virtual {v8}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    goto :goto_15a

    .line 979
    :cond_1ad
    if-eqz v13, :cond_1b6

    .line 980
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->sendSpace()V

    .line 983
    :cond_1b6
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->composingWordCandidates()Z

    move-result v1

    if-nez v1, :cond_1c4

    .line 984
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/nuance/swype/input/AlphaInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 985
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 989
    :cond_1c4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 990
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v4

    .line 989
    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->addExplicit([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 993
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v8}, Lcom/nuance/swype/input/AlphaInputView;->displayExactTypeAsInline(Ljava/lang/String;Landroid/view/inputmethod/InputConnection;)V

    .line 996
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_15a
.end method

.method protected onUpdateSpeechText(Ljava/lang/CharSequence;ZZ)V
    .registers 14
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "isStreaming"    # Z
    .param p3, "isFinal"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 2783
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->onUpdateSpeechText(Ljava/lang/CharSequence;ZZ)V

    .line 2785
    sget-object v0, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "onUpdateSpeechText: isFinal = "

    aput-object v3, v1, v4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2788
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, v2, v2, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setWordQuarantineLevel(III)V

    .line 2791
    sget-object v0, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "onUpdateSpeechText: dlm update, buffer len = "

    aput-object v3, v1, v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2793
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmImplicitScanBuf(Ljava/lang/String;ZZZLjava/lang/String;)Z

    .line 2798
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmCount()I

    move-result v8

    .line 2800
    .local v8, "udbCurrentCount":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->getCustomWordsSynchronizationServerWordsCount()I

    move-result v9

    .line 2802
    .local v9, "udbServerCount":I
    if-eq v8, v9, :cond_74

    .line 2803
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->getCurrentDictation()Lcom/nuance/speech/Dictation;

    move-result-object v7

    .line 2804
    .local v7, "dictation":Lcom/nuance/speech/Dictation;
    if-eqz v7, :cond_74

    .line 2805
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-static {v0, v1, v2}, Lcom/nuance/swype/input/udb/UserDictionaryIterator;->createAlphaIterator(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/SpeechWrapper;)Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/nuance/speech/Dictation;->getCustomWordsSync(Lcom/nuance/swype/input/udb/UserDictionaryIterator;)Lcom/nuance/speech/CustomWordSynchronizer;

    move-result-object v6

    .line 2806
    .local v6, "cws":Lcom/nuance/speech/CustomWordSynchronizer;
    if-eqz v6, :cond_74

    .line 2807
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/nuance/speech/CustomWordSynchronizer;->resyncAllUserWords(Lcom/nuance/swype/input/InputFieldInfo;)V

    .line 2811
    .end local v6    # "cws":Lcom/nuance/speech/CustomWordSynchronizer;
    .end local v7    # "dictation":Lcom/nuance/speech/Dictation;
    :cond_74
    return-void
.end method

.method protected preUpdateSpeechText()V
    .registers 5

    .prologue
    .line 4009
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->isAddSpaceRequired()Z

    move-result v1

    .line 4010
    .local v1, "useSpace":Z
    sget-object v2, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->selectDefaultSuggestion(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 4018
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isExploreByTouchOn()Z

    move-result v2

    if-eqz v2, :cond_1e

    if-eqz v1, :cond_1e

    .line 4019
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 4020
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1e

    .line 4021
    const-string/jumbo v2, " "

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 4024
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1e
    return-void
.end method

.method public reconstructWord()V
    .registers 4

    .prologue
    .line 4058
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearAllKeys()V

    .line 4060
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isUsingVietnameseTelexInputMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4061
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    sget-object v1, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->DEFAULT:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setVietInputMode(Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;)Z

    .line 4064
    :cond_10
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mReconstructWord:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->reconstructWord([CZ)Z

    .line 4066
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isUsingVietnameseTelexInputMode()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 4067
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    sget-object v1, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->TELEX:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setVietInputMode(Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;)Z

    .line 4069
    :cond_29
    return-void
.end method

.method public refreshBTAutoCorrection()V
    .registers 4

    .prologue
    .line 2921
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->refreshBTAutoCorrection()V

    .line 2922
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    const/16 v1, 0x63

    iget-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->autoCorrectionEnabled:Z

    invoke-virtual {v0, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setAttribute(IZ)V

    .line 2923
    return-void
.end method

.method protected removeAllMessages()V
    .registers 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 213
    return-void
.end method

.method public requestAutospaceOverrideTo(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4128
    if-eqz p1, :cond_23

    .line 4129
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->resetAutoSpace()V

    .line 4130
    iget-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAutoSpace:Z

    if-nez v2, :cond_1b

    .line 4131
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->isAutoSpaceSupported()Z

    move-result v3

    if-nez v3, :cond_19

    :goto_15
    invoke-virtual {v2, v1, v0}, Lcom/nuance/swype/input/AutospaceHandler;->setEnabled(ZZ)V

    .line 4138
    :goto_18
    return-void

    :cond_19
    move v0, v1

    .line 4131
    goto :goto_15

    .line 4133
    :cond_1b
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AutospaceHandler;->onUpdateEditorInfo(Lcom/nuance/swype/input/InputFieldInfo;)V

    goto :goto_18

    .line 4136
    :cond_23
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->isAutoSpaceSupported()Z

    move-result v3

    if-nez v3, :cond_31

    :goto_2d
    invoke-virtual {v2, v1, v0}, Lcom/nuance/swype/input/AutospaceHandler;->setEnabled(ZZ)V

    goto :goto_18

    :cond_31
    move v0, v1

    goto :goto_2d
.end method

.method public selectDefaultSuggestion(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V
    .registers 3
    .param p1, "selectionType"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .prologue
    .line 2747
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/nuance/swype/input/AlphaInputView;->selectDefaultSuggestion(ZLcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 2748
    return-void
.end method

.method protected selectWord(IZ)V
    .registers 5
    .param p1, "wordIndex"    # I
    .param p2, "userExplicitPick"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1679
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, v1, v1, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setWordQuarantineLevel(III)V

    .line 1683
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->wordSelected(IZ)V

    .line 1684
    return-void
.end method

.method protected sendBackspace(I)V
    .registers 2
    .param p1, "repeatedCount"    # I

    .prologue
    .line 2705
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->sendBackspace(I)V

    .line 2706
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 2707
    return-void
.end method

.method protected sendKeyChar(C)V
    .registers 2
    .param p1, "character"    # C

    .prologue
    .line 2711
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->sendKeyChar(C)V

    .line 2712
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 2713
    return-void
.end method

.method protected setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V
    .registers 3
    .param p1, "type"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .prologue
    .line 2776
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    instance-of v0, v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    if-eqz v0, :cond_11

    .line 2777
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    check-cast v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 2779
    :cond_11
    return-void
.end method

.method public setHardKeyboardSystemSettings()V
    .registers 12

    .prologue
    const/4 v10, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3944
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v7}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/IMEApplication;->getSystemState()Lcom/nuance/swype/input/SystemState;

    move-result-object v6

    .line 3945
    .local v6, "sysState":Lcom/nuance/swype/input/SystemState;
    invoke-virtual {v6}, Lcom/nuance/swype/input/SystemState;->autoCapsValue()I

    move-result v3

    .line 3946
    .local v3, "capsValue":I
    invoke-virtual {v6}, Lcom/nuance/swype/input/SystemState;->autoPunctuateValue()I

    move-result v4

    .line 3947
    .local v4, "punctuateValue":I
    invoke-virtual {v6}, Lcom/nuance/swype/input/SystemState;->autoReplaceValue()I

    move-result v5

    .line 3948
    .local v5, "replaceValue":I
    if-lez v3, :cond_4e

    move v0, v8

    .line 3949
    .local v0, "autoCaps":Z
    :goto_1c
    if-lez v4, :cond_50

    move v1, v8

    .line 3950
    .local v1, "autoPunctuate":Z
    :goto_1f
    if-lez v5, :cond_52

    move v2, v8

    .line 3951
    .local v2, "autoReplace":Z
    :goto_22
    if-eq v3, v10, :cond_31

    .line 3952
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods$Language;->isCapitalizationSupported()Z

    move-result v7

    if-eqz v7, :cond_54

    if-eqz v0, :cond_54

    move v7, v8

    :goto_2f
    iput-boolean v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mAutoCap:Z

    .line 3954
    :cond_31
    if-eq v5, v10, :cond_49

    .line 3955
    iput-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->autoCorrectionEnabled:Z

    .line 3956
    iget-boolean v7, p0, Lcom/nuance/swype/input/AlphaInputView;->autoCorrectionEnabled:Z

    if-nez v7, :cond_3d

    iget v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mWordCompletionPoint:I

    if-eqz v7, :cond_3e

    :cond_3d
    move v9, v8

    :cond_3e
    iput-boolean v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    .line 3958
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    const/16 v8, 0x63

    iget-boolean v9, p0, Lcom/nuance/swype/input/AlphaInputView;->autoCorrectionEnabled:Z

    invoke-virtual {v7, v8, v9}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setAttribute(IZ)V

    .line 3960
    :cond_49
    if-eq v4, v10, :cond_4d

    .line 3961
    iput-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAutoPunctuationOn:Z

    .line 3963
    :cond_4d
    return-void

    .end local v0    # "autoCaps":Z
    .end local v1    # "autoPunctuate":Z
    .end local v2    # "autoReplace":Z
    :cond_4e
    move v0, v9

    .line 3948
    goto :goto_1c

    .restart local v0    # "autoCaps":Z
    :cond_50
    move v1, v9

    .line 3949
    goto :goto_1f

    .restart local v1    # "autoPunctuate":Z
    :cond_52
    move v2, v9

    .line 3950
    goto :goto_22

    .restart local v2    # "autoReplace":Z
    :cond_54
    move v7, v9

    .line 3952
    goto :goto_2f
.end method

.method public setHindiTransliterationMode(Lcom/nuance/swype/input/WordListViewContainer;)V
    .registers 5
    .param p1, "wcl"    # Lcom/nuance/swype/input/WordListViewContainer;

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 371
    .local v0, "ime":Lcom/nuance/swype/input/IME;
    if-nez v0, :cond_16

    .line 372
    sget-object v1, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "setHindiTransliterationMode : ime reference is null"

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 374
    :cond_16
    if-eqz v0, :cond_2c

    iget-object v1, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isHindiLanguage()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, v0, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isBilingualLanguage()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 375
    invoke-virtual {p1, v0}, Lcom/nuance/swype/input/WordListViewContainer;->showTransliterationToggleButton(Lcom/nuance/swype/input/IME;)V

    .line 380
    :goto_2b
    return-void

    .line 378
    :cond_2c
    invoke-virtual {p1}, Lcom/nuance/swype/input/WordListViewContainer;->hideTransliterationToggleButton()V

    goto :goto_2b
.end method

.method protected setInlineWord(Ljava/lang/String;)V
    .registers 3
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 4050
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 4051
    if-eqz p1, :cond_c

    .line 4052
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4054
    :cond_c
    return-void
.end method

.method public setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V
    .registers 6
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2585
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 2586
    if-eqz p1, :cond_67

    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mTraceInputSuggestionOn:Z

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 2587
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isNumMode()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 2588
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->isForcedSwypeable()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 2589
    :cond_2d
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v0, v3, :cond_67

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 2590
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v3, "hindiTransliteration"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    move v0, v1

    :goto_4b
    iput-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->isTraceEnabledOnKeyboard:Z

    .line 2592
    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->isTraceEnabledOnKeyboard:Z

    if-eqz v0, :cond_69

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isExploreByTouchOn()Z

    move-result v0

    if-nez v0, :cond_69

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isValidBuild()Z

    move-result v0

    if-eqz v0, :cond_69

    :goto_5d
    iput-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->isTraceEnabledOnKeyboard:Z

    .line 2594
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->isTraceEnabledOnKeyboard:Z

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->enableTrace(Z)V

    .line 2595
    return-void

    :cond_67
    move v0, v2

    .line 2590
    goto :goto_4b

    :cond_69
    move v1, v2

    .line 2592
    goto :goto_5d
.end method

.method public setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
    .registers 5
    .param p1, "keyboardLayer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    .line 2613
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    if-ne v0, p1, :cond_7

    .line 2632
    :goto_6
    return-void

    .line 2617
    :cond_7
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 2619
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->dismissPopupKeyboard()V

    .line 2621
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 2623
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isExploreByTouchOn()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2624
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->getInstance()Lcom/nuance/swype/input/accessibility/AccessibilityNotification;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->speakKeyboardLayer(Landroid/content/Context;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 2627
    :cond_2b
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne p1, v0, :cond_33

    .line 2628
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    goto :goto_6

    .line 2630
    :cond_33
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    goto :goto_6
.end method

.method protected setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)V
    .registers 6
    .param p1, "coreInput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;

    .prologue
    .line 4157
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isUsingVietnameseTelexInputMode()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 4158
    sget-object v1, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->TELEX:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    .line 4169
    .local v1, "xt9InputMode":Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;
    :goto_8
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2, p1, v1}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v0

    .line 4170
    .local v0, "status":Lcom/nuance/input/swypecorelib/XT9Status;
    sget-object v2, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_DB_CORE_INCOMP:Lcom/nuance/input/swypecorelib/XT9Status;

    if-eq v0, v2, :cond_16

    sget-object v2, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_LDB_VERSION_ERROR:Lcom/nuance/input/swypecorelib/XT9Status;

    if-ne v0, v2, :cond_44

    .line 4172
    :cond_16
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v3, v3, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/nuance/swype/input/DatabaseConfig;->removeIncompatibleDBFiles(Landroid/content/Context;Ljava/lang/String;)V

    .line 4174
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2, p1, v1}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v0

    .line 4175
    sget-object v2, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_DB_CORE_INCOMP:Lcom/nuance/input/swypecorelib/XT9Status;

    if-eq v0, v2, :cond_2f

    sget-object v2, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_LDB_VERSION_ERROR:Lcom/nuance/input/swypecorelib/XT9Status;

    if-ne v0, v2, :cond_44

    .line 4177
    :cond_2f
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->isLDBCompatible:Z

    .line 4178
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->promptUserToUpdateLanguage()V

    .line 4180
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v2, :cond_44

    .line 4181
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v2

    .line 4182
    const/16 v3, 0x109

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/InputMethods;->setCurrentLanguageById(I)V

    .line 4186
    :cond_44
    return-void

    .line 4159
    .end local v0    # "status":Lcom/nuance/input/swypecorelib/XT9Status;
    .end local v1    # "xt9InputMode":Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;
    :cond_45
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isUsingVietnameseNationalInputMode()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 4160
    sget-object v1, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->VNI:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    .restart local v1    # "xt9InputMode":Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;
    goto :goto_8

    .line 4161
    .end local v1    # "xt9InputMode":Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;
    :cond_4e
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->isHindiLanguage()Z

    move-result v2

    if-eqz v2, :cond_6a

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 4162
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v3, "hindiTransliteration"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 4163
    sget-object v1, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->TRANSLITERATION:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    .restart local v1    # "xt9InputMode":Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;
    goto :goto_8

    .line 4166
    .end local v1    # "xt9InputMode":Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;
    :cond_6a
    sget-object v1, Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;->DEFAULT:Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    .restart local v1    # "xt9InputMode":Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;
    goto :goto_8
.end method

.method protected setReconstructWord(I)V
    .registers 4
    .param p1, "primaryCode"    # I

    .prologue
    .line 4041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mReconstructWord:Ljava/lang/String;

    .line 4042
    return-void
.end method

.method protected setReconstructWord(Ljava/lang/String;)V
    .registers 2
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 4045
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaInputView;->mReconstructWord:Ljava/lang/String;

    .line 4046
    return-void
.end method

.method public setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .registers 7
    .param p1, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2490
    sget-object v0, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "setShiftState...shiftState: "

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2491
    iput-boolean v3, p0, Lcom/nuance/swype/input/AlphaInputView;->isManualShift:Z

    .line 2492
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 2493
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 2494
    return v4
.end method

.method public setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V
    .registers 4
    .param p1, "listener"    # Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p3, "format"    # Lcom/nuance/swype/input/CandidatesListView$Format;

    .prologue
    .line 2728
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/AlphaInputView;->setSuggestionsHelper(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 2729
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V

    .line 2730
    return-void
.end method

.method public showHardKeyPopupKeyboard(I)V
    .registers 6
    .param p1, "keyCode"    # I

    .prologue
    .line 3983
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->showHardKeyPopupKeyboard(I)V

    .line 3984
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 3985
    .local v1, "len":I
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_1f

    if-lez v1, :cond_1f

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isComposingText()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 3986
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 3987
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v2, :cond_1f

    if-nez v0, :cond_20

    .line 3997
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1f
    :goto_1f
    return-void

    .line 3991
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_20
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isComposingText()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 3992
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/nuance/swype/input/AlphaInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;Z)I

    goto :goto_1f

    .line 3994
    :cond_2d
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    goto :goto_1f
.end method

.method public showNextWordPrediction()V
    .registers 4

    .prologue
    .line 4027
    iget-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mNextWordPredictionOn:Z

    if-nez v1, :cond_a

    .line 4029
    sget-object v1, Lcom/nuance/swype/input/CandidatesListView$Format;->DEFAULT:Lcom/nuance/swype/input/CandidatesListView$Format;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/AlphaInputView;->updateSuggestionsEmoji(Lcom/nuance/swype/input/CandidatesListView$Format;)V

    .line 4037
    :cond_9
    :goto_9
    return-void

    .line 4032
    :cond_a
    invoke-static {}, Lcom/nuance/swype/input/IME;->getLastSavedActiveWord()Ljava/lang/String;

    move-result-object v0

    .line 4033
    .local v0, "lastWord":Ljava/lang/String;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_9

    .line 4036
    :cond_16
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/AlphaInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;Z)I

    goto :goto_9
.end method

.method public startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V
    .registers 14
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p2, "restarting"    # Z

    .prologue
    const/16 v8, 0x10

    const/16 v7, 0xf

    const/16 v10, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 408
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-nez v2, :cond_d

    .line 508
    :cond_c
    :goto_c
    return-void

    .line 412
    :cond_d
    if-eqz p2, :cond_157

    .line 413
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearPendingSuggestionsUpdate()V

    .line 419
    :cond_12
    :goto_12
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v2, :cond_28

    .line 420
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v5, v5, Lcom/nuance/swype/input/InputMethods$Language;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/nuance/swype/input/CandidatesListView;->updateRtlStatus(Ljava/lang/String;)V

    .line 421
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/CandidatesListView;->updateCandidatesSize()V

    .line 424
    :cond_28
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v2, :cond_3e

    .line 425
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v5, v5, Lcom/nuance/swype/input/InputMethods$Language;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/nuance/swype/input/CandidatesListView;->updateRtlStatus(Ljava/lang/String;)V

    .line 426
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/CandidatesListView;->updateCandidatesSize()V

    .line 430
    :cond_3e
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V

    .line 433
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->flingGestureListener:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;

    invoke-virtual {v2, v5}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->registerFlingGestureHandler(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;)V

    .line 434
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->touchKeyActionHandler:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;

    invoke-virtual {v2, v5}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->resisterTouchKeyHandler(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;)V

    .line 435
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    invoke-virtual {v2, p0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->wrapTouchEvent(Landroid/view/View;)V

    .line 436
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    invoke-virtual {v2, p0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->wrapHoverEvent(Landroid/view/View;)V

    .line 437
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-static {}, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->getDispatcherInstance()Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->setHandler(Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;)Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setInputContextRequestListener(Lcom/nuance/input/swypecorelib/InputContextRequest;)V

    .line 439
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v2}, Lcom/nuance/swype/input/EditState;->startSession()V

    .line 441
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->dismissPopupKeyboard()V

    .line 442
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->flushCurrentActiveWord()V

    .line 443
    if-eqz p2, :cond_8a

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldRemoveUpdateWCLMessage()Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 444
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    if-eqz v2, :cond_8a

    .line 445
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 448
    :cond_8a
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    .line 450
    .local v1, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    .line 451
    .local v0, "currentLayer":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    if-eqz p2, :cond_164

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v0, v2, :cond_164

    move v2, v3

    :goto_9d
    iput-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->isKeepingKeyboard:Z

    .line 452
    iget-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->isKeepingKeyboard:Z

    if-eqz v2, :cond_167

    .line 456
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2, v0, p1, v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 465
    :cond_a8
    :goto_a8
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTextClass()Z

    move-result v2

    if-nez v2, :cond_b4

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v2

    if-eqz v2, :cond_bd

    :cond_b4
    iget-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->isOrientationChangedOnce:Z

    if-nez v2, :cond_bd

    .line 466
    iget-object v2, p1, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 469
    :cond_bd
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v2, :cond_d1

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->isChangingOrientation()Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 470
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->isChangingOrientation()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->isOrientationChangedOnce:Z

    .line 472
    :cond_d1
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 473
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    iget-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->isKeepingKeyboard:Z

    if-eqz v2, :cond_181

    move v2, v3

    :goto_df
    invoke-virtual {v6, v7, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v6, 0x5

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 475
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 476
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    if-eqz p2, :cond_184

    move v2, v3

    :goto_f4
    iget-boolean v5, p0, Lcom/nuance/swype/input/AlphaInputView;->isOrientationChangedOnce:Z

    if-eqz v5, :cond_187

    move v5, v3

    :goto_f9
    invoke-virtual {v7, v8, v2, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v8, 0x5

    invoke-virtual {v6, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 479
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v2, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 480
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v2

    if-nez v2, :cond_11a

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v2

    if-nez v2, :cond_11a

    .line 481
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const-wide/16 v6, 0xa

    invoke-virtual {v2, v10, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 484
    :cond_11a
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v2

    if-eqz v2, :cond_123

    .line 485
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->triggerPasswordTip()V

    .line 489
    :cond_123
    iget-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAutoSpace:Z

    if-nez v2, :cond_18c

    .line 490
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isAutoSpaceSupported()Z

    move-result v5

    if-nez v5, :cond_18a

    :goto_131
    invoke-virtual {v2, v4, v3}, Lcom/nuance/swype/input/AutospaceHandler;->setEnabled(ZZ)V

    .line 496
    :goto_134
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->recaptureEditWord:Lcom/nuance/swype/input/RecaptureEditWord;

    invoke-virtual {v2}, Lcom/nuance/swype/input/RecaptureEditWord;->clear()V

    .line 497
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->postDelayResumeSpeech()V

    .line 498
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->oovWordHistory:Lcom/nuance/swype/input/OOVWordHistory;

    invoke-virtual {v2}, Lcom/nuance/swype/input/OOVWordHistory;->clear()V

    .line 500
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->showUserThemeWclMessage(Landroid/os/Handler;)V

    .line 501
    const-string/jumbo v2, "alphaInput"

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->showTrialExpireWclMessage(Ljava/lang/String;)V

    .line 505
    iget-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mEnableEmojiChoiceList:Z

    if-nez v2, :cond_c

    .line 506
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->emojiCandidatesHolder:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c

    .line 415
    .end local v0    # "currentLayer":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .end local v1    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_157
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->autoCorrectOverrideWords:Lcom/nuance/swype/util/LruWordCache;

    if-eqz v2, :cond_12

    .line 416
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->autoCorrectOverrideWords:Lcom/nuance/swype/util/LruWordCache;

    .line 5032
    iget-object v2, v2, Lcom/nuance/swype/util/LruWordCache;->words:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    goto/16 :goto_12

    .restart local v0    # "currentLayer":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .restart local v1    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_164
    move v2, v4

    .line 451
    goto/16 :goto_9d

    .line 459
    :cond_167
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2, p1, v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 460
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v2

    if-nez v2, :cond_a8

    iget-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->isOrientationChangedOnce:Z

    if-nez v2, :cond_a8

    .line 461
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    sget-object v5, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v2, v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    goto/16 :goto_a8

    :cond_181
    move v2, v4

    .line 473
    goto/16 :goto_df

    :cond_184
    move v2, v4

    .line 476
    goto/16 :goto_f4

    :cond_187
    move v5, v4

    goto/16 :goto_f9

    :cond_18a
    move v3, v4

    .line 490
    goto :goto_131

    .line 492
    :cond_18c
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isAutoSpaceSupported()Z

    move-result v5

    if-nez v5, :cond_197

    move v4, v3

    :cond_197
    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/AutospaceHandler;->setEnabled(ZZ)V

    .line 493
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/AutospaceHandler;->onUpdateEditorInfo(Lcom/nuance/swype/input/InputFieldInfo;)V

    goto :goto_134
.end method

.method public updateCandidatesView()V
    .registers 4

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getWordCandidateListContainer()Landroid/view/View;

    move-result-object v0

    .line 360
    .local v0, "cv":Landroid/view/View;
    if-eqz v0, :cond_16

    move-object v1, v0

    .line 361
    check-cast v1, Lcom/nuance/swype/input/WordListViewContainer;

    .line 5023
    .local v1, "wcl":Lcom/nuance/swype/input/WordListViewContainer;
    sget-boolean v2, Lcom/nuance/swype/util/AdsUtil;->sAdsSupported:Z

    .line 362
    if-eqz v2, :cond_10

    .line 363
    invoke-virtual {v1}, Lcom/nuance/swype/input/WordListViewContainer;->setupAdsView()V

    .line 365
    :cond_10
    invoke-virtual {v1}, Lcom/nuance/swype/input/WordListViewContainer;->updateView()V

    .line 366
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/AlphaInputView;->setHindiTransliterationMode(Lcom/nuance/swype/input/WordListViewContainer;)V

    .line 368
    .end local v1    # "wcl":Lcom/nuance/swype/input/WordListViewContainer;
    :cond_16
    return-void
.end method

.method public updateSelection(IIII[I)V
    .registers 20
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesIndices"    # [I

    .prologue
    .line 692
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;

    # invokes: Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->resetLastAutoSpaceInserted()V
    invoke-static {v2}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->access$600(Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;)V

    .line 693
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->inputContextRequestHandler:Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;

    # invokes: Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->cursorChangedLikelyCauseByUs()Z
    invoke-static {v2}, Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;->access$700(Lcom/nuance/swype/input/AlphaInputView$InputContextRequestHandler;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 725
    :goto_d
    return-void

    .line 697
    :cond_e
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/nuance/swype/input/AlphaInputView;->validateComposingText(IIII[ILjava/lang/CharSequence;)Z

    move-result v13

    .line 699
    .local v13, "validComposingText":Z
    if-nez v13, :cond_25

    .line 701
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

    invoke-virtual {v2}, Lcom/nuance/swype/input/AutospaceHandler;->resetSingleAutospaceFlags()V

    .line 703
    :cond_25
    invoke-super/range {p0 .. p5}, Lcom/nuance/swype/input/InputView;->updateSelection(IIII[I)V

    .line 705
    move/from16 v0, p2

    if-ne p1, v0, :cond_35

    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_35

    .line 707
    const/4 v2, 0x1

    iput v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    .line 709
    :cond_35
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->isShowingCandidatesFor(Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 710
    move/from16 v0, p2

    if-eq v0, p1, :cond_79

    const/4 v10, 0x1

    .line 711
    .local v10, "hadSel":Z
    :goto_42
    move/from16 v0, p4

    move/from16 v1, p3

    if-eq v0, v1, :cond_7b

    const/4 v11, 0x1

    .line 712
    .local v11, "hasSel":Z
    :goto_49
    if-eqz v10, :cond_7d

    if-nez v11, :cond_7d

    const/4 v12, 0x1

    .line 714
    .local v12, "lostSel":Z
    :goto_4e
    if-eqz v13, :cond_67

    if-eqz v12, :cond_67

    .line 715
    const/4 v2, 0x1

    aget v2, p5, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_67

    .line 718
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v9

    .line 719
    .local v9, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    invoke-virtual {p0, v9}, Lcom/nuance/swype/input/AlphaInputView;->getWordListFormat(Lcom/nuance/input/swypecorelib/Candidates;)Lcom/nuance/swype/input/CandidatesListView$Format;

    move-result-object v2

    invoke-virtual {p0, p0, v9, v2}, Lcom/nuance/swype/input/AlphaInputView;->setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V

    .line 723
    .end local v9    # "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    .end local v10    # "hadSel":Z
    .end local v11    # "hasSel":Z
    .end local v12    # "lostSel":Z
    :cond_67
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->updateSelectionCallback:Lcom/nuance/swype/input/AlphaInputView$UpdateSelectionCallback;

    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->composingWordCandidates()Z

    move-result v3

    .line 724
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v4

    .line 723
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-interface {v2, v3, v0, v1, v4}, Lcom/nuance/swype/input/AlphaInputView$UpdateSelectionCallback;->updateSelection(ZIILandroid/view/inputmethod/InputConnection;)V

    goto :goto_d

    .line 710
    :cond_79
    const/4 v10, 0x0

    goto :goto_42

    .line 711
    .restart local v10    # "hadSel":Z
    :cond_7b
    const/4 v11, 0x0

    goto :goto_49

    .line 712
    .restart local v11    # "hasSel":Z
    :cond_7d
    const/4 v12, 0x0

    goto :goto_4e
.end method

.method protected updateShiftKeyState()V
    .registers 2

    .prologue
    .line 2410
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 2411
    return-void
.end method

.method public updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;Z)I
    .registers 17
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .param p2, "noComposingText"    # Z

    .prologue
    .line 2149
    const/4 v5, 0x0

    .line 2150
    .local v5, "suggestionCount":I
    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne p1, v9, :cond_6c

    .line 2158
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-nez v9, :cond_b

    .line 2159
    const/4 v9, 0x0

    .line 2261
    :goto_a
    return v9

    .line 2162
    :cond_b
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 2163
    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    iput-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 2166
    iget-object v10, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v12, 0x9

    if-eqz p2, :cond_6a

    const/4 v9, 0x1

    :goto_1f
    const/4 v13, 0x0

    invoke-virtual {v11, v12, v9, v13, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v12, 0x46

    invoke-virtual {v10, v9, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2168
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 2169
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v9

    if-nez v9, :cond_68

    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    if-nez v9, :cond_68

    .line 2171
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v9}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v9

    if-eqz v9, :cond_68

    .line 2173
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v9}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v8

    .line 2174
    .local v8, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    const-string/jumbo v9, "NWP_HKB"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/nuance/swype/input/UserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_68

    .line 2175
    const-string/jumbo v9, "NWP_HKB"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/nuance/swype/input/UserPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 2176
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    .line 2178
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/nuance/swype/input/R$string;->hardkeyboard_input_next_word_prediction:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 2176
    invoke-static {v9, v10, v11}, Lcom/nuance/swype/input/InputMethodToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .end local v8    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_68
    :goto_68
    move v9, v5

    .line 2261
    goto :goto_a

    .line 2166
    :cond_6a
    const/4 v9, 0x0

    goto :goto_1f

    .line 2184
    :cond_6c
    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->CAPS_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne p1, v9, :cond_119

    .line 2185
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    .line 2186
    .local v1, "hasPendingUpdates":Z
    if-nez v1, :cond_101

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isEmptyCandidateList()Z

    move-result v9

    if-nez v9, :cond_101

    .line 2187
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2188
    .local v0, "candidate":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_68

    .line 2190
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 2191
    .local v2, "lower":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 2194
    .local v7, "upper":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 2195
    .local v4, "shiftedChars":[C
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-char v10, v4, v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    aput-char v10, v4, v9

    .line 2196
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    .line 2199
    .local v3, "shifted":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2201
    .local v6, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputMethods$Language;->isGermanLanguage()Z

    move-result v9

    if-eqz v9, :cond_e5

    .line 2202
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2203
    invoke-virtual {v3, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c6

    .line 2204
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2208
    :cond_c6
    invoke-virtual {v3, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d5

    invoke-virtual {v2, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d5

    .line 2209
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2225
    :cond_d5
    :goto_d5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_68

    .line 2226
    const/4 v9, 0x0

    invoke-virtual {p0, p0, v6, v9, p1}, Lcom/nuance/swype/input/AlphaInputView;->setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Ljava/util/List;ILcom/nuance/input/swypecorelib/Candidates$Source;)V

    .line 2227
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_68

    .line 2212
    :cond_e5
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2215
    invoke-virtual {v2, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_f1

    .line 2216
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2220
    :cond_f1
    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d5

    invoke-virtual {v7, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d5

    .line 2221
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d5

    .line 2230
    .end local v0    # "candidate":Ljava/lang/String;
    .end local v2    # "lower":Ljava/lang/String;
    .end local v3    # "shifted":Ljava/lang/String;
    .end local v4    # "shiftedChars":[C
    .end local v6    # "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v7    # "upper":Ljava/lang/String;
    :cond_101
    if-eqz v1, :cond_68

    .line 2232
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 2233
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v10, 0xd

    const-wide/16 v12, 0x46

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2234
    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->CAPS_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    iput-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    goto/16 :goto_68

    .line 2237
    .end local v1    # "hasPendingUpdates":Z
    :cond_119
    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne p1, v9, :cond_145

    .line 2238
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_12e

    .line 2239
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 2243
    :cond_12e
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v11, 0x9

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v12, 0x46

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2246
    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    iput-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    goto/16 :goto_68

    .line 2247
    :cond_145
    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq p1, v9, :cond_14d

    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne p1, v9, :cond_167

    .line 2248
    :cond_14d
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 2249
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v11, 0x9

    invoke-virtual {v10, v11, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v12, 0x46

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2251
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    goto/16 :goto_68

    .line 2255
    :cond_167
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 2256
    iget-object v10, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v12, 0x9

    if-eqz p2, :cond_185

    const/4 v9, 0x1

    :goto_177
    const/4 v13, 0x0

    invoke-virtual {v11, v12, v9, v13, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v12, 0x46

    invoke-virtual {v10, v9, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2258
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    goto/16 :goto_68

    .line 2256
    :cond_185
    const/4 v9, 0x0

    goto :goto_177
.end method

.method protected updateSuggestionsEmoji(Lcom/nuance/swype/input/CandidatesListView$Format;)V
    .registers 7
    .param p1, "format"    # Lcom/nuance/swype/input/CandidatesListView$Format;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 384
    iget-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mEnableEmojiChoiceList:Z

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v1, :cond_43

    .line 385
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getCandidatesEmoji()Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    .line 387
    .local v0, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v1

    if-lez v1, :cond_44

    .line 388
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->emojiCandidatesHolder:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 390
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v1, v2, :cond_32

    .line 391
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/Candidates;->setSource(Lcom/nuance/input/swypecorelib/Candidates$Source;)V

    .line 394
    :cond_32
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v1, v0, p1}, Lcom/nuance/swype/input/CandidatesListView;->setSuggestions(Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)Lcom/nuance/input/swypecorelib/Candidates;

    .line 396
    sget-object v1, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "updateSuggestionsEmoji: emoji to show, showing emojiCandidatesHolder"

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 403
    .end local v0    # "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    :cond_43
    :goto_43
    return-void

    .line 399
    .restart local v0    # "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    :cond_44
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->emojiCandidatesHolder:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 400
    sget-object v1, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "updateSuggestionsEmoji: no emoji to show, hiding emojiCandidatesHolder"

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_43
.end method

.method public wordReCaptureComplete()V
    .registers 2

    .prologue
    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->isOrientationChangedOnce:Z

    .line 638
    return-void
.end method
