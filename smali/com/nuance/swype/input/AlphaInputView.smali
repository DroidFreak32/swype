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
        Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;,
        Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;,
        Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;,
        Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWord;,
        Lcom/nuance/swype/input/AlphaInputView$CandidateFactory;,
        Lcom/nuance/swype/input/AlphaInputView$Slots;,
        Lcom/nuance/swype/input/AlphaInputView$UpdateSelectionCallback;
    }
.end annotation


# static fields
.field private static acAlphaInput:Lcom/nuance/dlm/ACAlphaInput;

.field protected static final traceLog:Lcom/nuance/swype/util/LogManager$Trace;


# instance fields
.field private final alphaInputViewCallback:Landroid/os/Handler$Callback;

.field private autoCorrectOverrideWords:Lcom/nuance/swype/util/LruWordCache;

.field private autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

.field private backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

.field private charUtils:Lcom/nuance/swype/util/CharacterUtilities;

.field private exactType:Ljava/lang/StringBuilder;

.field private isAddToDictionaryTipHighlighted:Z

.field private isHypenInput:Z

.field private isLongPressed:Z

.field private isManualShift:Z

.field private mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

.field final mAlphaInputViewHandler:Landroid/os/Handler;

.field private mBKMultiptappingCharSpan:Landroid/text/style/BackgroundColorSpan;

.field private mBKWordErrorSpan:Landroid/text/style/BackgroundColorSpan;

.field private mFGMultiptappingCharSpan:Landroid/text/style/ForegroundColorSpan;

.field private mFGWordErrorSpan:Landroid/text/style/ForegroundColorSpan;

.field protected mInlineWord:Landroid/text/SpannableStringBuilder;

.field private mPreTraceShiftedState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

.field private final mWordComposeSpan:Landroid/text/style/UnderlineSpan;

.field private promptForAddingOOVCandidate:Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;

.field private recaptureEditWord:Lcom/nuance/swype/input/RecaptureEditWord;

.field private shiftGestureMargin:I

.field private shiftGestureOffset:I

.field private shiftGestureOn:Z

.field private terminalPunct:Ljava/lang/String;

.field private textLenthBeforeCursor:I

