.class public Lcom/nuance/swype/input/AlphaHandWritingInputView;
.super Lcom/nuance/swype/input/InputView;
.source "AlphaHandWritingInputView.java"

# interfaces
.implements Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;
.implements Lcom/nuance/swype/input/AlphaHandWritingView$OnWritingAction;


# static fields
.field private static final MSG_DELAY_RECOGNIZER:I = 0x1

.field private static final MSG_DISPLAY_NEXT_WORD_PREDICTION:I = 0x7

.field private static final MSG_HANDLE_CHAR:I = 0x3

.field private static final MSG_HANDLE_INSTANT_GESTURE_CHAR:I = 0x5

.field private static final MSG_HANDLE_SHOW_START_OF_WORD_CANDIDATE:I = 0x6

.field private static final MSG_HANDLE_SUGGESTION_CANDIDATES:I = 0x2

.field private static final MSG_HANDLE_TEXT:I = 0x4

.field private static final MSG_SHOW_HOW_TO_TOAST:I = 0x1f7

.field private static final WRITING_MODE_SYMBOLS_AND_DIGITS:I = 0x1

.field private static final WRITING_MODE_TEXT:I


# instance fields
.field private alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

.field private final delayRecognizerCallback:Landroid/os/Handler$Callback;

.field private final mComposition:Lcom/nuance/swype/input/Composition;

.field private mContainer:Lcom/nuance/swype/input/AlphaHandWritingContainerView;

.field private mCurrentWritingMode:I

.field private mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

.field private final mDelayRecognizeHandler:Landroid/os/Handler;

.field private final mPopupViewHandler:Landroid/os/Handler;

.field private mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

.field private final mWriteEventHandler:Landroid/os/Handler;

.field private final popupViewCallback:Landroid/os/Handler$Callback;

.field private shiftGestureOffset:I