.field private updateSelectionCallback:Lcom/nuance/swype/input/AlphaInputView$UpdateSelectionCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getTrace()Lcom/nuance/swype/util/LogManager$Trace;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/AlphaInputView;->traceLog:Lcom/nuance/swype/util/LogManager$Trace;

    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/swype/input/AlphaInputView;->acAlphaInput:Lcom/nuance/dlm/ACAlphaInput;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 2548
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    .line 92
    iput-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->isManualShift:Z

    .line 112
    new-instance v0, Lcom/nuance/swype/input/RecaptureEditWord;

    invoke-direct {v0}, Lcom/nuance/swype/input/RecaptureEditWord;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->recaptureEditWord:Lcom/nuance/swype/input/RecaptureEditWord;

    .line 113
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->recaptureEditWord:Lcom/nuance/swype/input/RecaptureEditWord;

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->updateSelectionCallback:Lcom/nuance/swype/input/AlphaInputView$UpdateSelectionCallback;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->exactType:Ljava/lang/StringBuilder;

    .line 120
    iput-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->isLongPressed:Z

    .line 126
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/AlphaInputView;->textLenthBeforeCursor:I

    .line 129
    new-instance v0, Lcom/nuance/swype/input/AlphaInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/AlphaInputView$1;-><init>(Lcom/nuance/swype/input/AlphaInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->alphaInputViewCallback:Landroid/os/Handler$Callback;

    .line 169
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->alphaInputViewCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    .line 989
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mPreTraceShiftedState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 2993
    new-instance v0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;-><init>(Lcom/nuance/swype/input/AlphaInputView;Lcom/nuance/swype/input/AlphaInputView$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->promptForAddingOOVCandidate:Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;

    .line 2549
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 2552
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    .line 92
    iput-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->isManualShift:Z

    .line 112
    new-instance v0, Lcom/nuance/swype/input/RecaptureEditWord;

    invoke-direct {v0}, Lcom/nuance/swype/input/RecaptureEditWord;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->recaptureEditWord:Lcom/nuance/swype/input/RecaptureEditWord;

    .line 113
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->recaptureEditWord:Lcom/nuance/swype/input/RecaptureEditWord;

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->updateSelectionCallback:Lcom/nuance/swype/input/AlphaInputView$UpdateSelectionCallback;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->exactType:Ljava/lang/StringBuilder;

    .line 120
    iput-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->isLongPressed:Z

    .line 126
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/AlphaInputView;->textLenthBeforeCursor:I

    .line 129
    new-instance v0, Lcom/nuance/swype/input/AlphaInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/AlphaInputView$1;-><init>(Lcom/nuance/swype/input/AlphaInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->alphaInputViewCallback:Landroid/os/Handler$Callback;

    .line 169
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->alphaInputViewCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    .line 989
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mPreTraceShiftedState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 2993
    new-instance v0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;-><init>(Lcom/nuance/swype/input/AlphaInputView;Lcom/nuance/swype/input/AlphaInputView$1;)V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->promptForAddingOOVCandidate:Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;

    .line 2553
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/AlphaInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaInputView;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->showStartOfWordCandidateList()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/AlphaInputView;Lcom/nuance/input/swypecorelib/Candidates$Source;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaInputView;
    .param p1, "x1"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .param p2, "x2"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/AlphaInputView;->displaySuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$200()Lcom/nuance/dlm/ACAlphaInput;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/nuance/swype/input/AlphaInputView;->acAlphaInput:Lcom/nuance/dlm/ACAlphaInput;

    return-object v0
.end method

.method static synthetic access$202(Lcom/nuance/dlm/ACAlphaInput;)Lcom/nuance/dlm/ACAlphaInput;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/dlm/ACAlphaInput;

    .prologue
    .line 76
    sput-object p0, Lcom/nuance/swype/input/AlphaInputView;->acAlphaInput:Lcom/nuance/dlm/ACAlphaInput;

    return-object p0
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaInputView;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    return-object v0
.end method

.method private announceToggleCapsLock()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2518
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isExploreByTouchOn()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2530
    :cond_0
    :goto_0
    return v2

    .line 2521
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2522
    iput-boolean v3, p0, Lcom/nuance/swype/input/AlphaInputView;->isLongPressed:Z

    .line 2523
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v1

    .line 2524
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

    .line 2525
    .local v0, "accessibilityLabel":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 2526
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->getInstance()Lcom/nuance/swype/input/accessibility/AccessibilityNotification;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v3}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->announceNotification(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2
    move v2, v3

    .line 2528
    goto :goto_0
.end method

.method private checkDLM(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "userExplicitPick"    # Z

    .prologue
    .line 1585
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmCount()I

    move-result v2

    .line 1587
    .local v2, "udbCountBefore":I
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/AlphaInputView;->noteWordChanged(Ljava/lang/String;Z)V

    .line 1593
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmCount()I

    move-result v1

    .line 1594
    .local v1, "udbCountAfter":I
    if-eq v2, v1, :cond_0

    .line 1595
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v0

    .line 1597
    .local v0, "spw":Lcom/nuance/swype/input/SpeechWrapper;
    if-eqz v0, :cond_0

    .line 1600
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-static {v3, v4, v5}, Lcom/nuance/swype/input/udb/UserDictionaryIterator;->createAlphaIterator(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/SpeechWrapper;)Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0, v3, v4, p1}, Lcom/nuance/swype/input/SpeechWrapper;->addCustomWord(Lcom/nuance/swype/input/udb/UserDictionaryIterator;Lcom/nuance/swype/input/InputFieldInfo;Ljava/lang/String;)V

    .line 1603
    .end local v0    # "spw":Lcom/nuance/swype/input/SpeechWrapper;
    :cond_0
    return-void
.end method

.method private clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V
    .locals 2
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 1961
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1962
    if-eqz p1, :cond_0

    .line 1963
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1964
    const-string v0, ""

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1967
    :cond_0
    return-void
.end method

.method private composingWordCandidates()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 973
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v1, v2, :cond_1

    .line 983
    :cond_0
    :goto_0
    return v0

    .line 977
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isEmptyCandidateList()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_0

    .line 983
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private displayDefaultCandidateAsInline(Landroid/view/inputmethod/InputConnection;Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 6
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 1883
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1884
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    iput-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 1885
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1886
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1887
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateString()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1888
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1889
    if-eqz p1, :cond_1

    .line 1890
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1891
    iget-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v1, :cond_4

    .line 1893
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1894
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getWordDecorator()Lcom/nuance/swype/util/WordDecorator;

    move-result-object v1

    .line 1895
    if-nez v1, :cond_0

    .line 1896
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1900
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldSetComosingSpan()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1909
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x121

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1913
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-static {p1, v1}, Lcom/nuance/swype/util/InputConnectionUtils;->setComposingText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 1922
    :goto_0
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1925
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->composeWordCandidate()V

    .line 1927
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v0

    .line 1929
    .local v0, "keyboardScribe":Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    if-eqz v0, :cond_2

    .line 1930
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordInlineText(Ljava/lang/String;)V

    .line 1933
    :cond_2
    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v1, v2, :cond_3

    .line 1934
    const/4 v1, 0x2

    iput v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    .line 1937
    .end local v0    # "keyboardScribe":Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    :cond_3
    return-void

    .line 1914
    :cond_4
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTypeNull()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1916
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/AlphaInputView;->sendTextAsKeys(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1918
    :cond_5
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1919
    sget-object v1, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "cursor displayDefaultCandidateAsInline"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 1920
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    goto :goto_0
.end method

.method private displayExactTypeAsInline(Landroid/view/inputmethod/InputConnection;)V
    .locals 7
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/4 v6, 0x0

    .line 1857
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1858
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    iput-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 1859
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->exactType:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getExactType(Ljava/lang/StringBuilder;)V

    .line 1860
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1861
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1862
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->exactType:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1863
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x121

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1866
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v0

    .line 1868
    .local v0, "keyboardScribe":Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    if-eqz v0, :cond_0

    .line 1869
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordInlineText(Ljava/lang/String;)V

    .line 1873
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getWordDecorator()Lcom/nuance/swype/util/WordDecorator;

    move-result-object v1

    .line 1874
    .local v1, "wd":Lcom/nuance/swype/util/WordDecorator;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->exactType:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->isKnownWord(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1875
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2, v6}, Lcom/nuance/swype/util/WordDecorator;->decorateUnrecognizedWord(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    .line 1878
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    const/4 v3, 0x1

    invoke-interface {p1, v2, v3}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1880
    return-void
.end method

.method private displaySuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;Z)I
    .locals 8
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .param p2, "noComposingText"    # Z

    .prologue
    const/16 v7, 0x121

    const/4 v3, 0x0

    .line 2262
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 2401
    :cond_1
    :goto_0
    return v2

    .line 2268
    :cond_2
    iget-boolean v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mStarted:Z

    if-nez v4, :cond_3

    move v2, v3

    .line 2269
    goto :goto_0

    .line 2271
    :cond_3
    const/4 v2, 0x0

    .line 2272
    .local v2, "wordCandidatesCount":I
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v4, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    .line 2274
    .local v0, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    iget-boolean v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mPreferExplicit:Z

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v4

    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v4, v5, :cond_4

    .line 2276
    invoke-virtual {v0, v3}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 2277
    invoke-virtual {v0, v3}, Lcom/nuance/input/swypecorelib/Candidates;->setExactIndex(I)V

    .line 2280
    :cond_4
    if-eqz v0, :cond_5

    .line 2281
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v2

    .line 2284
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 2285
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_6

    .line 2286
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2289
    :cond_6
    iget-boolean v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v4, :cond_7

    .line 2290
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->getWordListFormat(Lcom/nuance/input/swypecorelib/Candidates;)Lcom/nuance/swype/input/CandidatesListView$Format;

    move-result-object v4

    invoke-virtual {p0, p0, v0, v4}, Lcom/nuance/swype/input/AlphaInputView;->setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V

    .line 2293
    :cond_7
    if-eqz p2, :cond_8

    .line 2294
    if-eqz v1, :cond_1

    .line 2295
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 2300
    :cond_8
    if-lez v2, :cond_13

    .line 2306
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne p1, v4, :cond_a

    :cond_9
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getKeyCount()I

    move-result v4

    if-lez v4, :cond_a

    .line 2307
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2308
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2309
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateString()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2315
    :cond_a
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_f

    .line 2320
    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq p1, v4, :cond_b

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 2324
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2325
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mBKWordErrorSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2327
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mFGWordErrorSpan:Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2331
    :cond_b
    if-eqz v1, :cond_e

    .line 2332
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2333
    iget-boolean v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v4, :cond_11

    .line 2335
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2336
    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq p1, v4, :cond_c

    .line 2337
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2340
    :cond_c
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getWordDecorator()Lcom/nuance/swype/util/WordDecorator;

    move-result-object v4

    .line 2341
    if-eqz v4, :cond_10

    .line 2342
    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq p1, v3, :cond_d

    .line 2343
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->isKnownWord(Ljava/lang/String;)Z

    .line 2363
    :cond_d
    :goto_1
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-static {v1, v3}, Lcom/nuance/swype/util/InputConnectionUtils;->setComposingText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2375
    :goto_2
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2378
    :cond_e
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->composeWordCandidate()V

    .line 2380
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v3

    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v3, v4, :cond_f

    .line 2381
    const/4 v3, 0x2

    iput v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    .line 2398
    :cond_f
    :goto_3
    if-eqz v1, :cond_1

    .line 2399
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 2346
    :cond_10
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2350
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldSetComosingSpan()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2359
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mWordComposeSpan:Landroid/text/style/UnderlineSpan;

    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 2366
    :cond_11
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTypeNull()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2368
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/AlphaInputView;->sendTextAsKeys(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2371
    :cond_12
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2372
    sget-object v3, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "cursor displaySuggestions"

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 2373
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    goto :goto_2

    .line 2388
    :cond_13
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->flushCurrentActiveWord()V

    .line 2391
    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq p1, v3, :cond_f

    .line 2392
    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne p1, v3, :cond_f

    .line 2393
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->setNotMatchToolTipSuggestion()V

    goto :goto_3
.end method

.method private doFakeUp(IJ)V
    .locals 8
    .param p1, "pointerId"    # I
    .param p2, "eventTime"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 4144
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mHshPointers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .line 4146
    .local v2, "pointer":Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    if-nez v2, :cond_0

    .line 4181
    :goto_0
    return-void

    .line 4150
    :cond_0
    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentKeyIndex()I

    move-result v1

    .line 4151
    .local v1, "keyIndex":I
    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentLocation()Landroid/graphics/Point;

    move-result-object v3

    .line 4153
    .local v3, "pt":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e9

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4154
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3eb

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4155
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x68

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4156
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3ed

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4157
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3ef

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4159
    invoke-virtual {p0, v7, v7}, Lcom/nuance/swype/input/AlphaInputView;->showPreviewKey(II)V

    .line 4161
    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->reset()V

    .line 4162
    iput-wide p2, v2, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->eventTime:J

    .line 4164
    const/4 v0, 0x0

    .line 4165
    .local v0, "keyCode":I
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 4166
    if-eq v1, v7, :cond_4

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v0, v5, v4

    .line 4170
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 4171
    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v5, v6, p2, p3}, Lcom/nuance/swype/input/AlphaInputView;->detectAndSendKey(IIJ)V

    .line 4173
    :cond_2
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    if-eqz v5, :cond_3

    if-eq v1, v7, :cond_3

    .line 4174
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardActionListener:Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    invoke-interface {v5, v0}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onRelease(I)V

    .line 4176
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->dismissSingleAltCharPopup()V

    .line 4177
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->hideKeyPreview(I)V

    .line 4178
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->resetTrace()V

    .line 4179
    iput v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mRepeatKeyIndex:I

    .line 4180
    iput-boolean v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyRepeated:Z

    goto :goto_0

    :cond_4
    move v0, v4

    .line 4166
    goto :goto_1
.end method

.method private endInputSession()V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearApplicationPredictionContext()V

    .line 529
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->finishSession()V

    .line 532
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->terminalPunct:Ljava/lang/String;

    .line 533
    return-void
.end method

.method private handleBackSpaceRevertCancelWordRecapture(C)V
    .locals 8
    .param p1, "ch"    # C

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 3252
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    if-nez v0, :cond_1

    .line 3269
    :cond_0
    :goto_0
    return-void

    .line 3256
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/util/CharacterUtilities;->isWordAcceptingSymbol(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/BackspaceRevertHandler;->isOverrideActive()Z

    move-result v0

    if-eqz v0, :cond_2

    move v7, v6

    .line 3257
    .local v7, "isAcceptRevert":Z
    :goto_1
    sget-object v0, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleBackSpaceRevertCancelWordRecapture(): is accept revert: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 3258
    if-eqz v7, :cond_0

    .line 3263
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->handleOverrideCacheAddSelectedCandidate(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 3265
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->processDeferredSuggestionUpdates()Z

    .line 3266
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v5, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_PUNCTUATION:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/AlphaInputView;->selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/CharSequence;ZZLcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;Z)V

    goto :goto_0

    .end local v7    # "isAcceptRevert":Z
    :cond_2
    move v7, v3

    .line 3256
    goto :goto_1
.end method

.method private handleBackspaceDuringMultitap()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1092
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isMultitapping()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1098
    iget-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-nez v1, :cond_1

    .line 1113
    :cond_0
    :goto_0
    return v0

    .line 1106
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isComposingText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1107
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearKey()Z

    goto :goto_0

    .line 1113
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleOverrideCacheAddSelectedCandidate(Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 5
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 3294
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->autoCorrectOverrideWords:Lcom/nuance/swype/util/LruWordCache;

    if-nez v1, :cond_1

    .line 3311
    :cond_0
    :goto_0
    return-void

    .line 3300
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/nuance/input/swypecorelib/Candidates$Source;

    const/4 v3, 0x0

    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nuance/input/swypecorelib/Candidates;->match(Lcom/nuance/input/swypecorelib/Candidates;[Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3302
    sget-object v1, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleAddAcOverrideCache(): unexpected cand type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 3306
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3307
    .local v0, "word":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v1, v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->isKnownWord(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3308
    sget-object v1, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleAddAcOverrideCache(): add: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 3309
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->autoCorrectOverrideWords:Lcom/nuance/swype/util/LruWordCache;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/nuance/swype/util/LruWordCache;->words:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, v1, Lcom/nuance/swype/util/LruWordCache;->words:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private handleOverrideCacheFilterSuggestions(Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 3
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 3276
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->autoCorrectOverrideWords:Lcom/nuance/swype/util/LruWordCache;

    if-nez v1, :cond_1

    .line 3288
    :cond_0
    :goto_0
    return-void

    .line 3281
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/Candidates$Source;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3282
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3283
    .local v0, "cand":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->autoCorrectOverrideWords:Lcom/nuance/swype/util/LruWordCache;

    iget-object v1, v1, Lcom/nuance/swype/util/LruWordCache;->words:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3284
    sget-object v1, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "setSuggestions(): setting default to exact (word cache)"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 3285
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    goto :goto_0
.end method

.method private handlePrediction(Landroid/graphics/Point;IJ)V
    .locals 5
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 1804
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 1806
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-nez v2, :cond_1

    .line 1853
    :cond_0
    :goto_0
    return-void

    .line 1810
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v2, :cond_0

    .line 1811
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isComposingText()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1812
    iget-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->isManualShift:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1813
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->triggerCapitalizationGestureTip()V

    .line 1815
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateWordContext()V

    .line 1819
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getKeyCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x40

    if-le v2, v3, :cond_4

    .line 1820
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->flushCurrentActiveWord()V

    .line 1821
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearAllKeys()Z

    .line 1824
    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/AlphaInputView;->processKeyCodeDetectCapsSupport(Landroid/graphics/Point;IJ)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1826
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1827
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 1828
    .local v0, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    if-eqz v0, :cond_7

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_7

    .line 1829
    sget-object v2, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 1835
    .end local v0    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    int-to-char v3, p2

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/EditState;->characterTyped(C)V

    .line 1837
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->isHypenInput:Z

    .line 1838
    int-to-char v2, p2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_6

    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1839
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->isHypenInput:Z

    .line 1842
    :cond_6
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/AlphaInputView;->displayExactTypeAsInline(Landroid/view/inputmethod/InputConnection;)V

    .line 1845
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto :goto_0

    .line 1830
    .restart local v0    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v2, v3, :cond_5

    .line 1831
    sget-object v2, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    goto :goto_1

    .line 1850
    .end local v0    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :cond_8
    int-to-char v2, p2

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->sendBackCharOnFailProcess(C)V

    goto/16 :goto_0
.end method

.method private handlePunctOrSymbol(I)V
    .locals 8
    .param p1, "primaryCode"    # I

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1970
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 1971
    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-nez v2, :cond_1

    .line 2068
    :cond_0
    :goto_0
    return-void

    .line 1975
    :cond_1
    const/16 v2, 0x20

    if-ne p1, v2, :cond_2

    .line 1976
    invoke-virtual {p0, v4, v5}, Lcom/nuance/swype/input/AlphaInputView;->handleSpace(ZI)Z

    goto :goto_0

    .line 1980
    :cond_2
    const/4 v0, 0x0

    .line 1983
    .local v0, "symbolUsedInSelectWord":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isEmptyCandidateList()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1984
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    .line 1986
    .local v1, "wlSource":Lcom/nuance/input/swypecorelib/Candidates$Source;
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_8

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_8

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_8

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->CAPS_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_8

    .line 1991
    int-to-char v2, p1

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1992
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "symbolUsedInSelectWord":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1993
    .restart local v0    # "symbolUsedInSelectWord":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1998
    :cond_3
    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->terminalPunct:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->terminalPunct:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_NEW_WORD:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-eq v2, v3, :cond_7

    iget-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->promptToAddWords:Z

    if-nez v2, :cond_7

    .line 2006
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_PUNCTUATION:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-direct {p0, v2, v7, v3}, Lcom/nuance/swype/input/AlphaInputView;->selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/CharSequence;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 2007
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-direct {p0, v2, v3}, Lcom/nuance/swype/input/AlphaInputView;->promotingTermPunctOrSingleLetter(CLcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 2023
    .end local v1    # "wlSource":Lcom/nuance/input/swypecorelib/Candidates$Source;
    :cond_4
    :goto_1
    if-ne p1, v6, :cond_5

    .line 2024
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v2, v7}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setContext([C)V

    .line 2027
    :cond_5
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v2}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    .line 2029
    if-nez v0, :cond_6

    .line 2030
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2031
    int-to-char v2, p1

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->sendHardKeyChar(C)V

    .line 2044
    :cond_6
    :goto_2
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 2046
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/CandidatesListView;->isEditingUDBWords()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2049
    if-ne p1, v6, :cond_0

    .line 2050
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearAllKeys()Z

    goto/16 :goto_0

    .line 2009
    .restart local v1    # "wlSource":Lcom/nuance/input/swypecorelib/Candidates$Source;
    :cond_7
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_PUNCTUATION:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-direct {p0, v2, v0, v3}, Lcom/nuance/swype/input/AlphaInputView;->selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/CharSequence;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    goto :goto_1

    .line 2013
    :cond_8
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_4

    .line 2014
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    goto :goto_1

    .line 2018
    .end local v1    # "wlSource":Lcom/nuance/input/swypecorelib/Candidates$Source;
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->flushCurrentActiveWord()V

    .line 2019
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    goto :goto_1

    .line 2036
    :cond_a
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->terminalPunct:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->terminalPunct:Ljava/lang/String;

    int-to-char v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b

    .line 2037
    int-to-char v2, p1

    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-direct {p0, v2, v3}, Lcom/nuance/swype/input/AlphaInputView;->promotingTermPunctOrSingleLetter(CLcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    goto :goto_2

    .line 2039
    :cond_b
    int-to-char v2, p1

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyChar(C)V

    goto :goto_2

    .line 2053
    :cond_c
    iget-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mNextWordPredictionOn:Z

    if-eqz v2, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2056
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/util/CharacterUtilities;->isTerminalPunctuation(I)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/util/CharacterUtilities;->isWordCompounder(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2057
    :cond_d
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 2058
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearAllKeys()Z

    .line 2059
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateWordContext()V

    .line 2060
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_0

    .line 2062
    :cond_e
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 2063
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearAllKeys()Z

    .line 2064
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    goto/16 :goto_0
.end method

.method private handleShiftPressedHold()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2534
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->currentLanguageSupportsCapitalization()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2544
    :cond_0
    :goto_0
    return v0

    .line 2537
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isExploreByTouchOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2539
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->announceToggleCapsLock()Z

    move-result v0

    goto :goto_0

    .line 2540
    :cond_2
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/AlphaInputView;->toggleCapsLock(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2541
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->invalidateKeyboardImage()V

    move v0, v1

    .line 2542
    goto :goto_0
.end method

.method private handleWhiteSpaces(I)V
    .locals 2
    .param p1, "primaryCode"    # I

    .prologue
    .line 1951
    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    .line 1952
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->handleSpace(ZI)Z

    .line 1958
    :goto_0
    return-void

    .line 1957
    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->handlePunctOrSymbol(I)V

    goto :goto_0
.end method

.method private hasInputQueue()Z
    .locals 1

    .prologue
    .line 3984
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAddSpaceRequired()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 688
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isComposingText()Z

    move-result v1

    .line 689
    .local v1, "required":Z
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v5, :cond_1

    .line 691
    if-nez v1, :cond_0

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v5

    sget-object v6, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v5, v6, :cond_3

    :cond_0
    move v1, v4

    .line 695
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 696
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    .line 697
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 698
    .local v2, "text":Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 699
    const/4 v1, 0x0

    .line 703
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_2
    return v1

    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_3
    move v1, v3

    .line 691
    goto :goto_0
.end method

.method private isModeUsing(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 4233
    const-string v0, ""

    .line 4234
    .local v0, "currentInputMode":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v1, :cond_0

    .line 4235
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    iget-object v0, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 4237
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isVietnameseLanguage()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4238
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    instance-of v1, v1, Lcom/nuance/swype/input/BilingualLanguage;

    if-eqz v1, :cond_0

    .line 4239
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    check-cast v1, Lcom/nuance/swype/input/BilingualLanguage;

    invoke-virtual {v1}, Lcom/nuance/swype/input/BilingualLanguage;->getSecondLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    .line 4241
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isVietnameseLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "telex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4244
    const-string v0, "telex"

    .line 4249
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isTerminalPunctuation(C)Z
    .locals 2
    .param p1, "ch"    # C

    .prologue
    .line 2082
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->terminalPunct:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2083
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getTerminalPunct()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->terminalPunct:Ljava/lang/String;

    .line 2085
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->terminalPunct:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveHighlightToNearCandidate(I)Z
    .locals 12
    .param p1, "keyCode"    # I

    .prologue
    const/16 v11, 0x121

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3698
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v9

    if-gtz v9, :cond_2

    .line 3700
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyToApplication(I)V

    move v7, v8

    .line 3756
    :cond_1
    :goto_0
    return v7

    .line 3704
    :cond_2
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v5

    .line 3705
    .local v5, "wordCandidatesCount":I
    const/4 v3, 0x0

    .line 3706
    .local v3, "isRight":Z
    const/16 v9, 0x16

    if-ne p1, v9, :cond_3

    .line 3707
    const/4 v3, 0x1

    .line 3709
    :cond_3
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/CandidatesListView;->getSelectedIndex()I

    move-result v1

    .line 3711
    .local v1, "index":I
    if-eqz v3, :cond_7

    .line 3712
    add-int/lit8 v1, v1, 0x1

    .line 3717
    :goto_1
    if-eqz v3, :cond_8

    if-lt v1, v5, :cond_8

    .line 3718
    add-int/lit8 v1, v5, -0x1

    .line 3723
    :cond_4
    :goto_2
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9, v1}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 3724
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v10, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v10, v1}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Lcom/nuance/swype/input/CandidatesListView;->touchWord(ILcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 3725
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->syncCandidateDisplayStyleToMode()V

    .line 3726
    if-eqz v3, :cond_9

    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v9, v1}, Lcom/nuance/swype/input/CandidatesListView;->isKeyOutofRightBound(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 3727
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/CandidatesListView;->scrollNext()V

    .line 3732
    :cond_5
    :goto_3
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v9

    sget-object v10, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v9, v10, :cond_6

    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3737
    :cond_6
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3738
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 3739
    .local v2, "inlineword":Landroid/text/SpannableStringBuilder;
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 3740
    .local v4, "span":Landroid/text/style/UnderlineSpan;
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/CandidatesListView;->getCurrentSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v6

    .line 3741
    .local v6, "wordcandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3742
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 3743
    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3744
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v2, v4, v8, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3746
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v2, v4, v8, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3748
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 3749
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 3750
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3751
    invoke-static {v0, v2}, Lcom/nuance/swype/util/InputConnectionUtils;->setComposingText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 3752
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 3714
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "inlineword":Landroid/text/SpannableStringBuilder;
    .end local v4    # "span":Landroid/text/style/UnderlineSpan;
    .end local v6    # "wordcandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3719
    :cond_8
    if-nez v3, :cond_4

    if-gez v1, :cond_4

    .line 3720
    const/4 v1, 0x0

    goto :goto_2

    .line 3728
    :cond_9
    if-nez v3, :cond_5

    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v9, v1}, Lcom/nuance/swype/input/CandidatesListView;->isKeyOutofLeftBound(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3729
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v9}, Lcom/nuance/swype/input/CandidatesListView;->scrollPrev()V

    goto :goto_3
.end method

.method private moveHighlightToNearCandidateForNWP(I)Z
    .locals 11
    .param p1, "keyCode"    # I

    .prologue
    const/16 v10, 0x121

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3821
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v8

    if-gtz v8, :cond_2

    .line 3823
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyToApplication(I)V

    move v6, v7

    .line 3882
    :cond_1
    :goto_0
    return v6

    .line 3827
    :cond_2
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v4

    .line 3828
    .local v4, "wordCandidatesCount":I
    const/4 v2, 0x0

    .line 3829
    .local v2, "isRight":Z
    const/16 v8, 0x16

    if-ne p1, v8, :cond_3

    .line 3830
    const/4 v2, 0x1

    .line 3832
    :cond_3
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/CandidatesListView;->getSelectedIndex()I

    move-result v1

    .line 3834
    .local v1, "index":I
    if-eqz v2, :cond_7

    .line 3835
    add-int/lit8 v1, v1, 0x1

    .line 3840
    :goto_1
    if-eqz v2, :cond_8

    if-lt v1, v4, :cond_8

    .line 3841
    add-int/lit8 v1, v4, -0x1

    .line 3846
    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8, v1}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 3847
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8, v6}, Lcom/nuance/swype/input/CandidatesListView;->setHardwareKeyboardUsed(Z)V

    .line 3848
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9, v1}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Lcom/nuance/swype/input/CandidatesListView;->touchWord(ILcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 3849
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->syncCandidateDisplayStyleToMode()V

    .line 3850
    if-eqz v2, :cond_9

    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8, v1}, Lcom/nuance/swype/input/CandidatesListView;->isKeyOutofRightBound(I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3851
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/CandidatesListView;->scrollNext()V

    .line 3856
    :cond_5
    :goto_3
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v8

    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v8, v9, :cond_6

    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3861
    :cond_6
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v8

    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v8, v9, :cond_1

    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v8

    if-nez v8, :cond_1

    .line 3863
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/CandidatesListView;->getCurrentSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v5

    .line 3864
    .local v5, "wordcandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3865
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 3866
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3867
    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 3868
    .local v3, "span":Landroid/text/style/UnderlineSpan;
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v3, v7, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3870
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v3, v7, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3873
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 3875
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 3876
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3877
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v7, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 3878
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 3837
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v3    # "span":Landroid/text/style/UnderlineSpan;
    .end local v5    # "wordcandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    .line 3842
    :cond_8
    if-nez v2, :cond_4

    if-gez v1, :cond_4

    .line 3843
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 3852
    :cond_9
    if-nez v2, :cond_5

    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8, v1}, Lcom/nuance/swype/input/CandidatesListView;->isKeyOutofLeftBound(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3853
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/CandidatesListView;->scrollPrev()V

    goto/16 :goto_3
.end method

.method private moveHightlightToCenter(I)Z
    .locals 11
    .param p1, "keyCode"    # I

    .prologue
    const/16 v10, 0x121

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3764
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v8

    if-gtz v8, :cond_2

    .line 3766
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyToApplication(I)V

    move v6, v7

    .line 3815
    :cond_1
    :goto_0
    return v6

    .line 3770
    :cond_2
    const/4 v2, 0x0

    .line 3771
    .local v2, "isDown":Z
    const/16 v8, 0x14

    if-ne p1, v8, :cond_3

    .line 3772
    const/4 v2, 0x1

    .line 3775
    :cond_3
    const/4 v1, 0x0

    .line 3776
    .local v1, "index":I
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v4

    .line 3778
    .local v4, "wordCandidatesCount":I
    if-eqz v2, :cond_4

    .line 3779
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/CandidatesListView;->getCenterCandidateIndex()I

    move-result v1

    .line 3780
    const/4 v8, -0x1

    if-eq v1, v8, :cond_1

    .line 3783
    if-ltz v1, :cond_4

    if-ge v1, v4, :cond_4

    .line 3784
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8, v1}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 3785
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8, v6}, Lcom/nuance/swype/input/CandidatesListView;->setHardwareKeyboardUsed(Z)V

    .line 3786
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9, v1}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Lcom/nuance/swype/input/CandidatesListView;->touchWord(ILcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 3787
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->syncCandidateDisplayStyleToMode()V

    .line 3791
    :cond_4
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v8

    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v8, v9, :cond_5

    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3795
    :cond_5
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v8

    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v8, v9, :cond_1

    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v8

    if-nez v8, :cond_1

    .line 3797
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v8}, Lcom/nuance/swype/input/CandidatesListView;->getCurrentSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v5

    .line 3798
    .local v5, "wordcandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3799
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 3800
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3801
    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 3802
    .local v3, "span":Landroid/text/style/UnderlineSpan;
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v3, v7, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3804
    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v8, v3, v7, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3807
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 3809
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 3810
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3811
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v7, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 3812
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0
.end method

.method private noteWordChanged(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "userExplicitPick"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1608
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 1609
    .local v1, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v1, :cond_1

    .line 1610
    new-instance v6, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v6}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-virtual {v1, v6, v7}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 1611
    .local v0, "eText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_1

    iget-object v6, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1615
    iget v4, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 1616
    .local v4, "selectionEnd":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1617
    .local v2, "newWordLength":I
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->recaptureEditWord:Lcom/nuance/swype/input/RecaptureEditWord;

    invoke-virtual {v6}, Lcom/nuance/swype/input/RecaptureEditWord;->getWord()Ljava/lang/String;

    move-result-object v3

    .line 1619
    .local v3, "oldWord":Ljava/lang/String;
    if-eqz p2, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 1620
    sub-int v6, v4, v2

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1627
    .local v5, "startOfNewWord":I
    if-eqz v5, :cond_0

    iget-object v6, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    add-int/lit8 v7, v5, -0x1

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1629
    :cond_0
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-object v7, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->noteWordWordChanged(Ljava/lang/String;IILjava/lang/String;)Z

    .line 1638
    .end local v5    # "startOfNewWord":I
    :goto_0
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->recaptureEditWord:Lcom/nuance/swype/input/RecaptureEditWord;

    invoke-virtual {v6}, Lcom/nuance/swype/input/RecaptureEditWord;->clear()V

    .line 1641
    .end local v0    # "eText":Landroid/view/inputmethod/ExtractedText;
    .end local v2    # "newWordLength":I
    .end local v3    # "oldWord":Ljava/lang/String;
    .end local v4    # "selectionEnd":I
    :cond_1
    return-void

    .line 1632
    .restart local v0    # "eText":Landroid/view/inputmethod/ExtractedText;
    .restart local v2    # "newWordLength":I
    .restart local v3    # "oldWord":Ljava/lang/String;
    .restart local v4    # "selectionEnd":I
    .restart local v5    # "startOfNewWord":I
    :cond_2
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-object v7, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->learnNewWords(Ljava/lang/String;I)Z

    goto :goto_0

    .line 1635
    .end local v5    # "startOfNewWord":I
    :cond_3
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-object v7, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->learnNewWords(Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private postDelayResumeSpeech()V
    .locals 4

    .prologue
    const/16 v1, 0xb

    .line 401
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 405
    return-void
.end method

.method private postToastMsg(I)V
    .locals 4
    .param p1, "msg"    # I

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->removeToastMsg(I)V

    .line 213
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 214
    return-void
.end method

.method private processDeferredSuggestionUpdates()Z
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 1940
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1941
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1942
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1943
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 1944
    const/4 v0, 0x1

    .line 1947
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private promotingTermPunctOrSingleLetter(CLcom/nuance/input/swypecorelib/Shift$ShiftState;)V
    .locals 7
    .param p1, "punctOrLetter"    # C
    .param p2, "shift"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 2073
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    new-array v1, v3, [C

    aput-char p1, v1, v5

    invoke-virtual {v0, v1, v3, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->addExplicit([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 2074
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v6

    .line 2075
    .local v6, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->id()I

    move-result v2

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/AlphaInputView;->selectWord(Lcom/nuance/input/swypecorelib/XT9CoreInput;IIIZ)V

    .line 2077
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2078
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearAllKeys()Z

    .line 2079
    return-void
.end method

.method private readStyles(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v6, -0x10000

    .line 2626
    sget v4, Lcom/nuance/swype/input/R$style;->InlineStringAlpha:I

    sget-object v5, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha:[I

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2629
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    .line 2631
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 2632
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 2634
    .local v1, "attr":I
    sget v4, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha_wordErrorForegroundColor:I

    if-ne v1, v4, :cond_1

    .line 2635
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mFGWordErrorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 2631
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2636
    :cond_1
    sget v4, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha_wordErrorBackgroundColor:I

    if-ne v1, v4, :cond_2

    .line 2637
    new-instance v4, Landroid/text/style/BackgroundColorSpan;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mBKWordErrorSpan:Landroid/text/style/BackgroundColorSpan;

    goto :goto_1

    .line 2638
    :cond_2
    sget v4, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha_multitapForegroundColor:I

    if-ne v1, v4, :cond_3

    .line 2639
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const/4 v5, -0x1

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mFGMultiptappingCharSpan:Landroid/text/style/ForegroundColorSpan;

    goto :goto_1

    .line 2641
    :cond_3
    sget v4, Lcom/nuance/swype/input/R$styleable;->InlineStringAlpha_multitapBackgroundColor:I

    if-ne v1, v4, :cond_0

    .line 2642
    new-instance v4, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mBKMultiptappingCharSpan:Landroid/text/style/BackgroundColorSpan;

    goto :goto_1

    .line 2646
    .end local v1    # "attr":I
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2647
    return-void
.end method

.method private removeAllMessages()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 173
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 174
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 175
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 176
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 177
    return-void
.end method

.method private removeToastMsg(I)V
    .locals 1
    .param p1, "msg"    # I

    .prologue
    .line 207
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 208
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 209
    return-void
.end method

.method private selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/CharSequence;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V
    .locals 7
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "symbolUsedInToSelectWord"    # Ljava/lang/CharSequence;
    .param p3, "type"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .prologue
    const/4 v3, 0x1

    .line 1644
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/AlphaInputView;->selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/CharSequence;ZZLcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;Z)V

    .line 1645
    return-void
.end method

.method private selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/CharSequence;ZZLcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;Z)V
    .locals 16
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "symbolUsedInToSelectWord"    # Ljava/lang/CharSequence;
    .param p3, "shouldCommit"    # Z
    .param p4, "userExplicitPick"    # Z
    .param p5, "selectionType"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;
    .param p6, "allowAddWordPrompt"    # Z

    .prologue
    .line 1479
    sget-object v2, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "selectCandidate(): "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; should commit: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; user pick: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 1481
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 1482
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v8

    .line 1483
    .local v8, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v8, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->isEmptyCandidateList()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1582
    :cond_0
    :goto_0
    return-void

    .line 1487
    :cond_1
    const/4 v10, 0x0

    .line 1490
    .local v10, "isNewWord":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/AlphaInputView;->promptForAddingOOVCandidate:Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;

    invoke-virtual {v2}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->setExplicitPromptState()V

    .line 1492
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v11

    .line 1493
    .local v11, "keyboardScribe":Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v2, :cond_2

    .line 1494
    const/16 v2, 0x100

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/AlphaInputView;->getTextBufferCursor(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 1495
    .local v12, "textBeforeCursor":Ljava/lang/CharSequence;
    if-eqz v12, :cond_2

    .line 1496
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v11, v0, v2}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordSelectionListContext(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/String;)V

    .line 1500
    .end local v12    # "textBeforeCursor":Ljava/lang/CharSequence;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual/range {p1 .. p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateString()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/nuance/swype/input/EditState;->selectWord(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1507
    invoke-virtual/range {p1 .. p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->id()I

    move-result v4

    .line 1509
    .local v4, "index":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->COMPLETIONS:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v2, v3, :cond_4

    .line 1510
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/input/AlphaInputView;->mCompletionOn:Z

    if-eqz v2, :cond_3

    if-ltz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/AlphaInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v2}, Lcom/nuance/swype/input/Completions;->size()I

    move-result v2

    if-ge v4, v2, :cond_3

    if-eqz p3, :cond_3

    .line 1511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/AlphaInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/Completions;->get(I)Landroid/view/inputmethod/CompletionInfo;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 1560
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 1563
    if-eqz p6, :cond_0

    .line 1564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->isThaiLanguage()Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v10, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual/range {p1 .. p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmFind(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1565
    new-instance v2, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;

    invoke-virtual/range {p1 .. p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v5}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;-><init>(Lcom/nuance/swype/input/AlphaInputView;Ljava/lang/String;Lcom/nuance/swype/input/AlphaInputView$1;)V

    invoke-virtual {v2}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;->promptToAddIfAny()V

    goto/16 :goto_0

    .line 1513
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->SPEECH_ALTERNATES:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v2, v3, :cond_6

    .line 1514
    if-eqz p3, :cond_5

    .line 1515
    invoke-virtual/range {p1 .. p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1517
    :cond_5
    move-object/from16 v0, p0

    invoke-super {v0, v4}, Lcom/nuance/swype/input/InputView;->speechChooseCandidate(I)V

    goto :goto_1

    .line 1519
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    if-eqz v2, :cond_7

    if-nez p4, :cond_7

    if-eqz p3, :cond_7

    .line 1521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v2, v3, v0, v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->onImplicitSelect(Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)Z

    move-result p4

    .line 1524
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v2, p0

    move/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/nuance/swype/input/AlphaInputView;->selectWord(Lcom/nuance/input/swypecorelib/XT9CoreInput;IIIZ)V

    .line 1527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual/range {p1 .. p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->isKnownWord(Ljava/lang/String;)Z

    move-result v9

    .line 1528
    .local v9, "isKnownWord":Z
    invoke-virtual/range {p1 .. p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1529
    .local v15, "wordSelected":Ljava/lang/String;
    sget-object v2, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "selectCandidate(): is known: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; word: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 1531
    if-nez v9, :cond_c

    const/4 v10, 0x1

    .line 1532
    :goto_2
    if-eqz p3, :cond_9

    .line 1533
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->getWordDecorator()Lcom/nuance/swype/util/WordDecorator;

    move-result-object v14

    .line 1534
    .local v14, "wd":Lcom/nuance/swype/util/WordDecorator;
    invoke-virtual/range {p1 .. p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->contextPredictLength()I

    move-result v2

    if-eqz v2, :cond_8

    .line 1535
    const-string v2, ""

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2, v8}, Lcom/nuance/swype/input/IME;->deleteWord(Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;)V

    .line 1538
    :cond_8
    if-nez v9, :cond_e

    if-eqz v14, :cond_e

    .line 1539
    if-nez p4, :cond_d

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v14, v15, v2}, Lcom/nuance/swype/util/WordDecorator;->decorateUnrecognizedWord(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1546
    .end local v14    # "wd":Lcom/nuance/swype/util/WordDecorator;
    :cond_9
    :goto_4
    if-eqz p2, :cond_b

    .line 1547
    if-eqz p3, :cond_a

    .line 1548
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v8, v0, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1554
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setContext([C)V

    .line 1557
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v2, v1}, Lcom/nuance/swype/input/AlphaInputView;->checkDLM(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1531
    :cond_c
    const/4 v10, 0x0

    goto :goto_2

    .line 1539
    .restart local v14    # "wd":Lcom/nuance/swype/util/WordDecorator;
    :cond_d
    const/4 v2, 0x0

    goto :goto_3

    .line 1541
    :cond_e
    const/4 v2, 0x1

    invoke-virtual {v8, v15, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_4

    .line 1568
    .end local v9    # "isKnownWord":Z
    .end local v14    # "wd":Lcom/nuance/swype/util/WordDecorator;
    .end local v15    # "wordSelected":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v13

    .line 1570
    .local v13, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    const-string v2, "DICTIONARY_HKB"

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Lcom/nuance/swype/input/UserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_10

    .line 1571
    const-string v2, "DICTIONARY_HKB"

    const/4 v3, 0x1

    invoke-virtual {v13, v2, v3}, Lcom/nuance/swype/input/UserPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 1572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/nuance/swype/input/R$string;->hardkeyboard_shortcut_add_to_dictionary:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/nuance/swype/input/InputMethodToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 1579
    .end local v13    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/AlphaInputView;->promptForAddingOOVCandidate:Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;

    invoke-virtual {v2}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->promptToAddIfAny()V

    goto/16 :goto_0
.end method

.method private sendBackCharOnFailProcess(C)V
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 1795
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->flushCurrentActiveWord()V

    .line 1796
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1797
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyChar(C)V

    .line 1801
    :goto_0
    return-void

    .line 1799
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyChar(C)V

    goto :goto_0
.end method

.method private setCorrectionLevel(Ljava/lang/String;)V
    .locals 3
    .param p1, "inputMode"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x64

    .line 1765
    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    if-eqz v0, :cond_0

    .line 1766
    const-string v0, "multitap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1768
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setAttribute(II)Z

    .line 1776
    :cond_0
    :goto_0
    return-void

    .line 1771
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget v1, p0, Lcom/nuance/swype/input/AlphaInputView;->correctionLevel:I

    invoke-virtual {v0, v2, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setAttribute(II)Z

    .line 1772
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    const/16 v1, 0x65

    iget v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mWordCompletionPoint:I

    invoke-virtual {v0, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setAttribute(II)Z

    goto :goto_0
.end method

.method private setMultitapOrAmbigMode()V
    .locals 2

    .prologue
    .line 1751
    iget v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardLayoutId:I

    const/16 v1, 0x900

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multitap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1755
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->getMultitapMode(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1756
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->toggleAmbigMode()V

    .line 1757
    const-string v0, "multitap"

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->setCorrectionLevel(Ljava/lang/String;)V

    .line 1762
    :cond_0
    :goto_0
    return-void

    .line 1759
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->setCorrectionLevel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSuggestionsHelper(Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 1
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 2709
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    if-eqz v0, :cond_0

    .line 2710
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->onSetSuggestions(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 2714
    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->handleOverrideCacheFilterSuggestions(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 2716
    return-void
.end method

.method private showStartOfWordCandidateList()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 180
    invoke-static {}, Lcom/nuance/swype/input/IME;->getLastSavedActiveWordAndSet()Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "lastWord":Ljava/lang/String;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 183
    new-array v0, v6, [C

    .line 184
    .local v0, "chArray":[C
    const/4 v1, 0x0

    .local v1, "iCharPos":I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 185
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v7

    .line 186
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    aget-char v5, v0, v7

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->isSymbolUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    sget-object v5, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v4, v0, v6, v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->addExplicit([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 184
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    sget-object v5, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v4, v0, v6, v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->addExplicit([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    goto :goto_1

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 195
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_2

    .line 196
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->displayExactTypeAsInline(Landroid/view/inputmethod/InputConnection;)V

    .line 198
    :cond_2
    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AlphaInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 199
    sget-object v4, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AlphaInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 204
    .end local v0    # "chArray":[C
    .end local v1    # "iCharPos":I
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_3
    :goto_2
    return-void

    .line 200
    :cond_4
    invoke-static {}, Lcom/nuance/swype/input/IME;->getLastShownCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v4

    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v4, v5, :cond_3

    .line 201
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateWordContext()V

    .line 202
    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AlphaInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto :goto_2
.end method

.method private startInputSession()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 408
    sget-object v3, Lcom/nuance/swype/input/AlphaInputView;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 410
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v3, :cond_4

    .line 412
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->startSession()V

    .line 413
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$bool;->enable_emoji_in_english_ldb:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 414
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v3, v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setLDBEmoji(Z)V

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->setVietInputMode()Z

    .line 417
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v1

    .line 418
    .local v1, "status":Lcom/nuance/input/swypecorelib/XT9Status;
    sget-object v3, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_DB_CORE_INCOMP:Lcom/nuance/input/swypecorelib/XT9Status;

    if-eq v1, v3, :cond_1

    sget-object v3, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_LDB_VERSION_ERROR:Lcom/nuance/input/swypecorelib/XT9Status;

    if-ne v1, v3, :cond_3

    .line 420
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v4, v4, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/nuance/swype/input/DatabaseConfig;->removeIncompatibleDBFiles(Landroid/content/Context;Ljava/lang/String;)V

    .line 422
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v1

    .line 423
    sget-object v3, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_DB_CORE_INCOMP:Lcom/nuance/input/swypecorelib/XT9Status;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_LDB_VERSION_ERROR:Lcom/nuance/input/swypecorelib/XT9Status;

    if-ne v1, v3, :cond_3

    .line 425
    :cond_2
    iput-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->isLDBCompatible:Z

    .line 426
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->promptUserToUpdateLanguage()V

    .line 428
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v3, :cond_3

    .line 429
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v3

    .line 430
    const/16 v4, 0x109

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/InputMethods;->setCurrentLanguageById(I)V

    .line 431
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/IME;->switchInputViewAsync(I)V

    .line 436
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->readNextWordPredictionSettings()V

    .line 438
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    const/16 v4, 0x65

    iget v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mWordCompletionPoint:I

    invoke-virtual {v3, v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setAttribute(II)Z

    .line 439
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    const/16 v4, 0x63

    iget-boolean v5, p0, Lcom/nuance/swype/input/AlphaInputView;->autoCorrectionEnabled:Z

    invoke-virtual {v3, v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setAttribute(IZ)Z

    .line 440
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    const/16 v4, 0x64

    iget v5, p0, Lcom/nuance/swype/input/AlphaInputView;->correctionLevel:I

    invoke-virtual {v3, v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setAttribute(II)Z

    .line 441
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->registerDlmEventCallback()V

    .line 443
    iget-boolean v3, p0, Lcom/nuance/swype/input/AlphaInputView;->traceAutoAcceptOn:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mAutoSpace:Z

    if-eqz v3, :cond_5

    .line 444
    .local v0, "autoSpaceAttr":I
    :goto_0
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    const/16 v3, 0x68

    invoke-virtual {v2, v3, v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setAttribute(II)Z

    .line 447
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getTerminalPunct()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->terminalPunct:Ljava/lang/String;

    .line 450
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->promptForAddingOOVCandidate:Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;

    invoke-virtual {v2}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->setExplicitPromptState()V

    .line 452
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->setAppContextPrediction()V

    .line 455
    .end local v0    # "autoSpaceAttr":I
    .end local v1    # "status":Lcom/nuance/input/swypecorelib/XT9Status;
    :cond_4
    sget-object v2, Lcom/nuance/swype/input/AlphaInputView;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 456
    return-void

    .restart local v1    # "status":Lcom/nuance/input/swypecorelib/XT9Status;
    :cond_5
    move v0, v2

    .line 443
    goto :goto_0
.end method

.method private toggleCapsLock(Z)Z
    .locals 4
    .param p1, "overrideKeyLockableFlag"    # Z

    .prologue
    .line 2494
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2495
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v2

    .line 2497
    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v2, v3, :cond_1

    .line 2498
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 2502
    .local v0, "currentShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    :goto_0
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2, v0, p1}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;Z)Z

    .line 2504
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v1

    .line 2505
    .local v1, "keyboardScribe":Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    if-eqz v1, :cond_0

    .line 2506
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 2509
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateNWP()V

    .line 2510
    const/4 v2, 0x1

    .line 2512
    .end local v0    # "currentShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .end local v1    # "keyboardScribe":Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    :goto_1
    return v2

    .line 2500
    :cond_1
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .restart local v0    # "currentShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    goto :goto_0

    .line 2512
    .end local v0    # "currentShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private triggerAutoSpaceTip()V
    .locals 1

    .prologue
    .line 2651
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->shouldShowTips()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAutoSpace:Z

    if-eqz v0, :cond_0

    .line 2652
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/ToolTips;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ToolTips;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/ToolTips;->triggerAutoSpaceTip(Landroid/view/View;)V

    .line 2654
    :cond_0
    return-void
.end method

.method private triggerCapitalizationGestureTip()V
    .locals 1

    .prologue
    .line 2663
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->shouldShowTips()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->currentLanguageSupportsCapitalization()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2664
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/ToolTips;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ToolTips;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/ToolTips;->triggerCaptitalizationGestureTip(Landroid/view/View;)V

    .line 2666
    :cond_0
    return-void
.end method

.method private triggerDoubleLettersGestureTip()V
    .locals 1

    .prologue
    .line 2657
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->shouldShowTips()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2658
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/ToolTips;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ToolTips;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/ToolTips;->triggerDoubleLettersGestureTip(Landroid/view/View;)V

    .line 2660
    :cond_0
    return-void
.end method

.method private updateNWP()V
    .locals 2

    .prologue
    .line 2439
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_2

    .line 2443
    :cond_1
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 2445
    :cond_2
    return-void
.end method

.method private updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V
    .locals 5
    .param p1, "attr"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 2422
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2423
    const/4 v0, 0x0

    .line 2424
    .local v0, "caps":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    .line 2425
    .local v2, "ei":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v3

    .line 2426
    .local v3, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    iget-boolean v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mAutoCap:Z

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    iget v4, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v4, :cond_0

    .line 2427
    invoke-static {v3, p1}, Lcom/nuance/swype/util/InputConnectionUtils;->getCapsMode(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)I

    move-result v0

    .line 2430
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v1

    .line 2431
    .local v1, "currentShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    sget-object v4, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-eq v1, v4, :cond_1

    .line 2432
    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->capsModeToShiftState(I)Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v1

    .line 2434
    :cond_1
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/AlphaInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 2436
    .end local v0    # "caps":I
    .end local v1    # "currentShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .end local v2    # "ei":Landroid/view/inputmethod/EditorInfo;
    .end local v3    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    :cond_2
    return-void
.end method


# virtual methods
.method public addHardKeyOOVToDictionary()Z
    .locals 1

    .prologue
    .line 3522
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/CandidatesListView;->trySelect()V

    .line 3523
    const/4 v0, 0x1

    return v0
.end method

.method protected clearAllKeys()V
    .locals 1

    .prologue
    .line 2406
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2407
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2409
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v0, :cond_0

    .line 2410
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearAllKeys()Z

    .line 2413
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 2414
    return-void
.end method

.method public clearCurrentActiveWord()V
    .locals 1

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 322
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 323
    return-void
.end method

.method public clearPendingSuggestionsUpdate()V
    .locals 2

    .prologue
    .line 2789
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2790
    return-void
.end method

.method protected clipTouchPoint(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "pt"    # Landroid/graphics/Point;

    .prologue
    .line 2769
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_0

    iget v0, p1, Landroid/graphics/Point;->x:I

    :goto_0
    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 2770
    return-void

    .line 2769
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeDialogs()V
    .locals 0

    .prologue
    .line 2779
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->dimissRemoveUdbWordDialog()V

    .line 2780
    return-void
.end method

.method public create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/swype/input/SpeechWrapper;)V
    .locals 7
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;
    .param p2, "xt9coreinput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p3, "speechWrapper"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    const/4 v6, 0x1

    .line 218
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/swype/input/SpeechWrapper;)V

    .line 220
    check-cast p2, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    .end local p2    # "xt9coreinput":Lcom/nuance/input/swypecorelib/XT9CoreInput;
    iput-object p2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    .line 222
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 223
    .local v1, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    .line 225
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    new-instance v5, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory;

    invoke-direct {v5, p0}, Lcom/nuance/swype/input/AlphaInputView$CandidateFactory;-><init>(Lcom/nuance/swype/input/AlphaInputView;)V

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setCandidateFactory(Lcom/nuance/input/swypecorelib/XT9CoreInput$ICandidateFactory;)V

    .line 227
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->recaptureEditWord:Lcom/nuance/swype/input/RecaptureEditWord;

    invoke-virtual {v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setWordRecaptureCallback(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$WordRecaptureCallback;)V

    .line 228
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v4, v6, v6}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->delayWordReorder(II)V

    .line 230
    new-instance v4, Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-direct {v4, v5, v6}, Lcom/nuance/swype/input/KeyboardSwitcher;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    iput-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 231
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4, p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 233
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AlphaInputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 235
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$dimen;->candidates_list_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/nuance/swype/input/AlphaInputView;->shiftGestureOffset:I

    .line 237
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$dimen;->shift_gesture_margin_top:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 238
    .local v3, "topOfGestureMargin":I
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v4, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setShiftGestureMargin(I)V

    .line 240
    iget v4, p0, Lcom/nuance/swype/input/AlphaInputView;->shiftGestureOffset:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/nuance/swype/input/AlphaInputView;->shiftGestureMargin:I

    .line 242
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v2

    .line 243
    .local v2, "keyboardScribe":Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    if-eqz v2, :cond_0

    .line 244
    iget v4, p0, Lcom/nuance/swype/input/AlphaInputView;->shiftGestureMargin:I

    invoke-interface {v2, v4}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordShiftMargin(I)V

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/AlphaInputView;->readStyles(Landroid/content/Context;)V

    .line 250
    new-instance v4, Lcom/nuance/swype/input/AutospaceHandler;

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-direct {v4, v5, p0}, Lcom/nuance/swype/input/AutospaceHandler;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/AlphaInputView;)V

    iput-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

    .line 252
    sget-object v4, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "acAlpha create"

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 253
    sget-object v4, Lcom/nuance/swype/input/AlphaInputView;->acAlphaInput:Lcom/nuance/dlm/ACAlphaInput;

    if-nez v4, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v4

    new-instance v5, Lcom/nuance/swype/input/AlphaInputView$2;

    invoke-direct {v5, p0}, Lcom/nuance/swype/input/AlphaInputView$2;-><init>(Lcom/nuance/swype/input/AlphaInputView;)V

    invoke-virtual {v4, v5}, Lcom/nuance/swype/connect/Connect;->doPostStart(Ljava/lang/Runnable;)V

    .line 265
    :cond_1
    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/UserPreferences;->isBackspaceRevertEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 266
    new-instance v4, Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-direct {v4, p0}, Lcom/nuance/swype/input/BackspaceRevertHandler;-><init>(Lcom/nuance/swype/input/InputView;)V

    iput-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    .line 269
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$integer;->ac_override_cache_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 270
    .local v0, "acOverrideCacheSize":I
    if-lez v0, :cond_3

    .line 272
    new-instance v4, Lcom/nuance/swype/util/LruWordCache;

    invoke-direct {v4, v0}, Lcom/nuance/swype/util/LruWordCache;-><init>(I)V

    iput-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->autoCorrectOverrideWords:Lcom/nuance/swype/util/LruWordCache;

    .line 274
    :cond_3
    return-void
.end method

.method public createCandidatesView(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)Landroid/view/View;
    .locals 1
    .param p1, "onSelectListener"    # Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-nez v0, :cond_0

    .line 307
    const/4 v0, 0x0

    .line 310
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->createCandidatesView(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 289
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->destroy()V

    .line 291
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/AlphaInputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 293
    sget-object v0, Lcom/nuance/swype/input/AlphaInputView;->acAlphaInput:Lcom/nuance/dlm/ACAlphaInput;

    if-eqz v0, :cond_0

    .line 294
    sget-object v0, Lcom/nuance/swype/input/AlphaInputView;->acAlphaInput:Lcom/nuance/dlm/ACAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/dlm/ACAlphaInput;->release()V

    .line 295
    sput-object v1, Lcom/nuance/swype/input/AlphaInputView;->acAlphaInput:Lcom/nuance/dlm/ACAlphaInput;

    .line 298
    :cond_0
    iput-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 299
    iput-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->terminalPunct:Ljava/lang/String;

    .line 301
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->dimissRemoveUdbWordDialog()V

    .line 302
    return-void
.end method

.method protected doAddWord(Ljava/lang/String;)V
    .locals 9
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2944
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getWordDecorator()Lcom/nuance/swype/util/WordDecorator;

    move-result-object v3

    .line 2945
    .local v3, "wd":Lcom/nuance/swype/util/WordDecorator;
    if-eqz v3, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2946
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 2951
    .local v1, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-boolean v7, v3, Lcom/nuance/swype/util/WordDecorator;->isRemoveDecorationForAllWordsEnabled:Z

    if-eqz v7, :cond_3

    new-instance v7, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v7}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    iput v5, v7, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    invoke-interface {v1, v7, v6}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v8, v7, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    invoke-static {v4, v1, v7, p1}, Lcom/nuance/swype/util/WordDecorator;->removeDecoration(Landroid/content/Context;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/ExtractedText;Ljava/lang/CharSequence;)V

    iget v4, v7, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v8, v7, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/2addr v4, v8

    iget v8, v7, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v7, v7, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/2addr v7, v8

    invoke-interface {v1, v4, v7}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move v4, v5

    :goto_0
    if-nez v4, :cond_2

    .line 2952
    invoke-virtual {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 2953
    invoke-virtual {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->isEditorComposingText()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2956
    :cond_0
    invoke-virtual {v1, p1, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2969
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    .line 2973
    .end local v1    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearComposingTextAndSelection()V

    .line 2980
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 2982
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 2983
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->showNextWordPrediction()V

    .line 2984
    const/4 v4, 0x4

    iput v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    .line 2987
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v4, v5, v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->delayWordReorder(II)V

    .line 2992
    return-void

    .restart local v1    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    :cond_3
    move v4, v6

    .line 2951
    goto :goto_0

    .line 2959
    :cond_4
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v0

    .line 2961
    .local v0, "charUtils":Lcom/nuance/swype/util/CharacterUtilities;
    const/4 v4, 0x2

    invoke-virtual {v1, v0, p1, v4, v6}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setComposingRegionBeforeCursor(Lcom/nuance/swype/util/CharacterUtilities;Ljava/lang/String;IZ)I

    move-result v2

    .line 2963
    .local v2, "resetPoint":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 2965
    invoke-virtual {v1, p1, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2966
    invoke-virtual {v1, v2, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setSelection(II)Z

    goto :goto_1
.end method

.method public finishInput()V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-nez v0, :cond_0

    .line 552
    :goto_0
    return-void

    .line 541
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearGestureDetector()V

    .line 542
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->removeAllMessages()V

    .line 544
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->dimissRemoveUdbWordDialog()V

    .line 545
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->flushCurrentActiveWord()V

    .line 546
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/EditState;->endSession()V

    .line 547
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->endInputSession()V

    .line 549
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    .line 551
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->finishInput()V

    goto :goto_0
.end method

.method public flushCurrentActiveWord()V
    .locals 3

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 557
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 558
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 559
    sget-object v1, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "cursor flushCurrentActiveWord"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 560
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 561
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 562
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 564
    :cond_0
    return-void
.end method

.method protected getBackspaceRevertHandler()Lcom/nuance/swype/input/BackspaceRevertHandler;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    return-object v0
.end method

.method public getCurrentDefaultWord()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 4254
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->processDeferredSuggestionUpdates()Z

    .line 4255
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->getCurrentDefaultWord()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentExactWord()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 4260
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->processDeferredSuggestionUpdates()Z

    .line 4261
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->getCurrentExactWord()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getShiftGestureOffset()I
    .locals 1

    .prologue
    .line 2774
    iget v0, p0, Lcom/nuance/swype/input/AlphaInputView;->shiftGestureOffset:I

    return v0
.end method

.method protected handleAddRemoveDlmWord(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "selectedText"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2669
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2689
    :cond_0
    :goto_0
    return-void

    .line 2674
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmFind(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2675
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->showRemoveUdbWordDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 2681
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isThaiLanguage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2682
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->isKnownWord(Ljava/lang/String;)Z

    move-result v0

    .line 2683
    if-nez v0, :cond_0

    .line 2684
    new-instance v0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;

    invoke-direct {v0, p0, p1, v1}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;-><init>(Lcom/nuance/swype/input/AlphaInputView;Ljava/lang/String;Lcom/nuance/swype/input/AlphaInputView$1;)V

    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->promptToAddIfAny()V

    goto :goto_0

    .line 2687
    :cond_3
    new-instance v0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;

    invoke-direct {v0, p0, p1, v1}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;-><init>(Lcom/nuance/swype/input/AlphaInputView;Ljava/lang/String;Lcom/nuance/swype/input/AlphaInputView$1;)V

    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->promptToAddIfAny()V

    goto :goto_0
.end method

.method public handleBackspace(I)Z
    .locals 4
    .param p1, "repeatedCount"    # I

    .prologue
    const/4 v3, 0x1

    .line 1119
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1121
    .local v0, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    .line 1122
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->sendBackspace(I)V

    .line 1229
    :cond_1
    :goto_0
    return v3

    .line 1127
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->handleBackspaceDuringMultitap()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1135
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isComposingText()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1136
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1137
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 1139
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->IsTextFieldEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1140
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 1144
    :cond_4
    const-string v1, "multitap"

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v1, v2, :cond_6

    .line 1147
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->backSpace()V

    .line 1149
    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1150
    const-string v1, ""

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1154
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->IsTextFieldEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1155
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->showNextWordPrediction()V

    goto :goto_0

    .line 1152
    :cond_5
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->sendBackspace(I)V

    goto :goto_1

    .line 1160
    :cond_6
    iget-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v1, :cond_f

    .line 1162
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isComposingText()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1163
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->processDeferredSuggestionUpdates()Z

    .line 1166
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->clearSelectionKeys(Landroid/view/inputmethod/InputConnection;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1168
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearKey()Z

    .line 1170
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->exactType:Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/nuance/swype/util/CharacterUtilities;->isEmoji(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1172
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearKey()Z

    .line 1175
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isComposingText()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1177
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->displayExactTypeAsInline(Landroid/view/inputmethod/InputConnection;)V

    .line 1179
    iput v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    .line 1180
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->IsTextFieldEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1181
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->showNextWordPrediction()V

    goto/16 :goto_0

    .line 1184
    :cond_8
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/AlphaInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_0

    .line 1189
    :cond_9
    const-string v1, ""

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1190
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 1192
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    if-eqz v1, :cond_a

    .line 1193
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-virtual {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->onBackToWordBegin()V

    .line 1196
    :cond_a
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->backSpaceClearCompositingWordCandiateList()V

    .line 1197
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 1199
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->IsTextFieldEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1200
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->showNextWordPrediction()V

    goto/16 :goto_0

    .line 1204
    :cond_b
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isEmptyCandidateList()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_f

    :cond_c
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldSendBackSpaceToDeleteBreakLine()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldDeleteSurroundingTextUsingKeyEvent()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1207
    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasComposing()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1208
    const-string v1, ""

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1215
    :goto_2
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->backSpace()V

    .line 1216
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->backSpaceClearCompositingWordCandiateList()V

    .line 1217
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    goto/16 :goto_0

    .line 1209
    :cond_d
    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1210
    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_2

    .line 1212
    :cond_e
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->sendBackspace(I)V

    goto :goto_2

    .line 1222
    :cond_f
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->sendBackspace(I)V

    .line 1223
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearAllKeys()V

    .line 1224
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setContext([C)V

    .line 1225
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->backSpace()V

    .line 1226
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->IsTextFieldEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1227
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->showNextWordPrediction()V

    goto/16 :goto_0
.end method

.method public handleCharKey(Landroid/graphics/Point;IJ)V
    .locals 9
    .param p1, "pointTapped"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "eventTime"    # J

    .prologue
    const/16 v7, 0x121

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 870
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/InputView;->handleCharKey(Landroid/graphics/Point;IJ)V

    .line 872
    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/AlphaInputView;->setReconstructWord(I)V

    .line 878
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isInsideWord()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 879
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v2}, Lcom/nuance/swype/input/EditState;->end()V

    .line 881
    int-to-char v0, p2

    .line 884
    .local v0, "ch":C
    iget-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mMiniKeyboardOnScreen:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v2

    .line 886
    :goto_0
    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-eq v2, v3, :cond_1

    .line 887
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 890
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isMultitapping()Z

    move-result v2

    if-nez v2, :cond_6

    .line 891
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyChar(C)V

    .line 959
    .end local v0    # "ch":C
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    int-to-char v3, p2

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/CharacterUtilities;->isWordCompounder(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->composingWordCandidates()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->supportsAlphaMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 961
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 964
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isMultitapping()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 965
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 968
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->recordUsedTimeTapDisplaySelectionList()V

    .line 969
    iput v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    .line 970
    return-void

    .line 884
    .restart local v0    # "ch":C
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v2

    goto :goto_0

    .line 894
    :cond_6
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 895
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 896
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 898
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mBKMultiptappingCharSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v6, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 900
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mFGMultiptappingCharSpan:Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v6, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 903
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 905
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_2

    .line 906
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v1, v2, v5}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_1

    .line 912
    .end local v0    # "ch":C
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_7
    const/16 v2, 0xa

    if-ne p2, v2, :cond_9

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputFieldInfo;->getActionId()I

    move-result v2

    if-eq v2, v5, :cond_9

    .line 913
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearComposingTextAndSelection()V

    .line 914
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 926
    :cond_8
    :goto_2
    int-to-char v2, p2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 928
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/AlphaInputView;->handleWhiteSpaces(I)V

    goto/16 :goto_1

    .line 916
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->clearSelectionKeys(Landroid/view/inputmethod/InputConnection;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 917
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    goto :goto_2

    .line 918
    :cond_a
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isEmptyCandidateList()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v2, v3, :cond_8

    :cond_b
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentWordCandiatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v2, p2}, Lcom/nuance/swype/util/CharacterUtilities;->isWordCompounder(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 921
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->processDeferredSuggestionUpdates()Z

    .line 923
    sget-object v2, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->selectDefaultSuggestion(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    goto :goto_2

    .line 929
    :cond_c
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isMultitapping()Z

    move-result v3

    if-nez v3, :cond_f

    .line 934
    invoke-static {v2}, Lcom/nuance/swype/util/CharacterUtilities;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v3

    if-eqz v3, :cond_d

    iget v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardLayoutId:I

    const/16 v4, 0x600

    if-eq v3, v4, :cond_f

    .line 941
    :cond_d
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v3, v2}, Lcom/nuance/swype/util/CharacterUtilities;->isWordAcceptingSymbol(I)Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v3, v2}, Lcom/nuance/swype/util/CharacterUtilities;->canStartWord(C)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->composingWordCandidates()Z

    move-result v2

    if-nez v2, :cond_f

    .line 952
    :cond_e
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->processDeferredSuggestionUpdates()Z

    .line 953
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/AlphaInputView;->handlePunctOrSymbol(I)V

    goto/16 :goto_1

    .line 955
    :cond_f
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/AlphaInputView;->handlePrediction(Landroid/graphics/Point;IJ)V

    goto/16 :goto_1
.end method

.method public handleClose()V
    .locals 2

    .prologue
    .line 1390
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->dimissRemoveUdbWordDialog()V

    .line 1401
    const/4 v0, 0x0

    sget-object v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->selectDefaultSuggestion(ZLcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 1402
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->flushCurrentActiveWord()V

    .line 1403
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->removeAllMessages()V

    .line 1404
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->handleClose()V

    .line 1405
    return-void
.end method

.method public handleDeleteWordBack(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 2
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 1234
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->handleDeleteWordBack(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    .line 1235
    .local v0, "deleted":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    if-eqz v1, :cond_0

    .line 1236
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-virtual {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->onBackToWordBegin()V

    .line 1238
    :cond_0
    return v0
.end method

.method protected handleGesture(Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 10
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 2210
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v6

    if-lez v6, :cond_7

    .line 2211
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    .line 2212
    .local v0, "defaultCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v6

    sget-object v7, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_GESTURE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-ne v6, v7, :cond_7

    .line 2213
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2214
    .local v4, "word":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2215
    .local v1, "firstChar":C
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v5, :cond_0

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/AlphaInputView;->isTerminalPunctuation(C)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v8, :cond_7

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_7

    .line 2218
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 2220
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/AlphaInputView;->isTerminalPunctuation(C)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

    invoke-virtual {v6}, Lcom/nuance/swype/input/AutospaceHandler;->shouldAutoSpace()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2221
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2224
    :cond_2
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/AlphaInputView;->isTerminalPunctuation(C)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isShifted()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 2227
    :cond_3
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mPreTraceShiftedState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-direct {p0, v1, v6}, Lcom/nuance/swype/input/AlphaInputView;->promotingTermPunctOrSingleLetter(CLcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 2229
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v8, :cond_4

    .line 2230
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2233
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

    invoke-virtual {v6, v9}, Lcom/nuance/swype/input/AutospaceHandler;->onKey(I)Z

    .line 2234
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 2235
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 2240
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v3

    .line 2241
    .local v3, "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    if-eqz v3, :cond_5

    .line 2242
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v6, v4}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctSpace(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2244
    const-string v2, "punct-space gesture"

    .line 2245
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordGestureType(Ljava/lang/String;)V

    .line 2251
    .end local v2    # "type":Ljava/lang/String;
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->showNextWordPrediction()V

    .line 2258
    .end local v0    # "defaultCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    .end local v1    # "firstChar":C
    .end local v3    # "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    .end local v4    # "word":Ljava/lang/String;
    :goto_1
    return v5

    .line 2246
    .restart local v0    # "defaultCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    .restart local v1    # "firstChar":C
    .restart local v3    # "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    .restart local v4    # "word":Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-static {v4}, Lcom/nuance/swype/util/CharacterUtilities;->isSingleWordSpace(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2247
    const-string v2, "single-word gesture"

    .line 2248
    .restart local v2    # "type":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordGestureType(Ljava/lang/String;)V

    goto :goto_0

    .line 2258
    .end local v0    # "defaultCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    .end local v1    # "firstChar":C
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    .end local v4    # "word":Ljava/lang/String;
    :cond_7
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->handleGesture(Lcom/nuance/input/swypecorelib/Candidates;)Z

    move-result v5

    goto :goto_1
.end method

.method public handleHardKeyCapsLock(Z)Z
    .locals 3
    .param p1, "iscapslockon"    # Z

    .prologue
    const/4 v2, 0x1

    .line 3585
    if-eqz p1, :cond_1

    .line 3586
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 3591
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v0, v1, :cond_0

    .line 3592
    iput-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->isManualShift:Z

    .line 3595
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateNWP()V

    .line 3597
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->invalidateKeyboardImage()V

    .line 3598
    return v2

    .line 3588
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    goto :goto_0
.end method

.method public handleHardKeyDirectionKey(I)Z
    .locals 4
    .param p1, "keycode"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3630
    iput-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->isAddToDictionaryTipHighlighted:Z

    .line 3631
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-nez v2, :cond_0

    .line 3632
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyToApplication(I)V

    .line 3692
    :goto_0
    return v0

    .line 3636
    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    move v0, v1

    .line 3692
    goto :goto_0

    .line 3639
    :pswitch_0
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->isShowingCandidatesFor(Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3640
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/CandidatesListView;->getSelectedIndex()I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 3641
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->moveHighlightToNearCandidateForNWP(I)Z

    move-result v0

    goto :goto_0

    .line 3643
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    move v0, v1

    .line 3644
    goto :goto_0

    .line 3646
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 3647
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    move v0, v1

    .line 3648
    goto :goto_0

    .line 3650
    :cond_4
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->moveHighlightToNearCandidate(I)Z

    move-result v0

    goto :goto_0

    .line 3652
    :pswitch_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isShowingAddToDictionaryTip()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3653
    iput-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->isAddToDictionaryTipHighlighted:Z

    .line 3654
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/CandidatesListView;->setHardwareKeyboardUsed(Z)V

    .line 3655
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/CandidatesListView;->setHighlightAddtoDictionaryTip(Z)V

    goto :goto_0

    .line 3658
    :cond_5
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3659
    sget-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v1, v0}, Lcom/nuance/swype/input/AlphaInputView;->selectDefaultSuggestion(ZLcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 3660
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->flushCurrentActiveWord()V

    move v0, v1

    .line 3661
    goto :goto_0

    .line 3663
    :cond_6
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->isShowingCandidatesFor(Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3665
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/CandidatesListView;->getSelectedIndex()I

    move-result v0

    if-eq v0, v3, :cond_7

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 3666
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->moveHightlightToCenter(I)Z

    move-result v0

    goto :goto_0

    .line 3668
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearCurrentActiveWord()V

    move v0, v1

    .line 3669
    goto/16 :goto_0

    .line 3671
    :cond_8
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputFieldInfo;->isMultilineField()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/CandidatesListView;->wordCount()I

    move-result v2

    if-lez v2, :cond_9

    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_9

    .line 3673
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    move v0, v1

    .line 3674
    goto/16 :goto_0

    .line 3677
    :cond_9
    :pswitch_2
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3678
    sget-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v1, v0}, Lcom/nuance/swype/input/AlphaInputView;->selectDefaultSuggestion(ZLcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 3679
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->flushCurrentActiveWord()V

    move v0, v1

    .line 3680
    goto/16 :goto_0

    .line 3682
    :cond_a
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->isShowingCandidatesFor(Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3684
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearCurrentActiveWord()V

    goto/16 :goto_0

    .line 3686
    :cond_b
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isMultilineField()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/CandidatesListView;->wordCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 3688
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    move v0, v1

    .line 3689
    goto/16 :goto_0

    .line 3636
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public handleHardKeyEndKey()Z
    .locals 11

    .prologue
    const/16 v10, 0x121

    const/16 v9, 0x7b

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3937
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v7

    if-gtz v7, :cond_2

    .line 3939
    :cond_0
    invoke-virtual {p0, v9}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyToApplication(I)V

    move v5, v6

    .line 3981
    :cond_1
    :goto_0
    return v5

    .line 3943
    :cond_2
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v7

    sget-object v8, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v7, v8, :cond_3

    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v7

    sget-object v8, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v7, v8, :cond_3

    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v7

    sget-object v8, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v7, v8, :cond_4

    .line 3947
    :cond_3
    invoke-virtual {p0, v9}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyToApplication(I)V

    goto :goto_0

    .line 3951
    :cond_4
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .line 3952
    .local v3, "wordCandidatesCount":I
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v7}, Lcom/nuance/swype/input/CandidatesListView;->getSelectedIndex()I

    move-result v7

    if-ge v7, v3, :cond_1

    .line 3956
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v7, v3}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 3958
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v8, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v8, v3}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Lcom/nuance/swype/input/CandidatesListView;->touchWord(ILcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 3959
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v7}, Lcom/nuance/swype/input/CandidatesListView;->scrollEnd()V

    .line 3960
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->syncCandidateDisplayStyleToMode()V

    .line 3962
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3963
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 3964
    .local v1, "inlineword":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 3965
    .local v2, "span":Landroid/text/style/UnderlineSpan;
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v7}, Lcom/nuance/swype/input/CandidatesListView;->getCurrentSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v4

    .line 3966
    .local v4, "wordcandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3967
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 3968
    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3969
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v2, v6, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3971
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v2, v6, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3973
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 3974
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 3975
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3976
    invoke-static {v0, v1}, Lcom/nuance/swype/util/InputConnectionUtils;->setComposingText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 3977
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0
.end method

.method public handleHardKeyEscapeKey()Z
    .locals 1

    .prologue
    .line 3621
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3622
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearCurrentActiveWord()V

    .line 3625
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public handleHardKeyHomeKey()Z
    .locals 10

    .prologue
    const/16 v9, 0x121

    const/16 v8, 0x7a

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3888
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v6

    if-gtz v6, :cond_2

    .line 3890
    :cond_0
    invoke-virtual {p0, v8}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyToApplication(I)V

    move v4, v5

    .line 3931
    :cond_1
    :goto_0
    return v4

    .line 3894
    :cond_2
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v6

    sget-object v7, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v6, v7, :cond_3

    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v6

    sget-object v7, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v6, v7, :cond_3

    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v6

    sget-object v7, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v6, v7, :cond_4

    .line 3898
    :cond_3
    invoke-virtual {p0, v8}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyToApplication(I)V

    goto :goto_0

    .line 3902
    :cond_4
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/CandidatesListView;->getSelectedIndex()I

    move-result v6

    if-eqz v6, :cond_1

    .line 3905
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v6, v5}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 3908
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v7, v5}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/nuance/swype/input/CandidatesListView;->touchWord(ILcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 3909
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/CandidatesListView;->scrollHead()V

    .line 3910
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->syncCandidateDisplayStyleToMode()V

    .line 3912
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3913
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 3914
    .local v1, "inlineword":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 3915
    .local v2, "span":Landroid/text/style/UnderlineSpan;
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/CandidatesListView;->getCurrentSelectedCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v3

    .line 3916
    .local v3, "wordcandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3917
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 3918
    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3919
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v2, v5, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3921
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v2, v5, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3923
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 3924
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 3925
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3926
    invoke-static {v0, v1}, Lcom/nuance/swype/util/InputConnectionUtils;->setComposingText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 3927
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0
.end method

.method public handleHardkeyBackspace(I)Z
    .locals 1
    .param p1, "repeatedCount"    # I

    .prologue
    .line 3430
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->handleBackspace(I)Z

    move-result v0

    return v0
.end method

.method public handleHardkeyCharKey(ILandroid/view/KeyEvent;Z)V
    .locals 11
    .param p1, "primaryCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "shiftable"    # Z

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x121

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3317
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    .line 3318
    .local v2, "eventTime":J
    :goto_0
    invoke-super {p0, v10, p1, v2, v3}, Lcom/nuance/swype/input/InputView;->handleCharKey(Landroid/graphics/Point;IJ)V

    .line 3320
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->setReconstructWord(I)V

    .line 3322
    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AlphaInputView;->isShowingCandidatesFor(Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3323
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 3329
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isInsideWord()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3330
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v4}, Lcom/nuance/swype/input/EditState;->end()V

    .line 3332
    int-to-char v0, p1

    .line 3334
    .local v0, "ch":C
    iget-boolean v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mMiniKeyboardOnScreen:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mMiniKeyboard:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardViewEx;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v4

    .line 3336
    :goto_1
    sget-object v5, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-eq v4, v5, :cond_9

    .line 3337
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 3342
    :cond_2
    :goto_2
    iget-boolean v4, p0, Lcom/nuance/swype/input/AlphaInputView;->isManualShift:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v4

    sget-object v5, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v4, v5, :cond_3

    .line 3343
    sget-object v4, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AlphaInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 3346
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isMultitapping()Z

    move-result v4

    if-nez v4, :cond_a

    .line 3347
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyChar(C)V

    .line 3414
    .end local v0    # "ch":C
    :cond_4
    :goto_3
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    int-to-char v5, p1

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/CharacterUtilities;->isWordCompounder(I)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->composingWordCandidates()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->supportsAlphaMode()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3416
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->processDeferredSuggestionUpdates()Z

    .line 3417
    sget-object v4, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AlphaInputView;->selectDefaultSuggestion(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 3418
    sget-object v4, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AlphaInputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 3421
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isMultitapping()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3422
    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 3425
    :cond_6
    iput v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    .line 3426
    return-void

    .line 3317
    .end local v2    # "eventTime":J
    :cond_7
    const-wide/16 v2, 0x0

    goto/16 :goto_0

    .line 3334
    .restart local v0    # "ch":C
    .restart local v2    # "eventTime":J
    :cond_8
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v4

    goto :goto_1

    .line 3338
    :cond_9
    const/16 v4, 0x41

    if-lt v0, v4, :cond_2

    const/16 v4, 0x5a

    if-gt v0, v4, :cond_2

    .line 3339
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    goto :goto_2

    .line 3350
    :cond_a
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3351
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 3352
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 3354
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mBKMultiptappingCharSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v4, v5, v8, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3356
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mFGMultiptappingCharSpan:Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v4, v5, v8, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3359
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 3361
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_4

    .line 3362
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v1, v4, v7}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_3

    .line 3368
    .end local v0    # "ch":C
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_b
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AlphaInputView;->clearSelectionKeys(Landroid/view/inputmethod/InputConnection;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3369
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 3378
    :cond_c
    :goto_4
    int-to-char v4, p1

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 3380
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->handleWhiteSpaces(I)V

    goto/16 :goto_3

    .line 3370
    :cond_d
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isEmptyCandidateList()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v4, v5, :cond_c

    :cond_e
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentWordCandiatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v4

    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v4, v5, :cond_c

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v4, p1}, Lcom/nuance/swype/util/CharacterUtilities;->isWordCompounder(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3373
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->processDeferredSuggestionUpdates()Z

    .line 3375
    sget-object v4, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AlphaInputView;->selectDefaultSuggestion(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    goto :goto_4

    .line 3381
    :cond_f
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isMultitapping()Z

    move-result v5

    if-nez v5, :cond_12

    .line 3386
    invoke-static {v4}, Lcom/nuance/swype/util/CharacterUtilities;->isDigit(I)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v5

    if-eqz v5, :cond_10

    iget v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardLayoutId:I

    const/16 v6, 0x600

    if-eq v5, v6, :cond_12

    .line 3394
    :cond_10
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v5, v4}, Lcom/nuance/swype/util/CharacterUtilities;->isWordAcceptingSymbol(I)Z

    move-result v5

    if-nez v5, :cond_11

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v5, v4}, Lcom/nuance/swype/util/CharacterUtilities;->canStartWord(C)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->composingWordCandidates()Z

    move-result v4

    if-nez v4, :cond_12

    .line 3407
    :cond_11
    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/AlphaInputView;->useKDBHardkey(Z)V

    .line 3408
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->handlePunctOrSymbol(I)V

    goto/16 :goto_3

    .line 3410
    :cond_12
    invoke-direct {p0, v10, p1, v2, v3}, Lcom/nuance/swype/input/AlphaInputView;->handlePrediction(Landroid/graphics/Point;IJ)V

    goto/16 :goto_3
.end method

.method public handleHardkeyDelete(I)Z
    .locals 6
    .param p1, "repeatedCount"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3458
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 3460
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v2, :cond_0

    if-nez v1, :cond_2

    .line 3461
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->sendBackspace(I)V

    .line 3504
    :cond_1
    :goto_0
    return v4

    .line 3469
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isComposingText()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3471
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 3472
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/AlphaInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 3474
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 3477
    :cond_5
    const-string v2, "multitap"

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mRecaptureOn:Z

    if-eqz v2, :cond_6

    .line 3480
    invoke-interface {v1, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3481
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3482
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3483
    invoke-interface {v1, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 3484
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 3489
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->flushCurrentActiveWord()V

    .line 3490
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 3493
    invoke-interface {v1, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3494
    .local v0, "cSeqAfter":Ljava/lang/CharSequence;
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 3495
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3496
    invoke-interface {v1, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 3497
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 3499
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 3500
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearAllKeys()V

    .line 3501
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setContext([C)V

    .line 3502
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v2}, Lcom/nuance/swype/input/EditState;->backSpace()V

    goto/16 :goto_0
.end method

.method public handleHardkeyEnter()Z
    .locals 5

    .prologue
    const/16 v3, 0x42

    const/4 v4, 0x1

    .line 3528
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 3530
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->isAddToDictionaryTipHighlighted:Z

    .line 3531
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 3532
    :cond_0
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyToApplication(I)V

    .line 3578
    :goto_0
    return v4

    .line 3536
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v1, v2, :cond_3

    .line 3539
    :cond_2
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyToApplication(I)V

    goto :goto_0

    .line 3543
    :cond_3
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3546
    invoke-static {v0}, Lcom/nuance/swype/util/InputConnectionUtils;->isComposingTextSelected(Landroid/view/inputmethod/InputConnection;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3547
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 3548
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearAllKeys()V

    .line 3571
    :cond_4
    :goto_1
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyToApplication(I)V

    .line 3573
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 3574
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 3576
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 3549
    :cond_5
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->composingWordCandidates()Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mIsUseHardkey:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v1, v2, :cond_8

    .line 3552
    :cond_6
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_SPACE:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-direct {p0, v1, v2, v3}, Lcom/nuance/swype/input/AlphaInputView;->selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/CharSequence;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 3558
    iget v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 3559
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->triggerAutoSpaceTip()V

    .line 3561
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 3562
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 3564
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 3566
    :cond_8
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_4

    .line 3568
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    goto :goto_1
.end method

.method public handleHardkeyShiftKey(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .locals 3
    .param p1, "state"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    const/4 v2, 0x1

    .line 3603
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3604
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 3606
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v0, v1, :cond_0

    .line 3607
    iput-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->isManualShift:Z

    .line 3610
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateNWP()V

    .line 3612
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->invalidateKeyboardImage()V

    .line 3614
    :cond_1
    return v2
.end method

.method public handleHardkeySpace(ZI)Z
    .locals 7
    .param p1, "quickPressed"    # Z
    .param p2, "repeatedCount"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 3435
    iput-boolean v5, p0, Lcom/nuance/swype/input/AlphaInputView;->isAddToDictionaryTipHighlighted:Z

    .line 3436
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 3438
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 3439
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v3

    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v3, v4, :cond_0

    .line 3441
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    .line 3442
    .local v1, "selectedCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->shouldRemoveSpaceBefore()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 3444
    invoke-interface {v0, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3445
    .local v2, "seq":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v3, v6, :cond_0

    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    .line 3448
    const/4 v3, 0x1

    invoke-interface {v0, v3, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 3453
    .end local v1    # "selectedCandidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    .end local v2    # "seq":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/AlphaInputView;->handleSpace(ZI)Z

    move-result v3

    return v3
.end method

.method public handleKey(IZI)Z
    .locals 8
    .param p1, "primaryCode"    # I
    .param p2, "quickPressed"    # Z
    .param p3, "repeatedCount"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 600
    const/4 v1, 0x0

    .line 601
    .local v1, "handled":Z
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

    invoke-virtual {v6, p1}, Lcom/nuance/swype/input/AutospaceHandler;->onKey(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 602
    const/4 v1, 0x1

    .line 679
    :cond_0
    :goto_0
    return v1

    .line 604
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 671
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v1

    .line 672
    if-nez v1, :cond_0

    .line 673
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

    iget v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    invoke-virtual {v4, p1, v5}, Lcom/nuance/swype/input/AutospaceHandler;->onCharKey(II)V

    goto :goto_0

    .line 606
    :sswitch_0
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v4}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v4

    const/4 v5, 0x7

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v4}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v4}, Lcom/nuance/swype/input/EditState;->current()I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 610
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->triggerAutoSpaceTip()V

    .line 614
    :cond_3
    invoke-virtual {p0, p2, p3}, Lcom/nuance/swype/input/AlphaInputView;->handleSpace(ZI)Z

    move-result v1

    .line 615
    goto :goto_0

    .line 617
    :sswitch_1
    iget-boolean v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    if-eqz v4, :cond_4

    .line 618
    invoke-direct {p0, v7}, Lcom/nuance/swype/input/AlphaInputView;->postToastMsg(I)V

    .line 621
    :cond_4
    const/4 v1, 0x1

    .line 622
    goto :goto_0

    .line 624
    :sswitch_2
    if-nez p2, :cond_5

    .line 625
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->startSpeech()V

    .line 627
    :cond_5
    const/4 v1, 0x1

    .line 628
    goto :goto_0

    .line 630
    :sswitch_3
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->toggleLastKeyboard()V

    .line 631
    const/4 v1, 0x1

    .line 632
    goto :goto_0

    .line 635
    :sswitch_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isExploreByTouchOn()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 636
    const/4 v1, 0x1

    .line 637
    goto :goto_0

    .line 639
    :cond_6
    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->isAutoSpaceSupported()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->isThaiLanguage()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 640
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 641
    .local v2, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->isValidBuild()Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v2, :cond_8

    .line 642
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v2, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getSelectedTextInEditor(Lcom/nuance/swype/input/InputFieldInfo;)Ljava/lang/String;

    move-result-object v3

    .line 643
    .local v3, "selectedText":Ljava/lang/String;
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    .line 644
    invoke-virtual {p0, v3, v4}, Lcom/nuance/swype/input/AlphaInputView;->handleAddRemoveDlmWord(Ljava/lang/String;Z)V

    .line 645
    const/4 v1, 0x1

    .line 661
    .end local v3    # "selectedText":Ljava/lang/String;
    :cond_8
    :goto_1
    if-nez v1, :cond_9

    .line 662
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v1

    .line 666
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    goto/16 :goto_0

    .line 653
    .end local v2    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    :cond_a
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 654
    .restart local v2    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v2, :cond_8

    .line 655
    invoke-virtual {v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getComposingRangeInEditor()[I

    move-result-object v0

    .line 656
    .local v0, "composing":[I
    if-eqz v0, :cond_b

    aget v6, v0, v5

    aget v7, v0, v4

    invoke-virtual {v2, v6, v7}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->setSelection(II)Z

    move-result v6

    if-eqz v6, :cond_b

    move v1, v4

    :goto_2
    goto :goto_1

    :cond_b
    move v1, v5

    goto :goto_2

    .line 604
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0xb7c -> :sswitch_1
        0x193f -> :sswitch_2
        0xaa37 -> :sswitch_4
        0xaa38 -> :sswitch_3
    .end sparse-switch
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 709
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->handleKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 715
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_2

    const/16 v0, 0xfbd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xfdb

    if-ne p1, v0, :cond_2

    .line 719
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->composingWordCandidates()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_3

    .line 723
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->CURSOR_REPOSITION:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/swype/input/AlphaInputView;->selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/CharSequence;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 731
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 725
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->flushCurrentActiveWord()V

    goto :goto_0
.end method

.method protected handleLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 4
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2558
    iget-object v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v2, v2, v1

    invoke-static {v2}, Lcom/nuance/swype/input/KeyboardEx;->isShiftKey(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->handleShiftPressedHold()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2566
    :cond_0
    :goto_0
    return v0

    .line 2560
    :cond_1
    const/16 v2, 0x8

    iget-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v3, v3, v1

    if-ne v2, v3, :cond_2

    .line 2561
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->handleDeleteWordBack(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    goto :goto_0

    .line 2562
    :cond_2
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->handleLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 2566
    goto :goto_0
.end method

.method public handleMultitapToggle()V
    .locals 3

    .prologue
    .line 1695
    iget-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    if-eqz v1, :cond_0

    .line 1696
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->toggleAmbigMode()V

    .line 1697
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    .line 1698
    .local v0, "inputMode":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->setCorrectionLevel(Ljava/lang/String;)V

    .line 1699
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    const-string v2, "multitap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/AppPreferences;->setMultitapMode(Z)V

    .line 1705
    sget-object v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->MULTITAP_TOGGLE:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/AlphaInputView;->selectDefaultSuggestion(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 1707
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 1709
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/nuance/swype/input/IME;->refreshLanguageOnSpaceKey(Lcom/nuance/swype/input/KeyboardEx;Lcom/nuance/swype/input/KeyboardViewEx;)V

    .line 1711
    .end local v0    # "inputMode":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public handlePossibleActionAfterResize()V
    .locals 1

    .prologue
    .line 4286
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4287
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->setCandidatesViewShown(Z)V

    .line 4289
    :cond_0
    return-void
.end method

.method public handlePossibleActionAfterUniversalKeyboardResize(Z)V
    .locals 1
    .param p1, "hideSymbolView"    # Z

    .prologue
    .line 4266
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4267
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->setCandidatesViewShown(Z)V

    .line 4269
    :cond_0
    return-void
.end method

.method protected handlePreTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V
    .locals 2
    .param p1, "points"    # Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    .prologue
    .line 993
    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->isHypenInput:Z

    if-eqz v0, :cond_0

    .line 994
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->isHypenInput:Z

    .line 1012
    :goto_0
    return-void

    .line 997
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/AlphaInputView;->traceLog:Lcom/nuance/swype/util/LogManager$Trace;

    .line 998
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->processDeferredSuggestionUpdates()Z

    .line 999
    sget-object v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->SWYPE_NEXT_WORD:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->selectDefaultSuggestion(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 1001
    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->isManualShift:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1002
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->triggerCapitalizationGestureTip()V

    .line 1006
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mPreTraceShiftedState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 1007
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mPreTraceShiftedState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v0, v1, :cond_2

    .line 1009
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 1011
    :cond_2
    sget-object v0, Lcom/nuance/swype/input/AlphaInputView;->traceLog:Lcom/nuance/swype/util/LogManager$Trace;

    goto :goto_0
.end method

.method protected handleShiftKey()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2449
    iget-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->isLongPressed:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isExploreByTouchOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2450
    invoke-direct {p0, v5}, Lcom/nuance/swype/input/AlphaInputView;->toggleCapsLock(Z)Z

    .line 2451
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->isLongPressed:Z

    .line 2457
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isExploreByTouchOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2458
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->getInstance()Lcom/nuance/swype/input/accessibility/AccessibilityNotification;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->speakShiftState(Landroid/content/Context;Lcom/nuance/input/swypecorelib/Shift$ShiftState;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 2461
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v0

    .line 2462
    .local v0, "keyboardScribe":Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    if-eqz v0, :cond_1

    .line 2463
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 2466
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v1, v2, :cond_2

    .line 2467
    iput-boolean v5, p0, Lcom/nuance/swype/input/AlphaInputView;->isManualShift:Z

    .line 2471
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateNWP()V

    .line 2473
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->invalidateKeyboardImage()V

    .line 2474
    return-void

    .line 2453
    .end local v0    # "keyboardScribe":Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->cycleShiftState()V

    goto :goto_0
.end method

.method public handleSpace(ZI)Z
    .locals 17
    .param p1, "quickPressed"    # Z
    .param p2, "repeatedCount"    # I

    .prologue
    .line 1243
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v12

    .line 1244
    .local v12, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/nuance/swype/input/AlphaInputView;->mNextWordPredictionOn:Z

    .line 1246
    .local v11, "displayNWP":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v1, :cond_0

    if-nez v12, :cond_1

    .line 1247
    :cond_0
    const/16 v1, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyChar(C)V

    .line 1248
    const/4 v1, 0x1

    .line 1385
    :goto_0
    return v1

    .line 1251
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-virtual {v1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->isOverrideActive()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v14, 0x1

    .line 1253
    .local v14, "isSpaceAfterRevert":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    if-eqz v1, :cond_2

    .line 1254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/BackspaceRevertHandler;->onPreSpace(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 1258
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->processDeferredSuggestionUpdates()Z

    .line 1267
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1268
    .local v9, "cSeqBef":Ljava/lang/CharSequence;
    if-eqz v9, :cond_4

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 1269
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->isTerminalPunctuation(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1270
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->triggerPunctuationGestureTip()V

    .line 1275
    :cond_3
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4

    .line 1276
    const/4 v11, 0x0

    .line 1280
    :cond_4
    invoke-virtual {v12}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 1282
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v15

    .line 1285
    .local v15, "prevShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->isComposingTextSelected()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1286
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 1338
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->isExploreByTouchOn()Z

    move-result v1

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getTerminalPunctuation()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getTerminalPunctuation()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mAutoPunctuationOn:Z

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v1, :cond_6

    .line 1342
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1348
    .local v10, "cSeqBefore":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getTerminalPunctuation()Ljava/lang/CharSequence;

    move-result-object v8

    .line 1350
    .local v8, "autopunct":Ljava/lang/CharSequence;
    if-eqz v10, :cond_6

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_6

    .line 1355
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->deleteSurroundingText(II)Z

    .line 1357
    const/4 v1, 0x1

    invoke-virtual {v12, v8, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1358
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/nuance/swype/input/AlphaInputView;->mNextWordPredictionOn:Z

    .line 1362
    .end local v8    # "autopunct":Ljava/lang/CharSequence;
    .end local v10    # "cSeqBefore":Ljava/lang/CharSequence;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->spaceKey()V

    .line 1363
    const/16 v1, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->sendKeyChar(C)V

    .line 1364
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 1367
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->isShowingCandidatesFor(Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1368
    if-eqz v11, :cond_f

    .line 1369
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 1370
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 1371
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->updateWordContext()V

    .line 1372
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 1383
    :cond_7
    :goto_3
    invoke-virtual {v12}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    .line 1385
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1251
    .end local v9    # "cSeqBef":Ljava/lang/CharSequence;
    .end local v14    # "isSpaceAfterRevert":Z
    .end local v15    # "prevShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 1287
    .restart local v9    # "cSeqBef":Ljava/lang/CharSequence;
    .restart local v14    # "isSpaceAfterRevert":Z
    .restart local v15    # "prevShiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->composingWordCandidates()Z

    move-result v1

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mIsUseHardkey:Z

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v1, v2, :cond_b

    .line 1292
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/nuance/swype/input/AlphaInputView;->mNextWordPredictionOn:Z

    .line 1293
    sget-object v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_SPACE:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 1294
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_SPACE:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/AlphaInputView;->selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/CharSequence;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 1300
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 1301
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->triggerAutoSpaceTip()V

    goto/16 :goto_2

    .line 1303
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_5

    .line 1306
    if-eqz v14, :cond_c

    .line 1308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->handleOverrideCacheAddSelectedCandidate(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 1309
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

    goto/16 :goto_2

    .line 1311
    :cond_c
    const/4 v13, 0x1

    .line 1312
    .local v13, "isKnown":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->RECAPTURE_BY_TEXT_SELECTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->CAPS_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v1, v2, :cond_e

    .line 1313
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-static {v12, v1}, Lcom/nuance/swype/util/InputConnectionUtils;->getWordBeforeCursor$498a830e(Landroid/view/inputmethod/InputConnection;Lcom/nuance/swype/util/CharacterUtilities;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 1314
    .local v16, "wordBeforeCursor":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nuance/swype/input/AlphaInputView;->promptToAddWords:Z

    if-eqz v1, :cond_e

    if-eqz v16, :cond_e

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_e

    .line 1315
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->isKnownWord(Ljava/lang/String;)Z

    move-result v13

    .line 1316
    if-nez v13, :cond_e

    .line 1317
    sget-object v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->TAPPED_SPACE:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 1318
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 1319
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->clearAllKeys()V

    .line 1320
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AlphaInputView;->handleAddRemoveDlmWord(Ljava/lang/String;Z)V

    .line 1324
    .end local v16    # "wordBeforeCursor":Ljava/lang/CharSequence;
    :cond_e
    if-eqz v13, :cond_5

    .line 1325
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    goto/16 :goto_2

    .line 1373
    .end local v13    # "isKnown":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v1

    if-lez v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v1, v2, :cond_7

    .line 1376
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v1

    if-eq v15, v1, :cond_7

    .line 1377
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 1378
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_3
.end method

.method public handleTrace(Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;)V
    .locals 14
    .param p1, "trace"    # Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;

    .prologue
    const/4 v11, 0x0

    .line 1017
    sget-object v12, Lcom/nuance/swype/input/AlphaInputView;->traceLog:Lcom/nuance/swype/util/LogManager$Trace;

    .line 1018
    iput-boolean v11, p0, Lcom/nuance/swype/input/AlphaInputView;->shiftGestureOn:Z

    .line 1019
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v6

    .line 1021
    .local v6, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v6, :cond_0

    if-nez p1, :cond_1

    .line 1089
    :cond_0
    :goto_0
    return-void

    .line 1024
    :cond_1
    iget-object v12, p0, Lcom/nuance/swype/input/AlphaInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/nuance/swype/input/AlphaInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v12}, Lcom/nuance/swype/input/SpeechWrapper;->isSpeechViewShowing()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1029
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1030
    .local v7, "offsetTrace":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->getPoints()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    .line 1031
    .local v9, "pt":Landroid/graphics/Point;
    iget v12, v9, Landroid/graphics/Point;->y:I

    iget v13, p0, Lcom/nuance/swype/input/AlphaInputView;->shiftGestureOffset:I

    neg-int v13, v13

    if-le v12, v13, :cond_3

    iget v12, v9, Landroid/graphics/Point;->y:I

    iget v13, p0, Lcom/nuance/swype/input/AlphaInputView;->shiftGestureOffset:I

    add-int v10, v12, v13

    .line 1032
    .local v10, "tempY":I
    :goto_2
    new-instance v12, Landroid/graphics/Point;

    iget v13, v9, Landroid/graphics/Point;->x:I

    invoke-direct {v12, v13, v10}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v10    # "tempY":I
    :cond_3
    move v10, v11

    .line 1031
    goto :goto_2

    .line 1035
    .end local v9    # "pt":Landroid/graphics/Point;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1036
    .local v8, "oldExactBuffer":Ljava/lang/StringBuilder;
    iget-object v12, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v12, v8}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getExactType(Ljava/lang/StringBuilder;)V

    .line 1039
    iget-object v12, p0, Lcom/nuance/swype/input/AlphaInputView;->mPreTraceShiftedState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    sget-object v13, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v12, v13, :cond_5

    .line 1041
    const v12, 0xffff

    invoke-virtual {v6, v12, v11}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1042
    .local v4, "cursorText":Ljava/lang/CharSequence;
    if-eqz v4, :cond_5

    .line 1043
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1044
    .local v1, "cs":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_5

    .line 1045
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 1046
    .local v2, "cursorStart":I
    iget-object v11, p0, Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

    invoke-virtual {v11, v1, v2}, Lcom/nuance/swype/input/AutospaceHandler;->shouldAutoSpace(Ljava/lang/CharSequence;I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1047
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "cursorStart":I
    .local v3, "cursorStart":I
    const-string v11, " "

    invoke-virtual {v1, v2, v11}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v11

    iget v11, v11, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v1, v3, v11}, Lcom/nuance/swype/util/InputConnectionUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v11

    .line 1050
    if-eqz v11, :cond_5

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->currentLanguageSupportsCapitalization()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1051
    sget-object v11, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    iput-object v11, p0, Lcom/nuance/swype/input/AlphaInputView;->mPreTraceShiftedState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 1059
    .end local v1    # "cs":Ljava/lang/StringBuilder;
    .end local v3    # "cursorStart":I
    .end local v4    # "cursorText":Ljava/lang/CharSequence;
    :cond_5
    iget-object v11, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->getTimes()Ljava/util/List;

    move-result-object v12

    iget-object v13, p0, Lcom/nuance/swype/input/AlphaInputView;->mPreTraceShiftedState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v11, v7, v12, v13}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->processTrace(Ljava/util/List;Ljava/util/List;Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    move-result v11

    .line 1060
    if-eqz v11, :cond_9

    .line 1061
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateWordContext()V

    .line 1063
    iget-object v11, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    sget-object v12, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v11, v12}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    .line 1065
    .local v0, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->handleGesture(Lcom/nuance/input/swypecorelib/Candidates;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1066
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearAllKeys()V

    .line 1087
    .end local v0    # "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 1088
    sget-object v11, Lcom/nuance/swype/input/AlphaInputView;->traceLog:Lcom/nuance/swype/util/LogManager$Trace;

    goto/16 :goto_0

    .line 1068
    .restart local v0    # "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    :cond_7
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v11

    if-lez v11, :cond_8

    .line 1069
    iget-object v11, p0, Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v12

    iget v13, p0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    invoke-virtual {v11, v12, v13}, Lcom/nuance/swype/input/AutospaceHandler;->onTrace(Lcom/nuance/input/swypecorelib/WordCandidate;I)V

    .line 1071
    invoke-direct {p0, v6, v0}, Lcom/nuance/swype/input/AlphaInputView;->displayDefaultCandidateAsInline(Landroid/view/inputmethod/InputConnection;Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 1074
    iget-boolean v11, p0, Lcom/nuance/swype/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-eqz v11, :cond_6

    .line 1075
    sget-object v11, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v11}, Lcom/nuance/swype/input/AlphaInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto :goto_3

    .line 1079
    :cond_8
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->setNotMatchToolTipSuggestion()V

    goto :goto_3

    .line 1084
    .end local v0    # "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->showNextWordPrediction()V

    goto :goto_3
.end method

.method public hasPendingSuggestionsUpdate()Z
    .locals 2

    .prologue
    .line 2784
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public isAddToDictionaryTipHighlighted()Z
    .locals 1

    .prologue
    .line 3517
    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->isAddToDictionaryTipHighlighted:Z

    return v0
.end method

.method public isExactCandidateNewWord()Z
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_NEW_WORD:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNationalUsing()Z
    .locals 1

    .prologue
    .line 4229
    const-string v0, "national"

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->isModeUsing(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isShowingAddToDictionaryTip()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3509
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v4, v4, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v4, v4, Lcom/nuance/swype/input/CandidatesListView;->mSuggestions:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v4

    sget-object v5, Lcom/nuance/input/swypecorelib/Candidates$Source;->UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v4, v5, :cond_0

    move v1, v2

    .line 3511
    .local v1, "oneCandidate":Z
    :goto_0
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/CandidatesListView;->getCandidateListener()Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    move-result-object v0

    .line 3512
    .local v0, "listener":Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    instance-of v4, v0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWord;

    if-eqz v4, :cond_1

    :goto_1
    return v2

    .end local v0    # "listener":Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    .end local v1    # "oneCandidate":Z
    :cond_0
    move v1, v3

    .line 3509
    goto :goto_0

    .restart local v0    # "listener":Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    .restart local v1    # "oneCandidate":Z
    :cond_1
    move v2, v3

    .line 3512
    goto :goto_1
.end method

.method public isTelexUsing()Z
    .locals 1

    .prologue
    .line 4220
    const-string v0, "telex"

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->isModeUsing(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isTraceInputEnabled()Z
    .locals 1

    .prologue
    .line 2572
    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->isTraceEnabledOnKeyboard:Z

    return v0
.end method

.method protected movePointer(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/graphics/Point;J)Z
    .locals 3
    .param p1, "ptr"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p2, "ptNew"    # Landroid/graphics/Point;
    .param p3, "time"    # J

    .prologue
    .line 2744
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne v0, v1, :cond_0

    .line 2747
    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->shiftGestureOn:Z

    if-eqz v0, :cond_1

    iget v0, p2, Landroid/graphics/Point;->y:I

    if-ltz v0, :cond_1

    .line 2748
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 2749
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->shiftGestureOn:Z

    .line 2750
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->invalidateKeyboardImage()V

    .line 2761
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/InputView;->movePointer(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/graphics/Point;J)Z

    move-result v0

    return v0

    .line 2752
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-ne v0, v1, :cond_0

    iget v0, p2, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/nuance/swype/input/AlphaInputView;->shiftGestureMargin:I

    neg-int v1, v1

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isHandlingTrace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2755
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 2756
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->shiftGestureOn:Z

    .line 2757
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->invalidateKeyboardImage()V

    goto :goto_0
.end method

.method public onApplicationUnbind()V
    .locals 0

    .prologue
    .line 2590
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->onApplicationUnbind()V

    .line 2592
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->dimissRemoveUdbWordDialog()V

    .line 2598
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 2599
    return-void
.end method

.method public onCancelNonEditStateRecaptureViaCharKey(C)V
    .locals 0
    .param p1, "ch"    # C

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView;->handleBackSpaceRevertCancelWordRecapture(C)V

    .line 280
    return-void
.end method

.method public onHandleUdbWordRemoval(Ljava/lang/String;)V
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 1422
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearCurrentActiveWord()V

    .line 1424
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearComposingTextAndSelection()V

    .line 1426
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v0, :cond_0

    .line 1427
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmDelete(Ljava/lang/String;)Z

    .line 1429
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->showNextWordPrediction()V

    .line 1430
    return-void
.end method

.method public onHardKeyText(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 4036
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 4037
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isComposingText()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4038
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 4039
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4040
    const-string v1, ""

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 4041
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 4043
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/nuance/swype/input/AlphaInputView;->handleHardkeyCharKey(ILandroid/view/KeyEvent;Z)V

    .line 4045
    :cond_1
    return-void
.end method

.method public onMultitapTimeout()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 1715
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 1717
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_0

    .line 1748
    :goto_0
    return-void

    .line 1722
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isComposingText()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1723
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1724
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v1, v4, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1725
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1746
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 1747
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->invalidateKeyboardImage()V

    goto :goto_0

    .line 1727
    :cond_3
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 1728
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mBKMultiptappingCharSpan:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 1729
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mFGMultiptappingCharSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 1730
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-interface {v1, v4, v3}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1733
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isEmptyCandidateList()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1734
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1735
    .local v0, "candidate":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1736
    .local v2, "lastSymbol":C
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v4, v2}, Lcom/nuance/swype/util/CharacterUtilities;->isWordAcceptingSymbol(I)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v3, :cond_6

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    invoke-virtual {v4, v2}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1739
    :cond_5
    :goto_2
    if-eqz v3, :cond_2

    .line 1740
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->MULTITAP_TIMEOUT:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-direct {p0, v3, v4, v5}, Lcom/nuance/swype/input/AlphaInputView;->selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/CharSequence;Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 1741
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v3}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    goto :goto_1

    .line 1736
    :cond_6
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public onPressHoldCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 1
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 1410
    if-eqz p1, :cond_0

    .line 1411
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->isRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1412
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->showRemoveUdbWordDialog(Ljava/lang/String;)V

    .line 1413
    const/4 v0, 0x1

    .line 1417
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSelectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 10
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    const/4 v3, 0x1

    .line 1434
    sget-object v0, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSelectCandidate(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 1435
    iput-object p2, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1436
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v9

    .line 1437
    .local v9, "source":Lcom/nuance/input/swypecorelib/Candidates$Source;
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 1438
    if-eqz v0, :cond_4

    .line 1439
    if-eqz p2, :cond_0

    .line 1440
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    iget v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    invoke-virtual {v0, v1, v2, p1, v4}, Lcom/nuance/swype/input/AutospaceHandler;->onSelectCandidate(Lcom/nuance/input/swypecorelib/Candidates$Source;Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/WordCandidate;I)V

    .line 1443
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->composingWordCandidates()Z

    move-result v7

    .line 1444
    .local v7, "composingWordList":Z
    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-virtual {v0}, Lcom/nuance/swype/input/BackspaceRevertHandler;->isOverrideActive()Z

    move-result v0

    if-eqz v0, :cond_5

    move v8, v3

    .line 1446
    .local v8, "isSelectRevertedWord":Z
    :goto_0
    sget-object v0, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSelectCandidate(): is revert word: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 1447
    if-eqz v8, :cond_1

    .line 1448
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->handleOverrideCacheAddSelectedCandidate(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 1450
    :cond_1
    const/4 v2, 0x0

    sget-object v5, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->SELECTION_WCL:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/AlphaInputView;->selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/CharSequence;ZZLcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;Z)V

    .line 1452
    if-eqz v7, :cond_2

    .line 1453
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1454
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->triggerAutoDefaultCandidateAcceptTip()V

    .line 1464
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    if-eq v0, v1, :cond_4

    .line 1466
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 1467
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 1468
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->showNextWordPrediction()V

    .line 1471
    .end local v7    # "composingWordList":Z
    .end local v8    # "isSelectRevertedWord":Z
    :cond_4
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v9, v0, :cond_7

    const/4 v0, 0x6

    :goto_2
    iput v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    .line 1473
    return v3

    .line 1444
    .restart local v7    # "composingWordList":Z
    :cond_5
    const/4 v8, 0x0

    goto :goto_0

    .line 1455
    .restart local v8    # "isSelectRevertedWord":Z
    :cond_6
    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->containsDoubleLetters()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1457
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->triggerDoubleLettersGestureTip()V

    goto :goto_1

    .line 1471
    .end local v7    # "composingWordList":Z
    .end local v8    # "isSelectRevertedWord":Z
    :cond_7
    const/4 v0, 0x4

    goto :goto_2
.end method

.method public onSingleTap(Z)Z
    .locals 1
    .param p1, "shouldResyncCache"    # Z

    .prologue
    .line 2478
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 2479
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->onSingleTap(Z)Z

    move-result v0

    return v0
.end method

.method public onSpeechViewDismissed()V
    .locals 1

    .prologue
    .line 4069
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->onSpeechViewDismissed()V

    .line 4070
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isEmptyCandidateList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4071
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->showNextWordPrediction()V

    .line 4073
    :cond_0
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .locals 16
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J

    .prologue
    .line 736
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v8

    .line 737
    .local v8, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v8, :cond_0

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/swype/input/AutospaceHandler;->onText(Ljava/lang/CharSequence;IZ)Z

    move-result v13

    .line 744
    .local v13, "shouldAutoSpace":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mTextInputPredictionOn:Z

    if-nez v1, :cond_5

    .line 745
    :cond_2
    if-eqz v13, :cond_3

    .line 746
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->sendSpace()V

    .line 748
    :cond_3
    invoke-virtual {v8}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 750
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->isShifted()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 751
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v8, v1, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 756
    :goto_1
    invoke-virtual {v8}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    .line 758
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 759
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    goto :goto_0

    .line 753
    :cond_4
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_1

    .line 764
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->processDeferredSuggestionUpdates()Z

    .line 769
    invoke-virtual/range {p0 .. p1}, Lcom/nuance/swype/input/AlphaInputView;->isLikelyDomain(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 774
    .local v9, "isDomain":Z
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->isShifted()Z

    move-result v10

    .line 776
    .local v10, "isShiftedText":Z
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/CharacterUtilities;->isWordAcceptingSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v15, 0x1

    .line 778
    .local v15, "wordAcceptingSymbol":Z
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->charUtils:Lcom/nuance/swype/util/CharacterUtilities;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v11, 0x1

    .line 781
    .local v11, "punctuationOrSymbol":Z
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->composingWordCandidates()Z

    move-result v1

    if-nez v1, :cond_6

    if-nez v11, :cond_7

    :cond_6
    if-eqz v15, :cond_b

    .line 782
    :cond_7
    if-eqz v13, :cond_8

    .line 783
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->sendSpace()V

    .line 785
    :cond_8
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->handlePunctOrSymbol(I)V

    goto/16 :goto_0

    .line 776
    .end local v11    # "punctuationOrSymbol":Z
    .end local v15    # "wordAcceptingSymbol":Z
    :cond_9
    const/4 v15, 0x0

    goto :goto_2

    .line 778
    .restart local v15    # "wordAcceptingSymbol":Z
    :cond_a
    const/4 v11, 0x0

    goto :goto_3

    .line 789
    .restart local v11    # "punctuationOrSymbol":Z
    :cond_b
    move-object/from16 v14, p1

    .line 790
    .local v14, "symbols":Ljava/lang/CharSequence;
    if-eqz v10, :cond_c

    if-eqz v9, :cond_c

    .line 791
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    .line 794
    :cond_c
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_d

    if-nez v15, :cond_d

    invoke-static {}, Lcom/nuance/swype/input/emoji/EmojiInputController;->isActive()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 795
    :cond_d
    invoke-virtual {v8}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 797
    if-eqz v13, :cond_e

    .line 799
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 801
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v8, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getSelectedTextInEditor(Lcom/nuance/swype/input/InputFieldInfo;)Ljava/lang/String;

    move-result-object v12

    .line 802
    .local v12, "selectedText":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->composingWordCandidates()Z

    move-result v1

    if-eqz v1, :cond_13

    if-eqz v12, :cond_f

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_13

    .line 803
    :cond_f
    sget-object v1, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 805
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-object v6, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    if-nez v9, :cond_12

    const/4 v7, 0x1

    :goto_4
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/nuance/swype/input/AlphaInputView;->selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Ljava/lang/CharSequence;ZZLcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;Z)V

    .line 806
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_10

    .line 807
    const/4 v1, 0x1

    invoke-virtual {v8, v14, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 816
    :cond_10
    :goto_5
    if-eqz v9, :cond_11

    .line 819
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->learnNewWords()V

    .line 820
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->promptForAddingOOVCandidate:Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->promptToAddIfAny()V

    .line 823
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    .line 824
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 825
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearAllKeys()Z

    .line 826
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->showNextWordPrediction()V

    .line 828
    invoke-virtual {v8}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    .line 862
    .end local v12    # "selectedText":Ljava/lang/String;
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 863
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 865
    const/4 v1, 0x5

    move-object/from16 v0, p0

    iput v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    goto/16 :goto_0

    .line 805
    .restart local v12    # "selectedText":Ljava/lang/String;
    :cond_12
    const/4 v7, 0x0

    goto :goto_4

    .line 811
    :cond_13
    const/4 v1, 0x1

    invoke-virtual {v8, v14, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 812
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    goto :goto_5

    .line 829
    .end local v12    # "selectedText":Ljava/lang/String;
    :cond_14
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v14, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/nuance/swype/util/CharacterUtilities;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->composingWordCandidates()Z

    move-result v1

    if-nez v1, :cond_16

    .line 831
    if-eqz v13, :cond_15

    .line 832
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->sendSpace()V

    .line 835
    :cond_15
    invoke-virtual {v8}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 836
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/nuance/swype/input/AlphaInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 837
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 838
    const/4 v1, 0x1

    invoke-virtual {v8, v14, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 839
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v1}, Lcom/nuance/swype/input/EditState;->punctuationOrSymbols()V

    .line 840
    invoke-virtual {v8}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    goto :goto_6

    .line 842
    :cond_16
    if-eqz v13, :cond_17

    .line 843
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->sendSpace()V

    .line 846
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->composingWordCandidates()Z

    move-result v1

    if-nez v1, :cond_18

    .line 847
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/nuance/swype/input/AlphaInputView;->clearCurrentInline(Landroid/view/inputmethod/InputConnection;)V

    .line 848
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    .line 852
    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->addExplicit([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 856
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/nuance/swype/input/AlphaInputView;->displayExactTypeAsInline(Landroid/view/inputmethod/InputConnection;)V

    .line 859
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_6
.end method

.method protected onUpdateSpeechText(Ljava/lang/CharSequence;ZZ)V
    .locals 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "isStreaming"    # Z
    .param p3, "isFinal"    # Z

    .prologue
    const/4 v2, 0x1

    .line 2801
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->onUpdateSpeechText(Ljava/lang/CharSequence;ZZ)V

    .line 2803
    sget-object v0, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "onUpdateSpeechText: isFinal = "

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2806
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0, v2, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->delayWordReorder(II)V

    .line 2809
    sget-object v0, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "onUpdateSpeechText: dlm update, buffer len = "

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2811
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmImplicitScanBuf(Ljava/lang/String;IZZLjava/lang/String;)Z

    .line 2816
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmCount()I

    move-result v8

    .line 2818
    .local v8, "udbCurrentCount":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->getCustomWordsSynchronizationServerWordsCount()I

    move-result v9

    .line 2820
    .local v9, "udbServerCount":I
    if-eq v8, v9, :cond_0

    .line 2821
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->getCurrentDictation()Lcom/nuance/speech/Dictation;

    move-result-object v7

    .line 2822
    .local v7, "dictation":Lcom/nuance/speech/Dictation;
    if-eqz v7, :cond_0

    .line 2823
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-static {v0, v1, v2}, Lcom/nuance/swype/input/udb/UserDictionaryIterator;->createAlphaIterator(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/SpeechWrapper;)Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/nuance/speech/Dictation;->getCustomWordsSync(Lcom/nuance/swype/input/udb/UserDictionaryIterator;)Lcom/nuance/speech/CustomWordSynchronizer;

    move-result-object v6

    .line 2824
    .local v6, "cws":Lcom/nuance/speech/CustomWordSynchronizer;
    if-eqz v6, :cond_0

    .line 2825
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/nuance/speech/CustomWordSynchronizer;->resyncAllUserWords(Lcom/nuance/swype/input/InputFieldInfo;)V

    .line 2829
    .end local v6    # "cws":Lcom/nuance/speech/CustomWordSynchronizer;
    .end local v7    # "dictation":Lcom/nuance/speech/Dictation;
    :cond_0
    return-void
.end method

.method protected preUpdateSpeechText()V
    .locals 4

    .prologue
    .line 4077
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->isAddSpaceRequired()Z

    move-result v1

    .line 4078
    .local v1, "useSpace":Z
    sget-object v2, Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;->GENERIC:Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->selectDefaultSuggestion(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 4086
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isExploreByTouchOn()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 4087
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 4088
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 4089
    const-string v2, " "

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 4092
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    return-void
.end method

.method public reconstructWord()V
    .locals 4

    .prologue
    .line 4195
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearAllKeys()V

    .line 4196
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setVietInputMode(I)Z

    .line 4197
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mReconstructWord:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mReconstructWord:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->reconstructWord([CIZ)Z

    .line 4198
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isTelexUsing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4199
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setVietInputMode(I)Z

    .line 4201
    :cond_0
    return-void
.end method

.method public refreshBTAutoCorrection()V
    .locals 3

    .prologue
    .line 2939
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->refreshBTAutoCorrection()V

    .line 2940
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    const/16 v1, 0x63

    iget-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->autoCorrectionEnabled:Z

    invoke-virtual {v0, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setAttribute(IZ)Z

    .line 2941
    return-void
.end method

.method public requestAutospaceOverrideTo(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4272
    if-eqz p1, :cond_2

    .line 4273
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->resetAutoSpace()V

    .line 4274
    iget-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAutoSpace:Z

    if-nez v2, :cond_1

    .line 4275
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->isAutoSpaceSupported()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v2, v1, v0}, Lcom/nuance/swype/input/AutospaceHandler;->setEnabled(ZZ)V

    .line 4282
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 4275
    goto :goto_0

    .line 4277
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AutospaceHandler;->onUpdateEditorInfo(Lcom/nuance/swype/input/InputFieldInfo;)V

    goto :goto_1

    .line 4280
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->isAutoSpaceSupported()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_2
    invoke-virtual {v2, v1, v0}, Lcom/nuance/swype/input/AutospaceHandler;->setEnabled(ZZ)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public selectDefaultSuggestion(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V
    .locals 1
    .param p1, "selectionType"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .prologue
    .line 2738
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/AlphaInputView;->selectDefaultSuggestion(ZLcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 2739
    return-void
.end method

.method public selectDefaultSuggestion(ZLcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V
    .locals 7
    .param p1, "shouldCommitText"    # Z
    .param p2, "selectionType"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .prologue
    .line 2728
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->shouldSelectDefaultCandidate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2729
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

    .line 2734
    :goto_0
    return-void

    .line 2732
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->flushCurrentActiveWord()V

    goto :goto_0
.end method

.method protected sendBackspace(I)V
    .locals 1
    .param p1, "repeatedCount"    # I

    .prologue
    .line 2693
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->backspaceRevertHandler:Lcom/nuance/swype/input/BackspaceRevertHandler;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/BackspaceRevertHandler;->onSendBackspace(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2695
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    .line 2699
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 2700
    return-void

    .line 2697
    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->sendBackspace(I)V

    goto :goto_0
.end method

.method protected sendHardKeyChar(C)V
    .locals 4
    .param p1, "character"    # C

    .prologue
    const/4 v3, 0x1

    .line 3989
    packed-switch p1, :pswitch_data_0

    .line 3996
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 3997
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 3998
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 4003
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    :goto_0
    iput v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    .line 4004
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 4005
    return-void

    .line 3991
    :pswitch_0
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1, v3}, Lcom/nuance/swype/input/IME;->sendDefaultEditorAction(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3992
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/16 v2, 0x42

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/IME;->sendDownUpKeyEvents(I)V

    goto :goto_0

    .line 3989
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method protected sendKeyChar(C)V
    .locals 0
    .param p1, "character"    # C

    .prologue
    .line 2704
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->sendKeyChar(C)V

    .line 2705
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    .line 2706
    return-void
.end method

.method setAppContextPrediction()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 463
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 464
    .local v0, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 465
    .local v3, "packageName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getAppContextPredictionSetter()Lcom/nuance/swype/input/AppContextPredictionSetter;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/nuance/swype/input/AppContextPredictionSetter;->getGroupName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "groupName":Ljava/lang/String;
    if-eqz v1, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "grp:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 480
    .local v2, "groupSlot":Ljava/lang/String;
    :goto_1
    new-instance v4, Lcom/nuance/swype/input/AlphaInputView$Slots;

    invoke-direct {v4}, Lcom/nuance/swype/input/AlphaInputView$Slots;-><init>()V

    .line 481
    .local v4, "slots":Lcom/nuance/swype/input/AlphaInputView$Slots;
    invoke-virtual {v4, v3}, Lcom/nuance/swype/input/AlphaInputView$Slots;->add(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v4, v2}, Lcom/nuance/swype/input/AlphaInputView$Slots;->add(Ljava/lang/String;)V

    .line 486
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/nuance/swype/input/AlphaInputView$Slots;->get(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/nuance/swype/input/AlphaInputView$Slots;->get(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Lcom/nuance/swype/input/AlphaInputView$Slots;->get(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setApplicationPredictionContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    return-void

    .end local v1    # "groupName":Ljava/lang/String;
    .end local v2    # "groupSlot":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "slots":Lcom/nuance/swype/input/AlphaInputView$Slots;
    :cond_0
    move-object v3, v5

    .line 464
    goto :goto_0

    .restart local v1    # "groupName":Ljava/lang/String;
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_1
    move-object v2, v5

    .line 476
    goto :goto_1
.end method

.method protected setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V
    .locals 1
    .param p1, "type"    # Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;

    .prologue
    .line 2794
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    instance-of v0, v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    if-eqz v0, :cond_0

    .line 2795
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    check-cast v0, Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->setDefaultWordType(Lcom/nuance/swype/stats/StatisticsEnabledEditState$DefaultSelectionType;)V

    .line 2797
    :cond_0
    return-void
.end method

.method public setHardKeyboardSystemSettings()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4009
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v9}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/IMEApplication;->getSystemState()Lcom/nuance/swype/input/SystemState;

    move-result-object v6

    .line 4010
    .local v6, "sysState":Lcom/nuance/swype/input/SystemState;
    invoke-virtual {v6}, Lcom/nuance/swype/input/SystemState;->autoCapsValue()I

    move-result v3

    .line 4011
    .local v3, "capsValue":I
    invoke-virtual {v6}, Lcom/nuance/swype/input/SystemState;->autoPunctuateValue()I

    move-result v4

    .line 4012
    .local v4, "punctuateValue":I
    invoke-virtual {v6}, Lcom/nuance/swype/input/SystemState;->autoReplaceValue()I

    move-result v5

    .line 4013
    .local v5, "replaceValue":I
    if-lez v3, :cond_5

    move v0, v8

    .line 4014
    .local v0, "autoCaps":Z
    :goto_0
    if-lez v4, :cond_6

    move v1, v8

    .line 4015
    .local v1, "autoPunctuate":Z
    :goto_1
    if-lez v5, :cond_7

    move v2, v8

    .line 4016
    .local v2, "autoReplace":Z
    :goto_2
    if-eq v3, v10, :cond_0

    .line 4017
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputMethods$Language;->isCapitalizationSupported()Z

    move-result v9

    if-nez v9, :cond_8

    .line 4018
    iput-boolean v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mAutoCap:Z

    .line 4023
    :cond_0
    :goto_3
    if-eq v5, v10, :cond_3

    .line 4024
    iput-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->autoCorrectionEnabled:Z

    .line 4025
    iget-boolean v9, p0, Lcom/nuance/swype/input/AlphaInputView;->autoCorrectionEnabled:Z

    if-nez v9, :cond_1

    iget v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mWordCompletionPoint:I

    if-eqz v9, :cond_2

    :cond_1
    move v7, v8

    :cond_2
    iput-boolean v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    .line 4027
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    const/16 v8, 0x63

    iget-boolean v9, p0, Lcom/nuance/swype/input/AlphaInputView;->autoCorrectionEnabled:Z

    invoke-virtual {v7, v8, v9}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setAttribute(IZ)Z

    .line 4029
    :cond_3
    if-eq v4, v10, :cond_4

    .line 4030
    iput-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAutoPunctuationOn:Z

    .line 4032
    :cond_4
    return-void

    .end local v0    # "autoCaps":Z
    .end local v1    # "autoPunctuate":Z
    .end local v2    # "autoReplace":Z
    :cond_5
    move v0, v7

    .line 4013
    goto :goto_0

    .restart local v0    # "autoCaps":Z
    :cond_6
    move v1, v7

    .line 4014
    goto :goto_1

    .restart local v1    # "autoPunctuate":Z
    :cond_7
    move v2, v7

    .line 4015
    goto :goto_2

    .line 4020
    .restart local v2    # "autoReplace":Z
    :cond_8
    iput-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mAutoCap:Z

    goto :goto_3
.end method

.method public setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V
    .locals 2
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;

    .prologue
    .line 2577
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 2578
    if-nez p1, :cond_1

    .line 2581
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->isTraceEnabledOnKeyboard:Z

    .line 2586
    return-void

    .line 2581
    :cond_1
    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mTraceInputSuggestionOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isNumMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isSymbolMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->isForcedSwypeable()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_SPLIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
    .locals 3
    .param p1, "keyboardLayer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    .line 2604
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 2623
    :goto_0
    return-void

    .line 2608
    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 2610
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->dismissPopupKeyboard()V

    .line 2612
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 2614
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isExploreByTouchOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2615
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->getInstance()Lcom/nuance/swype/input/accessibility/AccessibilityNotification;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->speakKeyboardLayer(Landroid/content/Context;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 2618
    :cond_1
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne p1, v0, :cond_2

    .line 2619
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState()V

    goto :goto_0

    .line 2621
    :cond_2
    sget-object v0, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    goto :goto_0
.end method

.method protected setReconstructWord(I)V
    .locals 2
    .param p1, "primaryCode"    # I

    .prologue
    .line 4108
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

    .line 4109
    return-void
.end method

.method protected setReconstructWord(Ljava/lang/String;)V
    .locals 0
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 4190
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaInputView;->mReconstructWord:Ljava/lang/String;

    .line 4191
    return-void
.end method

.method public setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .locals 1
    .param p1, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 2484
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/AlphaInputView;->isManualShift:Z

    .line 2485
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    move-result v0

    return v0
.end method

.method public setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V
    .locals 2
    .param p1, "listener"    # Lcom/nuance/swype/input/CandidatesListView$CandidateListener;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;
    .param p3, "format"    # Lcom/nuance/swype/input/CandidatesListView$Format;

    .prologue
    .line 2719
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/AlphaInputView;->setSuggestionsHelper(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 2720
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V

    .line 2721
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v0

    .line 2722
    .local v0, "keyboardScribe":Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;
    if-eqz v0, :cond_0

    .line 2723
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-interface {v0, v1}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordSelectionListOptions(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 2725
    :cond_0
    return-void
.end method

.method public setVietInputMode()Z
    .locals 3

    .prologue
    .line 4204
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isTelexUsing()Z

    move-result v1

    .line 4206
    if-eqz v1, :cond_0

    .line 4207
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setVietInputMode(I)Z

    move-result v0

    .line 4211
    .local v0, "isSuccess":Z
    :goto_0
    return v0

    .line 4209
    .end local v0    # "isSuccess":Z
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setVietInputMode(I)Z

    move-result v0

    .restart local v0    # "isSuccess":Z
    goto :goto_0
.end method

.method public showHardKeyPopupKeyboard(I)V
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    .line 4051
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->showHardKeyPopupKeyboard(I)V

    .line 4052
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 4053
    .local v1, "len":I
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_0

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isComposingText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4054
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 4055
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 4065
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    :goto_0
    return-void

    .line 4059
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isComposingText()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4060
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/nuance/swype/input/AlphaInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;Z)I

    goto :goto_0

    .line 4062
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->clearSuggestions()V

    goto :goto_0
.end method

.method protected showNextWordPrediction()V
    .locals 3

    .prologue
    .line 4095
    iget-boolean v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mNextWordPredictionOn:Z

    if-nez v1, :cond_1

    .line 4104
    :cond_0
    :goto_0
    return-void

    .line 4098
    :cond_1
    invoke-static {}, Lcom/nuance/swype/input/IME;->getLastSavedActiveWord()Ljava/lang/String;

    move-result-object v0

    .line 4099
    .local v0, "lastWord":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 4102
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->updateWordContext()V

    .line 4103
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/AlphaInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;Z)I

    goto :goto_0
.end method

.method public startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V
    .locals 7
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p2, "restarting"    # Z

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 328
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-nez v2, :cond_0

    .line 398
    :goto_0
    return-void

    .line 332
    :cond_0
    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->autoCorrectOverrideWords:Lcom/nuance/swype/util/LruWordCache;

    if-eqz v2, :cond_1

    .line 333
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->autoCorrectOverrideWords:Lcom/nuance/swype/util/LruWordCache;

    iget-object v2, v2, Lcom/nuance/swype/util/LruWordCache;->words:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 337
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v2, :cond_2

    .line 338
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v4, v4, Lcom/nuance/swype/input/InputMethods$Language;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/CandidatesListView;->updateRtlStatus(Ljava/lang/String;)V

    .line 339
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/CandidatesListView;->updateCandidatesSize()V

    .line 342
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V

    .line 344
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mEditState:Lcom/nuance/swype/input/EditState;

    invoke-virtual {v2}, Lcom/nuance/swype/input/EditState;->startSession()V

    .line 346
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->dismissPopupKeyboard()V

    .line 347
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->flushCurrentActiveWord()V

    .line 348
    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getAppSpecificBehavior()Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldRemoveUpdateWCLMessage()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 349
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    if-eqz v2, :cond_3

    .line 350
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 354
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    .line 357
    .local v1, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->startInputSession()V

    .line 358
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    .line 359
    .local v0, "currentLayer":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    if-eqz p2, :cond_7

    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v0, v2, :cond_7

    .line 363
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2, v0, p1, v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 373
    :goto_1
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isInputTextClass()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 374
    iget-object v2, p1, Lcom/nuance/swype/input/InputFieldInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 376
    :cond_4
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/AlphaInputView;->updateMultitapDeadkey(Z)V

    .line 378
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 379
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v2

    if-nez v2, :cond_5

    .line 380
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 383
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/nuance/swype/input/AlphaInputView;->initGestureDetector(II)V

    .line 385
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 386
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->triggerPasswordTip()V

    .line 390
    :cond_6
    iget-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAutoSpace:Z

    if-nez v2, :cond_a

    .line 391
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->isAutoSpaceSupported()Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v4, v3, v2}, Lcom/nuance/swype/input/AutospaceHandler;->setEnabled(ZZ)V

    .line 396
    :goto_3
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->recaptureEditWord:Lcom/nuance/swype/input/RecaptureEditWord;

    invoke-virtual {v2}, Lcom/nuance/swype/input/RecaptureEditWord;->clear()V

    .line 397
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->postDelayResumeSpeech()V

    goto/16 :goto_0

    .line 366
    :cond_7
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2, p1, v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 367
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v2

    if-nez v2, :cond_8

    .line 368
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    sget-object v4, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 370
    :cond_8
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->setMultitapOrAmbigMode()V

    goto :goto_1

    :cond_9
    move v2, v3

    .line 391
    goto :goto_2

    .line 393
    :cond_a
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->autospaceHandler:Lcom/nuance/swype/input/AutospaceHandler;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/AutospaceHandler;->onUpdateEditorInfo(Lcom/nuance/swype/input/InputFieldInfo;)V

    goto :goto_3
.end method

.method protected subHandleTouchDown(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V
    .locals 6
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p3, "action"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 4127
    iget v1, p0, Lcom/nuance/swype/input/AlphaInputView;->prevPointerId:I

    if-ne v1, v4, :cond_0

    .line 4129
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 4130
    const/16 v2, 0x400

    invoke-interface {v1, v2, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4131
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/nuance/swype/input/AlphaInputView;->textLenthBeforeCursor:I

    .line 4132
    sget-object v1, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "subHandleTouchDown...textLenthBeforeCursor: "

    iget v3, p0, Lcom/nuance/swype/input/AlphaInputView;->textLenthBeforeCursor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4134
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v5, :cond_1

    iget v1, p0, Lcom/nuance/swype/input/AlphaInputView;->prevPointerId:I

    if-eq v1, v4, :cond_1

    .line 4135
    iget v1, p0, Lcom/nuance/swype/input/AlphaInputView;->prevPointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/nuance/swype/input/AlphaInputView;->doFakeUp(IJ)V

    .line 4137
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->subHandleTouchDown(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V

    .line 4138
    iget v1, p2, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->pointerId:I

    iput v1, p0, Lcom/nuance/swype/input/AlphaInputView;->prevPointerId:I

    .line 4139
    return-void

    .line 4131
    .restart local v0    # "cs":Ljava/lang/CharSequence;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected subHandleTouchUp(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V
    .locals 1
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p3, "action"    # I

    .prologue
    .line 4185
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->subHandleTouchUp(Landroid/view/MotionEvent;Lcom/nuance/swype/input/KeyboardViewEx$Pointer;I)V

    .line 4186
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/AlphaInputView;->prevPointerId:I

    .line 4187
    return-void
.end method

.method protected swipeDown()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v9, -0x1

    .line 4112
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->swipeDown()V

    .line 4114
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 4115
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    const/16 v4, 0x400

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4116
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 4117
    .local v2, "length":I
    :goto_0
    sget-object v4, Lcom/nuance/swype/input/AlphaInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "swipeDown...length: "

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "...textLenthBeforeCursor: "

    iget v8, p0, Lcom/nuance/swype/input/AlphaInputView;->textLenthBeforeCursor:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4118
    iget v4, p0, Lcom/nuance/swype/input/AlphaInputView;->textLenthBeforeCursor:I

    if-le v2, v4, :cond_0

    iget v4, p0, Lcom/nuance/swype/input/AlphaInputView;->textLenthBeforeCursor:I

    if-eq v4, v9, :cond_0

    .line 4119
    iget v4, p0, Lcom/nuance/swype/input/AlphaInputView;->textLenthBeforeCursor:I

    sub-int v4, v2, v4

    invoke-interface {v1, v4, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 4121
    :cond_0
    iput v9, p0, Lcom/nuance/swype/input/AlphaInputView;->textLenthBeforeCursor:I

    .line 4122
    iput v9, p0, Lcom/nuance/swype/input/AlphaInputView;->prevPointerId:I

    .line 4123
    return-void

    .end local v2    # "length":I
    :cond_1
    move v2, v3

    .line 4116
    goto :goto_0
.end method

.method public toggleAmbigMode()V
    .locals 4

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1783
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v0

    .line 1784
    const-string v1, "multitap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1785
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v3, v3, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 1792
    :cond_0
    :goto_0
    return-void

    .line 1788
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    const-string v3, "multitap"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    goto :goto_0
.end method

.method public updateMultitapDeadkey(Z)V
    .locals 7
    .param p1, "invalidateKeyNow"    # Z

    .prologue
    const/16 v6, 0xb7e

    const/16 v5, 0xb7c

    const/4 v4, 0x0

    .line 1649
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardLayoutId:I

    const/16 v3, 0x900

    if-ne v2, v3, :cond_1

    .line 1691
    :cond_0
    :goto_0
    return-void

    .line 1653
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/XT9Keyboard;

    .line 1655
    .local v1, "keyboard":Lcom/nuance/swype/input/XT9Keyboard;
    if-eqz v1, :cond_0

    .line 1661
    iget-boolean v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardInputSuggestionOn:Z

    if-nez v2, :cond_3

    .line 1662
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/XT9Keyboard;->setXT9KeyState(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 1663
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_2

    .line 1665
    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aput v6, v2, v4

    .line 1688
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1689
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    goto :goto_0

    .line 1668
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "multitap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1669
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isComposingText()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1670
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/XT9Keyboard;->setXT9KeyState(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 1671
    .restart local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_2

    .line 1672
    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aput v6, v2, v4

    goto :goto_1

    .line 1675
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_4
    invoke-virtual {v1, v4}, Lcom/nuance/swype/input/XT9Keyboard;->setXT9KeyState(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 1676
    .restart local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_2

    .line 1677
    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aput v5, v2, v4

    goto :goto_1

    .line 1681
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_5
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/XT9Keyboard;->setXT9KeyState(I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 1682
    .restart local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_2

    .line 1683
    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aput v5, v2, v4

    goto :goto_1
.end method

.method public updateSelection(IIIIII)V
    .locals 15
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .prologue
    .line 570
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    move-object v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/nuance/swype/input/AlphaInputView;->validateComposingText(IIIIIILjava/lang/CharSequence;)Z

    move-result v14

    .line 573
    .local v14, "validComposingText":Z
    invoke-super/range {p0 .. p6}, Lcom/nuance/swype/input/InputView;->updateSelection(IIIIII)V

    .line 576
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 578
    const/4 v2, 0x1

    iput v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mLastInput:I

    .line 580
    :cond_0
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/AlphaInputView;->isShowingCandidatesFor(Lcom/nuance/input/swypecorelib/Candidates$Source;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 581
    move/from16 v0, p2

    move/from16 v1, p1

    if-eq v0, v1, :cond_2

    const/4 v11, 0x1

    .line 582
    .local v11, "hadSel":Z
    :goto_0
    move/from16 v0, p4

    move/from16 v1, p3

    if-eq v0, v1, :cond_3

    const/4 v12, 0x1

    .line 583
    .local v12, "hasSel":Z
    :goto_1
    if-eqz v11, :cond_4

    if-nez v12, :cond_4

    const/4 v13, 0x1

    .line 585
    .local v13, "lostSel":Z
    :goto_2
    if-eqz v14, :cond_1

    if-eqz v13, :cond_1

    .line 586
    const/4 v2, -0x1

    move/from16 v0, p6

    if-eq v0, v2, :cond_1

    .line 589
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v10

    .line 590
    .local v10, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    invoke-virtual {p0, v10}, Lcom/nuance/swype/input/AlphaInputView;->getWordListFormat(Lcom/nuance/input/swypecorelib/Candidates;)Lcom/nuance/swype/input/CandidatesListView$Format;

    move-result-object v2

    invoke-virtual {p0, p0, v10, v2}, Lcom/nuance/swype/input/AlphaInputView;->setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V

    .line 594
    .end local v10    # "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    .end local v11    # "hadSel":Z
    .end local v12    # "hasSel":Z
    .end local v13    # "lostSel":Z
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView;->updateSelectionCallback:Lcom/nuance/swype/input/AlphaInputView$UpdateSelectionCallback;

    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->composingWordCandidates()Z

    move-result v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v4

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-interface {v2, v3, v0, v1, v4}, Lcom/nuance/swype/input/AlphaInputView$UpdateSelectionCallback;->updateSelection(ZIILandroid/view/inputmethod/InputConnection;)V

    .line 596
    return-void

    .line 581
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 582
    .restart local v11    # "hadSel":Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 583
    .restart local v12    # "hasSel":Z
    :cond_4
    const/4 v13, 0x0

    goto :goto_2
.end method

.method protected updateShiftKeyState()V
    .locals 1

    .prologue
    .line 2418
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaInputView;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 2419
    return-void
.end method

.method public updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;Z)I
    .locals 14
    .param p1, "source"    # Lcom/nuance/input/swypecorelib/Candidates$Source;
    .param p2, "noComposingText"    # Z

    .prologue
    .line 2090
    const/4 v5, 0x0

    .line 2091
    .local v5, "suggestionCount":I
    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne p1, v9, :cond_4

    .line 2099
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    if-nez v9, :cond_0

    .line 2100
    const/4 v9, 0x0

    .line 2203
    :goto_0
    return v9

    .line 2102
    :cond_0
    iget-object v10, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v9}, Lcom/nuance/swype/input/KeyboardSwitcher;->currentKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v9

    sget-object v11, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v9, v11, :cond_2

    sget-object v9, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    :goto_1
    invoke-virtual {v10, v9}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 2106
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 2107
    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    iput-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 2110
    iget-object v10, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v12, 0x9

    if-eqz p2, :cond_3

    const/4 v9, 0x1

    :goto_2
    const/4 v13, 0x0

    invoke-virtual {v11, v12, v9, v13, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v12, 0x46

    invoke-virtual {v10, v9, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2112
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 2113
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaInputView;->hasInputQueue()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mInlineWord:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 2115
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v9}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2117
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v9}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v8

    .line 2118
    .local v8, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    const-string v9, "NWP_HKB"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/nuance/swype/input/UserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_1

    .line 2119
    const-string v9, "NWP_HKB"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/nuance/swype/input/UserPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 2120
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/nuance/swype/input/R$string;->hardkeyboard_input_next_word_prediction:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/nuance/swype/input/InputMethodToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .end local v8    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_1
    :goto_3
    move v9, v5

    .line 2203
    goto :goto_0

    .line 2102
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v9

    goto :goto_1

    .line 2110
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 2128
    :cond_4
    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->CAPS_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne p1, v9, :cond_a

    .line 2129
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    .line 2130
    .local v1, "hasPendingUpdates":Z
    if-nez v1, :cond_9

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->isEmptyCandidateList()Z

    move-result v9

    if-nez v9, :cond_9

    .line 2131
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v9}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2132
    .local v0, "candidate":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 2134
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 2135
    .local v2, "lower":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 2138
    .local v7, "upper":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 2139
    .local v4, "shiftedChars":[C
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-char v10, v4, v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    aput-char v10, v4, v9

    .line 2140
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    .line 2143
    .local v3, "shifted":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2145
    .local v6, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/InputMethods$Language;->isGermanLanguage()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2146
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2147
    invoke-virtual {v3, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 2148
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2152
    :cond_5
    invoke-virtual {v3, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v2, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 2153
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2169
    :cond_6
    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_1

    .line 2170
    const/4 v9, 0x0

    invoke-virtual {p0, p0, v6, v9, p1}, Lcom/nuance/swype/input/AlphaInputView;->setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Ljava/util/List;ILcom/nuance/input/swypecorelib/Candidates$Source;)V

    .line 2171
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto/16 :goto_3

    .line 2156
    :cond_7
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2159
    invoke-virtual {v2, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 2160
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2164
    :cond_8
    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v7, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 2165
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2174
    .end local v0    # "candidate":Ljava/lang/String;
    .end local v2    # "lower":Ljava/lang/String;
    .end local v3    # "shifted":Ljava/lang/String;
    .end local v4    # "shiftedChars":[C
    .end local v6    # "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v7    # "upper":Ljava/lang/String;
    :cond_9
    if-eqz v1, :cond_1

    .line 2176
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 2177
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v10, 0xd

    const-wide/16 v12, 0x46

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2178
    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->CAPS_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    iput-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    goto/16 :goto_3

    .line 2181
    .end local v1    # "hasPendingUpdates":Z
    :cond_a
    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne p1, v9, :cond_d

    .line 2182
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 2183
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 2187
    :cond_b
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v9}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 2188
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v11, 0x9

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v12, 0x46

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2194
    :goto_5
    sget-object v9, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    iput-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    goto/16 :goto_3

    .line 2191
    :cond_c
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v11, 0x9

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v12, 0x46

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    .line 2197
    :cond_d
    iget-object v9, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 2198
    iget-object v10, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/nuance/swype/input/AlphaInputView;->mAlphaInputViewHandler:Landroid/os/Handler;

    const/16 v12, 0x9

    if-eqz p2, :cond_e

    const/4 v9, 0x1

    :goto_6
    const/4 v13, 0x0

    invoke-virtual {v11, v12, v9, v13, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v12, 0x46

    invoke-virtual {v10, v9, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2200
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    goto/16 :goto_3

    .line 2198
    :cond_e
    const/4 v9, 0x0

    goto :goto_6
.end method