.field private final writeEventCallback:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defaultStyle"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    .line 1216
    new-instance v0, Lcom/nuance/swype/input/AlphaHandWritingInputView$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView$1;-><init>(Lcom/nuance/swype/input/AlphaHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->writeEventCallback:Landroid/os/Handler$Callback;

    .line 1271
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->writeEventCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    .line 1275
    new-instance v0, Lcom/nuance/swype/input/AlphaHandWritingInputView$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView$2;-><init>(Lcom/nuance/swype/input/AlphaHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->delayRecognizerCallback:Landroid/os/Handler$Callback;

    .line 1291
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->delayRecognizerCallback:Landroid/os/Handler$Callback;

    .line 1292
    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    .line 1392
    new-instance v0, Lcom/nuance/swype/input/AlphaHandWritingInputView$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView$3;-><init>(Lcom/nuance/swype/input/AlphaHandWritingInputView;)V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->popupViewCallback:Landroid/os/Handler$Callback;

    .line 1415
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->popupViewCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Lcom/nuance/swype/input/Composition;

    invoke-direct {v0}, Lcom/nuance/swype/input/Composition;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    .line 75
    return-void
.end method

.method private acceptCurrentDefaultWord()V
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->acceptCurrentInline()V

    .line 749
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->clearSuggestions()V

    .line 750
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/AlphaHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaHandWritingInputView;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->displayNextWordPrediction()V

    return-void
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/AlphaHandWritingInputView;C)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaHandWritingInputView;
    .param p1, "x1"    # C

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->handleChar(C)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/AlphaHandWritingInputView;Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaHandWritingInputView;
    .param p1, "x1"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateCandidatesList(Lcom/nuance/input/swypecorelib/Candidates;)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/AlphaHandWritingInputView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaHandWritingInputView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->handleText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/AlphaHandWritingInputView;CLcom/nuance/input/swypecorelib/Candidates;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaHandWritingInputView;
    .param p1, "x1"    # C
    .param p2, "x2"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->handleInstantGestureChar(CLcom/nuance/input/swypecorelib/Candidates;)V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/AlphaHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaHandWritingInputView;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->showStartOfWordCandidateList()V

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/AlphaHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaHandWritingInputView;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->performDelayRecognition()V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/AlphaHandWritingInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/AlphaHandWritingInputView;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->showHowToUseToast()V

    return-void
.end method

.method private appendCandidatesFromAlphaInput()V
    .locals 17

    .prologue
    .line 1031
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v14}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v6

    .line 1034
    .local v6, "hwrWordCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 1035
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v14, v7}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1036
    .local v4, "candidate":Ljava/lang/String;
    const-string/jumbo v14, "\'"

    invoke-virtual {v4, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string/jumbo v14, "\'"

    invoke-virtual {v4, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1096
    .end local v4    # "candidate":Ljava/lang/String;
    :cond_0
    return-void

    .line 1034
    .restart local v4    # "candidate":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1041
    .end local v4    # "candidate":Ljava/lang/String;
    :cond_2
    new-array v5, v6, [Lcom/nuance/input/swypecorelib/Candidates;

    .line 1042
    .local v5, "candidatesList":[Lcom/nuance/input/swypecorelib/Candidates;
    new-array v10, v6, [I

    .line 1043
    .local v10, "lastAddedWordIndex":[I
    new-array v1, v6, [I

    .line 1045
    .local v1, "addedWords":[I
    rsub-int/lit8 v2, v6, 0xa

    .line 1050
    .local v2, "alphaInputWordCount":I
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_3

    .line 1051
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v14, v7}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getAlphaInputCandidates(Ljava/lang/CharSequence;I)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v14

    aput-object v14, v5, v7

    .line 1050
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1055
    :cond_3
    move v12, v6

    .line 1056
    .local v12, "remainingWord":I
    :cond_4
    if-lez v2, :cond_0

    if-lez v12, :cond_0

    .line 1057
    div-int v3, v2, v12

    .line 1059
    .local v3, "alphaInputWordCountPerCandidate":I
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_4

    .line 1060
    if-lez v2, :cond_4

    .line 1064
    aget v14, v10, v7

    aget-object v15, v5, v7

    invoke-virtual {v15}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v15

    if-ne v14, v15, :cond_6

    .line 1066
    add-int/lit8 v12, v12, -0x1

    .line 1059
    :cond_5
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1070
    :cond_6
    const/4 v8, 0x0

    .line 1072
    .local v8, "itemsAdded":I
    aget v13, v10, v7

    .local v13, "wordIndex":I
    :goto_4
    aget-object v14, v5, v7

    invoke-virtual {v14}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v14

    if-ge v13, v14, :cond_8

    .line 1074
    const/4 v11, 0x0

    .line 1075
    .local v11, "position":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_5
    if-gt v9, v7, :cond_7

    .line 1076
    aget v14, v1, v9

    add-int/2addr v11, v14

    .line 1075
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1078
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    add-int v15, v11, v6

    aget-object v16, v5, v7

    .line 1079
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v16

    .line 1078
    invoke-virtual/range {v14 .. v16}, Lcom/nuance/input/swypecorelib/Candidates;->add(ILcom/nuance/input/swypecorelib/WordCandidate;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1080
    add-int/lit8 v2, v2, -0x1

    .line 1081
    aget v14, v1, v7

    add-int/lit8 v14, v14, 0x1

    aput v14, v1, v7

    .line 1082
    add-int/lit8 v8, v8, 0x1

    if-lt v8, v3, :cond_9

    .line 1083
    add-int/lit8 v13, v13, 0x1

    .line 1089
    .end local v9    # "j":I
    .end local v11    # "position":I
    :cond_8
    aput v13, v10, v7

    .line 1090
    aget v14, v10, v7

    aget-object v15, v5, v7

    invoke-virtual {v15}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v15

    if-ne v14, v15, :cond_5

    .line 1092
    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    .line 1073
    .restart local v9    # "j":I
    .restart local v11    # "position":I
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_4
.end method

.method private cancelCurrentDefaultWord()V
    .locals 1

    .prologue
    .line 728
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isInlineActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->clearCurrentInline()V

    .line 732
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->clearSuggestions()V

    .line 733
    return-void
.end method

.method private changeWriteRecognitionMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 911
    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mShowInternalCandidates:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isHwrScrmodeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->enableInstantGesture(Z)V

    .line 913
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->setRecognitionMode(I)V

    .line 923
    :goto_0
    return-void

    .line 915
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwritingUCRModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 916
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->enableInstantGesture(Z)V

    .line 917
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->setRecognitionMode(I)V

    goto :goto_0

    .line 919
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0, v2}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->enableInstantGesture(Z)V

    .line 920
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0, v2}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->setRecognitionMode(I)V

    goto :goto_0
.end method

.method private changeWriteSettings(Lcom/nuance/swype/input/AlphaHandWritingView;)V
    .locals 2
    .param p1, "view"    # Lcom/nuance/swype/input/AlphaHandWritingView;

    .prologue
    .line 926
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {p1}, Lcom/nuance/swype/input/AlphaHandWritingView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->setWidth(I)V

    .line 928
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {p1}, Lcom/nuance/swype/input/AlphaHandWritingView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->setHeight(I)V

    .line 929
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->applyChangedSettings()V

    .line 931
    :cond_0
    return-void
.end method

.method private deleteOneCharacter()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 529
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v2

    if-nez v2, :cond_7

    .line 531
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isNextWordPredictionCandidates()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 532
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->cancelCurrentDefaultWord()V

    .line 533
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 534
    invoke-virtual {v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 535
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clearHighlightedText()V

    .line 540
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 541
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateNextWordPrediction()V

    .line 595
    :cond_0
    :goto_1
    return-void

    .line 537
    :cond_1
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->sendBackspace(I)V

    goto :goto_0

    .line 544
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 545
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->isNonSpacedLanguage()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 547
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 548
    invoke-virtual {v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 549
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clearHighlightedText()V

    .line 551
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 552
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateNextWordPrediction()V

    goto :goto_1

    .line 558
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->COMPLETIONS:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v2, v3, :cond_4

    .line 559
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/IME;->sendBackspace(I)V

    .line 560
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 561
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateNextWordPrediction()V

    goto :goto_1

    .line 566
    :cond_4
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->removeOneCharacterFromCandidateList()Ljava/lang/CharSequence;

    move-result-object v1

    .line 568
    .local v1, "seq":Ljava/lang/CharSequence;
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 569
    :cond_5
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->cancelCurrentDefaultWord()V

    .line 570
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 571
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateNextWordPrediction()V

    goto :goto_1

    .line 574
    :cond_6
    iput-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 576
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 577
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->HWR:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-static {v0, v4, v2}, Lcom/nuance/input/swypecorelib/Candidates;->createCandidates(Ljava/util/List;ILcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 579
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateCandidatesList(Lcom/nuance/input/swypecorelib/Candidates;)V

    goto :goto_1

    .line 582
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v1    # "seq":Ljava/lang/CharSequence;
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->clearSuggestions()V

    .line 583
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    .line 584
    invoke-virtual {v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->hasSelection()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 585
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->clearHighlightedText()V

    .line 589
    :goto_2
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v2, v5}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setContext([C)V

    .line 591
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 592
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateNextWordPrediction()V

    goto/16 :goto_1

    .line 587
    :cond_8
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->sendBackspace(I)V

    goto :goto_2
.end method

.method private deleteWordToLeftOfCursor()V
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->deleteWordToLeftOfCursor()V

    .line 716
    return-void
.end method

.method private deleteWordToRightOfCursor()V
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->deleteWordToRightOfCursor()V

    .line 712
    return-void
.end method

.method private displayNextWordPrediction()V
    .locals 3

    .prologue
    .line 899
    iget-boolean v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mNextWordPredictionOn:Z

    if-nez v1, :cond_1

    .line 908
    :cond_0
    :goto_0
    return-void

    .line 902
    :cond_1
    iget-boolean v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mStarted:Z

    if-eqz v1, :cond_0

    .line 903
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateWordContext()V

    .line 904
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 905
    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    .line 906
    .local v0, "nwpCandidates":Lcom/nuance/input/swypecorelib/Candidates;
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateCandidatesList(Lcom/nuance/input/swypecorelib/Candidates;)V

    goto :goto_0
.end method

.method private downShiftCandidateList()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 693
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v5, :cond_1

    .line 694
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateIndex()I

    move-result v0

    .line 695
    .local v0, "defaultIndex":I
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateIndex()I

    move-result v1

    .line 696
    .local v1, "exactIndex":I
    new-instance v3, Lcom/nuance/input/swypecorelib/Candidates;

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Lcom/nuance/input/swypecorelib/Candidates$Source;)V

    .line 698
    .local v3, "unShiftedCandidates":Lcom/nuance/input/swypecorelib/Candidates;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 699
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v5, v2}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v4

    .line 700
    .local v4, "word":Lcom/nuance/input/swypecorelib/WordCandidate;
    new-instance v5, Lcom/nuance/input/swypecorelib/WordCandidate;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 701
    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/WordCandidate;->completionLength()I

    move-result v7

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/WordCandidate;->attribute()I

    move-result v8

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/WordCandidate;->id()I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/nuance/input/swypecorelib/WordCandidate;-><init>(Ljava/lang/String;III)V

    .line 700
    invoke-virtual {v3, v5}, Lcom/nuance/input/swypecorelib/Candidates;->add(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    .line 698
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 704
    .end local v4    # "word":Lcom/nuance/input/swypecorelib/WordCandidate;
    :cond_0
    invoke-virtual {v3, v0}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 705
    invoke-virtual {v3, v1}, Lcom/nuance/input/swypecorelib/Candidates;->setExactIndex(I)V

    .line 706
    invoke-direct {p0, v3}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateCandidatesList(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 708
    .end local v0    # "defaultIndex":I
    .end local v1    # "exactIndex":I
    .end local v2    # "i":I
    .end local v3    # "unShiftedCandidates":Lcom/nuance/input/swypecorelib/Candidates;
    :cond_1
    return-void
.end method

.method private finishAlphaInput()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->finishSession()V

    .line 273
    return-void
.end method

.method private getAlphaInputCandidates(Ljava/lang/CharSequence;I)Lcom/nuance/input/swypecorelib/Candidates;
    .locals 8
    .param p1, "word"    # Ljava/lang/CharSequence;
    .param p2, "maxWordList"    # I

    .prologue
    const/4 v7, 0x1

    .line 1099
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearAllKeys()Z

    .line 1101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1102
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v2, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->ON:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 1103
    .local v2, "shiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    :goto_1
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    new-array v4, v7, [C

    const/4 v5, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    aput-char v6, v4, v5

    invoke-virtual {v3, v4, v7, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->addExplicit([CILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 1101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1102
    .end local v2    # "shiftState":Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    :cond_0
    sget-object v2, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    goto :goto_1

    .line 1105
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    sget-object v4, Lcom/nuance/input/swypecorelib/Candidates$Source;->HWR:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v3, v4, p2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;I)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v1

    .line 1106
    .local v1, "result":Lcom/nuance/input/swypecorelib/Candidates;
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->clearAllKeys()Z

    .line 1107
    return-object v1
.end method

.method private handleChar(C)V
    .locals 7
    .param p1, "ch"    # C

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 608
    sget-object v1, Lcom/nuance/swype/input/AlphaHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "handleChar: "

    aput-object v4, v2, v3

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 609
    sparse-switch p1, :sswitch_data_0

    .line 667
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->acceptCurrentDefaultWord()V

    .line 668
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->sendKeyChar(C)V

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 611
    :sswitch_0
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->acceptCurrentDefaultWord()V

    .line 612
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->sendKeyChar(C)V

    goto :goto_0

    .line 616
    :sswitch_1
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->handleSpace()V

    goto :goto_0

    .line 620
    :sswitch_2
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->getRecognitionMode()I

    move-result v1

    if-eq v1, v6, :cond_1

    .line 621
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->deleteOneCharacter()V

    goto :goto_0

    .line 623
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 624
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->HWR:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v1, v2, :cond_3

    .line 625
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getCurrentDefaultWord()Ljava/lang/CharSequence;

    move-result-object v0

    .line 626
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v1, v5, :cond_2

    .line 628
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->deleteOneCharacter()V

    goto :goto_0

    .line 630
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->cancelCurrentDefaultWord()V

    goto :goto_0

    .line 633
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->deleteOneCharacter()V

    goto :goto_0

    .line 639
    :sswitch_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v1

    if-nez v1, :cond_4

    .line 640
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->cancelCurrentDefaultWord()V

    goto :goto_0

    .line 642
    :cond_4
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->deleteWordToLeftOfCursor()V

    goto :goto_0

    .line 647
    :sswitch_4
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v1

    if-nez v1, :cond_5

    .line 648
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->cancelCurrentDefaultWord()V

    goto :goto_0

    .line 650
    :cond_5
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->deleteWordToRightOfCursor()V

    goto :goto_0

    .line 655
    :sswitch_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v1

    if-nez v1, :cond_0

    .line 656
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->downShiftCandidateList()V

    goto :goto_0

    .line 661
    :sswitch_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v1

    if-nez v1, :cond_0

    .line 662
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->upShiftCandidateList()V

    goto :goto_0

    .line 609
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0xd -> :sswitch_0
        0x20 -> :sswitch_1
        0x21d0 -> :sswitch_3
        0x21d1 -> :sswitch_6
        0x21d2 -> :sswitch_4
        0x21d3 -> :sswitch_5
    .end sparse-switch
.end method

.method private handleInstantGestureChar(CLcom/nuance/input/swypecorelib/Candidates;)V
    .locals 1
    .param p1, "gestureChar"    # C
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 1122
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 1124
    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v0

    if-lez v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->acceptCurrentInline()V

    .line 1126
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateCandidatesList(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 1129
    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->handleChar(C)V

    .line 1130
    return-void
.end method

.method private handleSpace()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 521
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isNextWordPredictionCandidates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0, v2}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;ZZ)V

    .line 526
    :goto_0
    return-void

    .line 524
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->sendSpace()V

    goto :goto_0
.end method

.method private handleText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1111
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->acceptCurrentDefaultWord()V

    .line 1112
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 1113
    return-void
.end method

.method private hideHowToUseToast()V
    .locals 0

    .prologue
    .line 292
    invoke-static {}, Lcom/nuance/swype/input/QuickToast;->hide()V

    .line 293
    return-void
.end method

.method private isCompletionCandidates()Z
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 604
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->COMPLETIONS:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInlineActive()Z
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    .line 737
    invoke-virtual {v0}, Lcom/nuance/swype/input/Composition;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNextWordPredictionCandidates()Z
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 599
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPendingRecognizeMessage()Z
    .locals 2

    .prologue
    .line 719
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private performDelayRecognition()V
    .locals 3

    .prologue
    .line 1133
    const/4 v0, 0x0

    .line 1134
    .local v0, "startWord":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isNextWordPredictionCandidates()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1135
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v1

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->COMPLETIONS:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v1, v2, :cond_0

    .line 1136
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1139
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1140
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v1, v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->queueRecognition(Ljava/lang/CharSequence;)V

    .line 1143
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    if-eqz v1, :cond_2

    .line 1144
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaHandWritingView;->clearAll()V

    .line 1146
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->invalidate()V

    .line 1147
    return-void
.end method

.method private postDelayResumeSpeech()V
    .locals 4

    .prologue
    const/16 v1, 0xb

    .line 259
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 263
    return-void
.end method

.method private postDelayShowingStartOfWordCandidate()V
    .locals 4

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1151
    return-void
.end method

.method private postHowToUseToastMsg()V
    .locals 4

    .prologue
    .line 296
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0x1f7

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 297
    return-void
.end method

.method private processPendingRecognizing()V
    .locals 2

    .prologue
    .line 723
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 724
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->performDelayRecognition()V

    .line 725
    return-void
.end method

.method private removeDelayRecognitionMsg()V
    .locals 2

    .prologue
    .line 992
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 993
    return-void
.end method

.method private removeHowToUseToastMsg()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v1, 0x1f7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 301
    return-void
.end method

.method private removeOneCharacterFromCandidateList()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 511
    const/4 v0, 0x0

    .line 512
    .local v0, "seq":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v1

    if-lez v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v0

    .line 514
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 517
    :cond_0
    return-object v0
.end method

.method private selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;ZZ)V
    .locals 10
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "addSpace"    # Z
    .param p3, "userExplicitPick"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 808
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 810
    .local v0, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-nez v0, :cond_1

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 818
    :cond_1
    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->beginBatchEdit()Z

    .line 820
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isNextWordPredictionCandidates()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 822
    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v7

    sget-object v8, Lcom/nuance/input/swypecorelib/Candidates$Source;->HWR:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v7, v8, :cond_7

    :cond_2
    move v3, v6

    .line 825
    .local v3, "showNWP":Z
    :goto_1
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v7

    sget-object v8, Lcom/nuance/input/swypecorelib/Candidates$Source;->HWR:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v7, v8, :cond_3

    .line 826
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    iget-object v8, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 827
    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/Candidates;->getCandidates()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->noteSelectedCandidate(I)I

    .line 833
    :cond_3
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->id()I

    move-result v1

    .line 835
    .local v1, "index":I
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v7

    sget-object v8, Lcom/nuance/input/swypecorelib/Candidates$Source;->COMPLETIONS:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v7, v8, :cond_8

    .line 836
    iget-boolean v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCompletionOn:Z

    if-eqz v5, :cond_4

    if-ltz v1, :cond_4

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v5}, Lcom/nuance/swype/input/Completions;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 837
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v5, v1}, Lcom/nuance/swype/input/Completions;->get(I)Landroid/view/inputmethod/CompletionInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 838
    const/4 p2, 0x0

    .line 871
    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    .line 872
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->sendSpace()V

    .line 875
    :cond_5
    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->endBatchEdit()Z

    .line 877
    if-eqz v3, :cond_6

    iget-boolean v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mNextWordPredictionOn:Z

    if-eqz v5, :cond_6

    .line 878
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateNextWordPrediction()V

    .line 881
    :cond_6
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->getEditState()Lcom/nuance/swype/input/EditState;

    move-result-object v4

    .line 882
    .local v4, "state":Lcom/nuance/swype/input/EditState;
    if-eqz v4, :cond_0

    instance-of v5, v4, Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    if-eqz v5, :cond_0

    .line 883
    check-cast v4, Lcom/nuance/swype/stats/StatisticsEnabledEditState;

    .end local v4    # "state":Lcom/nuance/swype/input/EditState;
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/swype/stats/StatisticsEnabledEditState;->reportWritingResults(Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "index":I
    .end local v3    # "showNWP":Z
    :cond_7
    move v3, v5

    .line 822
    goto :goto_1

    .line 840
    .restart local v1    # "index":I
    .restart local v3    # "showNWP":Z
    :cond_8
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v7}, Lcom/nuance/input/swypecorelib/Candidates;->isReadOnly()Z

    move-result v7

    if-nez v7, :cond_b

    .line 841
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v7

    sget-object v8, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_NEW_WORD:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-eq v7, v8, :cond_a

    move v7, v6

    .line 844
    :goto_3
    if-eqz v7, :cond_9

    .line 845
    iget-object v7, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->id()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->removeSpaceBeforeWord(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 846
    invoke-virtual {v0, v9, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 847
    .local v2, "seq":Ljava/lang/CharSequence;
    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ne v7, v9, :cond_9

    .line 848
    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v7

    if-nez v7, :cond_9

    .line 849
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_9

    .line 850
    invoke-virtual {v0, v6, v5}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->deleteSurroundingText(II)Z

    .line 855
    .end local v2    # "seq":Ljava/lang/CharSequence;
    :cond_9
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/nuance/swype/input/Composition;->insertText(Ljava/lang/CharSequence;)V

    .line 856
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->clearSuggestions()V

    .line 858
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 859
    invoke-virtual {v5}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 860
    invoke-virtual {v5}, Lcom/nuance/swype/input/InputFieldInfo;->textInputFieldWithSuggestionEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 861
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v5, v6, v6, v6}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setWordQuarantineLevel(III)V

    .line 863
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->id()I

    move-result v6

    invoke-virtual {v5, v6, p3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->wordSelected(IZ)V

    .line 864
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->learnNewWords()V

    goto/16 :goto_2

    :cond_a
    move v7, v5

    .line 841
    goto :goto_3

    .line 868
    :cond_b
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->clearSuggestions()V

    goto/16 :goto_2
.end method

.method private setKeyboardForTextEntry(Lcom/nuance/swype/input/InputFieldInfo;)V
    .locals 3
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 306
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    .line 305
    invoke-virtual {v0, v1, p1, v2}, Lcom/nuance/swype/input/KeyboardSwitcher;->createKeyboardForTextInput(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/InputFieldInfo;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/XT9Keyboard;

    .line 307
    return-void
.end method

.method private setNumbersAndSymbolsCategory(Lcom/nuance/swype/input/InputFieldInfo;)V
    .locals 2
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;

    .prologue
    .line 310
    iget v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 311
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->addPhoneNumberOnlyCategory()V

    .line 317
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->addGestureCategory()V

    .line 318
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->applyChangedSettings()V

    .line 319
    iget v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateKeyLabel(I)V

    .line 321
    :cond_0
    return-void

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->addDigitsAndSymbolsOnlyCategory()V

    goto :goto_0
.end method

.method private setTextCategory(Lcom/nuance/swype/input/InputFieldInfo;)V
    .locals 1
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;

    .prologue
    .line 324
    iget v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isEmailAddressField()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->addEmailOnlyCategory()V

    .line 332
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->addGestureCategory()V

    .line 333
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->addNumberCategory()V

    .line 334
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->applyChangedSettings()V

    .line 335
    iget v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateKeyLabel(I)V

    .line 337
    :cond_0
    return-void

    .line 327
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isURLField()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->addUrlOnlyCategory()V

    goto :goto_0

    .line 330
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->addTextCategory()V

    goto :goto_0
.end method

.method private showHandWritingView(Z)V
    .locals 4
    .param p1, "animation"    # Z

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "animate":Landroid/view/animation/AlphaAnimation;
    if-eqz p1, :cond_0

    .line 89
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "animate":Landroid/view/animation/AlphaAnimation;
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 90
    .restart local v0    # "animate":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 93
    :cond_0
    if-eqz v0, :cond_1

    .line 94
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mContainer:Lcom/nuance/swype/input/AlphaHandWritingContainerView;

    iget-object v1, v1, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/AlphaHandWritingView;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/AlphaHandWritingView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 96
    :cond_1
    return-void
.end method

.method private showHowToUseToast()V
    .locals 6

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 278
    .local v0, "sm":Lcom/nuance/swype/input/AppPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->showHowToUseHandWritingTip()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    if-eqz v1, :cond_1

    .line 281
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setShowHowToUseHandWritingTip(Z)V

    .line 282
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->how_to_use_hwr:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 283
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/AlphaHandWritingView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 282
    invoke-static {v1, v2, v3, v4}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->postHowToUseToastMsg()V

    goto :goto_0
.end method

.method private showStartOfWordCandidateList()V
    .locals 4

    .prologue
    .line 173
    invoke-static {}, Lcom/nuance/swype/input/IME;->getLastSavedActiveWordAndSet()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "lastWord":Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    const/4 v2, 0x0

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->HWR:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-static {v1, v2, v3}, Lcom/nuance/input/swypecorelib/Candidates;->createCandidates(Ljava/util/List;ILcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateCandidatesList(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 186
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-eq v2, v3, :cond_1

    .line 187
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V

    .line 189
    :cond_1
    return-void

    .line 178
    :cond_2
    invoke-static {}, Lcom/nuance/swype/input/IME;->getLastShownCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v2

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v2, v3, :cond_3

    .line 179
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateNextWordPrediction()V

    goto :goto_0

    .line 181
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateNextWordPrediction()V

    goto :goto_0
.end method

.method private startAlphaInput()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->startSession()V

    .line 267
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    .line 268
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->readNextWordPredictionSettings()V

    .line 269
    return-void
.end method

.method private upShiftCandidateList()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 674
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v5, :cond_1

    .line 675
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/Candidates;->getDefaultCandidateIndex()I

    move-result v0

    .line 676
    .local v0, "defaultIndex":I
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/Candidates;->getExactCandidateIndex()I

    move-result v1

    .line 677
    .local v1, "exactIndex":I
    new-instance v3, Lcom/nuance/input/swypecorelib/Candidates;

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Lcom/nuance/input/swypecorelib/Candidates$Source;)V

    .line 679
    .local v3, "shiftedCandidates":Lcom/nuance/input/swypecorelib/Candidates;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v5}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 680
    iget-object v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v5, v2}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v4

    .line 681
    .local v4, "word":Lcom/nuance/input/swypecorelib/WordCandidate;
    new-instance v5, Lcom/nuance/input/swypecorelib/WordCandidate;

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 682
    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/WordCandidate;->completionLength()I

    move-result v7

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/WordCandidate;->attribute()I

    move-result v8

    invoke-virtual {v4}, Lcom/nuance/input/swypecorelib/WordCandidate;->id()I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/nuance/input/swypecorelib/WordCandidate;-><init>(Ljava/lang/String;III)V

    .line 681
    invoke-virtual {v3, v5}, Lcom/nuance/input/swypecorelib/Candidates;->add(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    .line 679
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 685
    .end local v4    # "word":Lcom/nuance/input/swypecorelib/WordCandidate;
    :cond_0
    invoke-virtual {v3, v0}, Lcom/nuance/input/swypecorelib/Candidates;->setDefaultIndex(I)V

    .line 686
    invoke-virtual {v3, v1}, Lcom/nuance/input/swypecorelib/Candidates;->setExactIndex(I)V

    .line 687
    invoke-direct {p0, v3}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateCandidatesList(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 689
    .end local v0    # "defaultIndex":I
    .end local v1    # "exactIndex":I
    .end local v2    # "i":I
    .end local v3    # "shiftedCandidates":Lcom/nuance/input/swypecorelib/Candidates;
    :cond_1
    return-void
.end method

.method private updateCandidatesList(Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 3
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 996
    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mStarted:Z

    if-nez v0, :cond_0

    .line 997
    iput-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1021
    :goto_0
    return-void

    .line 1001
    :cond_0
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1003
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1004
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1005
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1006
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->COMPLETIONS:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v2, :cond_3

    const/4 v0, 0x1

    .line 1008
    :goto_1
    if-eqz v0, :cond_1

    .line 1009
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v2, v1}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/Composition;->showInline(Ljava/lang/CharSequence;)V

    .line 1011
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->HWR:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_2

    .line 1012
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->appendCandidatesFromAlphaInput()V

    .line 1014
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    sget-object v1, Lcom/nuance/swype/input/CandidatesListView$Format;->DEFAULT:Lcom/nuance/swype/input/CandidatesListView$Format;

    invoke-virtual {p0, p0, v0, v1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V

    .line 1020
    :goto_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1006
    goto :goto_1

    .line 1016
    :cond_4
    iput-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 1017
    sget-object v0, Lcom/nuance/swype/input/CandidatesListView$Format;->NONE:Lcom/nuance/swype/input/CandidatesListView$Format;

    invoke-virtual {p0, p0, v2, v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V

    goto :goto_2
.end method

.method private updateKeyLabel(I)V
    .locals 6
    .param p1, "mode"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1342
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 1344
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    if-eqz v2, :cond_2

    .line 1345
    const/16 v4, 0x193e

    invoke-virtual {p0, v2, v4}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->findKeyByKeyCode(Ljava/util/List;I)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 1347
    .local v0, "altKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    if-eqz v0, :cond_2

    .line 1348
    const/4 v1, 0x0

    .line 1350
    .local v1, "currentMode":Ljava/lang/CharSequence;
    if-nez p1, :cond_3

    .line 1351
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->on:Z

    .line 1352
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->label_alpha_key:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1358
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 1359
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1360
    .local v3, "writingMode":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    invoke-virtual {v4, v3}, Lcom/nuance/swype/input/AlphaHandWritingView;->setWritingMode(Ljava/lang/String;)V

    .line 1361
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/AlphaHandWritingView;->invalidate()V

    .line 1364
    .end local v3    # "writingMode":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 1367
    .end local v0    # "altKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v1    # "currentMode":Ljava/lang/CharSequence;
    :cond_2
    return-void

    .line 1353
    .restart local v0    # "altKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    .restart local v1    # "currentMode":Ljava/lang/CharSequence;
    :cond_3
    if-ne p1, v5, :cond_0

    .line 1354
    iput-boolean v5, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->on:Z

    .line 1355
    iget-object v4, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->label_num_key:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method private updateNextWordPrediction()V
    .locals 4

    .prologue
    const/4 v1, 0x7

    .line 894
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 895
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 896
    return-void
.end method


# virtual methods
.method protected changeKeyboardMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1296
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1297
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->processPendingRecognizing()V

    .line 1301
    :cond_0
    iget v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    if-nez v0, :cond_2

    .line 1302
    iput v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    .line 1303
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->setNumbersAndSymbolsCategory(Lcom/nuance/swype/input/InputFieldInfo;)V

    .line 1308
    :cond_1
    :goto_0
    return-void

    .line 1304
    :cond_2
    iget v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    if-ne v0, v1, :cond_1

    .line 1305
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    .line 1306
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->setTextCategory(Lcom/nuance/swype/input/InputFieldInfo;)V

    goto :goto_0
.end method

.method public clearCurrentActiveWord()V
    .locals 0

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->cancelCurrentDefaultWord()V

    .line 507
    return-void
.end method

.method public create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V
    .locals 2
    .param p1, "ime"    # Lcom/nuance/swype/input/IME;
    .param p2, "xt9coreinput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p3, "t9write"    # Lcom/nuance/input/swypecorelib/T9Write;
    .param p4, "speechWrapper"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/InputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V

    move-object v0, p2

    .line 102
    check-cast v0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    .line 103
    check-cast p3, Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    .end local p3    # "t9write":Lcom/nuance/input/swypecorelib/T9Write;
    iput-object p3, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    .line 104
    new-instance v0, Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-direct {v0, p1, p2}, Lcom/nuance/swype/input/KeyboardSwitcher;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    .line 105
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/KeyboardSwitcher;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 106
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$dimen;->candidates_list_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->shiftGestureOffset:I

    .line 107
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->setOnKeyboardActionListener(Lcom/nuance/swype/input/IME;)V

    .line 108
    return-void
.end method

.method public createCandidatesView(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)Landroid/view/View;
    .locals 1
    .param p1, "onSelectListener"    # Lcom/nuance/swype/input/CandidatesListView$CandidateListener;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->createCandidatesView(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)Landroid/view/View;

    move-result-object v0

    .line 128
    return-object v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->destroy()V

    .line 118
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0, p0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->removeRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    .line 120
    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 3
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCompletionOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mShowInternalCandidates:Z

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/Completions;->update([Landroid/view/inputmethod/CompletionInfo;)V

    .line 135
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Completions;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->clearSuggestions()V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateCandidatesList(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 141
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCompletions:Lcom/nuance/swype/input/Completions;

    invoke-virtual {v0}, Lcom/nuance/swype/input/Completions;->getDisplayItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->COMPLETIONS:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-static {v0, v1, v2}, Lcom/nuance/input/swypecorelib/Candidates;->createCandidates(Ljava/util/List;ILcom/nuance/input/swypecorelib/Candidates$Source;)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 143
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    sget-object v1, Lcom/nuance/swype/input/CandidatesListView$Format;->DEFAULT:Lcom/nuance/swype/input/CandidatesListView$Format;

    invoke-virtual {p0, p0, v0, v1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V

    .line 145
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->syncCandidateDisplayStyleToMode()V

    goto :goto_0
.end method

.method public finishInput()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 341
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 342
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->removeHowToUseToastMsg()V

    .line 343
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->hideHowToUseToast()V

    .line 344
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->dismissPopupKeyboard()V

    .line 346
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->acceptCurrentDefaultWord()V

    .line 347
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0, p0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->removeRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 348
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->finishSession()V

    .line 349
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->finishAlphaInput()V

    .line 350
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->setWidth(I)V

    .line 351
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->setHeight(I)V

    .line 353
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->unwrapTouchEvent(Landroid/view/View;)V

    .line 354
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setInputContextRequestListener(Lcom/nuance/input/swypecorelib/InputContextRequest;)V

    .line 355
    return-void
.end method

.method public flushCurrentActiveWord()V
    .locals 0

    .prologue
    .line 743
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->acceptCurrentDefaultWord()V

    .line 744
    return-void
.end method

.method protected getContainerX()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mContainer:Lcom/nuance/swype/input/AlphaHandWritingContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mContainer:Lcom/nuance/swype/input/AlphaHandWritingContainerView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->getLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getLeft()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentDefaultWord()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isNextWordPredictionCandidates()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isCompletionCandidates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentWordCandidatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->source()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    .line 501
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    goto :goto_0
.end method

.method public getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .locals 2

    .prologue
    .line 1312
    iget v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    if-nez v0, :cond_0

    .line 1313
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 1318
    :goto_0
    return-object v0

    .line 1314
    :cond_0
    iget v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1315
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    goto :goto_0

    .line 1318
    :cond_1
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    goto :goto_0
.end method

.method public getShiftGestureOffset()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->shiftGestureOffset:I

    return v0
.end method

.method protected handleBackspace(I)Z
    .locals 2
    .param p1, "repeatedCount"    # I

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->processPendingRecognizing()V

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->queueChar(C)V

    .line 444
    const/4 v0, 0x1

    return v0
.end method

.method public handleCharKey(Landroid/graphics/Point;IJ)V
    .locals 2
    .param p1, "pointTapped"    # Landroid/graphics/Point;
    .param p2, "primaryCode"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->processPendingRecognizing()V

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    int-to-char v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->queueChar(C)V

    .line 454
    return-void
.end method

.method public handleClose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 363
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->handleClose()V

    .line 364
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->dismissPopupKeyboard()V

    .line 366
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->removeHowToUseToastMsg()V

    .line 367
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->hideHowToUseToast()V

    .line 369
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->setWidth(I)V

    .line 370
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->setHeight(I)V

    .line 371
    return-void
.end method

.method public handleKey(IZI)Z
    .locals 4
    .param p1, "primaryCode"    # I
    .param p2, "quickPressed"    # Z
    .param p3, "repeatedCount"    # I

    .prologue
    const/4 v2, 0x1

    .line 375
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->hideHowToUseToast()V

    .line 377
    sparse-switch p1, :sswitch_data_0

    .line 411
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    move-result v2

    :cond_1
    :goto_0
    return v2

    .line 379
    :sswitch_0
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 380
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->processPendingRecognizing()V

    .line 382
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->flushCurrentActiveWord()V

    .line 383
    if-nez p2, :cond_1

    .line 384
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->startSpeech()V

    goto :goto_0

    .line 388
    :sswitch_1
    const/4 v0, 0x0

    .line 390
    .local v0, "handled":Z
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->isNonSpacedLanguage()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 391
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v1

    .line 392
    .local v1, "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    if-eqz v1, :cond_3

    .line 393
    invoke-virtual {v1}, Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;->getComposingRangeInEditor()[I

    move-result-object v3

    .line 394
    if-eqz v3, :cond_3

    .line 396
    const/4 v0, 0x1

    .line 403
    .end local v1    # "ic":Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    goto :goto_0

    .line 400
    :cond_4
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v3}, Lcom/nuance/swype/input/Composition;->acceptCurrentInline()V

    goto :goto_1

    .line 377
    nop

    :sswitch_data_0
    .sparse-switch
        0x193f -> :sswitch_0
        0xaa37 -> :sswitch_1
    .end sparse-switch
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 427
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->handleKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    const/16 v0, 0x43

    if-ne p1, v0, :cond_0

    .line 429
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->handleBackspace(I)Z

    move-result v0

    .line 433
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 3
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 479
    const/16 v0, 0x8

    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ne v0, v1, :cond_0

    .line 480
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->handleDeleteWordBack(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    .line 482
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->handleLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    goto :goto_0
.end method

.method protected handleSpace(ZI)Z
    .locals 2
    .param p1, "quickPressed"    # Z
    .param p2, "repeatedCount"    # I

    .prologue
    const/16 v1, 0x20

    .line 459
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->processPendingRecognizing()V

    .line 462
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->queueChar(C)V

    .line 474
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 463
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v0

    if-nez v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->queueChar(C)V

    goto :goto_0

    .line 471
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->handleSpace()V

    goto :goto_0
.end method

.method public isHandWritingInputView()Z
    .locals 1

    .prologue
    .line 1436
    const/4 v0, 0x1

    return v0
.end method

.method public isInputSessionStarted()Z
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->isRecognizeListenerEmpty()Z

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

.method public isSupportRecapture()Z
    .locals 1

    .prologue
    .line 1387
    const/4 v0, 0x0

    return v0
.end method

.method public onApplicationUnbind()V
    .locals 0

    .prologue
    .line 1372
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->onApplicationUnbind()V

    .line 1374
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->removeHowToUseToastMsg()V

    .line 1375
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->hideHowToUseToast()V

    .line 1376
    return-void
.end method

.method public onCandidatesUpdated(Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 0
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 804
    return-void
.end method

.method public onHandleWriteEvent(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;

    .prologue
    const-wide/16 v4, 0x5

    .line 1175
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v0, :cond_0

    .line 1176
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isValidBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1207
    :goto_0
    return-void

    .line 1181
    :cond_0
    iget v0, p1, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$WriteEvent;->mType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1184
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    .line 1185
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1184
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1190
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    .line 1191
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1190
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1195
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    .line 1196
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1195
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1200
    :pswitch_3
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    .line 1201
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1200
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1181
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onPressHoldCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 6
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 756
    if-eqz p1, :cond_1

    .line 757
    sget-object v2, Lcom/nuance/swype/input/AlphaHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

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

    .line 758
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

    .line 757
    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 759
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/emoji/EmojiLoader;->isEmoji(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 760
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->handlePressHoldCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z

    move-result v0

    .line 766
    :goto_0
    return v0

    .line 761
    :cond_0
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->isRemovable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 762
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->showRemoveUdbWordDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 766
    goto :goto_0
.end method

.method public onPressMoveCandidate(FFF)V
    .locals 5
    .param p1, "xPos"    # F
    .param p2, "yPos"    # F
    .param p3, "xOffset"    # F

    .prologue
    .line 783
    sget-object v0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

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

    .line 785
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/input/InputView;->touchMoveHandle(FFF)Z

    .line 786
    return-void
.end method

.method public onPressReleaseCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 1
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 771
    if-eqz p1, :cond_0

    .line 772
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->setCurrentSkinTone()V

    .line 773
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->dismissEmojiPopup()V

    .line 774
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->clearSuggestions()V

    .line 775
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->showNextWordPrediction()V

    .line 776
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->sendSpace()V

    .line 777
    const/4 v0, 0x1

    .line 779
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSelectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 3
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    const/4 v1, 0x1

    .line 789
    iput-object p2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    .line 792
    iget-boolean v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mInURLEmail:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->isNonSpacedLanguage()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    .line 793
    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->getRecognitionMode()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 794
    .local v0, "addSpace":Z
    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->selectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;ZZ)V

    .line 795
    if-eqz p1, :cond_0

    .line 796
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->addEmojiInRecentCat(Lcom/nuance/input/swypecorelib/WordCandidate;)V

    .line 798
    :cond_0
    return v1

    .line 793
    .end local v0    # "addSpace":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isPendingRecognizeMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->processPendingRecognizing()V

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0, p1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->queueText(Ljava/lang/CharSequence;)V

    .line 422
    return-void
.end method

.method public penDown(Landroid/view/View;)V
    .locals 2
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 938
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->dismissPopupKeyboard()V

    .line 939
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 946
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    if-eq v0, p1, :cond_1

    .line 947
    :cond_0
    check-cast p1, Lcom/nuance/swype/input/AlphaHandWritingView;

    .end local p1    # "src":Landroid/view/View;
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    .line 950
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    .line 951
    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaHandWritingView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    .line 952
    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaHandWritingView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 953
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->changeWriteSettings(Lcom/nuance/swype/input/AlphaHandWritingView;)V

    .line 957
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_4

    .line 958
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->startArcsAddingSequence()V

    .line 960
    :cond_4
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
    .line 989
    .local p1, "arc":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    return-void
.end method

.method public penUp([Lcom/nuance/swype/input/Stroke$Arc;Landroid/view/View;)V
    .locals 6
    .param p1, "arcs"    # [Lcom/nuance/swype/input/Stroke$Arc;
    .param p2, "src"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 968
    const/4 v0, 0x0

    .line 969
    .local v0, "startWord":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isEmptyCandidateList()Z

    move-result v1

    if-nez v1, :cond_0

    .line 970
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v1, v4}, Lcom/nuance/input/swypecorelib/Candidates;->get(I)Lcom/nuance/input/swypecorelib/WordCandidate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/WordCandidate;->toString()Ljava/lang/String;

    move-result-object v0

    .line 973
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    if-eqz v1, :cond_1

    .line 974
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaHandWritingView;->startFading()V

    .line 977
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v1

    if-nez v1, :cond_2

    .line 978
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    new-instance v3, Ljava/util/ArrayList;

    aget-object v1, p1, v4

    iget-object v1, v1, Lcom/nuance/swype/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    array-length v1, p1

    if-le v1, v5, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    aget-object v4, p1, v5

    iget-object v4, v4, Lcom/nuance/swype/input/Stroke$Arc;->mPoints:Ljava/util/List;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    invoke-virtual {v2, v3, v1, v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->queueAddArcs(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 981
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 982
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mDelayRecognizeHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    .line 983
    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->getRecognizerDelay()I

    move-result v2

    int-to-long v2, v2

    .line 982
    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 985
    :cond_3
    return-void

    .line 978
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected preUpdateSpeechText()V
    .locals 0

    .prologue
    .line 1419
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->flushCurrentActiveWord()V

    .line 1420
    return-void
.end method

.method protected removeAllMessages()V
    .locals 3

    .prologue
    .line 1155
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1156
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1157
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1158
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1159
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1160
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteEventHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1161
    const/4 v0, 0x1

    .local v0, "msg":I
    :goto_0
    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    .line 1162
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1164
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1165
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->removeDelayRecognitionMsg()V

    .line 1166
    return-void
.end method

.method protected resumeSpeech()V
    .locals 1

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mContainer:Lcom/nuance/swype/input/AlphaHandWritingContainerView;

    if-eqz v0, :cond_0

    .line 1381
    invoke-super {p0}, Lcom/nuance/swype/input/InputView;->resumeSpeech()V

    .line 1383
    :cond_0
    return-void
.end method

.method public setContainerView(Lcom/nuance/swype/input/AlphaHandWritingContainerView;)V
    .locals 0
    .param p1, "container"    # Lcom/nuance/swype/input/AlphaHandWritingContainerView;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mContainer:Lcom/nuance/swype/input/AlphaHandWritingContainerView;

    .line 79
    return-void
.end method

.method public setHandWritingView(Lcom/nuance/swype/input/AlphaHandWritingView;)V
    .locals 0
    .param p1, "view"    # Lcom/nuance/swype/input/AlphaHandWritingView;

    .prologue
    .line 934
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/AlphaHandWritingView;

    .line 935
    return-void
.end method

.method public setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V
    .locals 0
    .param p1, "keyboard"    # Lcom/nuance/swype/input/KeyboardEx;

    .prologue
    .line 1337
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateDockModeForHandwriting(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1338
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 1339
    return-void
.end method

.method public setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V
    .locals 2
    .param p1, "layer"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .prologue
    const/4 v1, 0x1

    .line 1323
    invoke-super {p0, p1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 1324
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    if-eqz v0, :cond_1

    .line 1325
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    .line 1326
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->setTextCategory(Lcom/nuance/swype/input/InputFieldInfo;)V

    .line 1332
    :cond_0
    :goto_0
    return-void

    .line 1327
    :cond_1
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    if-eq v0, v1, :cond_0

    .line 1329
    iput v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    .line 1330
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->setNumbersAndSymbolsCategory(Lcom/nuance/swype/input/InputFieldInfo;)V

    goto :goto_0
.end method

.method protected setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)V
    .locals 3
    .param p1, "coreInput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;

    .prologue
    .line 1441
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v0

    .line 1442
    .local v0, "status":Lcom/nuance/input/swypecorelib/XT9Status;
    sget-object v1, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_DB_CORE_INCOMP:Lcom/nuance/input/swypecorelib/XT9Status;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_LDB_VERSION_ERROR:Lcom/nuance/input/swypecorelib/XT9Status;

    if-ne v0, v1, :cond_2

    .line 1445
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v2, v2, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nuance/swype/input/DatabaseConfig;->removeIncompatibleDBFiles(Landroid/content/Context;Ljava/lang/String;)V

    .line 1447
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v0

    .line 1448
    sget-object v1, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_DB_CORE_INCOMP:Lcom/nuance/input/swypecorelib/XT9Status;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/nuance/input/swypecorelib/XT9Status;->ET9STATUS_LDB_VERSION_ERROR:Lcom/nuance/input/swypecorelib/XT9Status;

    if-ne v0, v1, :cond_2

    .line 1450
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->isLDBCompatible:Z

    .line 1451
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->promptUserToUpdateLanguage()V

    .line 1453
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    if-eqz v1, :cond_2

    .line 1454
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v1

    .line 1455
    const/16 v2, 0x109

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputMethods;->setCurrentLanguageById(I)V

    .line 1456
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/IME;->switchInputViewAsync(I)V

    .line 1460
    :cond_2
    return-void
.end method

.method public showNextWordPrediction()V
    .locals 3

    .prologue
    .line 1424
    iget-boolean v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mNextWordPredictionOn:Z

    if-nez v1, :cond_1

    .line 1432
    :cond_0
    :goto_0
    return-void

    .line 1427
    :cond_1
    invoke-static {}, Lcom/nuance/swype/input/IME;->getLastSavedActiveWord()Ljava/lang/String;

    move-result-object v0

    .line 1428
    .local v0, "lastWord":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 1431
    :cond_2
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->NEXT_WORD_PREDICTION:Lcom/nuance/input/swypecorelib/Candidates$Source;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;Z)I

    goto :goto_0
.end method

.method public startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V
    .locals 6
    .param p1, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;
    .param p2, "restarting"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 194
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/InputView;->startInput(Lcom/nuance/swype/input/InputFieldInfo;Z)V

    .line 195
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/CandidatesListView;->updateCandidatesSize()V

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->emojiCandidatesListView:Lcom/nuance/swype/input/CandidatesListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/CandidatesListView;->updateCandidatesSize()V

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mContainer:Lcom/nuance/swype/input/AlphaHandWritingContainerView;

    if-eqz v1, :cond_2

    .line 202
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mContainer:Lcom/nuance/swype/input/AlphaHandWritingContainerView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->updateHandwritingPadSize()V

    .line 205
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->dismissPopupKeyboard()V

    .line 206
    invoke-direct {p0, v3}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->showHandWritingView(Z)V

    .line 208
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v1, p0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->addRecognizeListener(Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$OnWriteRecognizerListener;)V

    .line 209
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->setKeyboardForTextEntry(Lcom/nuance/swype/input/InputFieldInfo;)V

    .line 210
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getCurrentInputConnection()Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/Composition;->setInputConnection(Landroid/view/inputmethod/InputConnection;)V

    .line 211
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->flushCurrentActiveWord()V

    .line 214
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v1, v5}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->setWidth(I)V

    .line 215
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v1, v5}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->setHeight(I)V

    .line 216
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->changeWriteRecognitionMode()V

    .line 217
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->startSession(I)V

    .line 219
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isNumericModeField()Z

    move-result v1

    if-nez v1, :cond_3

    .line 220
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 221
    :cond_3
    iput v3, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    .line 222
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->setNumbersAndSymbolsCategory(Lcom/nuance/swype/input/InputFieldInfo;)V

    .line 228
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    const-string/jumbo v2, "hwr_auto_recognize_delay_alpha"

    .line 230
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$integer;->handwriting_auto_recognize_alpha_default_ms:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 228
    invoke-static {v1, v2, v3}, Lcom/nuance/swype/input/settings/InputPrefs;->getAutoDelay(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;I)I

    move-result v0

    .line 231
    .local v0, "delayMS":I
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v1, v0}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->setRecognizerDelay(I)V

    .line 233
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->startAlphaInput()V

    .line 235
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v1

    if-nez v1, :cond_4

    .line 236
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->postDelayShowingStartOfWordCandidate()V

    .line 239
    :cond_4
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->removeHowToUseToastMsg()V

    .line 240
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->postHowToUseToastMsg()V

    .line 241
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->postDelayResumeSpeech()V

    .line 242
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mWriteAlpha:Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    invoke-virtual {v1, v5}, Lcom/nuance/input/swypecorelib/T9WriteAlpha;->enableUsageLogging(Z)I

    .line 244
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/OemLdbWordsManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/OemLdbWordsManager;

    move-result-object v1

    .line 245
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->alphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 246
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/OemLdbWordsManager;->AddOemLdbWordsForAlpha(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;I)V

    .line 248
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    new-instance v2, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    .line 250
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getDefaultKeyUIStateHandler()Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler$KeyUIState;

    move-result-object v5

    invoke-direct {v2, v3, p0, v4, v5}, Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/InputView;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler$KeyUIState;)V

    .line 248
    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->resisterTouchKeyHandler(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$TouchKeyActionHandler;)V

    .line 251
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->flingGestureListener:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->registerFlingGestureHandler(Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;)V

    .line 252
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->keyboardTouchEventDispatcher:Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher;->wrapTouchEvent(Landroid/view/View;)V

    .line 253
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->xt9coreinput:Lcom/nuance/input/swypecorelib/XT9CoreInput;

    .line 254
    invoke-static {}, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->getDispatcherInstance()Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;

    move-result-object v2

    .line 255
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getDefaultInputContextHandler()Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;->setHandler(Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher$InputContextRequestHandler;)Lcom/nuance/swype/input/keyboard/InputContextRequestDispatcher;

    move-result-object v2

    .line 253
    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setInputContextRequestListener(Lcom/nuance/input/swypecorelib/InputContextRequest;)V

    .line 256
    return-void

    .line 224
    .end local v0    # "delayMS":I
    :cond_5
    iput v5, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mCurrentWritingMode:I

    .line 225
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->setTextCategory(Lcom/nuance/swype/input/InputFieldInfo;)V

    goto/16 :goto_0
.end method

.method public updateSelection(IIII[I)V
    .locals 2
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesIndices"    # [I

    .prologue
    const/4 v1, 0x1

    .line 153
    invoke-super/range {p0 .. p5}, Lcom/nuance/swype/input/InputView;->updateSelection(IIII[I)V

    .line 159
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->suggestionCandidates:Lcom/nuance/input/swypecorelib/Candidates;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Candidates;->count()I

    move-result v0

    if-lez v0, :cond_1

    aget v0, p5, v1

    if-ne p3, v0, :cond_0

    aget v0, p5, v1

    if-eq p4, v0, :cond_1

    :cond_0
    aget v0, p5, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 163
    invoke-direct {p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->acceptCurrentDefaultWord()V

    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->updateCandidatesList(Lcom/nuance/input/swypecorelib/Candidates;)V

    .line 167
    :cond_1
    if-ge p3, p4, :cond_2

    .line 168
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView;->mComposition:Lcom/nuance/swype/input/Composition;

    invoke-virtual {v0, p3, p4}, Lcom/nuance/swype/input/Composition;->setSelection(II)V

    .line 170
    :cond_2
    return-void
.end method
